#https://blog.csdn.net/zhangchenglikecc/article/details/52103737
import  os
import time
import re
import numpy as np
import psutil
#sudo modprobe
# os.system("sudo python set_cpu_freq.py -g userspace")
# os.system("sudo python set_cpu_freq.py")
# os.system("sudo modprobe msr")
# str1 = input("Enter op core_id(0~7): ")
# str2 = input("Enter op freq_step(0-9): ")
# set_commend="sudo ./freq_set -c "+str(str1)+ " -s  "+str(str2)
# print(set_commend)
# os.system("sudo ./freq_set")
# os.system(set_commend)
# os.system("sudo ./freq_set")
def get_mean_Tem():
    cmdline = "sensors"
    #os.system("sensors")
    var = os.popen(cmdline).read()
    #s = []
    s1=[]
    s2=[]
    message = var.split()
    print(message)
    for i in range(len(message)):
        if message[i]=="Core":
            #s1.append(message[i+1])
            #s1.append(filter(str.isdigit, message[i + 2]))
            #s1.append(re.findall("\d+",message[i + 2])[0])


            s1.append(float(re.findall("\d+",message[i + 2])[0].split()[0]))#取出数字并且转化为float型
            s1.append(float(re.findall("\d+", message[i + 2])[0].split()[0]))  # 取
    s3 = s1
    s1=np.mean(s1)
    return s1,s3
# t1=time.time()
# T1=get_mean_Tem()
# time.sleep(1)
# T2 = get_mean_Tem()
#
# T3 = []
# for i in range(len(T1)):
#     T3.append(T2[i] + (T1[i]-T2[i]))
#
# print(T1,T2,T3)
# t2=time.time()
# print("get_tem_time",t2-t1)


def get_core_Tem(core):
    cmdline = "sensors"
    #os.system("sensors")
    var = os.popen(cmdline).read()
    #s = []
    s1=[]
    temp=0
    message = var.split()
    #print(message)
    for i in range(len(message)):
        if message[i]=="temp1:":
            #s.append(message[i+2])
            #s1.append(filter(str.isdigit, message[i + 2]))
            #s1.append(re.findall("\d+",message[i + 2])[0])
            s1.append(float(re.findall("\d+",message[i + 1])[0].split()[0]))#取出数字并且转化为float型
            #s1.append(float(re.findall("\d+", message[i + 2])[0].split()[0]))
            #float(message[i + 2].split()[0])
            #power_max = float(power_max.split()[0])

    #s1=np.mean(s1)
    return s1[int(core)],s1

def text_save(filename, data):#filename为写入CSV文件的路径，data为要写入数据列表.
    file = open(filename,'a')
    for i in range(len(data)):

        s = str(data[i]).replace('[','').replace(']','')+" "#去除[],这两行按数据不同，可以选择
        #s = s.replace("'",' ').replace(',',' ')    #去除单引号，逗号，每行末尾追加换行符
        file.write(s)
    file.write("\n")
    file.close()
    print("保存文件成功")

def get_freq_tem():
    freq=[]
    # cmdline = "sudo python set_cpu_freq.py"
    # var = os.popen(cmdline).read()
    #
    # message = var.split()
    # # print(message)
    # for i in range(len(message)):
    #     if message[i] == "frequency:":
    #         freq.append(message[i + 1])
    # #
    # # #         s3.append(message[i + 1])
    # #
    cmdline=" cat /proc/cpuinfo"
    var = os.popen(cmdline).read()
    message = var.split()
    # print(message)
    for i in range(len(message)):
        if message[i]=="MHz":
            freq.append(message[i+2])

    cmdline = "top -bi -n 4 -d 0"
    #cmdline = "top 1"
    var = os.popen(cmdline).read()
    message = var.split()
    for i in range(len(message)):
        if message[i] == "%Cpu(s):":
            freq.append(message[i + 1])

    # while len(freq) < 16:
    #     freq.append(0)
    # # cmdline = "sensors"
    # # os.system("sensors")
    # var = os.popen(cmdline).read()
    # message = var.split()
    # # print(message)
    # for i in range(len(message)):
    #     if message[i] == "Core":
    #         # s.append(message[i+2])
    #         # s1.append(filter(str.isdigit, message[i + 2]))
    #         # s1.append(re.findall("\d+",message[i + 2])[0])
    #         freq.append(float(re.findall("\d+", message[i + 2])[0].split()[0]))
    #         freq.append(float(re.findall("\d+", message[i + 2])[0].split()[0]))

    freq= [float(x) for x in freq]
    freq = np.array(freq)
    freq = [x.astype(np.float32) for x in freq]
    # i=8
    # while  8<=i and i<16:
    #     freq[i]=freq[i]*100
    #     i=i+1

    print(freq)
    return freq
#get_freq_tem()
import  psutil
def task_select_core(task_i,core):
    task = ["/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p blackscholes -i simdev","1",
            "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p fluidanimate -i simdev",
            "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p freqmine -i simdev",
            "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p dedup -i simdev",
            "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p facesim -i simdev", "/home/ysg/下载/parsec-benchmark-master/bin/parsecmgmt -a run -p ferret -i simdev",
           ]
    #print(len(task))

    task_run = "taskset -c " + str(core) + " " + task[task_i]
    #os.system(task_run)
    #var = os.popen(task_run).read()
    # #print(get_Utilize())
    #
    #message = var.split()
    # for i in range(len(message)):
    #     if message[i] == "real":
    #         time=message[i + 1]
    # a = re.findall(r'\d', time)
    #time=str(a[1])+"."+str(a[2])+str(a[3])+str(a[4])
    #time=float(str(a[1])+"."+str(a[2])+str(a[3])+str(a[4]))
    var = os.popen(task_run).read()
    time = 0
    message = var.split()
    for i in range(len(message)):
        if message[i] == "real":
            time = message[i + 1]
    a = re.findall(r'\d', time)
    if len(a) == 5:
        time = float(str(a[0]) + str(a[1]) + "." + str(a[2]) + str(a[3]) + str(a[4]))
    if len(a) == 6:
        time = float(str(a[0]) + str(a[1]) + str(a[2]) + "." + str(a[3]) + str(a[4]) + str(a[5]))
    #print("run_time",time)
    return time

def freq_set_acton(core2,step2):  #指定的核指定的频率梯度设置频率
    #os.system("sudo modprobe msr")
    set_commend = "sudo ./freq_set -c " + str(core2) + " -s  " + str(step2)
    os.system(set_commend)
    print("频率设置完成")

def freq_set_acton1(core2,step2):  #指定的核指定的频率梯度设置频率
    #os.system("sudo modprobe msr")
    for  i in range(15):
        set_commend = "sudo python freq_set -c " + str(i) + " -f  " + "800000"
        os.system(set_commend)
    print("频率设置完成")

#freq_set_acton1(1,5)


def get_action(action):
    action_map=    [ ['0','0'], ['0', '1'], ['0', '2'], ['0', '3'], ['0', '4'],['0', '5'],['0', '6'],['0', '7'],['0', '8'],['0', '9'],['0', '10'],
                     ['1', '0'],['1', '1'], ['1', '2'], ['1', '3'], ['1', '4'],['1', '5'],['1', '6'],['1', '7'],['1', '8'],['1', '9'],['1', '10'],
                     ['2', '0'],['2', '1'], ['2', '2'], ['2', '3'], ['2', '4'],['2', '5'],['2', '6'],['2', '7'],['2', '8'],['2', '9'],['2', '10'],
                     ['3', '0'],['3', '1'], ['3', '2'], ['3', '3'], ['3', '4'],['3', '5'],['3', '6'],['3', '7'],['3', '8'],['3', '9'],['3', '10'],
                     ['4', '0'],['4', '1'], ['4', '2'], ['4', '3'], ['4', '4'],['4', '5'],['4', '6'],['4', '7'],['4', '8'],['4', '9'],['4', '10'],
                     ['5', '0'],['5', '1'], ['5', '2'], ['5', '3'], ['5', '4'],['5', '5'],['5', '6'],['5', '7'],['5', '8'],['5', '9'],['5', '10'],
                     ['6', '0'],['6', '1'], ['6', '2'], ['6', '3'], ['6', '4'],['6', '5'],['6', '6'],['6', '7'],['6', '8'],['6', '9'],['6', '10'],
                     ['7', '0'],['7', '1'], ['7', '2'], ['7', '3'], ['7', '4'],['7', '5'],['7', '6'],['7', '7'],['7', '8'],['7', '9'],['7', '10'],         ]
    print(action_map[action])
    return action_map[action][0],action_map[action][1]



def get_action1(action):
    action_map=    [ ['0','1'],  ['0', '2'], ['0', '3'], ['0', '4'],['0', '5'],#['0', '6'],['0', '7'],['0', '8'],['0', '9'],['0', '10'],
                     ['1','1'],  ['1', '2'], ['1', '3'], ['1', '4'],['1', '5'],#['1', '6'],['1', '7'],['1', '8'],['1', '9'],['1', '10'],
                     ]
    print("action",action_map[action])
    return action_map[action][0],action_map[action][1]
#freq_set_acton(0,9)

def set_freq1(freq,core):
    #os.system("sudo python set_cpu_freq.py -g userspace")
    set_commend = "sudo cpufreq-set  " +" -c "+str(core)+ " -f " +str(freq)+"000"
    os.system(set_commend)
    print("频率设置完成")

def set_freq2(freq,core):
    set_commend = "sudo cpufreq-set  " +" -c "+str(core)+ " -f " +str(freq)
    os.system(set_commend)


def freq_set_slef_method(core,step):  #根据梯度为八个核中的一个核设置频率
    core=int(core)
    #core_num = psutil.cpu_count()
    core_num = 2
    if core>=0 and core<=core_num:
        if core==0:
            if step==1:
                set_freq1(800,0)
            elif step == 2:
                set_freq1(1400, 0)
            elif step==3:
                set_freq1(1600,0)
            elif step==4:
                set_freq1(2400,0)
            elif step ==5:
                set_freq1(2600, 0)
            elif step==6:
                set_freq1(2800,0)
            elif step==7:
                set_freq1(3000,0)
            elif step==8:
                set_freq1(3200,0)
            elif step==9:
                set_freq1(3400,0)
            else :
                set_freq1(3600,0)

        if core==1:
            if step==1:
                set_freq1(800,1)
            elif step == 2:
                set_freq1(1400, 1)
            elif step==3:
                set_freq1(1600,1)
            elif step==4:
                set_freq1(2400,1)
            elif step ==5:
                set_freq1(2600, 1)
            elif step==6:
                set_freq1(2800,1)
            elif step==7:
                set_freq1(3000,1)
            elif step==8:
                set_freq1(3200,1)
            elif step==9:
                set_freq1(3400,1)
            else :
                set_freq1(3600,1)

        if core==2:
            if step==1:
                set_freq1(800,2)
            elif step == 2:
                set_freq1(1400, 2)
            elif step==3:
                set_freq1(1600,2)
            elif step==4:
                set_freq1(2400,2)
            elif step ==5:
                set_freq1(2600,2)
            elif step==6:
                set_freq1(2800,2)
            elif step==7:
                set_freq1(3000,2)
            elif step==8:
                set_freq1(3200,2)
            elif step==9:
                set_freq1(3400,2)
            else :
                set_freq1(3600,2)

        if core==3:
            if step==1:
                set_freq1(800,3)
            elif step == 2:
                set_freq1(1400, 3)
            elif step==3:
                set_freq1(1600,3)
            elif step==4:
                set_freq1(2400,3)
            elif step ==5:
                set_freq1(2600,3)
            elif step==6:
                set_freq1(2800,3)
            elif step==7:
                set_freq1(3000,3)
            elif step==8:
                set_freq1(3200,3)
            elif step==9:
                set_freq1(3400,3)
            else :
                set_freq1(3600,3)

        if core==4:
            if step==1:
                set_freq1(800,4)
            elif step == 2:
                set_freq1(1400,4)
            elif step==3:
                set_freq1(1600,4)
            elif step==4:
                set_freq1(2400,4)
            elif step ==5:
                set_freq1(2600,4)
            elif step==6:
                set_freq1(2800,4)
            elif step==7:
                set_freq1(3000,4)
            elif step==8:
                set_freq1(3200,4)
            elif step==9:
                set_freq1(3400,4)
            else :
                set_freq1(3600,4)


        if core==5:
            if step==1:
                set_freq1(800,5)
            elif step == 2:
                set_freq1(1400,5)
            elif step==3:
                set_freq1(1600,5)
            elif step==4:
                set_freq1(2400,5)
            elif step ==5:
                set_freq1(2600,5)
            elif step==6:
                set_freq1(2800,5)
            elif step==7:
                set_freq1(3000,5)
            elif step==8:
                set_freq1(3200,5)
            elif step==9:
                set_freq1(3400,5)
            else :
                set_freq1(3600,5)

        if core==6:
            if step==1:
                set_freq1(800,6)
            elif step == 2:
                set_freq1(1400,6)
            elif step==3:
                set_freq1(1600,6)
            elif step==4:
                set_freq1(2400,6)
            elif step ==5:
                set_freq1(2600,6)
            elif step==6:
                set_freq1(2800,6)
            elif step==7:
                set_freq1(3000,6)
            elif step==8:
                set_freq1(3200,6)
            elif step==9:
                set_freq1(3400,6)
            else :
                set_freq1(3600,6)

        if core==7:
            if step==1:
                set_freq1(800,7)
            elif step == 2:
                set_freq1(1400,7)
            elif step==3:
                set_freq1(1600,7)
            elif step==4:
                set_freq1(2400,7)
            elif step ==5:
                set_freq1(2600,7)
            elif step==6:
                set_freq1(2800,7)
            elif step==7:
                set_freq1(3000,7)
            elif step==8:
                set_freq1(3200,7)
            elif step==9:
                set_freq1(3400,7)
            else :
                set_freq1(3600,7)



# os.system("sudo modprobe msr")
#os.system("sudo python set_cpu_freq.py -g userspace")
# begin=time.time()
# # os.system("sudo ./freq_set")
#freq_set_acton(0, 1)


#############################
# def set_freq1(core ,step):
#     if (core == 0 or core == 1):
#         freq_set_acton(0, step)
#         freq_set_acton(1, step)
#     elif (core == 0 or core == 1):
#         freq_set_acton(2, step)
#         freq_set_acton(3, step)
#     elif (core == 0 or core == 1):
#         freq_set_acton(4, step)
#         freq_set_acton(5, step)
#     else:
#         freq_set_acton(6, step)
#         freq_set_acton(7, step)
#
#############################
# def set_freq2(core ,freq):
#     if (core == 0 or core == 1):
#         set_freq1(freq, core)
#         set_freq1(freq, core)
#     elif (core == 2 or core == 3):
#         set_freq1(freq, core)
#         set_freq1(freq, core)
#     elif (core == 4 or core == 5):
#         set_freq1(freq, core)
#         set_freq1(freq, core)
#     else:
#         set_freq1(freq, core)
#         set_freq1(freq, core)
#
# set_freq2(2 ,800)
# set_freq2(4 ,800)
# set_freq2(7 ,1200)
# set_freq2(0 ,800)
# for i in range(2):
#     print("time",task_select_core(4,0))
#     print(i)
# # # i=4
# core=0
# if (core==0 or core==1):
#     freq_set_acton(0, i)
#     freq_set_acton(1, i)
# elif (core==0 or core==1):
#     freq_set_acton(2, i)
#     freq_set_acton(3, i)
# elif (core == 0 or core == 1):
#     freq_set_acton(4, i)
#     freq_set_acton(5, i)
# else:
#     freq_set_acton(6, i)
#     freq_set_acton(7, i)
# i=3
# freq_set_acton(0,i)
# freq_set_acton(1,i)
# freq_set_acton(2,i)
# freq_set_acton(3,i)
# freq_set_acton(4,i)
# freq_set_acton(5,i)
# freq_set_acton(6,i)
# freq_set_acton(7,i)
# for i in range(2):
#     print("time",task_select_core(6,0))
#     print(i)
# ###################################


# end=time.time()
# print("set_frequency time",end-begin)
#os.system("sudo ./freq_set")

# # #os.system("sudo ./freq_set")
#freq_set_slef_method(0, 1)
# os.system("sudo cpufreq-set -g userspace")
# set_commend = "sudo cpufreq-set  " + " -c " + str(0) + " -f " + str(1600) + "000"
# os.system(set_commend)
# # # #print("频率设置完成")

# #os.system("sudo python set_cpu_freq.py -g powersave")
# #os.system("sudo ./freq_set")
# # set_commend = "sudo cpufreq-set  " +  " -g " + "powersave"
# # os.system(set_commend )
# for i in range(3):
#     print("time",task_select_core(4,7))
#     print(i)

#
# freq_set_slef_method(1,0)
# freq_set_slef_method(0,0)
#
# set_freq1(1400, 0)
# set_freq1(1700, 1)


def new_freq_set_for_linux(core,step):
    if core == 0:
        if step == 1:
            set_freq1(1400 , 0)
        if step == 2:
            set_freq1(1700 , 0)
        if step == 3:
            set_freq1(2000 , 0)
        if step == 4:
            set_freq1(2400 , 0)
        if step == 5:
            set_freq1(2700 , 0)
    if core == 1:
        if step == 1:
            set_freq1(1400 , 1)
        if step == 2:
            set_freq1(1700 , 1)
        if step == 3:
            set_freq1(2000 , 1)
        if step == 4:
            set_freq1(2400 , 1)
        if step == 5:
            set_freq1(2700 , 1)

import psutil
import os

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



def get_core_and_freq(action):
    s1 = get_available_freq()
    core = int(action / len(s1))
    freq = action % len(s1)
    return core, s1[freq]

def new_freq_set_for_core(core,step):
    step = int(step)
    core_num = psutil.cpu_count()
    freq = 800
    if step == 1:
        freq = 800
    if step ==2:
        freq =1700
    if step == 3:
        freq =2000
    if step == 4:
        freq = 2400
    if  step == 5:
        freq = 3601

    for i in range(core_num):
        set_freq1(freq , i)

def new_freq_set_for_core2(core,freq):
    core_num = psutil.cpu_count()
    for i in range(core_num):
        set_freq2(freq , i)
#new_freq_set_for_core(1,4)


def get_util():
    freq=[]
    cmdline="cat htop"
    var = os.popen(cmdline).read()
    message = var.split()
    print(message)


def get_performance_counter():
    cmdline="vmstat 2 1"
    var = os.popen(cmdline).read()
    message = var.split()
    count = 0
    for i in range(len(message)):
        if message[i] =="st":
            count = i
            break
    performance_counter = message[count+1:]
    print(performance_counter)


#get_performance_counter()
def cpu_stat():
    cpu_num = 2
    #  name   user  nice   system      idle      iowait  irrq  softirq  steal guest guest_nice
    with open("/proc/stat", "r") as f:
        line = f.readline()
        spl = line.split(" ")
        worktime_1 = sum([int(i) for i in spl[2:]])
        idletime_1 = int(spl[5])
        time.sleep(0.2)
    with open("/proc/stat", "r") as f:
        line = f.readline()
        spl = line.split(" ")
        worktime_2 = sum([int(i) for i in spl[2:]])
        idletime_2 = int(spl[5])
    #print(worktime_1)
    dworktime = (worktime_2 - worktime_1)
    didletime = (idletime_2 - idletime_1)
    cpu_usage = (dworktime - didletime)/didletime




import re, time
def _read_cpu_usage():
    """Read the current system cpu usage from /proc/stat"""
    statfile = "/proc/stat"
    cpulist = []
    try:
        f = open(statfile, 'r')
        lines = f.readlines()
    except:
        print( "ERROR: Can not open %s,The system cannot continue to run" , statfile)
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


# CPU的即时利用率的计算公式：
# CPU在t1到t2时间段总的使用时间 = ( user2+ nice2+ system2+ idle2+ iowait2+ irq2+ softirq2) - ( user1+ nice1+ system1+ idle1+ iowait1+ irq1+ softirq1)
# CPU在t1到t2时间段空闲使用时间 = (idle2 - idle1)
# CPU在t1到t2时间段即时利用率 =  1 - CPU空闲使用时间 / CPU总的使用时间

def get_cpu_usage_freq():
    cpuusage = {}
    cpustart = {}
    cpuend = {}
    util = []
    linestart = _read_cpu_usage()
    if not linestart:
        return 0
    for cpustr in linestart:
        usni = float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3]) + float(cpustr[5]) + float(cpustr[6]) + float(
            cpustr[7]) + float(cpustr[4])
        usn =float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpustart[cpustr[0]] = str(usni) + ":" + str(usn)
    sleep = 1
    time.sleep(sleep)
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
        util.append(int(100 * cpuper))

    cmdline=" cat /proc/cpuinfo"
    var = os.popen(cmdline).read()
    message = var.split()
    # print(message)

    for i in range(len(message)):
        if message[i]=="MHz":
            util.append(message[i+2])
    return util



def get_Tem():
    cmdline = "sensors"
    #os.system("sensors")
    var = os.popen(cmdline).read()
    #s = []
    s1=[]
    s2=[]
    message = var.split()
    #print(message)
    for i in range(len(message)):
        if message[i]=="temp1:":
            #s1.append(message[i+1])
            #s1.append(filter(str.isdigit, message[i + 2]))
            #s1.append(re.findall("\d+",message[i + 2])[0])


            #s1.append(float(re.findall("\d+",message[i + 1])[0].split()[0]))#取出数字并且转化为float型
            s1.append(float(re.findall("\d+", message[i + 1])[0].split()[0]))  # 取


            #float(message[i + 2].split()[0])
            #power_max = float(power_max.split()[0])


    #s1 = np.array(s1)
    #print(s1)
    s3=s1
    s2=np.max(s1)
    s1=np.mean(s1)
    return s3


# t1=time.time()
# T1=get_Tem()
# time.sleep(0.8)
# T2 = get_Tem()
#
# T3 = []
# for i in range(len(T1)):
#     T3.append(T2[i] + (T2[i]-T1[i]))

def get_tem_and_temgradient(sleep_time): # t = (T1 + (T1 - T2))/ 80
    T1 = get_Tem()
    time.sleep(sleep_time)
    T2 = get_Tem()
    T3 = []
    for i in range(len(T1)):
        T3.append((T2[i] + (T2[i] - T1[i]))/80)
    return T3

def get_nomalize_freq_util(sleep): #获取sleep时间间隔内的标准化后的频率和利用率的加权值  系统压力值 ：freq * 0.3 + util * 0.7
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
        usn =float(cpustr[1]) + float(cpustr[2]) + float(cpustr[3])
        cpustart[cpustr[0]] = str(usni) + ":" + str(usn)
    #sleep = 0.5
    time.sleep(sleep)
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
        util.append(float( cpuper))

    cmdline=" cat /proc/cpuinfo"
    var = os.popen(cmdline).read()
    message = var.split()
    # print(message)
    freq = []
    #print(freq,util)
    nomalize_freq_util = []
    for i in range(len(message)):
        if message[i]=="MHz":
            freq.append(float(message[i+2])/2700)  #2700 = max_freq
    for i in range(len(freq)):
        nomalize_freq_util.append(util[i]*0.7 + freq[i]*0.3)
    print(freq, util)

    return nomalize_freq_util


def get_all_state():
    nom_FU = get_nomalize_freq_util(0.4)



# new_freq_set_for_core(0,1)
#800000  3101000
# new_freq_set_for_core2(0, 800000)
# get_freq_tem()