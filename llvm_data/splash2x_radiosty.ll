; ModuleID = 'rad_main.c'
source_filename = "rad_main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slider = type { i8*, i64, i64, i64, i64, void (...)* }
%struct.choice = type { i8*, [32 x i8*], i64, void (...)* }
%struct.Global = type { i64, %union.pthread_mutex_t, [128 x %struct.Task_Queue], [32768 x %struct._task], %union.pthread_mutex_t, %struct._patch*, %union.pthread_mutex_t, i64, %struct.Rgb, %struct.Rgb, float, i64, %union.pthread_mutex_t, i64, i64, [1024 x %struct.Patch_Cost], %struct.anon, i64, %union.pthread_mutex_t, i64, %union.pthread_mutex_t, %union.pthread_mutex_t, %struct._patch*, i64, i64, [1024 x %struct._patch], %union.pthread_mutex_t, %struct._element*, i64, %struct._element*, %union.pthread_mutex_t, %struct._interact*, i64, %struct._interact*, %union.pthread_mutex_t, i64, %struct._elemvertex*, %union.pthread_mutex_t, i64, %struct._edge*, [3900 x %struct.Shared_Lock], [1024 x %struct.StatisticalInfo] }
%struct.Task_Queue = type { [4096 x i8], %union.pthread_mutex_t, %struct._task*, %struct._task*, i64, %union.pthread_mutex_t, i64, %struct._task*, [4096 x i8] }
%struct._task = type { i64, %struct._task*, %union.anon }
%union.anon = type { %struct.Refinement_Task }
%struct.Refinement_Task = type { %struct._element*, %struct._element*, float, i64 }
%struct.Rgb = type { float, float, float }
%struct.Patch_Cost = type { %struct._patch*, %struct.Shared_Lock*, i64, i64, i64, [11 x i64] }
%struct.Shared_Lock = type { %union.pthread_mutex_t }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i64, i64 }
%union.pthread_cond_t = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct._patch = type { %struct._elemvertex*, %struct._elemvertex*, %struct._elemvertex*, %struct._edge*, %struct._edge*, %struct._edge*, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.PlaneEqu, float, %struct.Rgb, %struct.Rgb, %struct._patch*, %struct._patch*, %struct._patch*, %struct._element*, i64 }
%struct.Vertex = type { float, float, float }
%struct.PlaneEqu = type { %struct.Vertex, float }
%struct._element = type { %struct.Shared_Lock*, %struct._patch*, %struct._element*, %struct._element*, %struct._element*, %struct._element*, %struct._element*, %struct._interact*, i64, %struct._interact*, i64, %struct.Rgb, %struct.Rgb, %struct.Rgb, i64, %struct._elemvertex*, %struct._elemvertex*, %struct._elemvertex*, %struct._edge*, %struct._edge*, %struct._edge*, float }
%struct._interact = type { %struct._interact*, %struct._element*, float, float, float, float }
%struct._elemvertex = type { %struct.Vertex, %struct.Rgb, float, %struct.Shared_Lock* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._edge = type { %struct._elemvertex*, %struct._elemvertex*, %struct._edge*, %struct._edge*, %struct.Shared_Lock* }
%struct.StatisticalInfo = type { [4096 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [2 x i64], [16 x %struct.PerIterationInfo], [4096 x i8] }
%struct.PerIterationInfo = type { i64, i64, i64, i64, i64, %struct._element* }
%struct.Timing = type { i64, i64, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }

@MAX_ELEMENTS = global i64 100000, align 8
@MAX_INTERACTIONS = global i64 1000000, align 8
@MAX_ELEMVERTICES = global i64 100000, align 8
@MAX_EDGES = global i64 100000, align 8
@n_processors = global i64 1, align 8
@n_taskqueues = global i64 1, align 8
@n_tasks_per_queue = global i64 200, align 8
@N_inter_parallel_bf_refine = global i64 5, align 8
@N_visibility_per_task = global i64 4, align 8
@Area_epsilon = global float 2.000000e+03, align 4
@Energy_epsilon = global float 0x3F0A36E2E0000000, align 4
@BFepsilon = global float 0x3F23A92A40000000, align 4
@batch_mode = global i64 0, align 8
@verbose_mode = global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"View(X)  deg \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"View(Y)  deg \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"View(Zoom)   \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"BF-e      0.1%\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Area-e       \00", align 1
@sliders = global [5 x %struct.slider] [%struct.slider { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i64 -100, i64 100, i64 10, i64 5, void (...)* bitcast (void (i64)* @change_view_x to void (...)*) }, %struct.slider { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i64 -100, i64 100, i64 0, i64 5, void (...)* bitcast (void (i64)* @change_view_y to void (...)*) }, %struct.slider { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i64 0, i64 50, i64 10, i64 6, void (...)* bitcast (void (i64)* @change_view_zoom to void (...)*) }, %struct.slider { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i64 0, i64 50, i64 0, i64 11, void (...)* bitcast (void (i64)* @change_BFepsilon to void (...)*) }, %struct.slider { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 0, i64 5000, i64 2000, i64 11, void (...)* bitcast (void (i64)* @change_area_epsilon to void (...)*) }], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"Run\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Step\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Display\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Filled\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Smooth shading\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Show polygon edges\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Show element edges\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Show interactions\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Models\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Room\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"LargeRoom\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Tools\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"HardCopy(PS)\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Statistics\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Statistics(file)\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Clear Radiosity Value\00", align 1
@choices = global [4 x %struct.choice] [%struct.choice { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), [32 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null], i64 0, void (...)* bitcast (void (i64)* @start_radiosity to void (...)*) }, %struct.choice { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), [32 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null], i64 0, void (...)* bitcast (void (i64)* @change_display to void (...)*) }, %struct.choice { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), [32 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null], i64 0, void (...)* bitcast (void (i64)* @select_model to void (...)*) }, %struct.choice { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), [32 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null], i64 0, void (...)* bitcast (void (i64)* @utility_tools to void (...)*) }], align 16
@model_selector = external global i64, align 8
@global = common global %struct.Global* null, align 8
@.str.23 = private unnamed_addr constant [23 x i8] c"Can't allocate memory\0A\00", align 1
@timing = common global %struct.Timing** null, align 8
@time_rad_start = common global i64 0, align 8
@taskqueue_id = common global [1024 x i64] zeroinitializer, align 16
@PThreadTable = common global [1024 x i64] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [28 x i8] c"Error in pthread_create().\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Error in pthread_join().\0A\00", align 1
@time_rad_end = common global i64 0, align 8
@.str.26 = private unnamed_addr constant [45 x i8] c"TIMING STATISTICS MEASURED BY MAIN PROCESS:\0A\00", align 1
@dostats = internal global i64 0, align 8
@.str.27 = private unnamed_addr constant [28 x i8] c"\0A\0A\0APER-PROCESS STATISTICS:\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"%8s%20s%20s%12s%12s\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"Proc\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Refine\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Wait\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"%8s%20s%20s%12s%12s\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"%8ld%20lu%20lu%12lu%12lu\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"\0A\0A%8s%20lu%20lu%12lu%12lu\0A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"\0A%8s%20lu%20lu%12lu%12lu\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"Avg\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@start_radiosity.state = internal global i64 0, align 8
@.str.44 = private unnamed_addr constant [21 x i8] c"Please reset first\07\0A\00", align 1
@disp_fill_mode = internal global i64 1, align 8
@disp_patch_switch = internal global i64 0, align 8
@disp_mesh_switch = internal global i64 0, align 8
@disp_interaction_switch = internal global i64 0, align 8
@.str.45 = private unnamed_addr constant [44 x i8] c"Error while trying to get lock in barrier.\0A\00", align 1
@disp_fill_switch = internal global i64 1, align 8
@disp_shade_switch = internal global i64 0, align 8
@disp_crnt_view_x = internal global i64 10, align 8
@disp_crnt_view_y = internal global i64 0, align 8
@disp_crnt_zoom = internal global float 1.000000e+00, align 4
@.str.46 = private unnamed_addr constant [13 x i8] c"radiosity.ps\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"radiosity_stat\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"Error while initializing barrier.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.50 = private unnamed_addr constant [33 x i8] c"Usage:  RADIOSITY  [options..]\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [74 x i8] c"\09Note: Must have a space between option label and numeric value, if any\0A\0A\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"   -p    (d)  # of processes\0A\00", align 1
@.str.53 = private unnamed_addr constant [70 x i8] c"   -tq   (d)  # of tasks per queue: default (200) in code for SPLASH\0A\00", align 1
@.str.54 = private unnamed_addr constant [65 x i8] c"   -ae   (f)  Area epsilon: default (2000.0) in code for SPLASH\0A\00", align 1
@.str.55 = private unnamed_addr constant [82 x i8] c"   -pr   (d)  # of inter for parallel refinement: default (5) in code for SPLASH\0A\00", align 1
@.str.56 = private unnamed_addr constant [78 x i8] c"   -pv   (d)  # of visibility comp in a task: default (4) in code for SPLASH\0A\00", align 1
@.str.57 = private unnamed_addr constant [77 x i8] c"   -bf   (f)  BFepsilon (BF refinement): default (0.015) in code for SPLASH\0A\00", align 1
@.str.58 = private unnamed_addr constant [80 x i8] c"   -en   (f)  Energy epsilon (convergence): default (0.005) in code for SPLASH\0A\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"   -room      Use room model (default=test)\0A\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"   -largeroom Use large room model\0A\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"   -batch     Batch mode (use for SPLASH)\0A\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"   -verbose   Verbose mode (don't use for SPLASH)\0A\00", align 1
@.str.63 = private unnamed_addr constant [59 x i8] c"   -s   Measure per-process timing (don't use for SPLASH)\0A\00", align 1
@time_process_start = common global [1024 x i64] zeroinitializer, align 16
@.str.64 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"-tq\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"-ae\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"-pr\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"-pv\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"-bf\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"-en\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"-batch\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"-room\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"-largeroom\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"-H\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"Bad number of processors: %ld\0A\00", align 1
@.str.82 = private unnamed_addr constant [32 x i8] c"Bad number of task queues: %ld\0A\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"Area epsilon must be positive\0A\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"BFepsilon must be within [0,1]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @change_view_x(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* @disp_crnt_view_x, align 8
  call void @change_view()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @change_view_y(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* @disp_crnt_view_y, align 8
  call void @change_view()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @change_view_zoom(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to float
  %5 = fpext float %4 to double
  %6 = fdiv double %5, 1.000000e+01
  %7 = fptrunc double %6 to float
  store float %7, float* @disp_crnt_zoom, align 4
  call void @change_view()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @change_BFepsilon(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to float
  %5 = fpext float %4 to double
  %6 = fdiv double %5, 1.000000e+03
  %7 = fptrunc double %6 to float
  store float %7, float* @BFepsilon, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @change_area_epsilon(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to float
  store float %4, float* @Area_epsilon, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @start_radiosity(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.timeval, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.timeval, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %426

; <label>:36:                                     ; preds = %1
  %37 = load i64, i64* @start_radiosity.state, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %36
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0))
  br label %654

; <label>:41:                                     ; preds = %36
  %42 = call i32 @gettimeofday(%struct.timeval* %16, %struct.timezone* null) #6
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = mul nsw i64 %46, 1000000
  %48 = add nsw i64 %44, %47
  store i64 %48, i64* @time_rad_start, align 8
  %49 = load %struct.Global*, %struct.Global** @global, align 8
  %50 = getelementptr inbounds %struct.Global, %struct.Global* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  store i64 0, i64* %3, align 8
  br label %51

; <label>:51:                                     ; preds = %59, %41
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @n_processors, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %62

; <label>:55:                                     ; preds = %51
  %56 = call i64 @assign_taskq(i64 0)
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds [1024 x i64], [1024 x i64]* @taskqueue_id, i64 0, i64 %57
  store i64 %56, i64* %58, align 8
  br label %59

; <label>:59:                                     ; preds = %55
  %60 = load i64, i64* %3, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %51

; <label>:62:                                     ; preds = %51
  store i64 0, i64* %17, align 8
  br label %63

; <label>:63:                                     ; preds = %78, %62
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* @n_processors, align 8
  %66 = sub nsw i64 %65, 1
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %68, label %81

; <label>:68:                                     ; preds = %63
  %69 = load i64, i64* %17, align 8
  %70 = getelementptr inbounds [1024 x i64], [1024 x i64]* @PThreadTable, i64 0, i64 %69
  %71 = call i32 @pthread_create(i64* %70, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void ()* @radiosity to i8* (i8*)*), i8* null) #6
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %18, align 8
  %73 = load i64, i64* %18, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %68
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:77:                                     ; preds = %68
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = load i64, i64* %17, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %17, align 8
  br label %63

; <label>:81:                                     ; preds = %63
  call void @radiosity()
  store i64 0, i64* %19, align 8
  br label %82

; <label>:82:                                     ; preds = %98, %81
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* @n_processors, align 8
  %85 = sub nsw i64 %84, 1
  %86 = icmp ult i64 %83, %85
  br i1 %86, label %87, label %101

; <label>:87:                                     ; preds = %82
  %88 = load i64, i64* %19, align 8
  %89 = getelementptr inbounds [1024 x i64], [1024 x i64]* @PThreadTable, i64 0, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @pthread_join(i64 %90, i8** null)
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %20, align 8
  %93 = load i64, i64* %20, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

; <label>:95:                                     ; preds = %87
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:97:                                     ; preds = %87
  br label %98

; <label>:98:                                     ; preds = %97
  %99 = load i64, i64* %19, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %19, align 8
  br label %82

; <label>:101:                                    ; preds = %82
  %102 = call i32 @gettimeofday(%struct.timeval* %21, %struct.timezone* null) #6
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = mul nsw i64 %106, 1000000
  %108 = add nsw i64 %104, %107
  store i64 %108, i64* @time_rad_end, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0))
  call void @print_running_time(i64 0)
  %110 = load i64, i64* @dostats, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %420

; <label>:112:                                    ; preds = %101
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0))
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0))
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  store i64 0, i64* %3, align 8
  br label %116

; <label>:116:                                    ; preds = %147, %112
  %117 = load i64, i64* %3, align 8
  %118 = load i64, i64* @n_processors, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %150

; <label>:120:                                    ; preds = %116
  %121 = load i64, i64* %3, align 8
  %122 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %123 = load i64, i64* %3, align 8
  %124 = getelementptr inbounds %struct.Timing*, %struct.Timing** %122, i64 %123
  %125 = load %struct.Timing*, %struct.Timing** %124, align 8
  %126 = getelementptr inbounds %struct.Timing, %struct.Timing* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %129 = load i64, i64* %3, align 8
  %130 = getelementptr inbounds %struct.Timing*, %struct.Timing** %128, i64 %129
  %131 = load %struct.Timing*, %struct.Timing** %130, align 8
  %132 = getelementptr inbounds %struct.Timing, %struct.Timing* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %135 = load i64, i64* %3, align 8
  %136 = getelementptr inbounds %struct.Timing*, %struct.Timing** %134, i64 %135
  %137 = load %struct.Timing*, %struct.Timing** %136, align 8
  %138 = getelementptr inbounds %struct.Timing, %struct.Timing* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %141 = load i64, i64* %3, align 8
  %142 = getelementptr inbounds %struct.Timing*, %struct.Timing** %140, i64 %141
  %143 = load %struct.Timing*, %struct.Timing** %142, align 8
  %144 = getelementptr inbounds %struct.Timing, %struct.Timing* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i64 %121, i64 %127, i64 %133, i64 %139, i64 %145)
  br label %147

; <label>:147:                                    ; preds = %120
  %148 = load i64, i64* %3, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %3, align 8
  br label %116

; <label>:150:                                    ; preds = %116
  %151 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %152 = getelementptr inbounds %struct.Timing*, %struct.Timing** %151, i64 0
  %153 = load %struct.Timing*, %struct.Timing** %152, align 8
  %154 = getelementptr inbounds %struct.Timing, %struct.Timing* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %4, align 8
  %156 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %157 = getelementptr inbounds %struct.Timing*, %struct.Timing** %156, i64 0
  %158 = load %struct.Timing*, %struct.Timing** %157, align 8
  %159 = getelementptr inbounds %struct.Timing, %struct.Timing* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %5, align 8
  %161 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %162 = getelementptr inbounds %struct.Timing*, %struct.Timing** %161, i64 0
  %163 = load %struct.Timing*, %struct.Timing** %162, align 8
  %164 = getelementptr inbounds %struct.Timing, %struct.Timing* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %6, align 8
  %166 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %167 = getelementptr inbounds %struct.Timing*, %struct.Timing** %166, i64 0
  %168 = load %struct.Timing*, %struct.Timing** %167, align 8
  %169 = getelementptr inbounds %struct.Timing, %struct.Timing* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %7, align 8
  %171 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %172 = getelementptr inbounds %struct.Timing*, %struct.Timing** %171, i64 0
  %173 = load %struct.Timing*, %struct.Timing** %172, align 8
  %174 = getelementptr inbounds %struct.Timing, %struct.Timing* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %8, align 8
  %176 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %177 = getelementptr inbounds %struct.Timing*, %struct.Timing** %176, i64 0
  %178 = load %struct.Timing*, %struct.Timing** %177, align 8
  %179 = getelementptr inbounds %struct.Timing, %struct.Timing* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %9, align 8
  %181 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %182 = getelementptr inbounds %struct.Timing*, %struct.Timing** %181, i64 0
  %183 = load %struct.Timing*, %struct.Timing** %182, align 8
  %184 = getelementptr inbounds %struct.Timing, %struct.Timing* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %10, align 8
  %186 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %187 = getelementptr inbounds %struct.Timing*, %struct.Timing** %186, i64 0
  %188 = load %struct.Timing*, %struct.Timing** %187, align 8
  %189 = getelementptr inbounds %struct.Timing, %struct.Timing* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %11, align 8
  %191 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %192 = getelementptr inbounds %struct.Timing*, %struct.Timing** %191, i64 0
  %193 = load %struct.Timing*, %struct.Timing** %192, align 8
  %194 = getelementptr inbounds %struct.Timing, %struct.Timing* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %12, align 8
  %196 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %197 = getelementptr inbounds %struct.Timing*, %struct.Timing** %196, i64 0
  %198 = load %struct.Timing*, %struct.Timing** %197, align 8
  %199 = getelementptr inbounds %struct.Timing, %struct.Timing* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %13, align 8
  %201 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %202 = getelementptr inbounds %struct.Timing*, %struct.Timing** %201, i64 0
  %203 = load %struct.Timing*, %struct.Timing** %202, align 8
  %204 = getelementptr inbounds %struct.Timing, %struct.Timing* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %14, align 8
  %206 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %207 = getelementptr inbounds %struct.Timing*, %struct.Timing** %206, i64 0
  %208 = load %struct.Timing*, %struct.Timing** %207, align 8
  %209 = getelementptr inbounds %struct.Timing, %struct.Timing* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %15, align 8
  store i64 1, i64* %3, align 8
  br label %211

; <label>:211:                                    ; preds = %376, %150
  %212 = load i64, i64* %3, align 8
  %213 = load i64, i64* @n_processors, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %215, label %379

; <label>:215:                                    ; preds = %211
  %216 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %217 = load i64, i64* %3, align 8
  %218 = getelementptr inbounds %struct.Timing*, %struct.Timing** %216, i64 %217
  %219 = load %struct.Timing*, %struct.Timing** %218, align 8
  %220 = getelementptr inbounds %struct.Timing, %struct.Timing* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %4, align 8
  %223 = add nsw i64 %222, %221
  store i64 %223, i64* %4, align 8
  %224 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %225 = load i64, i64* %3, align 8
  %226 = getelementptr inbounds %struct.Timing*, %struct.Timing** %224, i64 %225
  %227 = load %struct.Timing*, %struct.Timing** %226, align 8
  %228 = getelementptr inbounds %struct.Timing, %struct.Timing* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %5, align 8
  %231 = icmp sgt i64 %229, %230
  br i1 %231, label %232, label %239

; <label>:232:                                    ; preds = %215
  %233 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %234 = load i64, i64* %3, align 8
  %235 = getelementptr inbounds %struct.Timing*, %struct.Timing** %233, i64 %234
  %236 = load %struct.Timing*, %struct.Timing** %235, align 8
  %237 = getelementptr inbounds %struct.Timing, %struct.Timing* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %5, align 8
  br label %239

; <label>:239:                                    ; preds = %232, %215
  %240 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %241 = load i64, i64* %3, align 8
  %242 = getelementptr inbounds %struct.Timing*, %struct.Timing** %240, i64 %241
  %243 = load %struct.Timing*, %struct.Timing** %242, align 8
  %244 = getelementptr inbounds %struct.Timing, %struct.Timing* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* %6, align 8
  %247 = icmp slt i64 %245, %246
  br i1 %247, label %248, label %255

; <label>:248:                                    ; preds = %239
  %249 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %250 = load i64, i64* %3, align 8
  %251 = getelementptr inbounds %struct.Timing*, %struct.Timing** %249, i64 %250
  %252 = load %struct.Timing*, %struct.Timing** %251, align 8
  %253 = getelementptr inbounds %struct.Timing, %struct.Timing* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %6, align 8
  br label %255

; <label>:255:                                    ; preds = %248, %239
  %256 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %257 = load i64, i64* %3, align 8
  %258 = getelementptr inbounds %struct.Timing*, %struct.Timing** %256, i64 %257
  %259 = load %struct.Timing*, %struct.Timing** %258, align 8
  %260 = getelementptr inbounds %struct.Timing, %struct.Timing* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* %7, align 8
  %263 = add nsw i64 %262, %261
  store i64 %263, i64* %7, align 8
  %264 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %265 = load i64, i64* %3, align 8
  %266 = getelementptr inbounds %struct.Timing*, %struct.Timing** %264, i64 %265
  %267 = load %struct.Timing*, %struct.Timing** %266, align 8
  %268 = getelementptr inbounds %struct.Timing, %struct.Timing* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* %8, align 8
  %271 = icmp sgt i64 %269, %270
  br i1 %271, label %272, label %279

; <label>:272:                                    ; preds = %255
  %273 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %274 = load i64, i64* %3, align 8
  %275 = getelementptr inbounds %struct.Timing*, %struct.Timing** %273, i64 %274
  %276 = load %struct.Timing*, %struct.Timing** %275, align 8
  %277 = getelementptr inbounds %struct.Timing, %struct.Timing* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %8, align 8
  br label %279

; <label>:279:                                    ; preds = %272, %255
  %280 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %281 = load i64, i64* %3, align 8
  %282 = getelementptr inbounds %struct.Timing*, %struct.Timing** %280, i64 %281
  %283 = load %struct.Timing*, %struct.Timing** %282, align 8
  %284 = getelementptr inbounds %struct.Timing, %struct.Timing* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* %9, align 8
  %287 = icmp slt i64 %285, %286
  br i1 %287, label %288, label %295

; <label>:288:                                    ; preds = %279
  %289 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %290 = load i64, i64* %3, align 8
  %291 = getelementptr inbounds %struct.Timing*, %struct.Timing** %289, i64 %290
  %292 = load %struct.Timing*, %struct.Timing** %291, align 8
  %293 = getelementptr inbounds %struct.Timing, %struct.Timing* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %9, align 8
  br label %295

; <label>:295:                                    ; preds = %288, %279
  %296 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %297 = load i64, i64* %3, align 8
  %298 = getelementptr inbounds %struct.Timing*, %struct.Timing** %296, i64 %297
  %299 = load %struct.Timing*, %struct.Timing** %298, align 8
  %300 = getelementptr inbounds %struct.Timing, %struct.Timing* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* %10, align 8
  %303 = add nsw i64 %302, %301
  store i64 %303, i64* %10, align 8
  %304 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %305 = load i64, i64* %3, align 8
  %306 = getelementptr inbounds %struct.Timing*, %struct.Timing** %304, i64 %305
  %307 = load %struct.Timing*, %struct.Timing** %306, align 8
  %308 = getelementptr inbounds %struct.Timing, %struct.Timing* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* %11, align 8
  %311 = icmp sgt i64 %309, %310
  br i1 %311, label %312, label %319

; <label>:312:                                    ; preds = %295
  %313 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %314 = load i64, i64* %3, align 8
  %315 = getelementptr inbounds %struct.Timing*, %struct.Timing** %313, i64 %314
  %316 = load %struct.Timing*, %struct.Timing** %315, align 8
  %317 = getelementptr inbounds %struct.Timing, %struct.Timing* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %11, align 8
  br label %319

; <label>:319:                                    ; preds = %312, %295
  %320 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %321 = load i64, i64* %3, align 8
  %322 = getelementptr inbounds %struct.Timing*, %struct.Timing** %320, i64 %321
  %323 = load %struct.Timing*, %struct.Timing** %322, align 8
  %324 = getelementptr inbounds %struct.Timing, %struct.Timing* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* %12, align 8
  %327 = icmp slt i64 %325, %326
  br i1 %327, label %328, label %335

; <label>:328:                                    ; preds = %319
  %329 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %330 = load i64, i64* %3, align 8
  %331 = getelementptr inbounds %struct.Timing*, %struct.Timing** %329, i64 %330
  %332 = load %struct.Timing*, %struct.Timing** %331, align 8
  %333 = getelementptr inbounds %struct.Timing, %struct.Timing* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %12, align 8
  br label %335

; <label>:335:                                    ; preds = %328, %319
  %336 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %337 = load i64, i64* %3, align 8
  %338 = getelementptr inbounds %struct.Timing*, %struct.Timing** %336, i64 %337
  %339 = load %struct.Timing*, %struct.Timing** %338, align 8
  %340 = getelementptr inbounds %struct.Timing, %struct.Timing* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* %13, align 8
  %343 = add nsw i64 %342, %341
  store i64 %343, i64* %13, align 8
  %344 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %345 = load i64, i64* %3, align 8
  %346 = getelementptr inbounds %struct.Timing*, %struct.Timing** %344, i64 %345
  %347 = load %struct.Timing*, %struct.Timing** %346, align 8
  %348 = getelementptr inbounds %struct.Timing, %struct.Timing* %347, i32 0, i32 4
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* %14, align 8
  %351 = icmp sgt i64 %349, %350
  br i1 %351, label %352, label %359

; <label>:352:                                    ; preds = %335
  %353 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %354 = load i64, i64* %3, align 8
  %355 = getelementptr inbounds %struct.Timing*, %struct.Timing** %353, i64 %354
  %356 = load %struct.Timing*, %struct.Timing** %355, align 8
  %357 = getelementptr inbounds %struct.Timing, %struct.Timing* %356, i32 0, i32 4
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %14, align 8
  br label %359

; <label>:359:                                    ; preds = %352, %335
  %360 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %361 = load i64, i64* %3, align 8
  %362 = getelementptr inbounds %struct.Timing*, %struct.Timing** %360, i64 %361
  %363 = load %struct.Timing*, %struct.Timing** %362, align 8
  %364 = getelementptr inbounds %struct.Timing, %struct.Timing* %363, i32 0, i32 4
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* %15, align 8
  %367 = icmp slt i64 %365, %366
  br i1 %367, label %368, label %375

; <label>:368:                                    ; preds = %359
  %369 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %370 = load i64, i64* %3, align 8
  %371 = getelementptr inbounds %struct.Timing*, %struct.Timing** %369, i64 %370
  %372 = load %struct.Timing*, %struct.Timing** %371, align 8
  %373 = getelementptr inbounds %struct.Timing, %struct.Timing* %372, i32 0, i32 4
  %374 = load i64, i64* %373, align 8
  store i64 %374, i64* %15, align 8
  br label %375

; <label>:375:                                    ; preds = %368, %359
  br label %376

; <label>:376:                                    ; preds = %375
  %377 = load i64, i64* %3, align 8
  %378 = add nsw i64 %377, 1
  store i64 %378, i64* %3, align 8
  br label %211

; <label>:379:                                    ; preds = %211
  %380 = load i64, i64* %5, align 8
  %381 = load i64, i64* %8, align 8
  %382 = load i64, i64* %11, align 8
  %383 = load i64, i64* %14, align 8
  %384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i64 %380, i64 %381, i64 %382, i64 %383)
  %385 = load i64, i64* %6, align 8
  %386 = load i64, i64* %9, align 8
  %387 = load i64, i64* %12, align 8
  %388 = load i64, i64* %15, align 8
  %389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i64 %385, i64 %386, i64 %387, i64 %388)
  %390 = load i64, i64* %4, align 8
  %391 = sitofp i64 %390 to double
  %392 = load i64, i64* @n_processors, align 8
  %393 = sitofp i64 %392 to double
  %394 = fmul double 1.000000e+00, %393
  %395 = fdiv double %391, %394
  %396 = fptosi double %395 to i64
  %397 = load i64, i64* %7, align 8
  %398 = sitofp i64 %397 to double
  %399 = load i64, i64* @n_processors, align 8
  %400 = sitofp i64 %399 to double
  %401 = fmul double 1.000000e+00, %400
  %402 = fdiv double %398, %401
  %403 = fptosi double %402 to i64
  %404 = load i64, i64* %10, align 8
  %405 = sitofp i64 %404 to double
  %406 = load i64, i64* @n_processors, align 8
  %407 = sitofp i64 %406 to double
  %408 = fmul double 1.000000e+00, %407
  %409 = fdiv double %405, %408
  %410 = fptosi double %409 to i64
  %411 = load i64, i64* %13, align 8
  %412 = sitofp i64 %411 to double
  %413 = load i64, i64* @n_processors, align 8
  %414 = sitofp i64 %413 to double
  %415 = fmul double 1.000000e+00, %414
  %416 = fdiv double %412, %415
  %417 = fptosi double %416 to i64
  %418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i64 %396, i64 %403, i64 %410, i64 %417)
  %419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  br label %420

; <label>:420:                                    ; preds = %379, %101
  %421 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @print_statistics(%struct._IO_FILE* %421, i64 0)
  %422 = load i64, i64* @disp_fill_mode, align 8
  %423 = load i64, i64* @disp_patch_switch, align 8
  %424 = load i64, i64* @disp_mesh_switch, align 8
  %425 = load i64, i64* @disp_interaction_switch, align 8
  call void @display_scene(i64 %422, i64 %423, i64 %424, i64 %425, i64 0)
  store i64 -1, i64* @start_radiosity.state, align 8
  br label %654

; <label>:426:                                    ; preds = %1
  %427 = load i64, i64* %2, align 8
  %428 = icmp eq i64 %427, 1
  br i1 %428, label %429, label %648

; <label>:429:                                    ; preds = %426
  %430 = load i64, i64* @start_radiosity.state, align 8
  %431 = icmp eq i64 %430, -1
  br i1 %431, label %432, label %434

; <label>:432:                                    ; preds = %429
  %433 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0))
  br label %654

; <label>:434:                                    ; preds = %429
  %435 = load i64, i64* @start_radiosity.state, align 8
  switch i64 %435, label %551 [
    i64 0, label %436
    i64 1, label %472
  ]

; <label>:436:                                    ; preds = %434
  %437 = load %struct.Global*, %struct.Global** @global, align 8
  %438 = getelementptr inbounds %struct.Global, %struct.Global* %437, i32 0, i32 0
  store i64 1, i64* %438, align 8
  store i64 0, i64* %3, align 8
  br label %439

; <label>:439:                                    ; preds = %447, %436
  %440 = load i64, i64* %3, align 8
  %441 = load i64, i64* @n_processors, align 8
  %442 = icmp slt i64 %440, %441
  br i1 %442, label %443, label %450

; <label>:443:                                    ; preds = %439
  %444 = call i64 @assign_taskq(i64 0)
  %445 = load i64, i64* %3, align 8
  %446 = getelementptr inbounds [1024 x i64], [1024 x i64]* @taskqueue_id, i64 0, i64 %445
  store i64 %444, i64* %446, align 8
  br label %447

; <label>:447:                                    ; preds = %443
  %448 = load i64, i64* %3, align 8
  %449 = add nsw i64 %448, 1
  store i64 %449, i64* %3, align 8
  br label %439

; <label>:450:                                    ; preds = %439
  store i64 0, i64* %22, align 8
  br label %451

; <label>:451:                                    ; preds = %466, %450
  %452 = load i64, i64* %22, align 8
  %453 = load i64, i64* @n_processors, align 8
  %454 = sub nsw i64 %453, 1
  %455 = icmp slt i64 %452, %454
  br i1 %455, label %456, label %469

; <label>:456:                                    ; preds = %451
  %457 = load i64, i64* %22, align 8
  %458 = getelementptr inbounds [1024 x i64], [1024 x i64]* @PThreadTable, i64 0, i64 %457
  %459 = call i32 @pthread_create(i64* %458, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void ()* @radiosity to i8* (i8*)*), i8* null) #6
  %460 = sext i32 %459 to i64
  store i64 %460, i64* %23, align 8
  %461 = load i64, i64* %23, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %465

; <label>:463:                                    ; preds = %456
  %464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:465:                                    ; preds = %456
  br label %466

; <label>:466:                                    ; preds = %465
  %467 = load i64, i64* %22, align 8
  %468 = add nsw i64 %467, 1
  store i64 %468, i64* %22, align 8
  br label %451

; <label>:469:                                    ; preds = %451
  call void @radiosity()
  call void @init_modeling_tasks(i64 0)
  call void @process_tasks(i64 0)
  %470 = load i64, i64* @start_radiosity.state, align 8
  %471 = add nsw i64 %470, 1
  store i64 %471, i64* @start_radiosity.state, align 8
  br label %643

; <label>:472:                                    ; preds = %434
  %473 = call i64 @init_ray_tasks(i64 0)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %547

; <label>:475:                                    ; preds = %472
  %476 = load %struct.Global*, %struct.Global** @global, align 8
  %477 = getelementptr inbounds %struct.Global, %struct.Global* %476, i32 0, i32 16
  %478 = getelementptr inbounds %struct.anon, %struct.anon* %477, i32 0, i32 0
  %479 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %478) #6
  %480 = sext i32 %479 to i64
  store i64 %480, i64* %24, align 8
  %481 = load i64, i64* %24, align 8
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %485

; <label>:483:                                    ; preds = %475
  %484 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:485:                                    ; preds = %475
  %486 = load %struct.Global*, %struct.Global** @global, align 8
  %487 = getelementptr inbounds %struct.Global, %struct.Global* %486, i32 0, i32 16
  %488 = getelementptr inbounds %struct.anon, %struct.anon* %487, i32 0, i32 3
  %489 = load i64, i64* %488, align 8
  store i64 %489, i64* %25, align 8
  %490 = load %struct.Global*, %struct.Global** @global, align 8
  %491 = getelementptr inbounds %struct.Global, %struct.Global* %490, i32 0, i32 16
  %492 = getelementptr inbounds %struct.anon, %struct.anon* %491, i32 0, i32 2
  %493 = load i64, i64* %492, align 8
  %494 = add i64 %493, 1
  store i64 %494, i64* %492, align 8
  %495 = load i64, i64* @n_processors, align 8
  %496 = icmp ne i64 %494, %495
  br i1 %496, label %497, label %522

; <label>:497:                                    ; preds = %485
  %498 = call i32 @pthread_setcancelstate(i32 1, i32* %26)
  br label %499

; <label>:499:                                    ; preds = %518, %497
  %500 = load i64, i64* %25, align 8
  %501 = load %struct.Global*, %struct.Global** @global, align 8
  %502 = getelementptr inbounds %struct.Global, %struct.Global* %501, i32 0, i32 16
  %503 = getelementptr inbounds %struct.anon, %struct.anon* %502, i32 0, i32 3
  %504 = load i64, i64* %503, align 8
  %505 = icmp eq i64 %500, %504
  br i1 %505, label %506, label %519

; <label>:506:                                    ; preds = %499
  %507 = load %struct.Global*, %struct.Global** @global, align 8
  %508 = getelementptr inbounds %struct.Global, %struct.Global* %507, i32 0, i32 16
  %509 = getelementptr inbounds %struct.anon, %struct.anon* %508, i32 0, i32 1
  %510 = load %struct.Global*, %struct.Global** @global, align 8
  %511 = getelementptr inbounds %struct.Global, %struct.Global* %510, i32 0, i32 16
  %512 = getelementptr inbounds %struct.anon, %struct.anon* %511, i32 0, i32 0
  %513 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %509, %union.pthread_mutex_t* %512)
  %514 = sext i32 %513 to i64
  store i64 %514, i64* %24, align 8
  %515 = load i64, i64* %24, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %518

; <label>:517:                                    ; preds = %506
  br label %519

; <label>:518:                                    ; preds = %506
  br label %499

; <label>:519:                                    ; preds = %517, %499
  %520 = load i32, i32* %26, align 4
  %521 = call i32 @pthread_setcancelstate(i32 %520, i32* %27)
  br label %542

; <label>:522:                                    ; preds = %485
  %523 = load %struct.Global*, %struct.Global** @global, align 8
  %524 = getelementptr inbounds %struct.Global, %struct.Global* %523, i32 0, i32 16
  %525 = getelementptr inbounds %struct.anon, %struct.anon* %524, i32 0, i32 3
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  %528 = xor i1 %527, true
  %529 = zext i1 %528 to i32
  %530 = sext i32 %529 to i64
  %531 = load %struct.Global*, %struct.Global** @global, align 8
  %532 = getelementptr inbounds %struct.Global, %struct.Global* %531, i32 0, i32 16
  %533 = getelementptr inbounds %struct.anon, %struct.anon* %532, i32 0, i32 3
  store i64 %530, i64* %533, align 8
  %534 = load %struct.Global*, %struct.Global** @global, align 8
  %535 = getelementptr inbounds %struct.Global, %struct.Global* %534, i32 0, i32 16
  %536 = getelementptr inbounds %struct.anon, %struct.anon* %535, i32 0, i32 2
  store i64 0, i64* %536, align 8
  %537 = load %struct.Global*, %struct.Global** @global, align 8
  %538 = getelementptr inbounds %struct.Global, %struct.Global* %537, i32 0, i32 16
  %539 = getelementptr inbounds %struct.anon, %struct.anon* %538, i32 0, i32 1
  %540 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %539) #6
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %24, align 8
  br label %542

; <label>:542:                                    ; preds = %522, %519
  %543 = load %struct.Global*, %struct.Global** @global, align 8
  %544 = getelementptr inbounds %struct.Global, %struct.Global* %543, i32 0, i32 16
  %545 = getelementptr inbounds %struct.anon, %struct.anon* %544, i32 0, i32 0
  %546 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %545) #6
  call void @process_tasks(i64 0)
  br label %550

; <label>:547:                                    ; preds = %472
  %548 = load i64, i64* @start_radiosity.state, align 8
  %549 = add nsw i64 %548, 1
  store i64 %549, i64* @start_radiosity.state, align 8
  br label %550

; <label>:550:                                    ; preds = %547, %542
  br label %643

; <label>:551:                                    ; preds = %434
  %552 = load %struct.Global*, %struct.Global** @global, align 8
  %553 = getelementptr inbounds %struct.Global, %struct.Global* %552, i32 0, i32 16
  %554 = getelementptr inbounds %struct.anon, %struct.anon* %553, i32 0, i32 0
  %555 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %554) #6
  %556 = sext i32 %555 to i64
  store i64 %556, i64* %28, align 8
  %557 = load i64, i64* %28, align 8
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %561

; <label>:559:                                    ; preds = %551
  %560 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:561:                                    ; preds = %551
  %562 = load %struct.Global*, %struct.Global** @global, align 8
  %563 = getelementptr inbounds %struct.Global, %struct.Global* %562, i32 0, i32 16
  %564 = getelementptr inbounds %struct.anon, %struct.anon* %563, i32 0, i32 3
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %29, align 8
  %566 = load %struct.Global*, %struct.Global** @global, align 8
  %567 = getelementptr inbounds %struct.Global, %struct.Global* %566, i32 0, i32 16
  %568 = getelementptr inbounds %struct.anon, %struct.anon* %567, i32 0, i32 2
  %569 = load i64, i64* %568, align 8
  %570 = add i64 %569, 1
  store i64 %570, i64* %568, align 8
  %571 = load i64, i64* @n_processors, align 8
  %572 = icmp ne i64 %570, %571
  br i1 %572, label %573, label %598

; <label>:573:                                    ; preds = %561
  %574 = call i32 @pthread_setcancelstate(i32 1, i32* %30)
  br label %575

; <label>:575:                                    ; preds = %594, %573
  %576 = load i64, i64* %29, align 8
  %577 = load %struct.Global*, %struct.Global** @global, align 8
  %578 = getelementptr inbounds %struct.Global, %struct.Global* %577, i32 0, i32 16
  %579 = getelementptr inbounds %struct.anon, %struct.anon* %578, i32 0, i32 3
  %580 = load i64, i64* %579, align 8
  %581 = icmp eq i64 %576, %580
  br i1 %581, label %582, label %595

; <label>:582:                                    ; preds = %575
  %583 = load %struct.Global*, %struct.Global** @global, align 8
  %584 = getelementptr inbounds %struct.Global, %struct.Global* %583, i32 0, i32 16
  %585 = getelementptr inbounds %struct.anon, %struct.anon* %584, i32 0, i32 1
  %586 = load %struct.Global*, %struct.Global** @global, align 8
  %587 = getelementptr inbounds %struct.Global, %struct.Global* %586, i32 0, i32 16
  %588 = getelementptr inbounds %struct.anon, %struct.anon* %587, i32 0, i32 0
  %589 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %585, %union.pthread_mutex_t* %588)
  %590 = sext i32 %589 to i64
  store i64 %590, i64* %28, align 8
  %591 = load i64, i64* %28, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %594

; <label>:593:                                    ; preds = %582
  br label %595

; <label>:594:                                    ; preds = %582
  br label %575

; <label>:595:                                    ; preds = %593, %575
  %596 = load i32, i32* %30, align 4
  %597 = call i32 @pthread_setcancelstate(i32 %596, i32* %31)
  br label %618

; <label>:598:                                    ; preds = %561
  %599 = load %struct.Global*, %struct.Global** @global, align 8
  %600 = getelementptr inbounds %struct.Global, %struct.Global* %599, i32 0, i32 16
  %601 = getelementptr inbounds %struct.anon, %struct.anon* %600, i32 0, i32 3
  %602 = load i64, i64* %601, align 8
  %603 = icmp ne i64 %602, 0
  %604 = xor i1 %603, true
  %605 = zext i1 %604 to i32
  %606 = sext i32 %605 to i64
  %607 = load %struct.Global*, %struct.Global** @global, align 8
  %608 = getelementptr inbounds %struct.Global, %struct.Global* %607, i32 0, i32 16
  %609 = getelementptr inbounds %struct.anon, %struct.anon* %608, i32 0, i32 3
  store i64 %606, i64* %609, align 8
  %610 = load %struct.Global*, %struct.Global** @global, align 8
  %611 = getelementptr inbounds %struct.Global, %struct.Global* %610, i32 0, i32 16
  %612 = getelementptr inbounds %struct.anon, %struct.anon* %611, i32 0, i32 2
  store i64 0, i64* %612, align 8
  %613 = load %struct.Global*, %struct.Global** @global, align 8
  %614 = getelementptr inbounds %struct.Global, %struct.Global* %613, i32 0, i32 16
  %615 = getelementptr inbounds %struct.anon, %struct.anon* %614, i32 0, i32 1
  %616 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %615) #6
  %617 = sext i32 %616 to i64
  store i64 %617, i64* %28, align 8
  br label %618

; <label>:618:                                    ; preds = %598, %595
  %619 = load %struct.Global*, %struct.Global** @global, align 8
  %620 = getelementptr inbounds %struct.Global, %struct.Global* %619, i32 0, i32 16
  %621 = getelementptr inbounds %struct.anon, %struct.anon* %620, i32 0, i32 0
  %622 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %621) #6
  call void @init_radavg_tasks(i64 0, i64 0)
  call void @process_tasks(i64 0)
  call void @init_radavg_tasks(i64 1, i64 0)
  call void @process_tasks(i64 0)
  store i64 0, i64* %32, align 8
  br label %623

; <label>:623:                                    ; preds = %639, %618
  %624 = load i64, i64* %32, align 8
  %625 = load i64, i64* @n_processors, align 8
  %626 = sub nsw i64 %625, 1
  %627 = icmp ult i64 %624, %626
  br i1 %627, label %628, label %642

; <label>:628:                                    ; preds = %623
  %629 = load i64, i64* %32, align 8
  %630 = getelementptr inbounds [1024 x i64], [1024 x i64]* @PThreadTable, i64 0, i64 %629
  %631 = load i64, i64* %630, align 8
  %632 = call i32 @pthread_join(i64 %631, i8** null)
  %633 = sext i32 %632 to i64
  store i64 %633, i64* %33, align 8
  %634 = load i64, i64* %33, align 8
  %635 = icmp ne i64 %634, 0
  br i1 %635, label %636, label %638

; <label>:636:                                    ; preds = %628
  %637 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:638:                                    ; preds = %628
  br label %639

; <label>:639:                                    ; preds = %638
  %640 = load i64, i64* %32, align 8
  %641 = add i64 %640, 1
  store i64 %641, i64* %32, align 8
  br label %623

; <label>:642:                                    ; preds = %623
  store i64 -1, i64* @start_radiosity.state, align 8
  br label %643

; <label>:643:                                    ; preds = %642, %550, %469
  %644 = load i64, i64* @disp_fill_mode, align 8
  %645 = load i64, i64* @disp_patch_switch, align 8
  %646 = load i64, i64* @disp_mesh_switch, align 8
  %647 = load i64, i64* @disp_interaction_switch, align 8
  call void @display_scene(i64 %644, i64 %645, i64 %646, i64 %647, i64 0)
  br label %653

; <label>:648:                                    ; preds = %426
  %649 = load i64, i64* %2, align 8
  %650 = icmp eq i64 %649, 2
  br i1 %650, label %651, label %652

; <label>:651:                                    ; preds = %648
  call void @init_global(i64 0)
  call void @init_visibility_module(i64 0)
  call void @g_clear()
  store i64 0, i64* @start_radiosity.state, align 8
  br label %652

; <label>:652:                                    ; preds = %651, %648
  br label %653

; <label>:653:                                    ; preds = %652, %643
  br label %654

; <label>:654:                                    ; preds = %39, %432, %653, %420
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @change_display(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  switch i64 %3, label %34 [
    i64 0, label %4
    i64 1, label %10
    i64 2, label %16
    i64 3, label %22
    i64 4, label %28
  ]

; <label>:4:                                      ; preds = %1
  %5 = load i64, i64* @disp_fill_switch, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = sext i32 %8 to i64
  store i64 %9, i64* @disp_fill_switch, align 8
  br label %35

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* @disp_shade_switch, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  store i64 %15, i64* @disp_shade_switch, align 8
  br label %35

; <label>:16:                                     ; preds = %1
  %17 = load i64, i64* @disp_patch_switch, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  store i64 %21, i64* @disp_patch_switch, align 8
  br label %35

; <label>:22:                                     ; preds = %1
  %23 = load i64, i64* @disp_mesh_switch, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  store i64 %27, i64* @disp_mesh_switch, align 8
  br label %35

; <label>:28:                                     ; preds = %1
  %29 = load i64, i64* @disp_interaction_switch, align 8
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  store i64 %33, i64* @disp_interaction_switch, align 8
  br label %35

; <label>:34:                                     ; preds = %1
  br label %50

; <label>:35:                                     ; preds = %28, %22, %16, %10, %4
  %36 = load i64, i64* @disp_fill_switch, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %35
  store i64 0, i64* @disp_fill_mode, align 8
  br label %45

; <label>:39:                                     ; preds = %35
  %40 = load i64, i64* @disp_shade_switch, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  store i64 1, i64* @disp_fill_mode, align 8
  br label %44

; <label>:43:                                     ; preds = %39
  store i64 2, i64* @disp_fill_mode, align 8
  br label %44

; <label>:44:                                     ; preds = %43, %42
  br label %45

; <label>:45:                                     ; preds = %44, %38
  %46 = load i64, i64* @disp_fill_mode, align 8
  %47 = load i64, i64* @disp_patch_switch, align 8
  %48 = load i64, i64* @disp_mesh_switch, align 8
  %49 = load i64, i64* @disp_interaction_switch, align 8
  call void @display_scene(i64 %46, i64 %47, i64 %48, i64 %49, i64 0)
  br label %50

; <label>:50:                                     ; preds = %45, %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @select_model(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  switch i64 %3, label %7 [
    i64 0, label %4
    i64 1, label %5
    i64 2, label %6
  ]

; <label>:4:                                      ; preds = %1
  store i64 0, i64* @model_selector, align 8
  br label %7

; <label>:5:                                      ; preds = %1
  store i64 1, i64* @model_selector, align 8
  br label %7

; <label>:6:                                      ; preds = %1
  store i64 2, i64* @model_selector, align 8
  br label %7

; <label>:7:                                      ; preds = %1, %6, %5, %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @utility_tools(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  switch i64 %4, label %24 [
    i64 0, label %5
    i64 1, label %13
    i64 2, label %15
    i64 3, label %23
  ]

; <label>:5:                                      ; preds = %1
  %6 = call i64 @ps_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0))
  %7 = load i64, i64* @disp_crnt_view_y, align 8
  %8 = sitofp i64 %7 to float
  call void @ps_setup_view(float 1.000000e+01, float %8, float 8.000000e+03, float 1.000000e+00)
  %9 = load i64, i64* @disp_fill_mode, align 8
  %10 = load i64, i64* @disp_patch_switch, align 8
  %11 = load i64, i64* @disp_mesh_switch, align 8
  %12 = load i64, i64* @disp_interaction_switch, align 8
  call void @ps_display_scene(i64 %9, i64 %10, i64 %11, i64 %12, i64 0)
  call void @ps_close()
  br label %24

; <label>:13:                                     ; preds = %1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @print_statistics(%struct._IO_FILE* %14, i64 0)
  br label %24

; <label>:15:                                     ; preds = %1
  %16 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %3, align 8
  %17 = icmp eq %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0))
  br label %24

; <label>:19:                                     ; preds = %15
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @print_statistics(%struct._IO_FILE* %20, i64 0)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %22 = call i32 @fclose(%struct._IO_FILE* %21)
  br label %24

; <label>:23:                                     ; preds = %1
  call void @clear_radiosity(i64 0)
  br label %24

; <label>:24:                                     ; preds = %23, %1, %19, %18, %13, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.timeval, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  call void @parse_args(i32 %25, i8** %26)
  %27 = load i64, i64* @model_selector, align 8
  store i64 %27, i64* getelementptr inbounds ([4 x %struct.choice], [4 x %struct.choice]* @choices, i64 0, i64 2, i32 2), align 8
  %28 = load i64, i64* @batch_mode, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  call void @g_init(i32 %31, i8** %32)
  call void @setup_view(float 1.000000e+01, float 0.000000e+00, float 8.000000e+03, float 1.000000e+00, i64 0)
  br label %33

; <label>:33:                                     ; preds = %30, %2
  %34 = load float, float* @BFepsilon, align 4
  %35 = fpext float %34 to double
  %36 = fcmp ole double %35, 2.000000e-05
  br i1 %36, label %37, label %46

; <label>:37:                                     ; preds = %33
  %38 = load i64, i64* @MAX_ELEMENTS, align 8
  %39 = mul nsw i64 %38, 30
  store i64 %39, i64* @MAX_ELEMENTS, align 8
  %40 = load i64, i64* @MAX_INTERACTIONS, align 8
  %41 = mul nsw i64 %40, 50
  store i64 %41, i64* @MAX_INTERACTIONS, align 8
  %42 = load i64, i64* @MAX_ELEMVERTICES, align 8
  %43 = mul nsw i64 %42, 30
  store i64 %43, i64* @MAX_ELEMVERTICES, align 8
  %44 = load i64, i64* @MAX_EDGES, align 8
  %45 = mul nsw i64 %44, 30
  store i64 %45, i64* @MAX_EDGES, align 8
  br label %74

; <label>:46:                                     ; preds = %33
  %47 = load float, float* @BFepsilon, align 4
  %48 = fpext float %47 to double
  %49 = fcmp ole double %48, 2.000000e-04
  br i1 %49, label %50, label %59

; <label>:50:                                     ; preds = %46
  %51 = load i64, i64* @MAX_ELEMENTS, align 8
  %52 = mul nsw i64 %51, 20
  store i64 %52, i64* @MAX_ELEMENTS, align 8
  %53 = load i64, i64* @MAX_INTERACTIONS, align 8
  %54 = mul nsw i64 %53, 30
  store i64 %54, i64* @MAX_INTERACTIONS, align 8
  %55 = load i64, i64* @MAX_ELEMVERTICES, align 8
  %56 = mul nsw i64 %55, 20
  store i64 %56, i64* @MAX_ELEMVERTICES, align 8
  %57 = load i64, i64* @MAX_EDGES, align 8
  %58 = mul nsw i64 %57, 20
  store i64 %58, i64* @MAX_EDGES, align 8
  br label %73

; <label>:59:                                     ; preds = %46
  %60 = load float, float* @BFepsilon, align 4
  %61 = fpext float %60 to double
  %62 = fcmp ole double %61, 2.000000e-03
  br i1 %62, label %63, label %72

; <label>:63:                                     ; preds = %59
  %64 = load i64, i64* @MAX_ELEMENTS, align 8
  %65 = mul nsw i64 %64, 10
  store i64 %65, i64* @MAX_ELEMENTS, align 8
  %66 = load i64, i64* @MAX_INTERACTIONS, align 8
  %67 = mul nsw i64 %66, 20
  store i64 %67, i64* @MAX_INTERACTIONS, align 8
  %68 = load i64, i64* @MAX_ELEMVERTICES, align 8
  %69 = mul nsw i64 %68, 10
  store i64 %69, i64* @MAX_ELEMVERTICES, align 8
  %70 = load i64, i64* @MAX_EDGES, align 8
  %71 = mul nsw i64 %70, 10
  store i64 %71, i64* @MAX_EDGES, align 8
  br label %72

; <label>:72:                                     ; preds = %63, %59
  br label %73

; <label>:73:                                     ; preds = %72, %50
  br label %74

; <label>:74:                                     ; preds = %73, %37
  %75 = call noalias i8* @malloc(i64 12386376) #6
  %76 = bitcast i8* %75 to %struct.Global*
  store %struct.Global* %76, %struct.Global** @global, align 8
  %77 = load %struct.Global*, %struct.Global** @global, align 8
  %78 = icmp eq %struct.Global* %77, null
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %74
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:81:                                     ; preds = %74
  call void @init_global(i64 0)
  %82 = load i64, i64* @n_processors, align 8
  %83 = mul i64 %82, 8
  %84 = call noalias i8* @malloc(i64 %83) #6
  %85 = bitcast i8* %84 to %struct.Timing**
  store %struct.Timing** %85, %struct.Timing*** @timing, align 8
  store i64 0, i64* %6, align 8
  br label %86

; <label>:86:                                     ; preds = %96, %81
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @n_processors, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %99

; <label>:90:                                     ; preds = %86
  %91 = call noalias i8* @malloc(i64 40) #6
  %92 = bitcast i8* %91 to %struct.Timing*
  %93 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds %struct.Timing*, %struct.Timing** %93, i64 %94
  store %struct.Timing* %92, %struct.Timing** %95, align 8
  br label %96

; <label>:96:                                     ; preds = %90
  %97 = load i64, i64* %6, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %6, align 8
  br label %86

; <label>:99:                                     ; preds = %86
  call void @init_sharedlock(i64 0)
  call void @init_visibility_module(i64 0)
  %100 = load i64, i64* @batch_mode, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %483

; <label>:102:                                    ; preds = %99
  %103 = call i32 @gettimeofday(%struct.timeval* %19, %struct.timezone* null) #6
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = mul nsw i64 %107, 1000000
  %109 = add nsw i64 %105, %108
  store i64 %109, i64* @time_rad_start, align 8
  %110 = load %struct.Global*, %struct.Global** @global, align 8
  %111 = getelementptr inbounds %struct.Global, %struct.Global* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  store i64 0, i64* %6, align 8
  br label %112

; <label>:112:                                    ; preds = %120, %102
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* @n_processors, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %123

; <label>:116:                                    ; preds = %112
  %117 = call i64 @assign_taskq(i64 0)
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds [1024 x i64], [1024 x i64]* @taskqueue_id, i64 0, i64 %118
  store i64 %117, i64* %119, align 8
  br label %120

; <label>:120:                                    ; preds = %116
  %121 = load i64, i64* %6, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %6, align 8
  br label %112

; <label>:123:                                    ; preds = %112
  store i64 0, i64* %20, align 8
  br label %124

; <label>:124:                                    ; preds = %139, %123
  %125 = load i64, i64* %20, align 8
  %126 = load i64, i64* @n_processors, align 8
  %127 = sub nsw i64 %126, 1
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %129, label %142

; <label>:129:                                    ; preds = %124
  %130 = load i64, i64* %20, align 8
  %131 = getelementptr inbounds [1024 x i64], [1024 x i64]* @PThreadTable, i64 0, i64 %130
  %132 = call i32 @pthread_create(i64* %131, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void ()* @radiosity to i8* (i8*)*), i8* null) #6
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %21, align 8
  %134 = load i64, i64* %21, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

; <label>:136:                                    ; preds = %129
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:138:                                    ; preds = %129
  br label %139

; <label>:139:                                    ; preds = %138
  %140 = load i64, i64* %20, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %20, align 8
  br label %124

; <label>:142:                                    ; preds = %124
  call void @radiosity()
  store i64 0, i64* %22, align 8
  br label %143

; <label>:143:                                    ; preds = %159, %142
  %144 = load i64, i64* %22, align 8
  %145 = load i64, i64* @n_processors, align 8
  %146 = sub nsw i64 %145, 1
  %147 = icmp ult i64 %144, %146
  br i1 %147, label %148, label %162

; <label>:148:                                    ; preds = %143
  %149 = load i64, i64* %22, align 8
  %150 = getelementptr inbounds [1024 x i64], [1024 x i64]* @PThreadTable, i64 0, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @pthread_join(i64 %151, i8** null)
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %23, align 8
  %154 = load i64, i64* %23, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

; <label>:156:                                    ; preds = %148
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:158:                                    ; preds = %148
  br label %159

; <label>:159:                                    ; preds = %158
  %160 = load i64, i64* %22, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %22, align 8
  br label %143

; <label>:162:                                    ; preds = %143
  %163 = call i32 @gettimeofday(%struct.timeval* %24, %struct.timezone* null) #6
  %164 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = mul nsw i64 %167, 1000000
  %169 = add nsw i64 %165, %168
  store i64 %169, i64* @time_rad_end, align 8
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0))
  call void @print_running_time(i64 0)
  %171 = load i64, i64* @dostats, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %481

; <label>:173:                                    ; preds = %162
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0))
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0))
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  store i64 0, i64* %6, align 8
  br label %177

; <label>:177:                                    ; preds = %208, %173
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* @n_processors, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %181, label %211

; <label>:181:                                    ; preds = %177
  %182 = load i64, i64* %6, align 8
  %183 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %184 = load i64, i64* %6, align 8
  %185 = getelementptr inbounds %struct.Timing*, %struct.Timing** %183, i64 %184
  %186 = load %struct.Timing*, %struct.Timing** %185, align 8
  %187 = getelementptr inbounds %struct.Timing, %struct.Timing* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %190 = load i64, i64* %6, align 8
  %191 = getelementptr inbounds %struct.Timing*, %struct.Timing** %189, i64 %190
  %192 = load %struct.Timing*, %struct.Timing** %191, align 8
  %193 = getelementptr inbounds %struct.Timing, %struct.Timing* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %196 = load i64, i64* %6, align 8
  %197 = getelementptr inbounds %struct.Timing*, %struct.Timing** %195, i64 %196
  %198 = load %struct.Timing*, %struct.Timing** %197, align 8
  %199 = getelementptr inbounds %struct.Timing, %struct.Timing* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %202 = load i64, i64* %6, align 8
  %203 = getelementptr inbounds %struct.Timing*, %struct.Timing** %201, i64 %202
  %204 = load %struct.Timing*, %struct.Timing** %203, align 8
  %205 = getelementptr inbounds %struct.Timing, %struct.Timing* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i64 %182, i64 %188, i64 %194, i64 %200, i64 %206)
  br label %208

; <label>:208:                                    ; preds = %181
  %209 = load i64, i64* %6, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %6, align 8
  br label %177

; <label>:211:                                    ; preds = %177
  %212 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %213 = getelementptr inbounds %struct.Timing*, %struct.Timing** %212, i64 0
  %214 = load %struct.Timing*, %struct.Timing** %213, align 8
  %215 = getelementptr inbounds %struct.Timing, %struct.Timing* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %7, align 8
  %217 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %218 = getelementptr inbounds %struct.Timing*, %struct.Timing** %217, i64 0
  %219 = load %struct.Timing*, %struct.Timing** %218, align 8
  %220 = getelementptr inbounds %struct.Timing, %struct.Timing* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %8, align 8
  %222 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %223 = getelementptr inbounds %struct.Timing*, %struct.Timing** %222, i64 0
  %224 = load %struct.Timing*, %struct.Timing** %223, align 8
  %225 = getelementptr inbounds %struct.Timing, %struct.Timing* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %9, align 8
  %227 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %228 = getelementptr inbounds %struct.Timing*, %struct.Timing** %227, i64 0
  %229 = load %struct.Timing*, %struct.Timing** %228, align 8
  %230 = getelementptr inbounds %struct.Timing, %struct.Timing* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %10, align 8
  %232 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %233 = getelementptr inbounds %struct.Timing*, %struct.Timing** %232, i64 0
  %234 = load %struct.Timing*, %struct.Timing** %233, align 8
  %235 = getelementptr inbounds %struct.Timing, %struct.Timing* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %11, align 8
  %237 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %238 = getelementptr inbounds %struct.Timing*, %struct.Timing** %237, i64 0
  %239 = load %struct.Timing*, %struct.Timing** %238, align 8
  %240 = getelementptr inbounds %struct.Timing, %struct.Timing* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %12, align 8
  %242 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %243 = getelementptr inbounds %struct.Timing*, %struct.Timing** %242, i64 0
  %244 = load %struct.Timing*, %struct.Timing** %243, align 8
  %245 = getelementptr inbounds %struct.Timing, %struct.Timing* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %13, align 8
  %247 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %248 = getelementptr inbounds %struct.Timing*, %struct.Timing** %247, i64 0
  %249 = load %struct.Timing*, %struct.Timing** %248, align 8
  %250 = getelementptr inbounds %struct.Timing, %struct.Timing* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %14, align 8
  %252 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %253 = getelementptr inbounds %struct.Timing*, %struct.Timing** %252, i64 0
  %254 = load %struct.Timing*, %struct.Timing** %253, align 8
  %255 = getelementptr inbounds %struct.Timing, %struct.Timing* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %15, align 8
  %257 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %258 = getelementptr inbounds %struct.Timing*, %struct.Timing** %257, i64 0
  %259 = load %struct.Timing*, %struct.Timing** %258, align 8
  %260 = getelementptr inbounds %struct.Timing, %struct.Timing* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %16, align 8
  %262 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %263 = getelementptr inbounds %struct.Timing*, %struct.Timing** %262, i64 0
  %264 = load %struct.Timing*, %struct.Timing** %263, align 8
  %265 = getelementptr inbounds %struct.Timing, %struct.Timing* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %17, align 8
  %267 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %268 = getelementptr inbounds %struct.Timing*, %struct.Timing** %267, i64 0
  %269 = load %struct.Timing*, %struct.Timing** %268, align 8
  %270 = getelementptr inbounds %struct.Timing, %struct.Timing* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %18, align 8
  store i64 1, i64* %6, align 8
  br label %272

; <label>:272:                                    ; preds = %437, %211
  %273 = load i64, i64* %6, align 8
  %274 = load i64, i64* @n_processors, align 8
  %275 = icmp slt i64 %273, %274
  br i1 %275, label %276, label %440

; <label>:276:                                    ; preds = %272
  %277 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %278 = load i64, i64* %6, align 8
  %279 = getelementptr inbounds %struct.Timing*, %struct.Timing** %277, i64 %278
  %280 = load %struct.Timing*, %struct.Timing** %279, align 8
  %281 = getelementptr inbounds %struct.Timing, %struct.Timing* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* %7, align 8
  %284 = add nsw i64 %283, %282
  store i64 %284, i64* %7, align 8
  %285 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %286 = load i64, i64* %6, align 8
  %287 = getelementptr inbounds %struct.Timing*, %struct.Timing** %285, i64 %286
  %288 = load %struct.Timing*, %struct.Timing** %287, align 8
  %289 = getelementptr inbounds %struct.Timing, %struct.Timing* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %8, align 8
  %292 = icmp sgt i64 %290, %291
  br i1 %292, label %293, label %300

; <label>:293:                                    ; preds = %276
  %294 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %295 = load i64, i64* %6, align 8
  %296 = getelementptr inbounds %struct.Timing*, %struct.Timing** %294, i64 %295
  %297 = load %struct.Timing*, %struct.Timing** %296, align 8
  %298 = getelementptr inbounds %struct.Timing, %struct.Timing* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %8, align 8
  br label %300

; <label>:300:                                    ; preds = %293, %276
  %301 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %302 = load i64, i64* %6, align 8
  %303 = getelementptr inbounds %struct.Timing*, %struct.Timing** %301, i64 %302
  %304 = load %struct.Timing*, %struct.Timing** %303, align 8
  %305 = getelementptr inbounds %struct.Timing, %struct.Timing* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %9, align 8
  %308 = icmp slt i64 %306, %307
  br i1 %308, label %309, label %316

; <label>:309:                                    ; preds = %300
  %310 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %311 = load i64, i64* %6, align 8
  %312 = getelementptr inbounds %struct.Timing*, %struct.Timing** %310, i64 %311
  %313 = load %struct.Timing*, %struct.Timing** %312, align 8
  %314 = getelementptr inbounds %struct.Timing, %struct.Timing* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  store i64 %315, i64* %9, align 8
  br label %316

; <label>:316:                                    ; preds = %309, %300
  %317 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %318 = load i64, i64* %6, align 8
  %319 = getelementptr inbounds %struct.Timing*, %struct.Timing** %317, i64 %318
  %320 = load %struct.Timing*, %struct.Timing** %319, align 8
  %321 = getelementptr inbounds %struct.Timing, %struct.Timing* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* %10, align 8
  %324 = add nsw i64 %323, %322
  store i64 %324, i64* %10, align 8
  %325 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %326 = load i64, i64* %6, align 8
  %327 = getelementptr inbounds %struct.Timing*, %struct.Timing** %325, i64 %326
  %328 = load %struct.Timing*, %struct.Timing** %327, align 8
  %329 = getelementptr inbounds %struct.Timing, %struct.Timing* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* %11, align 8
  %332 = icmp sgt i64 %330, %331
  br i1 %332, label %333, label %340

; <label>:333:                                    ; preds = %316
  %334 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %335 = load i64, i64* %6, align 8
  %336 = getelementptr inbounds %struct.Timing*, %struct.Timing** %334, i64 %335
  %337 = load %struct.Timing*, %struct.Timing** %336, align 8
  %338 = getelementptr inbounds %struct.Timing, %struct.Timing* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %11, align 8
  br label %340

; <label>:340:                                    ; preds = %333, %316
  %341 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %342 = load i64, i64* %6, align 8
  %343 = getelementptr inbounds %struct.Timing*, %struct.Timing** %341, i64 %342
  %344 = load %struct.Timing*, %struct.Timing** %343, align 8
  %345 = getelementptr inbounds %struct.Timing, %struct.Timing* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* %12, align 8
  %348 = icmp slt i64 %346, %347
  br i1 %348, label %349, label %356

; <label>:349:                                    ; preds = %340
  %350 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %351 = load i64, i64* %6, align 8
  %352 = getelementptr inbounds %struct.Timing*, %struct.Timing** %350, i64 %351
  %353 = load %struct.Timing*, %struct.Timing** %352, align 8
  %354 = getelementptr inbounds %struct.Timing, %struct.Timing* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %12, align 8
  br label %356

; <label>:356:                                    ; preds = %349, %340
  %357 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %358 = load i64, i64* %6, align 8
  %359 = getelementptr inbounds %struct.Timing*, %struct.Timing** %357, i64 %358
  %360 = load %struct.Timing*, %struct.Timing** %359, align 8
  %361 = getelementptr inbounds %struct.Timing, %struct.Timing* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* %13, align 8
  %364 = add nsw i64 %363, %362
  store i64 %364, i64* %13, align 8
  %365 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %366 = load i64, i64* %6, align 8
  %367 = getelementptr inbounds %struct.Timing*, %struct.Timing** %365, i64 %366
  %368 = load %struct.Timing*, %struct.Timing** %367, align 8
  %369 = getelementptr inbounds %struct.Timing, %struct.Timing* %368, i32 0, i32 3
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* %14, align 8
  %372 = icmp sgt i64 %370, %371
  br i1 %372, label %373, label %380

; <label>:373:                                    ; preds = %356
  %374 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %375 = load i64, i64* %6, align 8
  %376 = getelementptr inbounds %struct.Timing*, %struct.Timing** %374, i64 %375
  %377 = load %struct.Timing*, %struct.Timing** %376, align 8
  %378 = getelementptr inbounds %struct.Timing, %struct.Timing* %377, i32 0, i32 3
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %14, align 8
  br label %380

; <label>:380:                                    ; preds = %373, %356
  %381 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %382 = load i64, i64* %6, align 8
  %383 = getelementptr inbounds %struct.Timing*, %struct.Timing** %381, i64 %382
  %384 = load %struct.Timing*, %struct.Timing** %383, align 8
  %385 = getelementptr inbounds %struct.Timing, %struct.Timing* %384, i32 0, i32 3
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* %15, align 8
  %388 = icmp slt i64 %386, %387
  br i1 %388, label %389, label %396

; <label>:389:                                    ; preds = %380
  %390 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %391 = load i64, i64* %6, align 8
  %392 = getelementptr inbounds %struct.Timing*, %struct.Timing** %390, i64 %391
  %393 = load %struct.Timing*, %struct.Timing** %392, align 8
  %394 = getelementptr inbounds %struct.Timing, %struct.Timing* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %15, align 8
  br label %396

; <label>:396:                                    ; preds = %389, %380
  %397 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %398 = load i64, i64* %6, align 8
  %399 = getelementptr inbounds %struct.Timing*, %struct.Timing** %397, i64 %398
  %400 = load %struct.Timing*, %struct.Timing** %399, align 8
  %401 = getelementptr inbounds %struct.Timing, %struct.Timing* %400, i32 0, i32 4
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* %16, align 8
  %404 = add nsw i64 %403, %402
  store i64 %404, i64* %16, align 8
  %405 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %406 = load i64, i64* %6, align 8
  %407 = getelementptr inbounds %struct.Timing*, %struct.Timing** %405, i64 %406
  %408 = load %struct.Timing*, %struct.Timing** %407, align 8
  %409 = getelementptr inbounds %struct.Timing, %struct.Timing* %408, i32 0, i32 4
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* %17, align 8
  %412 = icmp sgt i64 %410, %411
  br i1 %412, label %413, label %420

; <label>:413:                                    ; preds = %396
  %414 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %415 = load i64, i64* %6, align 8
  %416 = getelementptr inbounds %struct.Timing*, %struct.Timing** %414, i64 %415
  %417 = load %struct.Timing*, %struct.Timing** %416, align 8
  %418 = getelementptr inbounds %struct.Timing, %struct.Timing* %417, i32 0, i32 4
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %17, align 8
  br label %420

; <label>:420:                                    ; preds = %413, %396
  %421 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %422 = load i64, i64* %6, align 8
  %423 = getelementptr inbounds %struct.Timing*, %struct.Timing** %421, i64 %422
  %424 = load %struct.Timing*, %struct.Timing** %423, align 8
  %425 = getelementptr inbounds %struct.Timing, %struct.Timing* %424, i32 0, i32 4
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* %18, align 8
  %428 = icmp slt i64 %426, %427
  br i1 %428, label %429, label %436

; <label>:429:                                    ; preds = %420
  %430 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %431 = load i64, i64* %6, align 8
  %432 = getelementptr inbounds %struct.Timing*, %struct.Timing** %430, i64 %431
  %433 = load %struct.Timing*, %struct.Timing** %432, align 8
  %434 = getelementptr inbounds %struct.Timing, %struct.Timing* %433, i32 0, i32 4
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %18, align 8
  br label %436

; <label>:436:                                    ; preds = %429, %420
  br label %437

; <label>:437:                                    ; preds = %436
  %438 = load i64, i64* %6, align 8
  %439 = add nsw i64 %438, 1
  store i64 %439, i64* %6, align 8
  br label %272

; <label>:440:                                    ; preds = %272
  %441 = load i64, i64* %8, align 8
  %442 = load i64, i64* %11, align 8
  %443 = load i64, i64* %14, align 8
  %444 = load i64, i64* %17, align 8
  %445 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i64 %441, i64 %442, i64 %443, i64 %444)
  %446 = load i64, i64* %9, align 8
  %447 = load i64, i64* %12, align 8
  %448 = load i64, i64* %15, align 8
  %449 = load i64, i64* %18, align 8
  %450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i64 %446, i64 %447, i64 %448, i64 %449)
  %451 = load i64, i64* %7, align 8
  %452 = sitofp i64 %451 to double
  %453 = load i64, i64* @n_processors, align 8
  %454 = sitofp i64 %453 to double
  %455 = fmul double 1.000000e+00, %454
  %456 = fdiv double %452, %455
  %457 = fptosi double %456 to i64
  %458 = load i64, i64* %10, align 8
  %459 = sitofp i64 %458 to double
  %460 = load i64, i64* @n_processors, align 8
  %461 = sitofp i64 %460 to double
  %462 = fmul double 1.000000e+00, %461
  %463 = fdiv double %459, %462
  %464 = fptosi double %463 to i64
  %465 = load i64, i64* %13, align 8
  %466 = sitofp i64 %465 to double
  %467 = load i64, i64* @n_processors, align 8
  %468 = sitofp i64 %467 to double
  %469 = fmul double 1.000000e+00, %468
  %470 = fdiv double %466, %469
  %471 = fptosi double %470 to i64
  %472 = load i64, i64* %16, align 8
  %473 = sitofp i64 %472 to double
  %474 = load i64, i64* @n_processors, align 8
  %475 = sitofp i64 %474 to double
  %476 = fmul double 1.000000e+00, %475
  %477 = fdiv double %473, %476
  %478 = fptosi double %477 to i64
  %479 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i64 %457, i64 %464, i64 %471, i64 %478)
  %480 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  br label %481

; <label>:481:                                    ; preds = %440, %162
  %482 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @print_statistics(%struct._IO_FILE* %482, i64 0)
  br label %484

; <label>:483:                                    ; preds = %99
  call void @g_start(void ()* @expose_callback, i64 5, %struct.slider* getelementptr inbounds ([5 x %struct.slider], [5 x %struct.slider]* @sliders, i32 0, i32 0), i64 4, %struct.choice* getelementptr inbounds ([4 x %struct.choice], [4 x %struct.choice]* @choices, i32 0, i32 0))
  br label %484

; <label>:484:                                    ; preds = %483, %481
  call void @exit(i32 0) #7
  unreachable
                                                  ; No predecessors!
  %486 = load i32, i32* %3, align 4
  ret i32 %486
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_args(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i64 1, i64* %5, align 8
  br label %6

; <label>:6:                                      ; preds = %185, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %7, %9
  br i1 %10, label %11, label %188

; <label>:11:                                     ; preds = %6
  %12 = load i8**, i8*** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0)) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %11
  %19 = load i8**, i8*** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %5, align 8
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i64* @n_processors) #6
  %25 = load i64, i64* @n_processors, align 8
  store i64 %25, i64* @n_taskqueues, align 8
  br label %184

; <label>:26:                                     ; preds = %11
  %27 = load i8**, i8*** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0)) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

; <label>:33:                                     ; preds = %26
  %34 = load i8**, i8*** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %5, align 8
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i64* @n_tasks_per_queue) #6
  br label %183

; <label>:40:                                     ; preds = %26
  %41 = load i8**, i8*** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0)) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

; <label>:47:                                     ; preds = %40
  %48 = load i8**, i8*** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %5, align 8
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), float* @Area_epsilon) #6
  br label %182

; <label>:54:                                     ; preds = %40
  %55 = load i8**, i8*** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0)) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

; <label>:61:                                     ; preds = %54
  %62 = load i8**, i8*** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %5, align 8
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i64* @N_inter_parallel_bf_refine) #6
  br label %181

; <label>:68:                                     ; preds = %54
  %69 = load i8**, i8*** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0)) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

; <label>:75:                                     ; preds = %68
  %76 = load i8**, i8*** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %5, align 8
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i64* @N_visibility_per_task) #6
  br label %180

; <label>:82:                                     ; preds = %68
  %83 = load i8**, i8*** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0)) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

; <label>:89:                                     ; preds = %82
  %90 = load i8**, i8*** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %5, align 8
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), float* @BFepsilon) #6
  br label %179

; <label>:96:                                     ; preds = %82
  %97 = load i8**, i8*** %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds i8*, i8** %97, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

; <label>:103:                                    ; preds = %96
  %104 = load i8**, i8*** %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %5, align 8
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), float* @Energy_epsilon) #6
  br label %178

; <label>:110:                                    ; preds = %96
  %111 = load i8**, i8*** %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0)) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %110
  store i64 1, i64* @batch_mode, align 8
  br label %177

; <label>:118:                                    ; preds = %110
  %119 = load i8**, i8*** %4, align 8
  %120 = load i64, i64* %5, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0)) #8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

; <label>:125:                                    ; preds = %118
  store i64 1, i64* @verbose_mode, align 8
  br label %176

; <label>:126:                                    ; preds = %118
  %127 = load i8**, i8*** %4, align 8
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds i8*, i8** %127, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0)) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

; <label>:133:                                    ; preds = %126
  store i64 1, i64* @dostats, align 8
  br label %175

; <label>:134:                                    ; preds = %126
  %135 = load i8**, i8*** %4, align 8
  %136 = load i64, i64* %5, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0)) #8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %134
  store i64 1, i64* @model_selector, align 8
  br label %174

; <label>:142:                                    ; preds = %134
  %143 = load i8**, i8*** %4, align 8
  %144 = load i64, i64* %5, align 8
  %145 = getelementptr inbounds i8*, i8** %143, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0)) #8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

; <label>:149:                                    ; preds = %142
  store i64 2, i64* @model_selector, align 8
  br label %173

; <label>:150:                                    ; preds = %142
  %151 = load i8**, i8*** %4, align 8
  %152 = load i64, i64* %5, align 8
  %153 = getelementptr inbounds i8*, i8** %151, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0)) #8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %171, label %157

; <label>:157:                                    ; preds = %150
  %158 = load i8**, i8*** %4, align 8
  %159 = load i64, i64* %5, align 8
  %160 = getelementptr inbounds i8*, i8** %158, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0)) #8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

; <label>:164:                                    ; preds = %157
  %165 = load i8**, i8*** %4, align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds i8*, i8** %165, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0)) #8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

; <label>:171:                                    ; preds = %164, %157, %150
  call void @print_usage()
  call void @exit(i32 0) #7
  unreachable

; <label>:172:                                    ; preds = %164
  br label %173

; <label>:173:                                    ; preds = %172, %149
  br label %174

; <label>:174:                                    ; preds = %173, %141
  br label %175

; <label>:175:                                    ; preds = %174, %133
  br label %176

; <label>:176:                                    ; preds = %175, %125
  br label %177

; <label>:177:                                    ; preds = %176, %117
  br label %178

; <label>:178:                                    ; preds = %177, %103
  br label %179

; <label>:179:                                    ; preds = %178, %89
  br label %180

; <label>:180:                                    ; preds = %179, %75
  br label %181

; <label>:181:                                    ; preds = %180, %61
  br label %182

; <label>:182:                                    ; preds = %181, %47
  br label %183

; <label>:183:                                    ; preds = %182, %33
  br label %184

; <label>:184:                                    ; preds = %183, %18
  br label %185

; <label>:185:                                    ; preds = %184
  %186 = load i64, i64* %5, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %5, align 8
  br label %6

; <label>:188:                                    ; preds = %6
  %189 = load i64, i64* @n_processors, align 8
  %190 = icmp slt i64 %189, 1
  br i1 %190, label %194, label %191

; <label>:191:                                    ; preds = %188
  %192 = load i64, i64* @n_processors, align 8
  %193 = icmp slt i64 1024, %192
  br i1 %193, label %194, label %198

; <label>:194:                                    ; preds = %191, %188
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %196 = load i64, i64* @n_processors, align 8
  %197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.81, i32 0, i32 0), i64 %196)
  call void @exit(i32 1) #7
  unreachable

; <label>:198:                                    ; preds = %191
  %199 = load i64, i64* @n_taskqueues, align 8
  %200 = icmp slt i64 %199, 1
  br i1 %200, label %204, label %201

; <label>:201:                                    ; preds = %198
  %202 = load i64, i64* @n_taskqueues, align 8
  %203 = icmp slt i64 128, %202
  br i1 %203, label %204, label %208

; <label>:204:                                    ; preds = %201, %198
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %206 = load i64, i64* @n_taskqueues, align 8
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.82, i32 0, i32 0), i64 %206)
  call void @exit(i32 1) #7
  unreachable

; <label>:208:                                    ; preds = %201
  %209 = load float, float* @Area_epsilon, align 4
  %210 = fpext float %209 to double
  %211 = fcmp olt double %210, 0.000000e+00
  br i1 %211, label %212, label %215

; <label>:212:                                    ; preds = %208
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.83, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:215:                                    ; preds = %208
  %216 = load float, float* @BFepsilon, align 4
  %217 = fpext float %216 to double
  %218 = fcmp olt double %217, 0.000000e+00
  br i1 %218, label %219, label %222

; <label>:219:                                    ; preds = %215
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.84, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:222:                                    ; preds = %215
  ret void
}

declare void @g_init(i32, i8**) #1

declare void @setup_view(float, float, float, float, i64) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @init_global(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.Global*, %struct.Global** @global, align 8
  %5 = getelementptr inbounds %struct.Global, %struct.Global* %4, i32 0, i32 0
  store i64 1, i64* %5, align 8
  %6 = load %struct.Global*, %struct.Global** @global, align 8
  %7 = getelementptr inbounds %struct.Global, %struct.Global* %6, i32 0, i32 5
  store %struct._patch* null, %struct._patch** %7, align 8
  %8 = load %struct.Global*, %struct.Global** @global, align 8
  %9 = getelementptr inbounds %struct.Global, %struct.Global* %8, i32 0, i32 1
  %10 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %9, %union.pthread_mutexattr_t* null) #6
  %11 = load %struct.Global*, %struct.Global** @global, align 8
  %12 = getelementptr inbounds %struct.Global, %struct.Global* %11, i32 0, i32 4
  %13 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %12, %union.pthread_mutexattr_t* null) #6
  %14 = load %struct.Global*, %struct.Global** @global, align 8
  %15 = getelementptr inbounds %struct.Global, %struct.Global* %14, i32 0, i32 6
  %16 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %15, %union.pthread_mutexattr_t* null) #6
  %17 = load %struct.Global*, %struct.Global** @global, align 8
  %18 = getelementptr inbounds %struct.Global, %struct.Global* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load %struct.Global*, %struct.Global** @global, align 8
  %20 = getelementptr inbounds %struct.Global, %struct.Global* %19, i32 0, i32 8
  %21 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %20, i32 0, i32 0
  store float 0.000000e+00, float* %21, align 8
  %22 = load %struct.Global*, %struct.Global** @global, align 8
  %23 = getelementptr inbounds %struct.Global, %struct.Global* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %23, i32 0, i32 1
  store float 0.000000e+00, float* %24, align 4
  %25 = load %struct.Global*, %struct.Global** @global, align 8
  %26 = getelementptr inbounds %struct.Global, %struct.Global* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %26, i32 0, i32 2
  store float 0.000000e+00, float* %27, align 8
  %28 = load %struct.Global*, %struct.Global** @global, align 8
  %29 = getelementptr inbounds %struct.Global, %struct.Global* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %29, i32 0, i32 0
  store float 1.000000e+00, float* %30, align 4
  %31 = load %struct.Global*, %struct.Global** @global, align 8
  %32 = getelementptr inbounds %struct.Global, %struct.Global* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %32, i32 0, i32 1
  store float 1.000000e+00, float* %33, align 4
  %34 = load %struct.Global*, %struct.Global** @global, align 8
  %35 = getelementptr inbounds %struct.Global, %struct.Global* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %35, i32 0, i32 2
  store float 1.000000e+00, float* %36, align 4
  %37 = load %struct.Global*, %struct.Global** @global, align 8
  %38 = getelementptr inbounds %struct.Global, %struct.Global* %37, i32 0, i32 10
  store float 1.000000e+00, float* %38, align 8
  %39 = load %struct.Global*, %struct.Global** @global, align 8
  %40 = getelementptr inbounds %struct.Global, %struct.Global* %39, i32 0, i32 11
  store i64 -1, i64* %40, align 8
  %41 = load %struct.Global*, %struct.Global** @global, align 8
  %42 = getelementptr inbounds %struct.Global, %struct.Global* %41, i32 0, i32 12
  %43 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %42, %union.pthread_mutexattr_t* null) #6
  %44 = load %struct.Global*, %struct.Global** @global, align 8
  %45 = getelementptr inbounds %struct.Global, %struct.Global* %44, i32 0, i32 13
  store i64 0, i64* %45, align 8
  %46 = load %struct.Global*, %struct.Global** @global, align 8
  %47 = getelementptr inbounds %struct.Global, %struct.Global* %46, i32 0, i32 14
  store i64 0, i64* %47, align 8
  %48 = load %struct.Global*, %struct.Global** @global, align 8
  %49 = getelementptr inbounds %struct.Global, %struct.Global* %48, i32 0, i32 16
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 0
  %51 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %50, %union.pthread_mutexattr_t* null) #6
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %1
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:57:                                     ; preds = %1
  %58 = load %struct.Global*, %struct.Global** @global, align 8
  %59 = getelementptr inbounds %struct.Global, %struct.Global* %58, i32 0, i32 16
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 1
  %61 = call i32 @pthread_cond_init(%union.pthread_cond_t* %60, %union.pthread_condattr_t* null) #6
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

; <label>:65:                                     ; preds = %57
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i32 0, i32 0))
  %67 = load %struct.Global*, %struct.Global** @global, align 8
  %68 = getelementptr inbounds %struct.Global, %struct.Global* %67, i32 0, i32 16
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 0
  %70 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %69) #6
  call void @exit(i32 -1) #7
  unreachable

; <label>:71:                                     ; preds = %57
  %72 = load %struct.Global*, %struct.Global** @global, align 8
  %73 = getelementptr inbounds %struct.Global, %struct.Global* %72, i32 0, i32 16
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.Global*, %struct.Global** @global, align 8
  %76 = getelementptr inbounds %struct.Global, %struct.Global* %75, i32 0, i32 16
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.Global*, %struct.Global** @global, align 8
  %79 = getelementptr inbounds %struct.Global, %struct.Global* %78, i32 0, i32 18
  %80 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %79, %union.pthread_mutexattr_t* null) #6
  %81 = load %struct.Global*, %struct.Global** @global, align 8
  %82 = getelementptr inbounds %struct.Global, %struct.Global* %81, i32 0, i32 17
  store i64 0, i64* %82, align 8
  %83 = load %struct.Global*, %struct.Global** @global, align 8
  %84 = getelementptr inbounds %struct.Global, %struct.Global* %83, i32 0, i32 19
  store i64 0, i64* %84, align 8
  %85 = load %struct.Global*, %struct.Global** @global, align 8
  %86 = getelementptr inbounds %struct.Global, %struct.Global* %85, i32 0, i32 20
  %87 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %86, %union.pthread_mutexattr_t* null) #6
  %88 = load i64, i64* %2, align 8
  call void @init_taskq(i64 %88)
  %89 = load i64, i64* %2, align 8
  call void @init_patchlist(i64 %89)
  %90 = load i64, i64* %2, align 8
  call void @init_elemlist(i64 %90)
  %91 = load i64, i64* %2, align 8
  call void @init_interactionlist(i64 %91)
  %92 = load i64, i64* %2, align 8
  call void @init_elemvertex(i64 %92)
  %93 = load i64, i64* %2, align 8
  call void @init_edge(i64 %93)
  %94 = load i64, i64* %2, align 8
  call void @init_stat_info(i64 %94)
  ret void
}

declare void @init_sharedlock(i64) #1

declare void @init_visibility_module(i64) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare i64 @assign_taskq(i64) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @radiosity() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timeval, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = load %struct.Global*, %struct.Global** @global, align 8
  %19 = getelementptr inbounds %struct.Global, %struct.Global* %18, i32 0, i32 1
  %20 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %19) #6
  %21 = load %struct.Global*, %struct.Global** @global, align 8
  %22 = getelementptr inbounds %struct.Global, %struct.Global* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  store i64 %23, i64* %1, align 8
  %25 = load %struct.Global*, %struct.Global** @global, align 8
  %26 = getelementptr inbounds %struct.Global, %struct.Global* %25, i32 0, i32 1
  %27 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %26) #6
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @n_processors, align 8
  %30 = srem i64 %28, %29
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %36, label %33

; <label>:33:                                     ; preds = %0
  %34 = load i64, i64* @dostats, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

; <label>:36:                                     ; preds = %33, %0
  %37 = call i32 @gettimeofday(%struct.timeval* %6, %struct.timezone* null) #6
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = mul nsw i64 %41, 1000000
  %43 = add nsw i64 %39, %42
  store i64 %43, i64* %2, align 8
  br label %44

; <label>:44:                                     ; preds = %36, %33
  %45 = load i64, i64* %1, align 8
  call void @init_modeling_tasks(i64 %45)
  %46 = load i64, i64* %1, align 8
  call void @process_tasks(i64 %46)
  br label %47

; <label>:47:                                     ; preds = %118, %44
  %48 = load i64, i64* %1, align 8
  %49 = call i64 @init_ray_tasks(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %124

; <label>:51:                                     ; preds = %47
  %52 = load %struct.Global*, %struct.Global** @global, align 8
  %53 = getelementptr inbounds %struct.Global, %struct.Global* %52, i32 0, i32 16
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %54) #6
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %51
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:61:                                     ; preds = %51
  %62 = load %struct.Global*, %struct.Global** @global, align 8
  %63 = getelementptr inbounds %struct.Global, %struct.Global* %62, i32 0, i32 16
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %8, align 8
  %66 = load %struct.Global*, %struct.Global** @global, align 8
  %67 = getelementptr inbounds %struct.Global, %struct.Global* %66, i32 0, i32 16
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load i64, i64* @n_processors, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %98

; <label>:73:                                     ; preds = %61
  %74 = call i32 @pthread_setcancelstate(i32 1, i32* %9)
  br label %75

; <label>:75:                                     ; preds = %94, %73
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.Global*, %struct.Global** @global, align 8
  %78 = getelementptr inbounds %struct.Global, %struct.Global* %77, i32 0, i32 16
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %76, %80
  br i1 %81, label %82, label %95

; <label>:82:                                     ; preds = %75
  %83 = load %struct.Global*, %struct.Global** @global, align 8
  %84 = getelementptr inbounds %struct.Global, %struct.Global* %83, i32 0, i32 16
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %84, i32 0, i32 1
  %86 = load %struct.Global*, %struct.Global** @global, align 8
  %87 = getelementptr inbounds %struct.Global, %struct.Global* %86, i32 0, i32 16
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 0
  %89 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %85, %union.pthread_mutex_t* %88)
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %82
  br label %95

; <label>:94:                                     ; preds = %82
  br label %75

; <label>:95:                                     ; preds = %93, %75
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @pthread_setcancelstate(i32 %96, i32* %10)
  br label %118

; <label>:98:                                     ; preds = %61
  %99 = load %struct.Global*, %struct.Global** @global, align 8
  %100 = getelementptr inbounds %struct.Global, %struct.Global* %99, i32 0, i32 16
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = load %struct.Global*, %struct.Global** @global, align 8
  %108 = getelementptr inbounds %struct.Global, %struct.Global* %107, i32 0, i32 16
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %108, i32 0, i32 3
  store i64 %106, i64* %109, align 8
  %110 = load %struct.Global*, %struct.Global** @global, align 8
  %111 = getelementptr inbounds %struct.Global, %struct.Global* %110, i32 0, i32 16
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.Global*, %struct.Global** @global, align 8
  %114 = getelementptr inbounds %struct.Global, %struct.Global* %113, i32 0, i32 16
  %115 = getelementptr inbounds %struct.anon, %struct.anon* %114, i32 0, i32 1
  %116 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %115) #6
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %7, align 8
  br label %118

; <label>:118:                                    ; preds = %98, %95
  %119 = load %struct.Global*, %struct.Global** @global, align 8
  %120 = getelementptr inbounds %struct.Global, %struct.Global* %119, i32 0, i32 16
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %120, i32 0, i32 0
  %122 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %121) #6
  %123 = load i64, i64* %1, align 8
  call void @process_tasks(i64 %123)
  br label %47

; <label>:124:                                    ; preds = %47
  %125 = load i64, i64* %1, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %130, label %127

; <label>:127:                                    ; preds = %124
  %128 = load i64, i64* @dostats, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

; <label>:130:                                    ; preds = %127, %124
  %131 = call i32 @gettimeofday(%struct.timeval* %11, %struct.timezone* null) #6
  %132 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = mul nsw i64 %135, 1000000
  %137 = add nsw i64 %133, %136
  store i64 %137, i64* %3, align 8
  br label %138

; <label>:138:                                    ; preds = %130, %127
  %139 = load %struct.Global*, %struct.Global** @global, align 8
  %140 = getelementptr inbounds %struct.Global, %struct.Global* %139, i32 0, i32 16
  %141 = getelementptr inbounds %struct.anon, %struct.anon* %140, i32 0, i32 0
  %142 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %141) #6
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

; <label>:146:                                    ; preds = %138
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:148:                                    ; preds = %138
  %149 = load %struct.Global*, %struct.Global** @global, align 8
  %150 = getelementptr inbounds %struct.Global, %struct.Global* %149, i32 0, i32 16
  %151 = getelementptr inbounds %struct.anon, %struct.anon* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %13, align 8
  %153 = load %struct.Global*, %struct.Global** @global, align 8
  %154 = getelementptr inbounds %struct.Global, %struct.Global* %153, i32 0, i32 16
  %155 = getelementptr inbounds %struct.anon, %struct.anon* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load i64, i64* @n_processors, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %185

; <label>:160:                                    ; preds = %148
  %161 = call i32 @pthread_setcancelstate(i32 1, i32* %14)
  br label %162

; <label>:162:                                    ; preds = %181, %160
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.Global*, %struct.Global** @global, align 8
  %165 = getelementptr inbounds %struct.Global, %struct.Global* %164, i32 0, i32 16
  %166 = getelementptr inbounds %struct.anon, %struct.anon* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %163, %167
  br i1 %168, label %169, label %182

; <label>:169:                                    ; preds = %162
  %170 = load %struct.Global*, %struct.Global** @global, align 8
  %171 = getelementptr inbounds %struct.Global, %struct.Global* %170, i32 0, i32 16
  %172 = getelementptr inbounds %struct.anon, %struct.anon* %171, i32 0, i32 1
  %173 = load %struct.Global*, %struct.Global** @global, align 8
  %174 = getelementptr inbounds %struct.Global, %struct.Global* %173, i32 0, i32 16
  %175 = getelementptr inbounds %struct.anon, %struct.anon* %174, i32 0, i32 0
  %176 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %172, %union.pthread_mutex_t* %175)
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %12, align 8
  %178 = load i64, i64* %12, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

; <label>:180:                                    ; preds = %169
  br label %182

; <label>:181:                                    ; preds = %169
  br label %162

; <label>:182:                                    ; preds = %180, %162
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @pthread_setcancelstate(i32 %183, i32* %15)
  br label %205

; <label>:185:                                    ; preds = %148
  %186 = load %struct.Global*, %struct.Global** @global, align 8
  %187 = getelementptr inbounds %struct.Global, %struct.Global* %186, i32 0, i32 16
  %188 = getelementptr inbounds %struct.anon, %struct.anon* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = sext i32 %192 to i64
  %194 = load %struct.Global*, %struct.Global** @global, align 8
  %195 = getelementptr inbounds %struct.Global, %struct.Global* %194, i32 0, i32 16
  %196 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 3
  store i64 %193, i64* %196, align 8
  %197 = load %struct.Global*, %struct.Global** @global, align 8
  %198 = getelementptr inbounds %struct.Global, %struct.Global* %197, i32 0, i32 16
  %199 = getelementptr inbounds %struct.anon, %struct.anon* %198, i32 0, i32 2
  store i64 0, i64* %199, align 8
  %200 = load %struct.Global*, %struct.Global** @global, align 8
  %201 = getelementptr inbounds %struct.Global, %struct.Global* %200, i32 0, i32 16
  %202 = getelementptr inbounds %struct.anon, %struct.anon* %201, i32 0, i32 1
  %203 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %202) #6
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %12, align 8
  br label %205

; <label>:205:                                    ; preds = %185, %182
  %206 = load %struct.Global*, %struct.Global** @global, align 8
  %207 = getelementptr inbounds %struct.Global, %struct.Global* %206, i32 0, i32 16
  %208 = getelementptr inbounds %struct.anon, %struct.anon* %207, i32 0, i32 0
  %209 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %208) #6
  %210 = load i64, i64* %1, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %215, label %212

; <label>:212:                                    ; preds = %205
  %213 = load i64, i64* @dostats, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %223

; <label>:215:                                    ; preds = %212, %205
  %216 = call i32 @gettimeofday(%struct.timeval* %16, %struct.timezone* null) #6
  %217 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = mul nsw i64 %220, 1000000
  %222 = add nsw i64 %218, %221
  store i64 %222, i64* %4, align 8
  br label %223

; <label>:223:                                    ; preds = %215, %212
  %224 = load i64, i64* %1, align 8
  call void @init_radavg_tasks(i64 0, i64 %224)
  %225 = load i64, i64* %1, align 8
  call void @process_tasks(i64 %225)
  %226 = load i64, i64* %1, align 8
  call void @init_radavg_tasks(i64 1, i64 %226)
  %227 = load i64, i64* %1, align 8
  call void @process_tasks(i64 %227)
  %228 = load i64, i64* %1, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %233, label %230

; <label>:230:                                    ; preds = %223
  %231 = load i64, i64* @dostats, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %241

; <label>:233:                                    ; preds = %230, %223
  %234 = call i32 @gettimeofday(%struct.timeval* %17, %struct.timezone* null) #6
  %235 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = mul nsw i64 %238, 1000000
  %240 = add nsw i64 %236, %239
  store i64 %240, i64* %5, align 8
  br label %241

; <label>:241:                                    ; preds = %233, %230
  %242 = load i64, i64* %1, align 8
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %247, label %244

; <label>:244:                                    ; preds = %241
  %245 = load i64, i64* @dostats, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %286

; <label>:247:                                    ; preds = %244, %241
  %248 = load i64, i64* %2, align 8
  %249 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %250 = load i64, i64* %1, align 8
  %251 = getelementptr inbounds %struct.Timing*, %struct.Timing** %249, i64 %250
  %252 = load %struct.Timing*, %struct.Timing** %251, align 8
  %253 = getelementptr inbounds %struct.Timing, %struct.Timing* %252, i32 0, i32 0
  store i64 %248, i64* %253, align 8
  %254 = load i64, i64* %5, align 8
  %255 = load i64, i64* %2, align 8
  %256 = sub nsw i64 %254, %255
  %257 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %258 = load i64, i64* %1, align 8
  %259 = getelementptr inbounds %struct.Timing*, %struct.Timing** %257, i64 %258
  %260 = load %struct.Timing*, %struct.Timing** %259, align 8
  %261 = getelementptr inbounds %struct.Timing, %struct.Timing* %260, i32 0, i32 1
  store i64 %256, i64* %261, align 8
  %262 = load i64, i64* %3, align 8
  %263 = load i64, i64* %2, align 8
  %264 = sub nsw i64 %262, %263
  %265 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %266 = load i64, i64* %1, align 8
  %267 = getelementptr inbounds %struct.Timing*, %struct.Timing** %265, i64 %266
  %268 = load %struct.Timing*, %struct.Timing** %267, align 8
  %269 = getelementptr inbounds %struct.Timing, %struct.Timing* %268, i32 0, i32 2
  store i64 %264, i64* %269, align 8
  %270 = load i64, i64* %5, align 8
  %271 = load i64, i64* %4, align 8
  %272 = sub nsw i64 %270, %271
  %273 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %274 = load i64, i64* %1, align 8
  %275 = getelementptr inbounds %struct.Timing*, %struct.Timing** %273, i64 %274
  %276 = load %struct.Timing*, %struct.Timing** %275, align 8
  %277 = getelementptr inbounds %struct.Timing, %struct.Timing* %276, i32 0, i32 4
  store i64 %272, i64* %277, align 8
  %278 = load i64, i64* %4, align 8
  %279 = load i64, i64* %3, align 8
  %280 = sub nsw i64 %278, %279
  %281 = load %struct.Timing**, %struct.Timing*** @timing, align 8
  %282 = load i64, i64* %1, align 8
  %283 = getelementptr inbounds %struct.Timing*, %struct.Timing** %281, i64 %282
  %284 = load %struct.Timing*, %struct.Timing** %283, align 8
  %285 = getelementptr inbounds %struct.Timing, %struct.Timing* %284, i32 0, i32 3
  store i64 %280, i64* %285, align 8
  br label %286

; <label>:286:                                    ; preds = %247, %244
  ret void
}

declare i32 @pthread_join(i64, i8**) #1

declare void @print_running_time(i64) #1

declare void @print_statistics(%struct._IO_FILE*, i64) #1

declare void @g_start(void ()*, i64, %struct.slider*, i64, %struct.choice*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expose_callback() #0 {
  %1 = load i64, i64* @disp_fill_mode, align 8
  %2 = load i64, i64* @disp_patch_switch, align 8
  %3 = load i64, i64* @disp_mesh_switch, align 8
  %4 = load i64, i64* @disp_interaction_switch, align 8
  call void @display_scene(i64 %1, i64 %2, i64 %3, i64 %4, i64 0)
  ret void
}

declare void @display_scene(i64, i64, i64, i64, i64) #1

declare void @init_modeling_tasks(i64) #1

declare void @process_tasks(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @init_ray_tasks(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.Global*, %struct.Global** @global, align 8
  %6 = getelementptr inbounds %struct.Global, %struct.Global* %5, i32 0, i32 6
  %7 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %6) #6
  %8 = call i64 @check_task_counter()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %21, label %10

; <label>:10:                                     ; preds = %1
  %11 = load %struct.Global*, %struct.Global** @global, align 8
  %12 = getelementptr inbounds %struct.Global, %struct.Global* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.Global*, %struct.Global** @global, align 8
  %15 = getelementptr inbounds %struct.Global, %struct.Global* %14, i32 0, i32 6
  %16 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %15) #6
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %2, align 8
  br label %56

; <label>:21:                                     ; preds = %1
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @radiosity_converged(i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.Global*, %struct.Global** @global, align 8
  %26 = getelementptr inbounds %struct.Global, %struct.Global* %25, i32 0, i32 7
  store i64 %24, i64* %26, align 8
  %27 = load %struct.Global*, %struct.Global** @global, align 8
  %28 = getelementptr inbounds %struct.Global, %struct.Global* %27, i32 0, i32 8
  %29 = load %struct.Global*, %struct.Global** @global, align 8
  %30 = getelementptr inbounds %struct.Global, %struct.Global* %29, i32 0, i32 9
  %31 = bitcast %struct.Rgb* %28 to i8*
  %32 = bitcast %struct.Rgb* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 12, i32 4, i1 false)
  %33 = load %struct.Global*, %struct.Global** @global, align 8
  %34 = getelementptr inbounds %struct.Global, %struct.Global* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %34, i32 0, i32 0
  store float 0.000000e+00, float* %35, align 4
  %36 = load %struct.Global*, %struct.Global** @global, align 8
  %37 = getelementptr inbounds %struct.Global, %struct.Global* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %37, i32 0, i32 1
  store float 0.000000e+00, float* %38, align 4
  %39 = load %struct.Global*, %struct.Global** @global, align 8
  %40 = getelementptr inbounds %struct.Global, %struct.Global* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %40, i32 0, i32 2
  store float 0.000000e+00, float* %41, align 4
  %42 = load %struct.Global*, %struct.Global** @global, align 8
  %43 = getelementptr inbounds %struct.Global, %struct.Global* %42, i32 0, i32 10
  store float 0.000000e+00, float* %43, align 8
  %44 = load %struct.Global*, %struct.Global** @global, align 8
  %45 = getelementptr inbounds %struct.Global, %struct.Global* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.Global*, %struct.Global** @global, align 8
  %49 = getelementptr inbounds %struct.Global, %struct.Global* %48, i32 0, i32 6
  %50 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %49) #6
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %21
  store i64 0, i64* %2, align 8
  br label %56

; <label>:54:                                     ; preds = %21
  %55 = load i64, i64* %3, align 8
  call void @foreach_patch_in_bsp(void (...)* bitcast (void (%struct._patch*, i64, i64)* @_init_ray_tasks_static to void (...)*), i64 0, i64 %55)
  store i64 1, i64* %2, align 8
  br label %56

; <label>:56:                                     ; preds = %54, %53, %10
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

declare i32 @pthread_setcancelstate(i32, i32*) #1

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @init_radavg_tasks(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = call i64 @check_task_counter()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %2
  br label %11

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  call void @foreach_patch_in_bsp(void (...)* bitcast (void (%struct._patch*, i64, i64)* @_init_radavg_tasks to void (...)*), i64 %9, i64 %10)
  br label %11

; <label>:11:                                     ; preds = %8, %7
  ret void
}

declare void @g_clear() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_view() #0 {
  %1 = load i64, i64* @disp_crnt_view_x, align 8
  %2 = sitofp i64 %1 to float
  %3 = load i64, i64* @disp_crnt_view_y, align 8
  %4 = sitofp i64 %3 to float
  %5 = load float, float* @disp_crnt_zoom, align 4
  call void @setup_view(float %2, float %4, float 8.000000e+03, float %5, i64 0)
  %6 = load i64, i64* @disp_fill_mode, align 8
  %7 = load i64, i64* @disp_patch_switch, align 8
  %8 = load i64, i64* @disp_mesh_switch, align 8
  %9 = load i64, i64* @disp_interaction_switch, align 8
  call void @display_scene(i64 %6, i64 %7, i64 %8, i64 %9, i64 0)
  ret void
}

declare i64 @ps_open(i8*) #1

declare void @ps_setup_view(float, float, float, float) #1

declare void @ps_display_scene(i64, i64, i64, i64, i64) #1

declare void @ps_close() #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @perror(i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @clear_radiosity(i64) #1

declare i64 @check_task_counter() #1

declare i64 @radiosity_converged(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @foreach_patch_in_bsp(void (...)*, i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_init_ray_tasks_static(%struct._patch*, i64, i64) #0 {
  %4 = alloca %struct._patch*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._patch* %0, %struct._patch** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct._patch*, %struct._patch** %4, align 8
  %8 = getelementptr inbounds %struct._patch, %struct._patch* %7, i32 0, i32 16
  %9 = load %struct._element*, %struct._element** %8, align 8
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 12
  %11 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %10, i32 0, i32 0
  store float 0.000000e+00, float* %11, align 4
  %12 = load %struct._patch*, %struct._patch** %4, align 8
  %13 = getelementptr inbounds %struct._patch, %struct._patch* %12, i32 0, i32 16
  %14 = load %struct._element*, %struct._element** %13, align 8
  %15 = getelementptr inbounds %struct._element, %struct._element* %14, i32 0, i32 12
  %16 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %15, i32 0, i32 1
  store float 0.000000e+00, float* %16, align 4
  %17 = load %struct._patch*, %struct._patch** %4, align 8
  %18 = getelementptr inbounds %struct._patch, %struct._patch* %17, i32 0, i32 16
  %19 = load %struct._element*, %struct._element** %18, align 8
  %20 = getelementptr inbounds %struct._element, %struct._element* %19, i32 0, i32 12
  %21 = getelementptr inbounds %struct.Rgb, %struct.Rgb* %20, i32 0, i32 2
  store float 0.000000e+00, float* %21, align 4
  %22 = load %struct._patch*, %struct._patch** %4, align 8
  %23 = getelementptr inbounds %struct._patch, %struct._patch* %22, i32 0, i32 17
  %24 = load i64, i64* %23, align 8
  %25 = ashr i64 %24, 2
  %26 = load i64, i64* @n_taskqueues, align 8
  %27 = srem i64 %25, %26
  %28 = load %struct._patch*, %struct._patch** %4, align 8
  %29 = getelementptr inbounds %struct._patch, %struct._patch* %28, i32 0, i32 16
  %30 = load %struct._element*, %struct._element** %29, align 8
  %31 = load i64, i64* %6, align 8
  call void @enqueue_ray_task(i64 %27, %struct._element* %30, i64 0, i64 %31)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_init_radavg_tasks(%struct._patch*, i64, i64) #0 {
  %4 = alloca %struct._patch*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._patch* %0, %struct._patch** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct._patch*, %struct._patch** %4, align 8
  %8 = getelementptr inbounds %struct._patch, %struct._patch* %7, i32 0, i32 17
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @n_taskqueues, align 8
  %11 = srem i64 %9, %10
  %12 = load %struct._patch*, %struct._patch** %4, align 8
  %13 = getelementptr inbounds %struct._patch, %struct._patch* %12, i32 0, i32 16
  %14 = load %struct._element*, %struct._element** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  call void @enqueue_radavg_task(i64 %11, %struct._element* %14, i64 %15, i64 %16)
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #2

declare void @init_taskq(i64) #1

declare void @init_patchlist(i64) #1

declare void @init_elemlist(i64) #1

declare void @init_interactionlist(i64) #1

declare void @init_elemvertex(i64) #1

declare void @init_edge(i64) #1

declare void @init_stat_info(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @print_usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.51, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.53, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.54, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.55, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.56, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.57, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.58, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.61, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.62, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.63, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @enqueue_ray_task(i64, %struct._element*, i64, i64) #1

declare void @enqueue_radavg_task(i64, %struct._element*, i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
