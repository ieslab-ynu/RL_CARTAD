"""
    我们的项目中总的使用了七个不同的任务进行实验，七个任务依次为： blackscholes  fluidanimate  freqmine  splash2x.fmm  splash2x.radiosity  splash2x.water_spatial x264
   并且每个任务均使用类五个不同的输入，五个输入依次为： test   simdev  simsmall   simmedium   simlarge
   我们使用以上不同的任务和每个任务不同的输入共组合出 35个不同的任务

   """

""" 
    In our project, we used seven different tasks to carry out the experiment. The seven tasks are: BlackScholes、 fluidanimate 、freqmine、 splash2x.fmm 、splash2x.radiosity 、splash2x.water_spatial 、x264
    And each task uses five different input classes, the five inputs are: Test、 simdev 、simsmall、 simmedium 、simlarge
    We combined 35 different tasks using the different tasks and different inputs of each task
 
 """
from max_latency import set_task_latency
import argparse
from RL_brain_change_layer import DeepQNetwork
from change_limit_action_system_env_set_affinity import *
from new_freq_set import get_mean_Tem, new_freq_set_for_core2
import numpy as np
import time
import os
from new_model_env import compute_reward
from mitul_threads_test import get_nom_state_init
from mitul_threads_test import get_nomalize_core_stress_and_temprerature_stress
os.system("sudo modprobe msr")
task_llvm=[]
def run_task_allocate(total_step,task_num,load_model,e,save_model,save_data,constraint_coefficient):
    step = 0
    temp = []
    observation = []
    latency_list = set_task_latency(task_num, constraint_coefficient)
    """
    1.在ubuntu userspace调频模式下使用最低运行频率来测试三十五个任务的最长运行时间
    2.根据用户的需求设置延迟约束，例如想将约束设置为最大运行时间的一半，则constraint_coefficient=0.5

    1.Use the minimum run frequency in Ubuntu userspace frequency regulation mode to test the maximum run time of 35 tasks
    2.Set the delay constraint according to the user's needs. For example, 
    if you want to set the constraint to half of the maximum running time, the constraint_ coefficient=0.5
     """
    all_freq=get_available_freq()
    """获取系统可用的频率，为了限制动作空间用了一半的可用频率
        Obtain the frequency available to the system, and use half the available frequency to limit the action space
      """

    get_nom_state_init(observation)
    observation.append(latency_list[0])
    observation = [observation]
    """ 获取初始状态
        Get initial state
    """
    Run_time = []
    tem2,t = get_mean_Tem()
    while step < total_step:
        if step == 0 and load_model == True:
            RL.Load_wight()
            print("LOAD WEIGHT")
        """
        When the parameters passed in are the load model, the model is loaded at the beginning of the task
        当传进的参数为加载模型时，在任务开始运行的时候加载模型
        """
        action = RL.choose_action(step, observation,e,total_step)
        core, freq = get_core_and_freq(action,all_freq)
        print("core_freq",freq)
        new_freq_set_for_core2(core,freq)
        """
            选择动作，按选择的动作确定内核以及频率，为指定的内核设置频率
           Select action
           Determine the kernel and frequency according to the selected action
           Sets the frequency for the specified kernel

        """
        run_time, observation_, tem=get_nomalize_core_stress_and_temprerature_stress(step  % task_num,core,task_num)
        """ 运行任务，获取新的状态
             Running tasks and Get new status
        """
        tem1 = np.mean(tem)
        latency_constraint = latency_list[step % task_num]
        print("r_T", latency_constraint, run_time)
        reward = compute_reward(run_time, latency_constraint, tem2, tem, core)
        """ 获取用户的延迟约束
            计算回报
            Calculate reward
        """
        tem2 = tem1
        if step == 0:
            localtime = time.asctime(time.localtime(time.time()))
            name = str(localtime) + "_" + str(task_num) + "_tasks"
        if save_data == True:
            text_save("data/" + name + "_mean_tem.txt", [np.mean(tem)])
            text_save("data/" + name + "_max_tem.txt", [max(tem)])
            text_save("data/" + name + "_ac_tem.txt", [tem[int(core)]])
            text_save("data/" + name + "_var_tem.txt", [np.var(tem)])
            text_save("data/" + name + "_run_time.txt", [run_time])
        """
        使用任务开始运行的时间和使用的任务总数来命名保存的数据
        保存的数据依次为：平均温度，峰值温度，运行任务内核的温度，所有内核的温度方差，所有任务的运行时间
        Name the saved data using the time the task started running and the total number of tasks used. 
        The stored data are: average temperature, peak temperature, temperature of running task kernel, 
        temperature variance of all cores, running time of all tasks

        """
        observation_.append(latency_list[(step % task_num) + 1])
        RL.store_transition(observation, action, [[reward]], observation_)
        """ 记忆存储
            Memory storage
         """
        if (step > 100) and (step % 5 == 0):
            RL.learn()
        """  学习并且更新神经网络
            Learning and updating neural networks
        """

        if  step == (total_step-1) and save_model == True:
            RL.Save_wight()
            print("SAVE WEIGHT")
        """
        传递的参数要求保存模型时，在任务运行结束时保存模型
        When the parameters passed require the model to be saved, the model is saved at the end of the task
        """
        observation = [observation_]
        step += 1
        print("step-----------",step)

    import matplotlib.pyplot as plt
    plt.plot(temp, c="red")
    plt.plot(Run_time, c="blue")
    plt.legend()
    plt.show()


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Tool for RAPL setting')
    parser.add_argument('-n', '--Iterations', help='Set the total number of times the task runs$C', required=False,default=3000, type=int)
    parser.add_argument('-t', '--tasks', help='Set the number of tasks(t<=35)$C', required=False,default=3,type=int)
    parser.add_argument('-m', '--load_model', help='If load model (True or False)$C', required=False, default=False, type=bool)
    parser.add_argument('-s', '--save_model', help='If save model(True or False)$C', required=False, default=False, type=bool)
    parser.add_argument('-l', '--learning_rate', help='Set learning rate$C', required=False, default=0.1, type=float)
    parser.add_argument('-e', '--e_greedy', help='Set greedy coefficient$C', required=False, default=0.8, type=float)
    parser.add_argument('-d', '--save_data', help='If save data(True or False)$C', required=False, default=False, type=bool)
    parser.add_argument('-c', '--constraint_coefficient', help='Set the coefficient of the delay constraint (as a percentage of the maximum run time)$C', required=False, default=0.7, type=float)

    args = parser.parse_args()

    opt = vars(args)
    print(args)
    total_step = opt['Iterations']
    task_num = opt["tasks"]
    load_model = opt['load_model']
    lr = opt['learning_rate']
    e = opt['e_greedy']
    save_model=opt['save_model']
    save_data = opt['save_data']
    constraint_coefficient = opt['constraint_coefficient']

    env = System_ENV()
    RL = DeepQNetwork(env.n_actions, env.n_features,
                      learning_rate = lr,
                      reward_decay = 0.9,
                      e_greedy = e,
                      replace_target_iter = 5,
                      memory_size = 2000,
                      # output_graph=True
                      )
    os.system("sudo modprobe msr")
    os.system("sudo python set_cpu_freq.py -g userspace")
    for i in range(psutil.cpu_count()):
        os.system("sudo cpufreq-set -c " +str(i) + " -g userspace")
    """
    将所有内核的调配模式设置为userspace
    Set the frequency adjustment mode of all cores to userspace
    """
    run_task_allocate(total_step,task_num,load_model,e,save_model,save_data,constraint_coefficient)
    """
       参数说明：
       total_step： 所有任务运行的总次数（int型）
       task_num  ： 使用的任务总数（1-35的整数）
       load_model ：是否加载之前学习结束保存的模型，类型为布尔型，默认为保存模型
       e: 贪婪系数（0-1的小数，建议大于0.6）
       save_model : 在所有任务运行结束时是否保存模型，默认值为True
       save_data  : 任务运行过程中是否保存温度以及运行时间等实验数据，默认值为True
       constrant_coefficient : 设置约束占最大运行时间的比率（0.3-1之间的小数）
         
    """

    """
      Parameter Description:
      total_ step: the total number of times all tasks run (inti type)
      task_ num: total number of tasks used (integer from 1 to 35)
      load_model: whether to load the model saved after learning. The type is Boolean. The default is save model
      e: greedy coefficient (decimals of 0-1, greater than 0.6 recommended)
      save_ model: whether to save the model at the end of all tasks. The default value is true
      save_ data: whether to save the experimental data such as temperature and running time during the task running. The default value is true
      constraint_coefficient: set the ratio of constraint to the maximum runtime (decimal between 0.3-1)

    """