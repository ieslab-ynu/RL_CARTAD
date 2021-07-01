import threading
import time
import re
import os
from statistics import mean


# import numpy as np


def get_Tem():
    cmdline = "sensors"
    # os.system("sensors")
    var = os.popen(cmdline).read()
    # s = []
    s1 = []
    s2 = []
    message = var.split()
    for i in range(len(message)):
        if message[i] == "temp1:":
            s1.append(float(re.findall("\d+", message[i + 1])[0].split()[0]))  # 取
    return s1


def get_Tem1():
    cmdline = "sensors"
    # os.system("sensors")
    var = os.popen(cmdline).read()
    # s = []
    s1 = []
    s2 = []
    message = var.split()
    for i in range(len(message)):
        if message[i] == "Core":
            s1.append(float(re.findall("\d+", message[i + 2])[0].split()[0]))  # 取
            s1.append(float(re.findall("\d+", message[i + 2])[0].split()[0]))  # 取
    return s1


def get_input_Size_all1():  # 获取输入的数据量大小

    file = [
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/blackscholes/inputs/input_test.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/blackscholes/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/blackscholes/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/blackscholes/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/blackscholes/inputs/input_simlarge.tar",
        # /home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/water_spatial/inputs

        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/fluidanimate/inputs/input_test.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/fluidanimate/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/fluidanimate/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/fluidanimate/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/fluidanimate/inputs/input_simlarge.tar",

        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/freqmine/inputs/input_test.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/freqmine/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/freqmine/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/freqmine/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/freqmine/inputs/input_simlarge.tar",

        "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/fmm/inputs/input_test.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/fmm/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/fmm/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/fmm/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/fmm/inputs/input_simlarge.tar",
        #
        # "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/radiosity/inputs/input_test.tar",
        # "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/radiosity//inputs/input_simdev.tar",
        # "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/radiosity//inputs/input_simsmall.tar",
        # "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/radiosity//inputs/input_simmedium.tar",
        # "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/radiosity//inputs/input_simlarge.tar",

        "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/water_spatial/inputs/input_test.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/water_spatial/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/water_spatial/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/water_spatial/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/ext/splash2x/apps/water_spatial/inputs/input_simlarge.tar",

        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/x264/inputs/input_test.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/x264/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/x264/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/x264/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-1-master/pkgs/apps/x264/inputs/input_simlarge.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simsmall.tar",

    ]
    list1 = []
    for i in range(len(file)):
        fsize = os.path.getsize(file[i])
        fsize = fsize / float(1024 * 1024)
        list1.append(round(fsize, 3))

    return list1



def get_input_Size_all():  # 获取输入的数据量大小

    file = [
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_test.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simdev.tar",
        "/home/ubuntu/Downloads/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simsmall.tar",
        "/home/ubuntu/Downloads/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simmedium.tar",
        "/home/ubuntu/Downloads/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simlarge.tar",

        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simsmall.tar",

        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/fluidanimate/inputs/input_simdev.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/fluidanimate/inputs/input_simsmall.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/fluidanimate/inputs/input_simmedium.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/fluidanimate/inputs/input_simlarge.tar",

        # "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/fmm/inputs/input_test.tar",
        # "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/fmm/inputs/input_simdev.tar",
        "/home/ubuntu/Downloads/parsec-benchmark-master/ext/splash2x/apps/fmm/inputs/input_simsmall.tar",
        "/home/ubuntu/Downloads/parsec-benchmark-master/ext/splash2x/apps/fmm/inputs/input_simmedium.tar",
        "/home/ubuntu/Downloads/parsec-benchmark-master/ext/splash2x/apps/fmm/inputs/input_simlarge.tar",

        # "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/water_spatial/inputs/input_test.tar",
        # "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/water_spatial/inputs/input_simdev.tar",
        "/home/ubuntu/Downloads/parsec-benchmark-master/ext/splash2x/apps/water_spatial/inputs/input_simsmall.tar",
        "/home/ubuntu/Downloads/parsec-benchmark-master/ext/splash2x/apps/water_spatial/inputs/input_simmedium.tar",
        "/home/ubuntu/Downloads/parsec-benchmark-master/ext/splash2x/apps/water_spatial/inputs/input_simlarge.tar",

        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/x264/inputs/input_test.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/x264/inputs/input_simdev.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/x264/inputs/input_simsmall.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/x264/inputs/input_simmedium.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/x264/inputs/input_simlarge.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simsmall.tar",

    ]
    list1 = []
    for i in range(len(file)):
        fsize = os.path.getsize(file[i])
        fsize = fsize / float(1024 * 1024)
        list1.append(round(fsize, 3))
    print(0.254 / (0.254 + 0.996 + 3.955), 0.996 / (0.254 + 0.996 + 3.955), 3.955 / (0.254 + 0.996 + 3.955))
    print("input_size", list1)

def compute_reward(run_time, latency_constraint, tem1, tem, core):
    core = int(core)
    print("TEM", tem1, tem)
    if (latency_constraint - run_time) > 0 and (latency_constraint - run_time) < (latency_constraint * 0.15):  # 0.1
        if tem1 > tem[core]:
            reward = 1000
        elif tem1 == tem[core]:
            reward = 500
        else:
            reward = -100
    # elif (latency_constraint - run_time) > 0 and (latency_constraint - run_time) < (latency_constraint * 0.2):  # 0.5
    #     if tem1 > tem[core]:
    #         reward = 300
    #     elif tem1 == tem[core]:
    #         reward = 0
    #     else:
    #         reward = -200
    elif latency_constraint < run_time:
        reward = -2000
    else:
        reward = -1000
    return reward





def task_select_core(step, core):
    task = [
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev",
        "parsecmgmt -a run -p blackscholes -i simsmall",  # 0.19s-0.9s
        "parsecmgmt -a run -p blackscholes -i simmedium",  # 0.772s-3.6s
        "parsecmgmt -a run -p blackscholes -i simlarge",  # 3s-14s

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simlarge",
        #
        # latency_constraint = [0.5 ,2 , 8, 2, 10, 30, 3, 7, 25, 0.5]
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i simdev",
        # "parsecmgmt -a run -p fluidanimate -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simdev",
        "parsecmgmt -a run -p splash2x.fmm -i simsmall",  # 0.8s-4s
        "parsecmgmt -a run -p splash2x.fmm -i simmedium",  # 3.8s-17s
        "parsecmgmt -a run -p splash2x.fmm -i simlarge",  # 15s-68s

        # "parsecmgmt -a run -p blackscholes -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simdev",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simdev",
        "parsecmgmt -a run -p splash2x.water_spatial -i simsmall",  # 1s-7s
        "parsecmgmt -a run -p splash2x.water_spatial -i simmedium",  # 3s-13.5ss
        "parsecmgmt -a run -p splash2x.water_spatial -i simlarge",  # 12s-55h  kecqiaylnilianos
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simdev",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i simdev",
        "parsecmgmt -a run -p blackscholes -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i simlarge",

    ]
    # print(len(task))                                                              "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev"
    task_run = "taskset -c " + str(core) + " " + task[step]
    # os.system(task_run)
    # time =0
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


def task_select_core_35_task(step, core):
    task = [
        "parsecmgmt -a run -p blackscholes -i test",
        "parsecmgmt -a run -p blackscholes -i simdev",
        "parsecmgmt -a run -p blackscholes -i simsmall",  # 0.19s-0.9s
        "parsecmgmt -a run -p blackscholes -i simmedium",  # 0.772s-3.6s
        "parsecmgmt -a run -p blackscholes -i simlarge",  # 3s-14s

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simlarge",
        #
        # latency_constraint = [0.5 ,2 , 8, 2, 10, 30, 3, 7, 25, 0.5]
        "parsecmgmt -a run -p fluidanimate -i test",
        "parsecmgmt -a run -p fluidanimate -i simdev",
        "parsecmgmt -a run -p fluidanimate -i simsmall",
        "parsecmgmt -a run -p fluidanimate -i simmedium",
        "parsecmgmt -a run -p fluidanimate -i simlarge",

        "parsecmgmt -a run -p freqmine -i test",
        "parsecmgmt -a run -p freqmine -i simdev",
        "parsecmgmt -a run -p freqmine -i simsmall",
        "parsecmgmt -a run -p freqmine -i simmedium",
        "parsecmgmt -a run -p freqmine -i simlarge",

        "parsecmgmt -a run -p splash2x.fmm -i test",
        "parsecmgmt -a run -p splash2x.fmm -i simdev",
        "parsecmgmt -a run -p splash2x.fmm -i simsmall",  # 0.8s-4s
        "parsecmgmt -a run -p splash2x.fmm -i simmedium",  # 3.8s-17s
        "parsecmgmt -a run -p splash2x.fmm -i simlarge",  # 15s-68s

        # "parsecmgmt -a run -p blackscholes -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simlarge",

        "parsecmgmt -a run -p splash2x.radiosity -i test",
        "parsecmgmt -a run -p splash2x.radiosity -i simdev",
        "parsecmgmt -a run -p splash2x.radiosity -i simsmall",
        "parsecmgmt -a run -p splash2x.radiosity -i simmedium",
        "parsecmgmt -a run -p splash2x.radiosity -i simlarge",

        "parsecmgmt -a run -p splash2x.water_spatial -i test",
        "parsecmgmt -a run -p splash2x.water_spatial -i simdev",
        "parsecmgmt -a run -p splash2x.water_spatial -i simsmall",  # 1s-7s
        "parsecmgmt -a run -p splash2x.water_spatial -i simmedium",  # 3s-13.5ss
        "parsecmgmt -a run -p splash2x.water_spatial -i simlarge",  # 12s-55h  kecqiaylnilianos
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simlarge",

        "parsecmgmt -a run -p x264 -i test",
        "parsecmgmt -a run -p x264 -i simdev",
        "parsecmgmt -a run -p x264 -i simmedium",
        "parsecmgmt -a run -p x264 -i simmedium",
        "parsecmgmt -a run -p x264 -i simlarge",

    ]
    # print(len(task))                                                              "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev"
    task_run = "taskset -c " + str(core) + " " + task[step]
    # os.system(task_run)
    # time =0
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


def task_select_core_30_task(step, core ,task_num):
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
    task1=task[0:task_num]
    # print(len(task))                                                              "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev"
    task_run = "taskset -c " + str(core) + " " + task1[step]
    print(task_run)
    # os.system(task_run)
    # time =0
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

def task_select_core_25_task(step, core):
    task = [
        # "parsecmgmt -a run -p blackscholes -i test",
        # "parsecmgmt -a run -p blackscholes -i simdev",
        # "parsecmgmt -a run -p blackscholes -i simsmall",  # 0.19s-0.9s
        # "parsecmgmt -a run -p blackscholes -i simmedium",  # 0.772s-3.6s
        # "parsecmgmt -a run -p blackscholes -i simlarge",  # 3s-14s
        #
        # # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simmedium",
        # # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simlarge",
        # #
        # # latency_constraint = [0.5 ,2 , 8, 2, 10, 30, 3, 7, 25, 0.5]
        # "parsecmgmt -a run -p fluidanimate -i test",
        # "parsecmgmt -a run -p fluidanimate -i simdev",
        # "parsecmgmt -a run -p fluidanimate -i simsmall",
        # "parsecmgmt -a run -p fluidanimate -i simmedium",
        # "parsecmgmt -a run -p fluidanimate -i simlarge",
        #
        # "parsecmgmt -a run -p freqmine -i test",
        # "parsecmgmt -a run -p freqmine -i simdev",
        # "parsecmgmt -a run -p freqmine -i simsmall",
        # "parsecmgmt -a run -p freqmine -i simmedium",
        # "parsecmgmt -a run -p freqmine -i simlarge",
        #
        # "parsecmgmt -a run -p splash2x.fmm -i test",
        # "parsecmgmt -a run -p splash2x.fmm -i simdev",
        # "parsecmgmt -a run -p splash2x.fmm -i simsmall",  # 0.8s-4s
        # "parsecmgmt -a run -p splash2x.fmm -i simmedium",  # 3.8s-17s
        # "parsecmgmt -a run -p splash2x.fmm -i simlarge",  # 15s-68s
        #
        # # "parsecmgmt -a run -p blackscholes -i simsmall",
        # # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simmedium",
        # # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simlarge",
        #
        # "parsecmgmt -a run -p splash2x.radiosity -i test",
        # "parsecmgmt -a run -p splash2x.radiosity -i simdev",
        # "parsecmgmt -a run -p splash2x.radiosity -i simsmall",
        # "parsecmgmt -a run -p splash2x.radiosity -i simmedium",
        # "parsecmgmt -a run -p splash2x.radiosity -i simlarge",

        "parsecmgmt -a run -p splash2x.water_spatial -i test",
        "parsecmgmt -a run -p splash2x.water_spatial -i simdev",
        "parsecmgmt -a run -p splash2x.water_spatial -i simsmall",  # 1s-7s
        "parsecmgmt -a run -p splash2x.water_spatial -i simmedium",  # 3s-13.5ss
        "parsecmgmt -a run -p splash2x.water_spatial -i simlarge",  # 12s-55h  kecqiaylnilianos
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simlarge",

        "parsecmgmt -a run -p x264 -i test",
        "parsecmgmt -a run -p x264 -i simdev",
        "parsecmgmt -a run -p x264 -i simmedium",
        "parsecmgmt -a run -p x264 -i simmedium",
        "parsecmgmt -a run -p x264 -i simlarge",

    ]
    # print(len(task))                                                              "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev"
    task_run = "taskset -c " + str(core) + " " + task[step]
    # os.system(task_run)
    # time =0
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


def task_select_core_5_task(step, core):
    task = [
        # "parsecmgmt -a run -p blackscholes -i test",
        # "parsecmgmt -a run -p blackscholes -i simdev",
        # "parsecmgmt -a run -p blackscholes -i simsmall",  # 0.19s-0.9s
        # "parsecmgmt -a run -p blackscholes -i simmedium",  # 0.772s-3.6s
        # "parsecmgmt -a run -p blackscholes -i simlarge",  # 3s-14s

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simlarge",
        #
        # latency_constraint = [0.5 ,2 , 8, 2, 10, 30, 3, 7, 25, 0.5]
        # "parsecmgmt -a run -p fluidanimate -i test",
        # "parsecmgmt -a run -p fluidanimate -i simdev",
        # "parsecmgmt -a run -p fluidanimate -i simsmall",
        # "parsecmgmt -a run -p fluidanimate -i simmedium",
        # "parsecmgmt -a run -p fluidanimate -i simlarge",
        #
        # "parsecmgmt -a run -p freqmine -i test",
        # "parsecmgmt -a run -p freqmine -i simdev",
        # "parsecmgmt -a run -p freqmine -i simsmall",
        # "parsecmgmt -a run -p freqmine -i simmedium",
        # "parsecmgmt -a run -p freqmine -i simlarge",
        #
        # "parsecmgmt -a run -p splash2x.fmm -i test",
        # "parsecmgmt -a run -p splash2x.fmm -i simdev",
        # "parsecmgmt -a run -p splash2x.fmm -i simsmall",  # 0.8s-4s
        # "parsecmgmt -a run -p splash2x.fmm -i simmedium",  # 3.8s-17s
        # "parsecmgmt -a run -p splash2x.fmm -i simlarge",  # 15s-68s
        #
        # # "parsecmgmt -a run -p blackscholes -i simsmall",
        # # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simmedium",
        # # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simlarge",
        #
        # "parsecmgmt -a run -p splash2x.radiosity -i test",
        # "parsecmgmt -a run -p splash2x.radiosity -i simdev",
        # "parsecmgmt -a run -p splash2x.radiosity -i simsmall",
        # "parsecmgmt -a run -p splash2x.radiosity -i simmedium",
        # "parsecmgmt -a run -p splash2x.radiosity -i simlarge",
        #
        # "parsecmgmt -a run -p splash2x.water_spatial -i test",
        # "parsecmgmt -a run -p splash2x.water_spatial -i simdev",
        # "parsecmgmt -a run -p splash2x.water_spatial -i simsmall",  # 1s-7s
        # "parsecmgmt -a run -p splash2x.water_spatial -i simmedium",  # 3s-13.5ss
        # "parsecmgmt -a run -p splash2x.water_spatial -i simlarge",  # 12s-55h  kecqiaylnilianos
        # # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simmedium",
        # # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simlarge",

        "parsecmgmt -a run -p x264 -i test",
        "parsecmgmt -a run -p x264 -i simdev",
        "parsecmgmt -a run -p x264 -i simmedium",
        "parsecmgmt -a run -p x264 -i simmedium",
        "parsecmgmt -a run -p x264 -i simlarge",

    ]
    # print(len(task))                                                              "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev"
    task_run = "taskset -c " + str(core) + " " + task[step]
    # os.system(task_run)
    # time =0
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


def task_select_core1(step, core):
    task = [
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev",
        "parsecmgmt -a run -p blackscholes -i simsmall",  # 0.19s-0.9s
        "parsecmgmt -a run -p blackscholes -i simmedium",  # 0.772s-3.6s
        "parsecmgmt -a run -p blackscholes -i simlarge",  # 3s-14s

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simlarge",
        #
        # latency_constraint = [0.5 ,2 , 8, 2, 10, 30, 3, 7, 25, 0.5]
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i simdev",
        # "parsecmgmt -a run -p fluidanimate -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simdev",
        "parsecmgmt -a run -p splash2x.fmm -i simsmall",  # 0.8s-4s
        "parsecmgmt -a run -p splash2x.fmm -i simmedium",  # 3.8s-17s
        "parsecmgmt -a run -p splash2x.fmm -i simlarge",  # 15s-68s

        # "parsecmgmt -a run -p blackscholes -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simdev",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simdev",
        "parsecmgmt -a run -p splash2x.water_spatial -i simsmall",  # 1s-7s
        "parsecmgmt -a run -p splash2x.water_spatial -i simmedium",  # 3s-13.5ss
        "parsecmgmt -a run -p splash2x.water_spatial -i simlarge",  # 12s-55h  kecqiaylnilianos
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simdev",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i simdev",
        "parsecmgmt -a run -p blackscholes -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i simlarge",

    ]
    # print(len(task))                                                              "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev"
    task_run = "taskset -c " + str(core) + " " + task[step]
    os.system(task_run)
    time = 0
    # var = os.popen(task_run).read()
    # time = 0
    # message = var.split()
    # for i in range(len(message)):
    #     if message[i] == "real":
    #         time = message[i + 1]
    # # break
    # a = re.findall(r'\d', time)
    # # print("a",a)
    # #    a = re.findall(r'\d', time)
    # if len(a) == 5:
    #     time = float(str(a[0]) + str(a[1]) + "." + str(a[2]) + str(a[3]) + str(a[4]))
    # if len(a) == 6:
    #     time = float(str(a[0]) + str(a[1]) + str(a[2]) + "." + str(a[3]) + str(a[4]) + str(a[5]))
    # # print("run_time",time)
    return time


def task_select_core_for_linux(step):
    task = [
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev",
        "parsecmgmt -a run -p blackscholes -i simsmall",  # 0.19s-0.9s
        "parsecmgmt -a run -p blackscholes -i simmedium",  # 0.772s-3.6s
        "parsecmgmt -a run -p blackscholes -i simlarge",  # 3s-14s

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simlarge",
        #
        # latency_constraint = [0.5 ,2 , 8, 2, 10, 30, 3, 7, 25, 0.5]
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i simdev",
        # "parsecmgmt -a run -p fluidanimate -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simdev",
        "parsecmgmt -a run -p splash2x.fmm -i simsmall",  # 0.8s-4s
        "parsecmgmt -a run -p splash2x.fmm -i simmedium",  # 3.8s-17s
        "parsecmgmt -a run -p splash2x.fmm -i simlarge",  # 15s-68s

        # "parsecmgmt -a run -p blackscholes -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.fmm -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simdev",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.radiosity -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simdev",
        "parsecmgmt -a run -p splash2x.water_spatial -i simsmall",  # 1s-7s
        "parsecmgmt -a run -p splash2x.water_spatial -i simmedium",  # 3s-13.5ss
        "parsecmgmt -a run -p splash2x.water_spatial -i simlarge",  # 12s-55h  kecqiaylnilianos
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p splash2x.water_spatial -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simdev",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fremine -i simlarge",

        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i test",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i simdev",
        "parsecmgmt -a run -p blackscholes -i simsmall",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i simmedium",
        # "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p x264 -i simlarge",

    ]
    # print(len(task))                                                              "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev"
    task_run = task[step]
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


# print(task_select_core_for_linux(1))

def _read_cpu_usage():
    """Read the current system cpu usage from /proc/stat"""
    statfile = "/proc/stat"
    cpulist = []
    try:
        f = open(statfile, 'r')
        lines = f.readlines()
    except:
        print("ERROR: Can not open %s,The system cannot continue to run", statfile)
        return []
    for line in lines:
        tmplist = line.split()
        if len(tmplist) < 5:
            continue
        for b in tmplist:
            m = re.search(r'cpu\d+', b)
            if m is not None:
                cpulist.append(tmplist)
    f.close()
    return cpulist


def get_freq_():
    list1 = []
    cmdline = " cat /proc/cpuinfo"
    var = os.popen(cmdline).read()
    message = var.split()
    # print(message)
    freq = []
    # print(freq,util)
    nomalize_freq_util = []
    for i in range(len(message)):
        if message[i] == "MHz":
            list1.append(float(message[i + 2]))  # 2700 = max_freq
    # for i in range(len(freq)):
    #     nomalize_freq_util.append(util[i]*0.7 + freq[i]*0.3)
    #     list1.append(util[i]*0.7 + freq[i]*0.3)
    print("freq", list1)
    return list1


def get_file_data_all(fliename):
    # cmdline = "cat blackscholes_ll.txt"
    count_alloca = 0
    count_load = 0
    count_fpext = 0
    count_fusb = 0
    count_fptrunc = 0
    count_fadd = 0
    count_call = 0
    count_sdiv = 0
    count_mul = 0
    count_add = 0
    count_bitcast = 0
    count_getelementptr = 0
    count_sext = 0
    count_store = 0
    count_func = 0
    count_icmp = 0
    count_common = 0
    count_type = 0
    count_private = 0

    cmdline = "cat" + " " + fliename
    # os.system("sensors")
    var = os.popen(cmdline).read()
    # s = []
    s1 = []
    temp = 0
    message = var.split(" ")
    # print(message)
    len1 = 0
    # print(message)
    total = 1
    for i in range(len(message)):
        if message[i] == "=":
            s1.append(message[i + 1])  # 取出数字并且转化为float型
            total = total + 1
        if message[i] == "store":
            count_store += 1
            total = total + 1
        if message[i] == "br":
            count_func += 1
            total = total + 1
        if message[i] == "load":
            count_load += 1
            total = total + 1
        if message[i] == "add":
            count_add += 1
            total = total + 1
        if message[i] == "getelementptr":
            count_getelementptr += 1
            total = total + 1
        if message[i] == "call":
            count_call += 1
            total = total + 1
        if message[i] == "icmp":
            count_icmp += 1
            total = total + 1
        if message[i] == "alloca":
            count_alloca += 1
        if message[i] == "fpext":
            count_fpext += 1
            total = total + 1
        if message[i] == "fsub":
            count_fusb += 1
            total = total + 1
        if message[i] == "fptrunc":
            count_fptrunc += 1
        if message[i] == "fadd":
            count_fadd += 1
            total = total + 1
        if message[i] == "sdiv":
            count_sdiv += 1
            total = total + 1
        if message[i] == "mul":
            count_mul += 1
            total = total + 1
        if message[i] == "bitcast":
            count_bitcast += 1
            total = total + 1
        if message[i] == "sext":
            count_sext += 1
            total = total + 1
        if message[i] == "common":
            count_common += 1
            total = total + 1
        if message[i] == "type":
            count_type += 1
            total = total + 1
        if message[i] == "private":
            count_private += 1
            total = total + 1
    return total  # /2000
    #
    # #list1 = []
    # #time.sleep(0.1)
    # list1.append(total)
    # list1.append( round(count_alloca /total,3))
    # list1.append(round(count_load /total,3) )
    # list1.append(round( count_fpext/total,3) )
    # list1.append(round(count_fusb /total,3))
    # list1.append(round(count_fptrunc/total,3))
    # list1.append( round( count_fadd /total,3))
    # list1.append( round(count_call /total,3))
    # list1.append( round(count_sdiv /total,3))
    # list1.append( round(count_mul /total,3))
    # list1.append( round(count_add /total,3))
    # list1.append( round(count_bitcast/total,3) )
    # list1.append( round(count_getelementptr /total,3))
    # list1.append( round(count_sext /total,3))
    # list1.append(round(count_store/total,3))
    # list1.append( round(count_func/total,3))
    # list1.append( round(count_icmp/total,3))
    # list1.append(round(count_common/total,3))
    # list1.append( round(count_type /total,3))
    # list1.append(round(count_private / total,3))


flie = [
    "llvm_data/blackscholes_ll.txt",
    "llvm_data/fluidanimate.ll",
    "llvm_data/fremine.ll",
    "llvm_data/splash2x_fmm.ll",
    "llvm_data/splash2x_radiosty.ll",
    "llvm_data/splash2x_water_spatial.ll",
    "llvm_data/x264.ll"]

list_freature = [1327, 9308, 3739, 1994, 3953]

for i in list_freature:
    print(i / sum(list_freature))
list_freature = [0.065, 0.458, 0.183, 0.098, 0.194]


def get_file_name(app):
    flie = [
        "llvm_data/blackscholes_ll.txt",
        "llvm_data/blackscholes_ll.txt",
        "llvm_data/blackscholes_ll.txt",

        "llvm_data/blackscholes_ll.txt",

        "llvm_data/fluidanimate.ll",
        # "llvm_data/fluidanimate.ll",
        # "llvm_data/fluidanimate.ll",
        # "llvm_data/blackscholes_ll.txt",  #一个轮回

        "llvm_data/splash2x_fmm.ll",

        # "llvm_data/splash2x_radiosty.ll",
        "llvm_data/splash2x_water_spatial.ll",
        # "llvm_data/fremine.ll",
        "llvm_data/x264.ll",
        "llvm_data/blackscholes_ll.txt",
    ]
    return flie[int(app)]


def get_input_Size_all(step):  # 获取输入的数据量大小
    file = [
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_test.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/blackscholes/inputs/input_simlarge.tar",

        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/fluidanimate/inputs/input_test.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/fluidanimate/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/fluidanimate/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/fluidanimate/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/fluidanimate/inputs/input_simlarge.tar",

        # "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/fmm/inputs/input_test.tar",
        # "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/fmm/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/fmm/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/fmm/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/fmm/inputs/input_simlarge.tar",

        # "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/water_spatial/inputs/input_test.tar",
        # "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/water_spatial/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/water_spatial/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/water_spatial/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-master/ext/splash2x/apps/water_spatial/inputs/input_simlarge.tar",

        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/x264/inputs/input_test.tar",
        # "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/x264/inputs/input_simdev.tar",
        "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/x264/inputs/input_simsmall.tar",
        "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/x264/inputs/input_simmedium.tar",
        "/home/ysg/下载/parsec-benchmark-master/pkgs/apps/x264/inputs/input_simlarge.tar",

    ]

    fsize = os.path.getsize(file[step])
    fsize = fsize / float(1024 * 1024)
    # list1.append(round(fsize, 3) )
    # print("input_size",list1)

    return round(fsize, 3)


#
# list_input_nomal = [2.646,10.557,42.197]
# for i in range(len(list_input_nomal)):
#     print("nomal_input")
#     print(list_input_nomal[i]/sum(list_input_nomal))


def run_and_get_util_freq(app, core):  # 获取sleep时间间隔内的标准化后的频率和利用率的加权值  系统压力值 ：freq * 0.3 + util * 0.7
    list1 = []
    cpuusage = {}
    cpustart = {}
    cpuend = {}
    util = []
    statfile = "/proc/stat"
    cpulist = []
    try:
        f = open(statfile, 'r')
        lines = f.readlines()
    except:
        print("ERROR: Can not open %s,The system cannot continue to run", statfile)
        return []
    for line in lines:
        tmplist = line.split()
        if len(tmplist) < 5:
            continue
        for b in tmplist:
            m = re.search(r'cpu\d+', b)
            if m is not None:
                cpulist.append(tmplist)
    f.close()
    linestart = cpulist
    if not linestart:
        return 0
    for cpustr in linestart:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpustart[cpustr[0]] = str(usni) + ":" + str(usn)
    # sleep = 3

    runtime = task_select_core(app, core)
    # time.sleep(0.2)
    lineend = _read_cpu_usage()
    if not lineend:
        return 0
    for cpustr in lineend:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpuend[cpustr[0]] = str(usni) + ":" + str(usn)
    for line in cpustart:
        start = cpustart[line].split(':')
        usni1, usn1 = float(start[0]), float(start[1])
        end = cpuend[line].split(':')
        usni2, usn2 = float(end[0]), float(end[1])
        cpuper = (usn2 - usn1) / (usni2 - usni1)
        cpuusage[line] = float(100 * cpuper)
        list1.append(round(float(cpuper), 3))

    for i in get_freq_():
        list1.append(i)
    # list1.append(get_file_data_all("llvm_data/blackscholes_ll.txt"))
    # list1.append(get_input_Size_all(1))
    #     #list1.append(float(cpuper))
    return list1, runtime, get_Tem()


#from mitul_threads_test import get_nom_state1


def run_and_get_newState(app, core, observation):
    runtime = task_select_core(app, core)
    get_nom_state1(observation, app + 1)
    return


def run_and_get_util_tem_tem_gradient(app, core):  # 获取sleep时间间隔内的标准化后的频率和利用率的加权值  系统压力值 ：freq * 0.3 + util * 0.7
    list1 = []
    cpuusage = {}
    cpustart = {}
    cpuend = {}
    util = []
    statfile = "/proc/stat"
    cpulist = []
    try:
        f = open(statfile, 'r')
        lines = f.readlines()
    except:
        print("ERROR: Can not open %s,The system cannot continue to run", statfile)
        return []
    for line in lines:
        tmplist = line.split()
        if len(tmplist) < 5:
            continue
        for b in tmplist:
            m = re.search(r'cpu\d+', b)
            if m is not None:
                cpulist.append(tmplist)
    f.close()
    linestart = cpulist
    if not linestart:
        return 0
    for cpustr in linestart:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpustart[cpustr[0]] = str(usni) + ":" + str(usn)
    # sleep = 3
    tem1 = get_Tem()
    runtime = task_select_core(app, core)
    # time.sleep(0.2)
    lineend = _read_cpu_usage()
    if not lineend:
        return 0
    for cpustr in lineend:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpuend[cpustr[0]] = str(usni) + ":" + str(usn)
    for line in cpustart:
        start = cpustart[line].split(':')
        usni1, usn1 = float(start[0]), float(start[1])
        end = cpuend[line].split(':')
        usni2, usn2 = float(end[0]), float(end[1])
        cpuper = (usn2 - usn1) / (usni2 - usni1)
        cpuusage[line] = float(100 * cpuper)
        list1.append(round(float(cpuper), 3))

    tem2 = get_Tem()
    for i in range(len(tem2)):
        list1.append(tem2[i] + (tem2[i] - tem1[i]))
    # for i in get_freq_():
    #     list1.append(i)
    # list1.append(get_file_data_all("llvm_data/blackscholes_ll.txt"))
    # list1.append(get_input_Size_all(1))
    #     #list1.append(float(cpuper))
    return list1, runtime, get_Tem()


def get_app_feature_and_input_size(filename, inputfile):
    list1 = []
    list1.append(get_file_data_all(filename))
    list1.append(get_input_Size_all(inputfile))
    return list1


def get_init_state():  # 获取sleep时间间隔内的标准化后的频率和利用率的加权值  系统压力值 ：freq * 0.3 + util * 0.7
    list1 = []
    cpuusage = {}
    cpustart = {}
    cpuend = {}
    util = []
    statfile = "/proc/stat"
    cpulist = []
    try:
        f = open(statfile, 'r')
        lines = f.readlines()
    except:
        print("ERROR: Can not open %s,The system cannot continue to run", statfile)
        return []
    for line in lines:
        tmplist = line.split()
        if len(tmplist) < 5:
            continue
        for b in tmplist:
            m = re.search(r'cpu\d+', b)
            if m is not None:
                cpulist.append(tmplist)
    f.close()
    linestart = cpulist
    if not linestart:
        return 0
    for cpustr in linestart:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpustart[cpustr[0]] = str(usni) + ":" + str(usn)
    # sleep = 3

    time.sleep(2)
    lineend = _read_cpu_usage()
    if not lineend:
        return 0
    for cpustr in lineend:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpuend[cpustr[0]] = str(usni) + ":" + str(usn)
    for line in cpustart:
        start = cpustart[line].split(':')
        usni1, usn1 = float(start[0]), float(start[1])
        end = cpuend[line].split(':')
        usni2, usn2 = float(end[0]), float(end[1])
        cpuper = (usn2 - usn1) / (usni2 - usni1)
        cpuusage[line] = float(100 * cpuper)
        list1.append(round(float(cpuper), 3))

    for i in get_freq_():
        list1.append(i)
    list1.append(get_file_data_all("llvm_data/blackscholes_ll.txt"))
    # list1.append(get_input_Size_all(0))
    list1.append(4.5)
    # list1.append(float(cpuper))
    return list1


# t1 =time.time()
# print(get_Tem())
# print(run_and_getState(1,1))
# t2 = time.time()
# print(t2-t1)
# get_freq_()
# t3 = time.time()
# print(t3-t2)
# get_Tem()
# t4 = time.time()
# print(t4-t3)
# get_file_data_all("llvm_data/blackscholes_ll.txt")
# t5 = time.time()
# print(t5-t4)
# get_input_Size_all(1)
# t6 = time.time()
# print(t6-t5)
#
# print(get_init_state(1,1))

def get_RELETA_init_state():  # 获取sleep时间间隔内的标准化后的频率和利用率的加权值  系统压力值 ：freq * 0.3 + util * 0.7
    list1 = []
    cpuusage = {}
    cpustart = {}
    cpuend = {}
    util = []
    statfile = "/proc/stat"
    cpulist = []
    try:
        f = open(statfile, 'r')
        lines = f.readlines()
    except:
        print("ERROR: Can not open %s,The system cannot continue to run", statfile)
        return []
    for line in lines:
        tmplist = line.split()
        if len(tmplist) < 5:
            continue
        for b in tmplist:
            m = re.search(r'cpu\d+', b)
            if m is not None:
                cpulist.append(tmplist)
    f.close()
    linestart = cpulist
    if not linestart:
        return 0
    for cpustr in linestart:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpustart[cpustr[0]] = str(usni) + ":" + str(usn)
    # sleep = 3

    time.sleep(2)
    tem1 = get_Tem()
    lineend = _read_cpu_usage()
    if not lineend:
        return 0
    for cpustr in lineend:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpuend[cpustr[0]] = str(usni) + ":" + str(usn)
    for line in cpustart:
        start = cpustart[line].split(':')
        usni1, usn1 = float(start[0]), float(start[1])
        end = cpuend[line].split(':')
        usni2, usn2 = float(end[0]), float(end[1])
        cpuper = (usn2 - usn1) / (usni2 - usni1)
        cpuusage[line] = float(100 * cpuper)
        list1.append(round(float(cpuper), 3))

    tem2 = get_Tem()
    for i in range(len(tem2)):
        list1.append((tem2[i] + (tem2[i] - tem1[i])) / 81)

    return list1


def get_RELETA_state(app, core):  # 获取sleep时间间隔内的标准化后的频率和利用率的加权值  系统压力值 ：freq * 0.3 + util * 0.7
    runtime = task_select_core(app, core)
    list1 = []
    cpuusage = {}
    cpustart = {}
    cpuend = {}
    util = []
    statfile = "/proc/stat"
    cpulist = []
    try:
        f = open(statfile, 'r')
        lines = f.readlines()
    except:
        print("ERROR: Can not open %s,The system cannot continue to run", statfile)
        return []
    for line in lines:
        tmplist = line.split()
        if len(tmplist) < 5:
            continue
        for b in tmplist:
            m = re.search(r'cpu\d+', b)
            if m is not None:
                cpulist.append(tmplist)
    f.close()
    linestart = cpulist
    if not linestart:
        return 0
    for cpustr in linestart:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpustart[cpustr[0]] = str(usni) + ":" + str(usn)
    # sleep = 3

    tem1 = get_Tem()
    time.sleep(0.8)
    # runtime = task_select_core(app, core)
    lineend = _read_cpu_usage()
    if not lineend:
        return 0
    for cpustr in lineend:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpuend[cpustr[0]] = str(usni) + ":" + str(usn)
    for line in cpustart:
        start = cpustart[line].split(':')
        usni1, usn1 = float(start[0]), float(start[1])
        end = cpuend[line].split(':')
        usni2, usn2 = float(end[0]), float(end[1])
        cpuper = (usn2 - usn1) / (usni2 - usni1)
        cpuusage[line] = float(100 * cpuper)
        list1.append(round(float(cpuper), 3))

    tem2 = get_Tem()
    for i in range(len(tem2)):
        list1.append((tem2[i] + (tem2[i] - tem1[i])) / 81)
    return list1, runtime, get_Tem()


def get_compare_state():
    return get_Tem()

# t1 = time.time()
# get_Tem()
# t2 = time.time()
# get_freq_()
# t3= time.time()
# print(t2-t1,t3-t2)
