# clang -O0 -emit-llvm helloworld.c -S -o filename.ll
#task   splash2x.water_spatial,  splash2x.water_nsquared,  splash2x.volrend  ,splash2x.radiosity
# splash2x.ocean_ncp  ,  splash2x.ocean_cp,  splash2x.fmm ,

import threading
from RL_brain_change_layer import DeepQNetwork
from change_limit_action_system_env_set_affinity import *
#from model_change_reward.data_classify import *
import matplotlib.pyplot as plt
#from data_classify import text_save
from new_freq_set import get_freq_tem,get_mean_Tem,get_action1,get_cpu_usage_freq, new_freq_set_for_core2
from mitul_threads_test import get_nom_state
import numpy as np
import time
import random
import os
from new_model_env import get_init_state,run_and_get_util_freq,get_app_feature_and_input_size,get_file_name,get_latency_constraint,compute_reward,run_and_get_util_tem_tem_gradient,task_select_core
import sys
from mitul_threads_test import get_nom_state1
from mitul_threads_test import get_nomalize_core_stress_and_temprerature_stress
os.system("sudo modprobe msr")
#cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
#/home/ysg/下载/parsec-benchmark-master/bin
def run_task_allocate():
    total_step = 2000
    step = 0
    temp = []
    observation =[]
    get_nom_state1(observation,0)  #获取初始化状态
    observation.append(0.273)
    #observation.append( 0.1834)
    observation = [observation]

    Run_time=[]
    tem2,t = get_mean_Tem()
    while step < total_step:
        if step == 0:
            RL.Load_wight()
            print("LOAD WEIGHT")
        #print("obobobo",observation)
        time1_b=time.time()
        action = RL.choose_action(step, observation) #强化学习，动作选择
        core, freq = get_core_and_freq(action)  #选择的动作映射出核的选择和选择的动作
        ttt1 = time.time() - time1_b
        #print("aaaaaaaaaaaaaaa",action,core,)
        print("core_freq",freq)
        new_freq_set_for_core2(core,freq)  #为对应的核设置频率
        #observation_,run_time,tem = run_and_get_util_freq(app,core) #运行时获取s_ 程序運行时间
        run_time, observation_, tem,tttt1=get_nomalize_core_stress_and_temprerature_stress(step  % 10,core)
        #run_time, observation_, tem,tttt1=get_nomalize_core_stress_and_temprerature_stress(step  % 5,core)
        #run_time = task_select_core(step % 9, core)
        #tem1, tem = get_mean_Tem()

        print(observation,observation_)
        tem1=np.mean(tem)#
        #latency_constraint = get_latency_constraint(step%30)  # 获取用户的延迟约束
        latency_constraint = get_latency_constraint(step % 10 )  # 获取用户的延迟约束
        print("r_T", latency_constraint, run_time)
        reward = compute_reward(run_time, latency_constraint, tem2, tem, core)  # 计算reward
             #reward = compute_reward(run_time,latency_constraint,tem2,tem)
        tem2 = tem1
        # observation_ = []
        # get_nom_state1(observation_, app + 1)
             #observation_,run_time,tem = run_and_get_util_tem_tem_gradient(app,core) #利用率，温度，温度梯度作为状态
        print(tem1,tem,reward)
        # text_save("data/10_task_use_model_mean_tem1.txt", [np.mean(tem)]) #数据保存 112
        # text_save("data/10_task_use_model_max_tem1.txt", [max(tem)])
        # text_save("data/10_task_use_model_ac_tem1.txt", [tem[int(core)]])
        # text_save("data/10_task_use_model_var_tem1.txt", [np.var(tem)])
        # text_save("data/10_task_use_model_run_time1.txt", [run_time])
        # #
        # text_save("data/5_task_use_model_mean_tem22.txt", [np.mean(tem)])  # 数据保存 112
        # text_save("data/5_task_use_model_max_tem22.txt", [max(tem)])
        # text_save("data/5_task_use_model_ac_tem22.txt", [tem[int(core)]])
        # text_save("data/5_task_use_model_var_tem22.txt", [np.var(tem)])
        # text_save("data/5_task_use_model_run_time22.txt", [run_time])

        # #text_save("data/data2/model_over_head.txt", [tttt1+ttt1])
        # print("t11", tttt1+ttt1)
        #
        # text_save("data/ccmodel114_all_8_core_33_task_t_all_learning_rate0.1.txt", [run_time])
             # if app ==3:
             #    text_save("data/data2/model_time_five_task4.txt", [run_time])
             # if app ==4:
             #    text_save("data/data2/model_time_five_task5.txt", [run_time])
        observation_.append(get_latency_constraint(step%10+1))
        print(observation,action,reward,observation_)
        RL.store_transition(observation, action, [[reward]], observation_) #记忆存储

        if (step > 100) and (step % 5 == 0):   #学习更新神经网络
            RL.learn()


        #
        # if  step == (total_step-1):
        #     RL.Save_wight()
        #     print("SAVE WEIGHT")

        observation = [observation_]
        #print("obob",observation)


        step += 1
        print("step-----------",step)

    import matplotlib.pyplot as plt
    plt.plot(temp, c="red")
    plt.plot(Run_time, c="blue")
    plt.legend()
    plt.show()


    # plt.savefig('./max-tem_5000_.jpg')
    # plt.show()

#total_time 27959.647125005722
#52354.78433012962


if __name__ == "__main__":
    # maze game
    env = System_ENV()
    RL = DeepQNetwork(env.n_actions, env.n_features,
                      learning_rate=0.1,
                      reward_decay=0.9,
                      e_greedy=0.6,
                      replace_target_iter=5,
                      memory_size=2000,
                      # output_graph=True
                      )
    os.system("sudo modprobe msr")
    os.system("sudo python set_cpu_freq.py -g userspace")
    for i in range(psutil.cpu_count()):
        os.system("sudo cpufreq-set -c " +str(i) + " -g userspace")
    T1 = time.time()
    run_task_allocate()


#
#[3601000, 3400000, 3000000, 2600000, 2200000, 1800000, 1400000, 1000000]
# blackscholes_run_time = [0.361,0.206,  1.592,0.754,  5.681, 3.085 ]  #3.272
# fluidanimate_run_time = [5.737,2.825,  11.765,5.951, 35.070,18.731]  ##20.389
# splash2x_fmm_run_time = [4.054,2.140,  17.670,9.571, 69.538,36.369]  #40.772
# splash2x_water_spatial_run_time = [4.867,2.335, 9.085,4.604, 34.446,18.264] #20.284
# x264_run_time = [1.314,0.482,  3.689,1.513, 9.693,5.190] #5.851
#
# latency_constrain =[0.3, 1.2, 4, 4.2, 8, 23]