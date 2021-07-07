# CARTAD
1.本项目主要在Ubuntu 16.04的环境下运行
## Ubuntu系统环境：
#### （1）安装cpufreq-set用来调节内核运行频率：sudo apt-get install cpufrequtils
#### （2）安装taskset，通过设置任务的亲和性，把任务绑定到指定的内核运行：sudo apt-get install schedutils
#### （3）设置ubuntu调频模式，当前系统默认只支持performance,powersave.我们要将其设置为支持五种不同的调频模式（powersave, userspace, ondemand, conservative, performance），修改pstate的设置：在/etc/default/grub中把GRUB_CMDLINE_LINUX_DEFAULT="quietsplash"改为GRUB_CMDLINE_LINUX_DEFAULT="quietsplash intel_pstate=disable"。
#### （4）安装sensors，读取内核温度：sudo apt-get install lm-sensors
#### （5）需要修改sudo配置文件，修改为使用sudo命令时不用输入密码：vi /etc/sudoers，将%sudo  ALL=(ALL:ALL)  ALL替换为%sudo   ALL=(ALL:ALL) NOPASSWD: ALL
#### （6）编译parsec任务集：编译过程请参考https://blog.csdn.net/caoyahong114/article/details/51654937，和https://www.pianshen.com/article/88501726775/，确保 blackscholes,  fluidanimate , freqmine,  splash2x.fmm,  splash2x.radiosity,  splash2x.water_spatial, x264这七个程序均编译通过，并且每个任务下的五个输入（test , simdev ,simsmall , simmedium  simlarge）均可以使用.编译完成请配置parsec的环境变量，确保parsecmgmt命令可在所有根目录下使用，例如：parsecmgmt -a run -p x264 -i test。
## python运行环境：python3,tensorflow-1.4,re,os,threading

## 运行方式：
### python run_CARTAD.py  -t  task_num   -n  total_step  -d .......
### 查看参数说明：python run_CARTAD.py  -h  
### 参数说明：
####       total_step： 所有任务运行的总次数（int型）
####       task_num  ： 使用的任务总数（1-35的整数）
####       load_model ：是否加载之前学习结束保存的模型，类型为布尔型，默认为保存模型
####       e: 贪婪系数（0-1的小数，建议大于0.6）
####       save_model : 在所有任务运行结束时是否保存模型，默认值为True
####       save_data  : 任务运行过程中是否保存温度以及运行时间等实验数据，默认值为True
####       constrant_coefficient : 设置约束占最大运行时间的比率（0.3-1之间的小数）
#### 最后希望您能顺利使用我们的实验源码，此外如果有用到我们源码，请引用我们的论文。
