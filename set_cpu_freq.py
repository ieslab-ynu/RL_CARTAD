#!/usr/bin/env python
import os
import sys
import struct
import argparse
#import psutil
############## INTERNAL VARIABLES ##############
num_core = 0
num_skt = 0
num_core_skt = 0
available_frequencies = []
available_governors = []
default_governor = "ondemand"

############## ARCHITECTURE INFO ##############
nominal_frequency = None

############## MSR ADDRESSES ##############
PLATFORM_INFO_ADDR = 0xCE
IA32_PERF_STATUS = 0x198
IA32_PERF_CTL = 0x199


##################################################

# Read a MSR registry
def read_msr(msr, skt=None, core=None):
    cpu = None
    if skt is None:
        cpu = 0
    elif core is None:
        cpu = skt * num_core_skt
    else:
        cpu = skt * num_core_skt + core
    f = os.open('/dev/cpu/%d/msr' % (cpu,), os.O_RDONLY)
    os.lseek(f, msr, os.SEEK_SET)
    val = struct.unpack('Q', os.read(f, 8))[0]
    os.close(f)
    return val


# Write a MSR registry
def write_msr(msr, val, skt=None, core=None):
    cpu = None
    if skt is None:
        cpu = 0
    elif core is None:
        cpu = skt * num_core_skt
    else:
        cpu = skt * num_core_skt + core
    f = os.open('/dev/cpu/%d/msr' % (cpu,), os.O_WRONLY)
    os.lseek(f, msr, os.SEEK_SET)
    os.write(f, struct.pack('Q', val))
    os.close(f)


# Check requisites of the system
def check_requirements():
    # Check root permission
    uid = os.getuid()
    print(uid)
    if uid != 0:
        sys.stderr.write("[WARNING] Need to be root to execute this software!\n")
        exit(-1)

    # Check if MSR module is loaded


    if not os.path.exists("/dev/cpu/0/msr"):
        sys.stderr.write("[WARNING] MSR module is not loaded!\n")
        exit(-2)

    # Check if power manager driver is "acpi-cpufreq"
    with open("/sys/devices/system/cpu/cpu0/cpufreq/scaling_driver", "r") as f:
        scaling_driver = f.readline().rstrip()
        if scaling_driver !="acpi-cpufreq":
            sys.stderr.write(
                "[ERROR] Current power manager driver is " + scaling_driver + ", only acpi-cpufreq driver is currently supported!\n")
            exit(-3)

    # Check if this version of acpi-cpufreq support "userspace" governor
    with open("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors", "r") as f:
        scaling_available_governors = f.readline().rstrip()
        if "userspace" not in scaling_available_governors:
            sys.stderr.write("[ERROR] This version of cpufreq driver doesn't support userspace governor!\n")
            exit(-4)


# Default initial configuration
def init_config():
    global num_core, num_skt, num_core_skt, available_frequencies, available_governors, nominal_frequency

    # Read the number of virtual CPUs and sockets
    with open("/proc/cpuinfo", "r") as f:
        conf_lines = f.readlines()
        for cl in conf_lines:
            if "physical id" in cl:
                num_core += 1
                skt = cl.replace(" ", "").split(":")[1]
                if (int(skt) + 1) > num_skt:
                    num_skt += 1
    num_core_skt = num_core / num_skt

    # Read all available frequencies
    with open("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies", "r") as f:
        available_frequencies = f.readline().rstrip().split(" ")
    available_frequencies = [int(float(f) / 1000) for f in available_frequencies]

    # Read all available governors
    with open("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors", "r") as f:
        available_governors = f.readline().rstrip().split(" ")

    # Read nominal CPU frequency
    platform_info = read_msr(PLATFORM_INFO_ADDR)
    nominal_frequency = ((platform_info >> 0x8) & 0xFF) * 100.0


def read_freq(core=None):
    if core is None:
        freq = []
        for c in range(num_core):
            freq.append(read_freq(c))
        return freq
    else:
        freq = None
        with open("/sys/devices/system/cpu/cpu" + str(core) + "/cpufreq/scaling_setspeed", "r") as f:
            freq = int(float(f.readline().rstrip()) / 1000)
        return freq


def set_freq(freq, core=None):
    if freq not in available_frequencies:
        print("[ERROR] Frequency " + str(freq) + " MHz is not supported!")
    if core is None:
        for c in range(num_core):
            set_freq(freq, c)
    else:
        with open("/sys/devices/system/cpu/cpu" + str(core) + "/cpufreq/scaling_setspeed", "w") as f:
            f.write(str(int(freq * 1000)))


def read_gov(core=None):
    if core is None:
        gov = []
        for c in range(num_core):
            gov.append(read_gov(c))
        return gov
    else:
        gov = None
        with open("/sys/devices/system/cpu/cpu" + str(core) + "/cpufreq/scaling_governor", "r") as f:
            gov = f.readline().rstrip()
        return gov


def set_gov(gov, core=None):
    if gov not in available_governors:
        print("[ERROR] Governor " + str(gov) + " is not supported!")
        sys.exit()
    if core is None:
        for c in range(num_core):
            set_gov(gov, c)
    else:
        with open("/sys/devices/system/cpu/cpu" + str(core) + "/cpufreq/scaling_governor", "w") as f:
            f.write(gov)
import psutil
def freq_set_action(core,step):
    core_num=psutil.cpu_count()
    if core>=0 and core<=core_num:
        if core==0:
            if step==1:
                set_freq(800,0)
            elif step==2:
                set_freq(1200,0)
            elif step==3:
                set_freq(1600,0)
            elif step==4:
                set_freq(1800,0)
            elif step==5:
                set_freq(2200,0)
            elif step==6:
                set_freq(2600,0)
            elif step==7:
                set_freq(3000,0)
            elif step==8:
                set_freq(3400,0)
            else :
                set_freq(3600,0)

        elif core == 1:
            if step == 1:
                set_freq( 800,1)
            elif step == 2:
                set_freq(1200,1)
            elif step == 3:
                set_freq(1600,1)
            elif step == 4:
                set_freq(1800,1)
            elif step == 5:
                set_freq(2200,1)
            elif step == 6:
                set_freq(2600,1)
            elif step == 7:
                set_freq(3000,1)
            elif step == 8:
                set_freq(3400,1)
            else:
                set_freq(3600,1)
        elif core == 2:
            if step == 1:
                set_freq(800,2)
            elif step == 2:
                set_freq(1200,2)
            elif step == 3:
                set_freq(1600,2)
            elif step == 4:
                set_freq(1800,2)
            elif step == 5:
                set_freq(2200,2)
            elif step == 6:
                set_freq(2600,2)
            elif step == 7:
                set_freq(3000,2)
            elif step == 8:
                set_freq(3400,2)
            else:
                set_freq(3600,2)

        elif core == 3:
            if step == 1:
                set_freq(800,3)
            elif step == 2:
                set_freq(1200,3)
            elif step == 3:
                set_freq(1600,3)
            elif step == 4:
                set_freq(1800,3)
            elif step == 5:
                set_freq(2200,3)
            elif step == 6:
                set_freq(2600,3)
            elif step == 7:
                set_freq(3000,3)
            elif step == 8:
                set_freq(3400,3)
            else:
                set_freq(3600,3)
        elif core == 4:
            if step == 1:
                set_freq(800,4)
            elif step == 2:
                set_freq(1200,4)
            elif step == 3:
                set_freq(1600,4)
            elif step == 4:
                set_freq(1800,4)
            elif step == 5:
                set_freq(2200,4)
            elif step == 6:
                set_freq(2600,4)
            elif step == 7:
                set_freq(3000,4)
            elif step == 8:
                set_freq(3400,4)
            else:
                set_freq(3600,4)
        elif core == 5:
            if step == 1:
                set_freq(800,5)
            elif step == 2:
                set_freq(1200,5)
            elif step == 3:
                set_freq(1600,5)
            elif step == 4:
                set_freq(1800,5)
            elif step == 5:
                set_freq(2200,5)
            elif step == 6:
                set_freq(2600,5)
            elif step == 7:
                set_freq(3000,5)
            elif step == 8:
                set_freq(3400,5)
            else:
                set_freq(3600,5)
        elif core == 6:
            if step == 1:
                set_freq(800,6)
            elif step == 2:
                set_freq(1200,6)
            elif step == 3:
                set_freq(1600,6)
            elif step == 4:
                set_freq(1800,6)
            elif step == 5:
                set_freq(2200,6)
            elif step == 6:
                set_freq(2600,6)
            elif step == 7:
                set_freq(3000,6)
            elif step == 8:
                set_freq(3400,6)
            else:
                set_freq(3600,6)
        elif core == 7:
            if step == 1:
                set_freq(800,7)
            elif step == 2:
                set_freq(1200,7)
            elif step == 3:
                set_freq(1600,7)
            elif step == 4:
                set_freq(1800,7)
            elif step == 5:
                set_freq(2200,7)
            elif step == 6:
                set_freq(2600,7)
            elif step == 7:
                set_freq(3000,7)
            elif step == 8:
                set_freq(3400,7)
            else:
                set_freq(3600,7)
        else:
            print("set freq fail")
    else:
        print("no such core")


if __name__ == "__main__":
    check_requirements()

    init_config()

    govs = [None] * num_core
    freqs = [None] * num_core

    parser = argparse.ArgumentParser(description='Tool for RAPL setting')
    parser.add_argument('-c', '--core', help='Set frequency for core $C', required=False, type=int)
    parser.add_argument('-g', '--governor', help='Set governor for core $C', required=False)
    parser.add_argument('-f', '--freq', help='Frequency value in MHz', required=False, type=int)
    parser.add_argument('-s', '--core_step', help='step of Frequency ', required=False, type=int)
    parser.add_argument('-r', '--reset-all',
                        help='Reset governor and frequency for all cores (default: ondemand, turbo)', required=False,
                        action='store_true', default=False)
    parser.add_argument('-rg', '--reset-gov', help='Reset governor for all cores (default: ondemand)', required=False,
                        action='store_true', default=False)
    parser.add_argument('-rf', '--reset-freq', help='Reset frequency for all cores (default: turbo)', required=False,
                        action='store_true', default=False)

    args = parser.parse_args()

    if len(sys.argv) == 1:
        for c in range(num_core):
            curr_governor = read_gov(c)
            if curr_governor in "userspace":
                freq = read_freq(c)
                print("Core " + str(c) + " - governor: " + str(curr_governor) + " - frequency: " + str(freq) + " MHz")
            else:
                print("Core " + str(c) + " - governor: " + str(curr_governor))
    else:
        if args.reset_all is True:
            govs = [default_governor] * num_core
            freqs = [available_frequencies[0]] * num_core
        elif args.reset_gov is True:
            govs = [default_governor] * num_core
        elif args.reset_freq is True:
            freqs = [available_frequencies[0]] * num_core
        else:
            if args.core is not None:
                if args.governor is not None:
                    govs[args.core] = args.governor
                if args.freq is not None:
                    govs[args.core] = "powersave"
                    freqs[args.core] = args.freq
            else:
                # Governor
                if args.governor is not None:
                    govs = [args.governor] * num_core
                # Frequency
                if args.freq is not None:
                    govs = ["userspace"] * num_core
                    freqs = [args.freq] * num_core

    for c in range(num_core):
        if govs[c] is not None:
            set_gov(govs[c], c)
        curr_gov = read_gov(c)
        if curr_gov in "userspace" and freqs[c] is not None:
            set_freq(freqs[c], c)

    # freq_set_action(4,5)
    # freq=read_freq()
    # print(read_gov())
    # print(freq)

    opt = vars(args)
    a = opt["core"]  # get core_id
    b = opt["core_step"]  # get freq_step
    print("op corenumber", a)
    print("op step", b)
    freq_set_action(a, b)
    print(opt)