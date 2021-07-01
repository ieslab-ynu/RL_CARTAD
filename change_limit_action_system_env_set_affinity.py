"""
Reinforcement learning maze example.

Red rectangle:          explorer.
Black rectangles:       hells       [reward = -1].
Yellow bin circle:      paradise    [reward = +1].
All other states:       ground      [reward = 0].

This script is the environment part of this example.
The RL is in RL_brain.py.

View more on my tutorial page: https://morvanzhou.github.io/tutorials/
"""
import numpy as np
import numpy
import time
import sys
import subprocess
#from s_tuii.Sources.RaplPowerSource import *
#from freq_setting_tool_master.cat_get_cpu_freq import *
#from freq_setting_tool_master.new_freq_set import *
#from freq_setting_tool_master.system_env_set_affinity import *
#from freq_setting_tool_master.set_affinity import *
#from freq_setting_tool_master.get_tempature  import  get_mean_Tem
#from freq_setting_tool_master.get_tempature  import  get_core_Tem
#from freq_setting_tool_master.k_means import output_state_type
#from freq_setting_tool_master.k_means import *
#from freq_setting_tool_master.get_tempature import get_Tem
#from freq_setting_tool_master.new_get_tem_util import get_util_tem
from new_freq_set import get_freq_tem,get_mean_Tem,get_action1,freq_set_acton,get_core_Tem,text_save,new_freq_set_for_core,get_cpu_usage_freq
#from freq_setting_tool_master.new_freq_set import  *
#from freq_setting_tool_master.freq_set import  *
from mitul_threads_test import get_nom_state
import psutil
import os

def get_available_freq():
    cmdline = "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"
    var = os.popen(cmdline).read()
    s1 = []
    message = var.split()
    for i in range(len(message)):
        if i % 2==0:
            s1.append(int(message[i]))
    return s1




num_core = psutil.cpu_count()

def get_core_and_freq(action,all_freq):
    s_limit = all_freq
    # s1 = get_available_freq()
    # s1 =[3101000 ,3100000 ,2900000 ,2800000 ,2600000 ,2400000, 2300000, 2100000, 1900000 ,1800000 ,1600000 ,1500000, 1300000 ,1100000 ,1000000 ,800000 ]
    # s1=all_freq
    # print("s1",s1)
    # for i in range(len(s1)):
    #     if  i % 2 ==0:
    #         s_limit.append(s1[i])
    print("freq",s_limit)
    core = int(action / len(s_limit))
    freq = action % len(s_limit)
    print(s_limit,len(s_limit))
    return core, s_limit[freq]



class System_ENV(object):
    def __init__(self):
        self.n_actions = psutil.cpu_count() * len(get_available_freq())
        """使用可用频率数和内核数确定动作空间
        Use the number of available frequencies and cores to determine the action space
        """

        self.n_features = num_core * 2 + 3 #16 ,7

    def get_core_and_freq(self,action, all_freq):
        s_limit = []
        s1 = all_freq
        for i in range(len(s1)):
            if i % 2 == 0:
                s_limit.append(s1[i])

        core = int(action / len(s_limit))
        freq = action % len(s_limit)
        print(s_limit, len(s_limit))
        return core, s_limit[freq]

    def get_action(self,action):
        action_map = [['0', '0'], ['0', '1'], ['0', '2'], ['0', '3'], ['0', '4'], ['0', '5'], ['0', '6'], ['0', '7'],
                      ['0', '8'], ['0', '9'],
                      ['1', '0'], ['1', '1'], ['1', '2'], ['1', '3'], ['1', '4'], ['1', '5'], ['1', '6'], ['1', '7'],
                      ['1', '8'], ['1', '9'],
                      ['2', '0'], ['2', '1'], ['2', '2'], ['2', '3'], ['2', '4'], ['2', '5'], ['2', '6'], ['2', '7'],
                      ['2', '8'], ['2', '9'],
                      ['3', '0'], ['3', '1'], ['3', '2'], ['3', '3'], ['3', '4'], ['3', '5'], ['3', '6'], ['3', '7'],
                      ['3', '8'], ['3', '9'],
                      ['4', '0'], ['4', '1'], ['4', '2'], ['4', '3'], ['4', '4'], ['4', '5'], ['4', '6'], ['4', '7'],
                      ['4', '8'], ['4', '9'],
                      ['5', '0'], ['5', '1'], ['5', '2'], ['5', '3'], ['5', '4'], ['5', '5'], ['5', '6'], ['5', '7'],
                      ['5', '8'], ['5', '9'],
                      ['6', '0'], ['6', '1'], ['6', '2'], ['6', '3'], ['6', '4'], ['6', '5'], ['6', '6'], ['6', '7'],
                      ['6', '8'], ['6', '9'],
                      ['7', '0'], ['7', '1'], ['7', '2'], ['7', '3'], ['7', '4'], ['7', '5'], ['7', '6'], ['7', '7'],
                      ['7', '8'], ['7', '9'], ]
        print(action_map[action])
        return action_map[action][0], action_map[action][1]
