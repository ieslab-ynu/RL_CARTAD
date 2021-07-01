import numpy as np
def output_state_freq_tem(file1):
    data = []

    with open(file1) as file:
        for line in file:
           data.append(line)
    return data




def self_8_core30_task_different_task2():  #0:4000
    len1 = 30
    len2 = 3
    #parsec blackscholes 输入为 程序时间约束下
    #latency_constrain = [0.3, 1.2, 4]
    # blackscholes_run_time = [0.361,0.206,  1.592,0.754,  5.681, 3.085 ]
    mean = output_state_freq_tem("data/ccmodel114_mean_all_8_core_30_task_all_learning_rate0.1.txt")
    max_tem = output_state_freq_tem("data/ccmodel114_max_all_8_core_30_task_all_learning_rate0.1.txt")

    ac_tem = output_state_freq_tem("data/ccmodel114_action_all_8_core_30_task_all_learning_rate0.1.txt")
    ac_tem = output_state_freq_tem("data/ccmodel114_var_tem_all_8_core_30_task_all_learning_rate0.1.txt")
   #
    # max_tem = max_tem[10000:]
    # ac_tem = ac_tem[10000:]

    latency_constrain = [0.4, 1.5, 6, 1.6, 7, 30, 2.6, 6, 25, 0.4]
    t1 = []
    t111 = []
    t2 = []
    t112 = []
    t3 = []
    t113 = []

    t4 = []
    t114 = []
    t5 = []
    t115 = []
    t6 = []
    t116 = []

    t7 = []
    t117 = []
    t8 = []
    t118 = []
    t9 = []
    t119 = []
    t10 = []
    t11 = []
    t12 = []
    t13 = []
    t14 = []
    t15 = []
    t16 = []
    t17 = []
    t18 = []
    t19 = []
    t20 = []
    t21 = []
    t22 = []
    t23 = []
    t24 = []
    t25 = []
    t26 = []
    t27 = []
    t28 = []
    t29 = []
    t30 = []
    t31 = []
    t32 = []
    t33 = []
    t34 = []
    t35 = []
    time1 = output_state_freq_tem("data/ccmodel114_all_8_core_30_task_t_all_learning_rate0.1.txt")
    for i in range(len(time1)):
        # if i % 35 == 34:
        #     t1.append(float(time1[i].strip("\n")))
        #     t111.append(15)
        # elif i %35== 33:
        #     t2.append(float(time1[i].strip("\n")))
        #     t112.append(7)
        # elif i % 35 == 32:
        #     t3.append(float(time1[i].strip("\n")))
        #     t113.append(3)
        # elif i % 35 == 31:
        #     t4.append(float(time1[i].strip("\n")))
        #     t114.append(15)
        # elif i % 35 ==30 :
        #     t5.append(float(time1[i].strip("\n")))
        #     t115.append(10)
        if i % 30== 29:
            t6.append(float(time1[i].strip("\n")))
            t116.append(2)
        elif i % 30 == 28:
            t7.append(float(time1[i].strip("\n")))
            t117.append(8)
        elif i %30 == 27:
            t8.append(float(time1[i].strip("\n")))
            t118.append(2)
        elif i %30== 26:
            t9.append(float(time1[i].strip("\n")))
            t112.append(7)
        elif i % 30 == 25:
            t10.append(float(time1[i].strip("\n")))
            t113.append(3)
        elif i % 30== 24:
            t11.append(float(time1[i].strip("\n")))
            t114.append(15)
        elif i % 30 ==23 :
            t12.append(float(time1[i].strip("\n")))
            t115.append(10)
        elif i % 30== 22:
            t13.append(float(time1[i].strip("\n")))
            t116.append(2)
        elif i % 30 == 21:
            t14.append(float(time1[i].strip("\n")))
            t117.append(8)
        elif i % 30== 20:
            t15.append(float(time1[i].strip("\n")))
            t118.append(2)
        elif i % 30 == 19:
            t16.append(float(time1[i].strip("\n")))
            t112.append(7)
        elif i % 30 == 18:
            t17.append(float(time1[i].strip("\n")))
            t113.append(3)
        elif i % 30 == 17:
            t18.append(float(time1[i].strip("\n")))
            t114.append(15)
        elif i % 30 == 16:
            t19.append(float(time1[i].strip("\n")))
            t115.append(10)
        elif i % 30 == 15:
            t20.append(float(time1[i].strip("\n")))
            t116.append(2)
        elif i % 30 == 14:
            t21.append(float(time1[i].strip("\n")))
            t117.append(8)
        elif i % 30 == 13:
            t22.append(float(time1[i].strip("\n")))
            t118.append(2)

        elif i % 30 == 12:
            t23.append(float(time1[i].strip("\n")))
            t116.append(2)
        elif i % 30 == 11:
            t24.append(float(time1[i].strip("\n")))
            t117.append(8)
        elif i % 30 == 10:
            t25.append(float(time1[i].strip("\n")))
            t118.append(2)
        elif i % 30 == 9:
            t26.append(float(time1[i].strip("\n")))
            t112.append(7)
        elif i % 30 == 8:
            t27.append(float(time1[i].strip("\n")))
            t113.append(3)
        elif i % 30 == 7:
            t28.append(float(time1[i].strip("\n")))
            t114.append(15)
        elif i % 30 == 6:
            t29.append(float(time1[i].strip("\n")))
            t115.append(10)
        elif i % 30 == 5:
            t30.append(float(time1[i].strip("\n")))
            t116.append(2)
        elif i % 30 == 4:
            t31.append(float(time1[i].strip("\n")))
            t117.append(8)
        elif i % 30 == 3:
            t32.append(float(time1[i].strip("\n")))
            t118.append(2)
        # else:
        elif i % 30 == 2:
            t33.append(float(time1[i].strip("\n")))
            t116.append(2)
        elif i % 30 == 1:
            t34.append(float(time1[i].strip("\n")))
            t117.append(8)
        else :
            t35.append(float(time1[i].strip("\n")))
            t118.append(2)
        # else:
        #     t9.append(float(time1[i].strip("\n")))
        #     t119.append(0.5)

    print(len(t1),len(t2),len(t3),len(t4),len(t5),len(t6),len(t7),len(t8),len(t9),len(t10),len(t11),len(t12),len(t13),len(t14),len(t15))
    # t1 = t1[400:]
    # t111 =t111 [400:]
    # t2 = t2[400:]
    # t112 =t112 [400:]
    # t3 = t3[400:]
    # t113 =t113 [400:]
    #
    # # lc_ttt1 = lc_ttt1[0:335]
    # # lc_ttt2 = lc_ttt2[0:335]
    # # lc_ttt3 = lc_ttt3[0:335]
    #
    #
    #
    # t4 = t4[400:]
    # t114 = t114[400:]
    # t5 = t5[400:]
    # t115 = t115[400:]
    # t6 = t6[400:]
    # t116 = t116[400:]
    #
    # t7 = t7[400:]
    # t117 = t117[400:]
    # t8 = t8[400:]
    # t118 = t118[400:]
    # t9 = t9[400:]
    # #t119 = t119[400]
    t = 170
    print("zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz")
    print("zzzz",np.mean(t1[t:]) ,np.mean(t2[t:]),np.mean(t3[t:]),np.mean(t4[t:]),np.mean(t5[t:]),np.mean(t6[:t]),np.mean(t7[t:]),np.mean(t8[t:]),np.mean(t9[t:]) ,np.mean(t10[t:]),np.mean(t11[t:]),np.mean(t12[t:]),np.mean(t13[t:]),np.mean(t14[t:]),np.mean(t15[t:]))
    print("zzzz",np.mean(t16[t:]) ,np.mean(t17[t:]),np.mean(t18[t:]),np.mean(t19[t:]),np.mean(t20[t:]),np.mean(t21[t:]),np.mean(t22[t:]),np.mean(t23[t:]),np.mean(t24[t:]) ,np.mean(t25[t:]),np.mean(t26[t:]),np.mean(t27[t:]),np.mean(t28[t:]),np.mean(t29[t:]),np.mean(t30[t:]))
    print("zzzz",np.mean(t31[t:]) ,np.mean(t32[t:]),np.mean(t33[t:]),np.mean(t34[t:]),np.mean(t35[t:]))
    import matplotlib.pyplot as plt

        #     #print(t[i])
        # elif  (i) % 3 ==2:
        #     t3.append(t[i])
        # else :
        #     t1.append(t[i])

    max_tem1= []
    for i in max_tem:
        i = float(i)
        max_tem1.append(i)


    mean1= []
    for i in mean:
        i = float(i)
        mean1.append(i)

    action_tem1 = []
    for i in ac_tem:

        i = float(i)
        action_tem1.append(i)
    #max_tem1 = max_tem1[4000:]
    print("relata-max",np.mean(max_tem1))

    new_model = []
    for i in range(int(len(max_tem1) / len1)):
        new_model.append(sum(max_tem1[i * len1:(i + 1) * len1]) / len1)

    new_model1 = []
    for i in range(int(len(mean1) / len1)):
        new_model1.append(sum(mean1[i * len1:(i + 1) * len1]) / len1)

    new_model2 = []
    for i in range(int(len(action_tem1) / len1)):
        new_model2.append(sum(action_tem1[i * len1:(i + 1) * len1]) / len1)
    import matplotlib.pyplot as plt
    plt.figure(figsize=(10, 5), dpi=50)  # 6 6 80
    #
    # plt.plot(new_model, color="r", linestyle="-")
    # plt.plot(new_model1, color="black", linestyle="-")
    plt.plot(new_model2, color="blue", linestyle="-",label="ac")
    plt.show()

    plt.plot(t1, color="r", linestyle="-")
    plt.plot(t2, color="r", linestyle="-")
    plt.plot(t3,linewidth = '1', color="blue", linestyle="-")
    plt.plot(t4, color="r", linestyle="-")

    plt.plot(t5, color="g", linestyle="-")
    plt.plot(t6, linewidth = '1',color="c", linestyle="-")
    plt.plot(t7, color="g", linestyle="-")
    plt.plot(t8, linewidth='1', color="c", linestyle="-")
    # #
    # #

    plt.plot(t9, color="red", linestyle="-")
    plt.plot(t10,linewidth = '1', color="black", linestyle="-")
    plt.plot(t11, color="g", linestyle="-")
    plt.plot(t12, linewidth='1', color="c", linestyle="-")
    # #

    plt.plot(t13, color="red", linestyle="-")
    plt.plot(t14,linewidth = '1', color="black", linestyle="-")
    # #

    plt.plot(t15, color="red", linestyle="-")
    plt.plot(t16,linewidth = '1', color="black", linestyle="-")
    #plt.plot(t5, color="red", linestyle="-")
    plt.plot(t17,linewidth = '1', color="black", linestyle="-")
    plt.plot(t18, linewidth='1', color="black", linestyle="-")

    plt.plot(t19, color="g", linestyle="-")
    plt.plot(t20, linewidth = '1',color="c", linestyle="-")
    plt.plot(t21, color="g", linestyle="-")
    plt.plot(t22, linewidth='1', color="c", linestyle="-")
    # #
    # #

    plt.plot(t23, color="red", linestyle="-")
    plt.plot(t24,linewidth = '1', color="black", linestyle="-")
    plt.plot(t25, color="g", linestyle="-")
    plt.plot(t26, linewidth='1', color="c", linestyle="-")
    # #

    plt.plot(t27, color="red", linestyle="-")
    plt.plot(t28,linewidth = '1', color="black", linestyle="-")
    # #

    plt.plot(t29, color="red", linestyle="-")
    plt.plot(t30,linewidth = '1', color="black", linestyle="-")
    #plt.plot(t5, color="red", linestyle="-")
    plt.plot(t31,linewidth = '1', color="black", linestyle="-")
    plt.plot(t32, linewidth='1', color="black", linestyle="-")
    plt.plot(t33,linewidth = '1', color="black", linestyle="-")
    #plt.plot(t5, color="red", linestyle="-")
    plt.plot(t34,linewidth = '1', color="black", linestyle="-")
    plt.plot(t35, linewidth='1', color="black", linestyle="-")

    plt.show()

self_8_core30_task_different_task2()

def self_8_core5_task_different_task2():  #0:4000
    len1 = 1
    len2 = 3
    #parsec blackscholes 输入为 程序时间约束下
    #latency_constrain = [0.3, 1.2, 4]
    # blackscholes_run_time = [0.361,0.206,  1.592,0.754,  5.681, 3.085 ]
    mean = output_state_freq_tem("data/ccmodel114_mean_all_8_core_5_task_all_learning_rate0.1.txt")
    max_tem = output_state_freq_tem("data/ccmodel114_max_all_8_core_5_task_all_learning_rate0.1.txt")

    ac_tem = output_state_freq_tem("data/ccmodel114_action_all_8_core_5_task_all_learning_rate0.1.txt")
    #ac_tem = output_state_freq_tem("data/ccmodel114_var_tem_all_8_core_5_task_all_learning_rate0.1.txt")
   #
    # max_tem = max_tem[10000:]
    # ac_tem = ac_tem[10000:]

    latency_constrain = [0.4, 1.5, 6, 1.6, 7, 30, 2.6, 6, 25, 0.4]
    t1 = []
    t111 = []
    t2 = []
    t112 = []
    t3 = []
    t113 = []

    t4 = []
    t114 = []
    t5 = []
    t115 = []
    t6 = []
    t116 = []

    t7 = []
    t117 = []
    t8 = []
    t118 = []
    t9 = []
    t119 = []
    t10 = []
    t11 = []
    t12 = []
    t13 = []
    t14 = []
    t15 = []
    t16 = []
    t17 = []
    t18 = []
    t19 = []
    t20 = []
    t21 = []
    t22 = []
    t23 = []
    t24 = []
    t25 = []
    t26 = []
    t27 = []
    t28 = []
    t29 = []
    t30 = []
    t31 = []
    t32 = []
    t33 = []
    t34 = []
    t35 = []
    time1 = output_state_freq_tem("data/ccmodel114_all_8_core_5_task_t_all_learning_rate0.1.txt")
    for i in range(len(time1)):
        # if i % 35 == 34:
        #     t1.append(float(time1[i].strip("\n")))
        #     t111.append(15)
        # elif i %35== 33:
        #     t2.append(float(time1[i].strip("\n")))
        #     t112.append(7)
        # elif i % 35 == 32:
        #     t3.append(float(time1[i].strip("\n")))
        #     t113.append(3)
        # elif i % 35 == 31:
        #     t4.append(float(time1[i].strip("\n")))
        #     t114.append(15)
        # elif i % 35 ==30 :
        #     t5.append(float(time1[i].strip("\n")))
        #     t115.append(10)
        # if i % 30== 29:
        #     t6.append(float(time1[i].strip("\n")))
        #     t116.append(2)
        # elif i % 30 == 28:
        #     t7.append(float(time1[i].strip("\n")))
        #     t117.append(8)
        # elif i %30 == 27:
        #     t8.append(float(time1[i].strip("\n")))
        #     t118.append(2)
        # elif i %30== 26:
        #     t9.append(float(time1[i].strip("\n")))
        #     t112.append(7)
        # elif i % 30 == 25:
        #     t10.append(float(time1[i].strip("\n")))
        #     t113.append(3)
        # elif i % 30== 24:
        #     t11.append(float(time1[i].strip("\n")))
        #     t114.append(15)
        # elif i % 30 ==23 :
        #     t12.append(float(time1[i].strip("\n")))
        #     t115.append(10)
        # elif i % 30== 22:
        #     t13.append(float(time1[i].strip("\n")))
        #     t116.append(2)
        # elif i % 30 == 21:
        #     t14.append(float(time1[i].strip("\n")))
        #     t117.append(8)
        # elif i % 30== 20:
        #     t15.append(float(time1[i].strip("\n")))
        #     t118.append(2)
        # elif i % 30 == 19:
        #     t16.append(float(time1[i].strip("\n")))
        #     t112.append(7)
        # elif i % 30 == 18:
        #     t17.append(float(time1[i].strip("\n")))
        #     t113.append(3)
        # elif i % 30 == 17:
        #     t18.append(float(time1[i].strip("\n")))
        #     t114.append(15)
        # elif i % 30 == 16:
        #     t19.append(float(time1[i].strip("\n")))
        #     t115.append(10)
        # elif i % 30 == 15:
        #     t20.append(float(time1[i].strip("\n")))
        #     t116.append(2)
        # elif i % 30 == 14:
        #     t21.append(float(time1[i].strip("\n")))
        #     t117.append(8)
        # elif i % 30 == 13:
        #     t22.append(float(time1[i].strip("\n")))
        #     t118.append(2)
        #
        # elif i % 30 == 12:
        #     t23.append(float(time1[i].strip("\n")))
        #     t116.append(2)
        # elif i % 30 == 11:
        #     t24.append(float(time1[i].strip("\n")))
        #     t117.append(8)
        # elif i % 30 == 10:
        #     t25.append(float(time1[i].strip("\n")))
        #     t118.append(2)
        # elif i % 30 == 9:
        #     t26.append(float(time1[i].strip("\n")))
        #     t112.append(7)
        # elif i % 30 == 8:
        #     t27.append(float(time1[i].strip("\n")))
        #     t113.append(3)
        # elif i % 30 == 7:
        #     t28.append(float(time1[i].strip("\n")))
        #     t114.append(15)
        # elif i % 30 == 6:
        #     t29.append(float(time1[i].strip("\n")))
        #     t115.append(10)
        # elif i % 30 == 5:
        #     t30.append(float(time1[i].strip("\n")))
        #     t116.append(2)    max_07=[ 0.1834, 0.1911, 1.5414, 1.5036, 5.2948, 0.1834]
        if i % 5 == 4:
            t31.append(float(time1[i].strip("\n")))
            t117.append(0.1834)
        elif i % 5 == 3:
            t32.append(float(time1[i].strip("\n")))
            t118.append(0.1911)
        # else:
        elif i % 5 == 2:
            t33.append(float(time1[i].strip("\n")))
            t116.append(1.5414)
        elif i % 5 == 1:
            t34.append(float(time1[i].strip("\n")))
            t119.append(5.2948)
        else :
            t35.append(float(time1[i].strip("\n")))
            #t118.append(2)
        # else:
        #     t9.append(float(time1[i].strip("\n")))
        #     t119.append(0.5)

    print(len(t1),len(t2),len(t3),len(t4),len(t5),len(t6),len(t7),len(t8),len(t9),len(t10),len(t11),len(t12),len(t13),len(t14),len(t15))
    # t1 = t1[400:]
    # t111 =t111 [400:]
    # t2 = t2[400:]
    # t112 =t112 [400:]
    # t3 = t3[400:]
    # t113 =t113 [400:]
    #
    # # lc_ttt1 = lc_ttt1[0:335]
    # # lc_ttt2 = lc_ttt2[0:335]
    # # lc_ttt3 = lc_ttt3[0:335]
    #
    #
    #
    # t4 = t4[400:]
    # t114 = t114[400:]
    # t5 = t5[400:]
    # t115 = t115[400:]
    # t6 = t6[400:]
    # t116 = t116[400:]
    #
    # t7 = t7[400:]
    # t117 = t117[400:]
    # t8 = t8[400:]
    # t118 = t118[400:]
    # t9 = t9[400:]
    # #t119 = t119[400]
    t = 170
    print("zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz")
    print("zzzz",np.mean(t1[t:]) ,np.mean(t2[t:]),np.mean(t3[t:]),np.mean(t4[t:]),np.mean(t5[t:]),np.mean(t6[:t]),np.mean(t7[t:]),np.mean(t8[t:]),np.mean(t9[t:]) ,np.mean(t10[t:]),np.mean(t11[t:]),np.mean(t12[t:]),np.mean(t13[t:]),np.mean(t14[t:]),np.mean(t15[t:]))
    print("zzzz",np.mean(t16[t:]) ,np.mean(t17[t:]),np.mean(t18[t:]),np.mean(t19[t:]),np.mean(t20[t:]),np.mean(t21[t:]),np.mean(t22[t:]),np.mean(t23[t:]),np.mean(t24[t:]) ,np.mean(t25[t:]),np.mean(t26[t:]),np.mean(t27[t:]),np.mean(t28[t:]),np.mean(t29[t:]),np.mean(t30[t:]))
    print("zzzz",np.mean(t31[t:]) ,np.mean(t32[t:]),np.mean(t33[t:]),np.mean(t34[t:]),np.mean(t35[t:]))
    import matplotlib.pyplot as plt

        #     #print(t[i])
        # elif  (i) % 3 ==2:
        #     t3.append(t[i])
        # else :
        #     t1.append(t[i])

    max_tem1= []
    for i in max_tem:
        i = float(i)
        max_tem1.append(i)


    mean1= []
    for i in mean:
        i = float(i)
        mean1.append(i)

    action_tem1 = []
    for i in ac_tem:

        i = float(i)
        action_tem1.append(i)
    #max_tem1 = max_tem1[4000:]
    print("relata-max",np.mean(max_tem1))

    new_model = []
    for i in range(int(len(max_tem1) / len1)):
        new_model.append(sum(max_tem1[i * len1:(i + 1) * len1]) / len1)

    new_model1 = []
    for i in range(int(len(mean1) / len1)):
        new_model1.append(sum(mean1[i * len1:(i + 1) * len1]) / len1)

    new_model2 = []
    for i in range(int(len(action_tem1) / len1)):
        new_model2.append(sum(action_tem1[i * len1:(i + 1) * len1]) / len1)
    import matplotlib.pyplot as plt
    plt.figure(figsize=(10, 5), dpi=50)  # 6 6 80
    #
    plt.plot(new_model, color="r", linestyle="-")
    plt.plot(new_model1, color="black", linestyle="-")
    plt.plot(new_model2, color="blue", linestyle="-",label="ac")
    plt.show()

    # plt.plot(t1, color="r", linestyle="-")
    # plt.plot(t2, color="r", linestyle="-")
    # plt.plot(t3,linewidth = '1', color="blue", linestyle="-")
    # plt.plot(t4, color="r", linestyle="-")
    #
    # plt.plot(t5, color="g", linestyle="-")
    # plt.plot(t6, linewidth = '1',color="c", linestyle="-")
    # plt.plot(t7, color="g", linestyle="-")
    # plt.plot(t8, linewidth='1', color="c", linestyle="-")
    # # #
    # # #
    #
    # plt.plot(t9, color="red", linestyle="-")
    # plt.plot(t10,linewidth = '1', color="black", linestyle="-")
    # plt.plot(t11, color="g", linestyle="-")
    # plt.plot(t12, linewidth='1', color="c", linestyle="-")
    # # #
    #
    # plt.plot(t13, color="red", linestyle="-")
    # plt.plot(t14,linewidth = '1', color="black", linestyle="-")
    # # #
    #
    # plt.plot(t15, color="red", linestyle="-")
    # plt.plot(t16,linewidth = '1', color="black", linestyle="-")
    # #plt.plot(t5, color="red", linestyle="-")
    # plt.plot(t17,linewidth = '1', color="black", linestyle="-")
    # plt.plot(t18, linewidth='1', color="black", linestyle="-")
    #
    # plt.plot(t19, color="g", linestyle="-")
    # plt.plot(t20, linewidth = '1',color="c", linestyle="-")
    # plt.plot(t21, color="g", linestyle="-")
    # plt.plot(t22, linewidth='1', color="c", linestyle="-")
    # # #
    # # #
    #
    # plt.plot(t23, color="red", linestyle="-")
    # plt.plot(t24,linewidth = '1', color="black", linestyle="-")
    # plt.plot(t25, color="g", linestyle="-")
    # plt.plot(t26, linewidth='1', color="c", linestyle="-")
    # # #
    #
    # plt.plot(t27, color="red", linestyle="-")
    # plt.plot(t28,linewidth = '1', color="black", linestyle="-")
    # # #
    #
    # plt.plot(t29, color="red", linestyle="-")
    # plt.plot(t30,linewidth = '1', color="black", linestyle="-")
    #plt.plot(t5, color="red", linestyle="-")
    print(t31)
    print(t32)
    print(t33)
    print(t34)
    print(t35)
    plt.plot(t31,linewidth = '1', color="black", linestyle="-")
    plt.plot(t32, linewidth='1', color="black", linestyle="-")
    plt.plot(t33,linewidth = '1', color="black", linestyle="-")
    #plt.plot(t5, color="red", linestyle="-")
    plt.plot(t34,linewidth = '1', color="black", linestyle="-")
    plt.plot(t35, linewidth='1', color="black", linestyle="-")
    plt.plot(t116, linewidth='1', color="red", linestyle="-")
    plt.plot(t117, linewidth='1', color="red", linestyle="-")
    # plt.plot(t5, color="red", linestyle="-")
    plt.plot(t118, linewidth='1', color="red", linestyle="-")
    plt.plot(t119, linewidth='1', color="red", linestyle="-")
    plt.xlabel("step",fontsize= 10)
    plt.ylabel("run time(s)",fontsize = 10)
    plt.tick_params(labelsize=15)
    plt.show()

self_8_core5_task_different_task2()

