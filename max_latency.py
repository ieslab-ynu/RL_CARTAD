import os
from new_freq_set import new_freq_set_for_core2
import re
def task_select_core_30_task(app):
    task = [
        "parsecmgmt -a run -p blackscholes -i test",    #40.8kb  0.131
        "parsecmgmt -a run -p blackscholes -i simdev",
        "parsecmgmt -a run -p blackscholes -i simsmall",  # 0.19s-0.9s
        "parsecmgmt -a run -p blackscholes -i simmedium",  # 0.772s-3.6s
        "parsecmgmt -a run -p blackscholes -i simlarge",  # 3s-14s

        #
        # latency_constraint = [0.5 ,2 , 8, 2, 10, 30, 3, 7, 25, 0.5]
        "parsecmgmt -a run -p fluidanimate -i test",    #310.1kb    1
        "parsecmgmt -a run -p fluidanimate -i simdev",
        "parsecmgmt -a run -p fluidanimate -i simsmall",
        "parsecmgmt -a run -p fluidanimate -i simmedium",
        "parsecmgmt -a run -p fluidanimate -i simlarge",

        "parsecmgmt -a run -p freqmine -i test",  #33.0kb  0.106
        "parsecmgmt -a run -p freqmine -i simdev",
        "parsecmgmt -a run -p freqmine -i simsmall",
        "parsecmgmt -a run -p freqmine -i simmedium",
        "parsecmgmt -a run -p freqmine -i simlarge",

        "parsecmgmt -a run -p splash2x.fmm -i test",   #133.7kb   0.431
        "parsecmgmt -a run -p splash2x.fmm -i simdev",
        "parsecmgmt -a run -p splash2x.fmm -i simsmall",  # 0.8s-4s
        "parsecmgmt -a run -p splash2x.fmm -i simmedium",  # 3.8s-17s
        "parsecmgmt -a run -p splash2x.fmm -i simlarge",  # 15s-68s

        # "parsecmgmt -a run -p blackscholes -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simlarge",

        "parsecmgmt -a run -p splash2x.radiosity -i test",   #159.9kb   0.516
        "parsecmgmt -a run -p splash2x.radiosity -i simdev",
        "parsecmgmt -a run -p splash2x.radiosity -i simsmall",
        "parsecmgmt -a run -p splash2x.radiosity -i simmedium",
        "parsecmgmt -a run -p splash2x.radiosity -i simlarge",

        "parsecmgmt -a run -p splash2x.water_spatial -i test",  #67.4   0.217
        "parsecmgmt -a run -p splash2x.water_spatial -i simdev",
        "parsecmgmt -a run -p splash2x.water_spatial -i simsmall",  # 1s-7s
        "parsecmgmt -a run -p splash2x.water_spatial -i simmedium",  # 3s-13.5ss
        "parsecmgmt -a run -p splash2x.water_spatial -i simlarge",  # 12s-55h  kecqiaylnilianos
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simlarge",

        "parsecmgmt -a run -p x264 -i test",  #169.9    0.548
        "parsecmgmt -a run -p x264 -i simdev",
        "parsecmgmt -a run -p x264 -i simmedium",
        "parsecmgmt -a run -p x264 -i simmedium",
        "parsecmgmt -a run -p x264 -i simlarge",

    ]
    # print(len(task))                                                              "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev"
    task_run = "taskset -c " + str(1) + " " + task[app]

    var = os.popen(task_run).read()
    time = 0
    message = var.split()
    for i in range(len(message)):
        if message[i] == "real":
            time = message[i + 1]
    # break
    a = re.findall(r'\d', time)
    # print("a",a)
    #    a = re.findall(r'\d', time)
    if len(a) == 5:
        time = float(str(a[0]) + str(a[1]) + "." + str(a[2]) + str(a[3]) + str(a[4]))
    if len(a) == 6:
        time = float(str(a[0]) + str(a[1]) + str(a[2]) + "." + str(a[3]) + str(a[4]) + str(a[5]))
    # print("run_time",time)
    return time


def get_available_freq():
    cmdline = "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"
    # os.system("sensors")
    var = os.popen(cmdline).read()
    # s = []
    s1 = []
    s2 = []
    message = var.split()
    for i in range(len(message)):
        s1.append(int(message[i]))
    return s1

def ubuntu_test_35_task_max_latency():
    cmdline = "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"
    # os.system("sensors")
    var = os.popen(cmdline).read()
    s1 = []
    message = var.split()
    for i in range(len(message)):
        s1.append(int(message[i]))
    freq=min(s1)
    new_freq_set_for_core2(1, freq)

    all_task_max_time=[]
    for i in range(35):
        all_task_max_time.append(task_select_core_30_task(i))
    return all_task_max_time

def set_task_latency(task_num,constraint_coefficient):
    all_task_latency=[]
    all_task_max_time=ubuntu_test_35_task_max_latency()
    for i in all_task_max_time:
        all_task_latency.append(i * constraint_coefficient)
    all_task_latency=all_task_latency[0:task_num]
    all_task_latency.append(all_task_latency[0])
    return  all_task_latency
