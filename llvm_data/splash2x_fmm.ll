; ModuleID = 'fmm.c'
source_filename = "fmm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._G_Mem = type { %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, i64, [2048 x %union.pthread_mutex_t], %struct.anon, i64*, double*, [1024 x [4 x double]], double, double, double, double, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i64, i64 }
%union.pthread_cond_t = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct._Local_Memory = type { [512 x i64], %struct._Box*, i64, i64, %struct._Particle**, i64, i64, %struct._Box*, [100 x %struct._Box*], i64, %struct._Box*, double, double, double, double, i64, i64, i64, i64, double, i64, [10 x %struct._Time_Info], [512 x i64] }
%struct._Particle = type { i64, double, double, %struct._Vector, %struct._Vector, %struct._Vector, %struct.__Complex, i64, double }
%struct._Vector = type { double, double }
%struct.__Complex = type { double, double }
%struct._Box = type { double, double, double, double, i64, i32, [41 x %struct._Particle*], i64, %struct._Box*, i64, [4 x %struct._Box*], [4 x %struct._Box*], i64, [3 x %struct._Box*], i64, [8 x %struct._Box*], i64, [20 x %struct._Box*], i64, [27 x %struct._Box*], i64, [30 x %struct._Box*], i64, [40 x %struct.__Complex], [40 x %struct.__Complex], [40 x %struct.__Complex], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct._Box*, %struct._Box*, %struct._Box*, %struct._Box* }
%struct._Time_Info = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@do_stats = global i64 0, align 8
@do_output = global i64 0, align 8
@starttime = common global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"osh\00", align 1
@Cluster = internal global i32 0, align 4
@Model = internal global i32 0, align 4
@Number_Of_Processors = external global i64, align 8
@PThreadTable = external global [0 x i64], align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Error in pthread_create().\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Error in pthread_join().\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Finished FMM\0A\00", align 1
@G_Memory = external global %struct._G_Mem*, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"Error while trying to get lock in barrier.\0A\00", align 1
@Total_Particles = external global i64, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Starting FMM with %d processor%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@Local = external global [1024 x %struct._Local_Memory], align 16
@Time_Steps = internal global i64 0, align 8
@Timestep_Dur = external global double, align 8
@endtime = common global i64 0, align 8
@Partition_Flag = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"one cluster\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"two cluster\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"ERROR: The only cluster types available are \00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"\22one cluster\22 or \22two cluster\22.\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"If you need help, type \22nbody -help\22.\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"plummer\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"ERROR: The only distributions available are \00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"\22uniform\22 or \22plummer\22.\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"ERROR: The number of particles should be an int \00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"greater than 0.\0A\00", align 1
@Precision = internal global double 0.000000e+00, align 8
@.str.20 = private unnamed_addr constant [44 x i8] c"ERROR: The precision has no default value.\0A\00", align 1
@Expansion_Terms = external global i64, align 8
@.str.21 = private unnamed_addr constant [49 x i8] c"ERROR: %g (%ld terms) is too great a precision.\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"ERROR: The Number_Of_Processors has no default.\0A\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"ERROR: Number of processors should be an int greater \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"than 0.\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"ERROR: The number of time steps has no default.\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"ERROR: The number of time steps should be an int \00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"ERROR: The duration of a time step has no default \00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"value.\0A If you need help, type \22nbody -help\22.\0A\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"ERROR: The duration of a time step should be a \00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"double greater than 0.\0A\00", align 1
@Softening_Param = external global double, align 8
@.str.31 = private unnamed_addr constant [51 x i8] c"ERROR: The softening parameter should be a double \00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"cost zones\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"orb\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"ERROR: The only partitioning schemes available \00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"are \22cost zones\22 \0A\09 or \22orb\22.\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"times\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"Error opening output file\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"TIMING:\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"%ld\09%ld\09%.2e\09%ld\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"Time Step %ld\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"Processor %ld\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"\09Total Time = %lu\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"\09Tree Construction Time = %lu\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"\09List Construction Time = %lu\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"\09Partition Time = %lu\0A\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"\09Tree Pass Time = %lu\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"\09Inter Particle Time = %lu\0A\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"\09Barrier Time = %lu\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"\09Intra Particle Time = %lu\0A\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"\09Other Time = %lu\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@.str.53 = private unnamed_addr constant [55 x i8] c"                                   PROCESS STATISTICS\0A\00", align 1
@.str.54 = private unnamed_addr constant [116 x i8] c"             Track        Tree        List        Part        Pass       Inter        Bar        Intra       Other\0A\00", align 1
@.str.55 = private unnamed_addr constant [115 x i8] c" Proc        Time         Time        Time        Time        Time       Time         Time       Time        Time\0A\00", align 1
@.str.56 = private unnamed_addr constant [61 x i8] c" %4d %12.0f%12.0f%12.0f%12.0f%12.0f%12.0f%12.0f%12.0f%12.0f\0A\00", align 1
@.str.57 = private unnamed_addr constant [62 x i8] c" %4ld %12.0f%12.0f%12.0f%12.0f%12.0f%12.0f%12.0f%12.0f%12.0f\0A\00", align 1
@.str.58 = private unnamed_addr constant [62 x i8] c"  Avg %12.0f%12.0f%12.0f%12.0f%12.0f%12.0f%12.0f%12.0f%12.0f\0A\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.60 = private unnamed_addr constant [55 x i8] c"                                   TIMING INFORMATION\0A\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"Start time                        : %16lu\0A\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"Initialization finish time        : %16lu\0A\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"Overall finish time               : %16lu\0A\00", align 1
@.str.64 = private unnamed_addr constant [43 x i8] c"Total time with initialization    : %16lu\0A\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c"Total time without initialization : %16lu\0A\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"Total time for steps %ld to %ld : %12.0f\0A\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"Usage: FMM <options> < inputfile\0A\0A\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"options:\0A\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"  -o : Print out final particle positions.\0A\00", align 1
@.str.70 = private unnamed_addr constant [58 x i8] c"  -s : Print out individual processor timing statistics.\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"  -h : Print out command line options\0A\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"Input parameter descriptions:\0A\00", align 1
@.str.73 = private unnamed_addr constant [59 x i8] c"  There are nine parameters, and parameters three through\0A\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"  have no default values.\0A\00", align 1
@.str.75 = private unnamed_addr constant [55 x i8] c"1) Cluster Type : Distribute particles in one cluster\0A\00", align 1
@.str.76 = private unnamed_addr constant [64 x i8] c"   (\22one cluster\22) or two interacting clusters (\22two cluster\22)\0A\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"   Default is two cluster.\0A\00", align 1
@.str.78 = private unnamed_addr constant [57 x i8] c"2) Distribution Type : Distribute particles in either a\0A\00", align 1
@.str.79 = private unnamed_addr constant [56 x i8] c"   uniform spherical distribution (\22uniform\22), or in a\0A\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"   Plummer model (\22plummer\22).  Default is plummer.\0A\00", align 1
@.str.81 = private unnamed_addr constant [50 x i8] c"3) Number Of Particles : Integer greater than 0.\0A\00", align 1
@.str.82 = private unnamed_addr constant [59 x i8] c"4) Precision : Precision of results.  Should be a double.\0A\00", align 1
@.str.83 = private unnamed_addr constant [51 x i8] c"5) Number of Processors : Integer greater than 0.\0A\00", align 1
@.str.84 = private unnamed_addr constant [51 x i8] c"6) Number of Time Steps : Integer greater than 0.\0A\00", align 1
@.str.85 = private unnamed_addr constant [48 x i8] c"7) Time Step Duration : Double greater than 0.\0A\00", align 1
@.str.86 = private unnamed_addr constant [54 x i8] c"8) Softening Parameter : Real number greater than 0.\0A\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"   Defaults is DBL_MIN or FLT_MIN.\0A\00", align 1
@.str.88 = private unnamed_addr constant [49 x i8] c"9) Partitioning Scheme : \22cost zones\22 or \22orb\22.\0A\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"   Default is cost zones.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 @gettimeofday(%struct.timeval* %7, %struct.timezone* null) #6
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = mul nsw i64 %16, 1000000
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* @starttime, align 8
  br label %19

; <label>:19:                                     ; preds = %30, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #6
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = icmp ne i64 %23, -1
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %19
  %26 = load i64, i64* %6, align 8
  switch i64 %26, label %30 [
    i64 111, label %27
    i64 115, label %28
    i64 104, label %29
  ]

; <label>:27:                                     ; preds = %25
  store i64 1, i64* @do_output, align 8
  br label %30

; <label>:28:                                     ; preds = %25
  store i64 1, i64* @do_stats, align 8
  br label %30

; <label>:29:                                     ; preds = %25
  call void @Help()
  br label %30

; <label>:30:                                     ; preds = %25, %29, %28, %27
  br label %19

; <label>:31:                                     ; preds = %19
  call void @GetArguments()
  call void @InitGlobalMemory()
  call void @InitExpTables()
  %32 = load i32, i32* @Cluster, align 4
  %33 = load i32, i32* @Model, align 4
  call void @CreateDistribution(i32 %32, i32 %33)
  store i64 0, i64* %8, align 8
  br label %34

; <label>:34:                                     ; preds = %49, %31
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @Number_Of_Processors, align 8
  %37 = sub nsw i64 %36, 1
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %52

; <label>:39:                                     ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds [0 x i64], [0 x i64]* @PThreadTable, i64 0, i64 %40
  %42 = call i32 @pthread_create(i64* %41, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void ()* @ParallelExecute to i8* (i8*)*), i8* null) #6
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %39
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:48:                                     ; preds = %39
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %34

; <label>:52:                                     ; preds = %34
  call void @ParallelExecute()
  store i64 0, i64* %10, align 8
  br label %53

; <label>:53:                                     ; preds = %69, %52
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @Number_Of_Processors, align 8
  %56 = sub nsw i64 %55, 1
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %72

; <label>:58:                                     ; preds = %53
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds [0 x i64], [0 x i64]* @PThreadTable, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @pthread_join(i64 %61, i8** null)
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %58
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:68:                                     ; preds = %58
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %53

; <label>:72:                                     ; preds = %53
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  call void @PrintTimes()
  %74 = load i64, i64* @do_output, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %72
  call void @PrintAllParticles()
  br label %77

; <label>:77:                                     ; preds = %76, %72
  call void @exit(i32 0) #7
  unreachable
                                                  ; No predecessors!
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @Help() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.67, i32 0, i32 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.70, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i32 0, i32 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.73, i32 0, i32 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i32 0, i32 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.75, i32 0, i32 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.76, i32 0, i32 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.78, i32 0, i32 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i32 0, i32 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.80, i32 0, i32 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.81, i32 0, i32 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.82, i32 0, i32 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i32 0, i32 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.84, i32 0, i32 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.85, i32 0, i32 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.86, i32 0, i32 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i32 0, i32 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i32 0, i32 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @GetArguments() #0 {
  %1 = alloca i8*, align 8
  %2 = call noalias i8* @malloc(i64 100) #6
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:8:                                      ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 (i8*, ...) bitcast (i32 (...)* @gets to i32 (i8*, ...)*)(i8* %9)
  %11 = load i8*, i8** %1, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %8
  store i32 0, i32* @Cluster, align 4
  br label %33

; <label>:15:                                     ; preds = %8
  %16 = load i8*, i8** %1, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %20, %15
  store i32 1, i32* @Cluster, align 4
  br label %32

; <label>:25:                                     ; preds = %20
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:32:                                     ; preds = %24
  br label %33

; <label>:33:                                     ; preds = %32, %14
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 (i8*, ...) bitcast (i32 (...)* @gets to i32 (i8*, ...)*)(i8* %34)
  %36 = load i8*, i8** %1, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %33
  store i32 0, i32* @Model, align 4
  br label %58

; <label>:40:                                     ; preds = %33
  %41 = load i8*, i8** %1, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %1, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %45, %40
  store i32 1, i32* @Model, align 4
  br label %57

; <label>:50:                                     ; preds = %45
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:57:                                     ; preds = %49
  br label %58

; <label>:58:                                     ; preds = %57, %39
  %59 = load i8*, i8** %1, align 8
  %60 = call i32 (i8*, ...) bitcast (i32 (...)* @gets to i32 (i8*, ...)*)(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @atoi(i8* %62) #8
  %64 = sext i32 %63 to i64
  store i64 %64, i64* @Total_Particles, align 8
  %65 = load i64, i64* @Total_Particles, align 8
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %74

; <label>:67:                                     ; preds = %58
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i32 0, i32 0))
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:74:                                     ; preds = %58
  %75 = load i8*, i8** %1, align 8
  %76 = call i32 (i8*, ...) bitcast (i32 (...)* @gets to i32 (i8*, ...)*)(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call double @atof(i8* %78) #8
  store double %79, double* @Precision, align 8
  %80 = load double, double* @Precision, align 8
  %81 = fcmp oeq double %80, 0.000000e+00
  br i1 %81, label %82, label %87

; <label>:82:                                     ; preds = %74
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0))
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:87:                                     ; preds = %74
  %88 = load double, double* @Precision, align 8
  %89 = call double @log(double %88) #6
  %90 = call double @sqrt(double 2.000000e+00) #6
  %91 = fsub double 4.000000e+00, %90
  %92 = call double @sqrt(double 2.000000e+00) #6
  %93 = fdiv double %91, %92
  %94 = call double @log(double %93) #6
  %95 = fdiv double %89, %94
  %96 = fsub double -0.000000e+00, %95
  %97 = call double @llvm.ceil.f64(double %96)
  %98 = fptosi double %97 to i64
  store i64 %98, i64* @Expansion_Terms, align 8
  %99 = load i64, i64* @Expansion_Terms, align 8
  %100 = icmp sgt i64 %99, 40
  br i1 %100, label %101, label %108

; <label>:101:                                    ; preds = %87
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %103 = load double, double* @Precision, align 8
  %104 = load i64, i64* @Expansion_Terms, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0), double %103, i64 %104)
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:108:                                    ; preds = %87
  %109 = load i8*, i8** %1, align 8
  %110 = call i32 (i8*, ...) bitcast (i32 (...)* @gets to i32 (i8*, ...)*)(i8* %109)
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 @atoi(i8* %112) #8
  %114 = sext i32 %113 to i64
  store i64 %114, i64* @Number_Of_Processors, align 8
  %115 = load i64, i64* @Number_Of_Processors, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %122

; <label>:117:                                    ; preds = %108
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i32 0, i32 0))
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:122:                                    ; preds = %108
  %123 = load i64, i64* @Number_Of_Processors, align 8
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %132

; <label>:125:                                    ; preds = %122
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i32 0, i32 0))
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0))
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:132:                                    ; preds = %122
  %133 = load i8*, i8** %1, align 8
  %134 = call i32 (i8*, ...) bitcast (i32 (...)* @gets to i32 (i8*, ...)*)(i8* %133)
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @atoi(i8* %136) #8
  %138 = sext i32 %137 to i64
  store i64 %138, i64* @Time_Steps, align 8
  %139 = load i64, i64* @Time_Steps, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %146

; <label>:141:                                    ; preds = %132
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0))
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:146:                                    ; preds = %132
  %147 = load i64, i64* @Time_Steps, align 8
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %156

; <label>:149:                                    ; preds = %146
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i32 0, i32 0))
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:156:                                    ; preds = %146
  %157 = load i8*, i8** %1, align 8
  %158 = call i32 (i8*, ...) bitcast (i32 (...)* @gets to i32 (i8*, ...)*)(i8* %157)
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = call double @atof(i8* %160) #8
  store double %161, double* @Timestep_Dur, align 8
  %162 = load double, double* @Timestep_Dur, align 8
  %163 = fcmp oeq double %162, 0.000000e+00
  br i1 %163, label %164, label %169

; <label>:164:                                    ; preds = %156
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0))
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:169:                                    ; preds = %156
  %170 = load double, double* @Timestep_Dur, align 8
  %171 = fcmp olt double %170, 0.000000e+00
  br i1 %171, label %172, label %179

; <label>:172:                                    ; preds = %169
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i32 0, i32 0))
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:179:                                    ; preds = %169
  %180 = load i8*, i8** %1, align 8
  %181 = call i32 (i8*, ...) bitcast (i32 (...)* @gets to i32 (i8*, ...)*)(i8* %180)
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = call double @atof(i8* %183) #8
  store double %184, double* @Softening_Param, align 8
  %185 = load double, double* @Softening_Param, align 8
  %186 = fcmp oeq double %185, 0.000000e+00
  br i1 %186, label %187, label %188

; <label>:187:                                    ; preds = %179
  store double 0x10000000000000, double* @Softening_Param, align 8
  br label %188

; <label>:188:                                    ; preds = %187, %179
  %189 = load double, double* @Softening_Param, align 8
  %190 = fcmp olt double %189, 0.000000e+00
  br i1 %190, label %191, label %198

; <label>:191:                                    ; preds = %188
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i32 0, i32 0))
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:198:                                    ; preds = %188
  %199 = load i8*, i8** %1, align 8
  %200 = call i32 (i8*, ...) bitcast (i32 (...)* @gets to i32 (i8*, ...)*)(i8* %199)
  %201 = load i8*, i8** %1, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %209, label %205

; <label>:205:                                    ; preds = %198
  %206 = load i8*, i8** %1, align 8
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

; <label>:209:                                    ; preds = %205, %198
  store i32 1, i32* @Partition_Flag, align 4
  br label %223

; <label>:210:                                    ; preds = %205
  %211 = load i8*, i8** %1, align 8
  %212 = call i32 @strcmp(i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)) #8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

; <label>:214:                                    ; preds = %210
  store i32 0, i32* @Partition_Flag, align 4
  br label %222

; <label>:215:                                    ; preds = %210
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0))
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0))
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:222:                                    ; preds = %214
  br label %223

; <label>:223:                                    ; preds = %222, %209
  ret void
}

declare void @InitGlobalMemory() #2

declare void @InitExpTables() #2

declare void @CreateDistribution(i32, i32) #2

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @ParallelExecute() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct._Time_Info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._Time_Info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca %struct.timeval, align 8
  %20 = alloca %struct.timeval, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %29 = call noalias i8* @malloc(i64 720) #6
  %30 = bitcast i8* %29 to %struct._Time_Info*
  store %struct._Time_Info* %30, %struct._Time_Info** %5, align 8
  %31 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %32 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  %34 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %33) #6
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %0
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:40:                                     ; preds = %0
  %41 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %42 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %46 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* @Number_Of_Processors, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %77

; <label>:52:                                     ; preds = %40
  %53 = call i32 @pthread_setcancelstate(i32 1, i32* %11)
  br label %54

; <label>:54:                                     ; preds = %73, %52
  %55 = load i64, i64* %10, align 8
  %56 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %57 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %74

; <label>:61:                                     ; preds = %54
  %62 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %63 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1
  %65 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %66 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 0
  %68 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %64, %union.pthread_mutex_t* %67)
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %61
  br label %74

; <label>:73:                                     ; preds = %61
  br label %54

; <label>:74:                                     ; preds = %72, %54
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @pthread_setcancelstate(i32 %75, i32* %12)
  br label %97

; <label>:77:                                     ; preds = %40
  %78 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %79 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %87 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 3
  store i64 %85, i64* %88, align 8
  %89 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %90 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %93 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 1
  %95 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %94) #6
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %9, align 8
  br label %97

; <label>:97:                                     ; preds = %77, %74
  %98 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %99 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 0
  %101 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %100) #6
  %102 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %103 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %102, i32 0, i32 3
  %104 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %103) #6
  %105 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %106 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %105, i32 0, i32 14
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %1, align 8
  %108 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %109 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %108, i32 0, i32 14
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %113 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %112, i32 0, i32 3
  %114 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %113) #6
  %115 = load i64, i64* %1, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %97
  store i64 1, i64* %6, align 8
  br label %123

; <label>:118:                                    ; preds = %97
  %119 = load i64, i64* @do_stats, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

; <label>:121:                                    ; preds = %118
  store i64 1, i64* %6, align 8
  br label %122

; <label>:122:                                    ; preds = %121, %118
  br label %123

; <label>:123:                                    ; preds = %122, %117
  %124 = load i64, i64* %1, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %131

; <label>:126:                                    ; preds = %123
  %127 = load i64, i64* %1, align 8
  %128 = load i64, i64* @Total_Particles, align 8
  call void @CreateParticleList(i64 %127, i64 %128)
  %129 = load i64, i64* %1, align 8
  %130 = load i64, i64* @Total_Particles, align 8
  call void @InitParticleList(i64 %129, i64 %130, i64 0)
  br label %141

; <label>:131:                                    ; preds = %123
  %132 = load i64, i64* %1, align 8
  %133 = load i64, i64* @Total_Particles, align 8
  %134 = sitofp i64 %133 to double
  %135 = fmul double %134, 4.000000e+00
  %136 = load i64, i64* @Number_Of_Processors, align 8
  %137 = sitofp i64 %136 to double
  %138 = fdiv double %135, %137
  %139 = fptosi double %138 to i64
  call void @CreateParticleList(i64 %132, i64 %139)
  %140 = load i64, i64* %1, align 8
  call void @InitParticleList(i64 %140, i64 0, i64 0)
  br label %141

; <label>:141:                                    ; preds = %131, %126
  %142 = load i64, i64* @Total_Particles, align 8
  %143 = sitofp i64 %142 to double
  %144 = fdiv double %143, 1.500000e+01
  %145 = fmul double 1.333000e+00, %144
  %146 = fptosi double %145 to i64
  store i64 %146, i64* %2, align 8
  %147 = load i64, i64* %1, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %155

; <label>:149:                                    ; preds = %141
  %150 = load i64, i64* %1, align 8
  %151 = load i64, i64* %2, align 8
  %152 = sitofp i64 %151 to double
  %153 = fmul double 1.500000e+00, %152
  %154 = fptosi double %153 to i64
  call void @CreateBoxes(i64 %150, i64 %154)
  br label %171

; <label>:155:                                    ; preds = %141
  %156 = load i64, i64* %1, align 8
  %157 = load i64, i64* %2, align 8
  %158 = sitofp i64 %157 to double
  %159 = fmul double 1.500000e+00, %158
  %160 = load i64, i64* @Total_Particles, align 8
  %161 = load i64, i64* @Number_Of_Processors, align 8
  %162 = sdiv i64 %160, %161
  %163 = icmp sgt i64 %162, 128
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, double 4.000000e+00, double 8.000000e+00
  %166 = fmul double %159, %165
  %167 = load i64, i64* @Number_Of_Processors, align 8
  %168 = sitofp i64 %167 to double
  %169 = fdiv double %166, %168
  %170 = fptosi double %169 to i64
  call void @CreateBoxes(i64 %156, i64 %170)
  br label %171

; <label>:171:                                    ; preds = %155, %149
  %172 = load i64, i64* %1, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %180

; <label>:174:                                    ; preds = %171
  %175 = load i64, i64* @Number_Of_Processors, align 8
  %176 = load i64, i64* @Number_Of_Processors, align 8
  %177 = icmp eq i64 %176, 1
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)
  call void (i8*, ...) @LockedPrint(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i64 %175, i8* %179)
  br label %180

; <label>:180:                                    ; preds = %174, %171
  %181 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %182 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.anon, %struct.anon* %182, i32 0, i32 0
  %184 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %183) #6
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %13, align 8
  %186 = load i64, i64* %13, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

; <label>:188:                                    ; preds = %180
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:190:                                    ; preds = %180
  %191 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %192 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %14, align 8
  %195 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %196 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.anon, %struct.anon* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %197, align 8
  %200 = load i64, i64* @Number_Of_Processors, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %227

; <label>:202:                                    ; preds = %190
  %203 = call i32 @pthread_setcancelstate(i32 1, i32* %15)
  br label %204

; <label>:204:                                    ; preds = %223, %202
  %205 = load i64, i64* %14, align 8
  %206 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %207 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.anon, %struct.anon* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %205, %209
  br i1 %210, label %211, label %224

; <label>:211:                                    ; preds = %204
  %212 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %213 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.anon, %struct.anon* %213, i32 0, i32 1
  %215 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %216 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %215, i32 0, i32 6
  %217 = getelementptr inbounds %struct.anon, %struct.anon* %216, i32 0, i32 0
  %218 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %214, %union.pthread_mutex_t* %217)
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %13, align 8
  %220 = load i64, i64* %13, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

; <label>:222:                                    ; preds = %211
  br label %224

; <label>:223:                                    ; preds = %211
  br label %204

; <label>:224:                                    ; preds = %222, %204
  %225 = load i32, i32* %15, align 4
  %226 = call i32 @pthread_setcancelstate(i32 %225, i32* %16)
  br label %247

; <label>:227:                                    ; preds = %190
  %228 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %229 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %228, i32 0, i32 6
  %230 = getelementptr inbounds %struct.anon, %struct.anon* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = sext i32 %234 to i64
  %236 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %237 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.anon, %struct.anon* %237, i32 0, i32 3
  store i64 %235, i64* %238, align 8
  %239 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %240 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.anon, %struct.anon* %240, i32 0, i32 2
  store i64 0, i64* %241, align 8
  %242 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %243 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.anon, %struct.anon* %243, i32 0, i32 1
  %245 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %244) #6
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %13, align 8
  br label %247

; <label>:247:                                    ; preds = %227, %224
  %248 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %249 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %248, i32 0, i32 6
  %250 = getelementptr inbounds %struct.anon, %struct.anon* %249, i32 0, i32 0
  %251 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %250) #6
  %252 = load i64, i64* %1, align 8
  %253 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %252
  %254 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %253, i32 0, i32 19
  store double 0.000000e+00, double* %254, align 8
  %255 = load i64, i64* %1, align 8
  %256 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %255
  %257 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %256, i32 0, i32 18
  store i64 0, i64* %257, align 8
  br label %258

; <label>:258:                                    ; preds = %350, %247
  %259 = load i64, i64* %1, align 8
  %260 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %259
  %261 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %260, i32 0, i32 18
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @Time_Steps, align 8
  %264 = icmp slt i64 %262, %263
  br i1 %264, label %265, label %356

; <label>:265:                                    ; preds = %258
  %266 = load i64, i64* %1, align 8
  %267 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %266
  %268 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %267, i32 0, i32 18
  %269 = load i64, i64* %268, align 8
  %270 = icmp eq i64 %269, 2
  br i1 %270, label %271, label %272

; <label>:271:                                    ; preds = %265
  br label %272

; <label>:272:                                    ; preds = %271, %265
  %273 = load i64, i64* %1, align 8
  %274 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %273
  %275 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %274, i32 0, i32 18
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 2
  br i1 %277, label %278, label %293

; <label>:278:                                    ; preds = %272
  %279 = load i64, i64* @do_stats, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %284, label %281

; <label>:281:                                    ; preds = %278
  %282 = load i64, i64* %1, align 8
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %292

; <label>:284:                                    ; preds = %281, %278
  %285 = call i32 @gettimeofday(%struct.timeval* %17, %struct.timezone* null) #6
  %286 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = mul nsw i64 %289, 1000000
  %291 = add nsw i64 %287, %290
  store i64 %291, i64* %8, align 8
  br label %292

; <label>:292:                                    ; preds = %284, %281
  br label %293

; <label>:293:                                    ; preds = %292, %272
  %294 = load i64, i64* %1, align 8
  %295 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %294
  %296 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %295, i32 0, i32 18
  %297 = load i64, i64* %296, align 8
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %307

; <label>:299:                                    ; preds = %293
  %300 = call i32 @gettimeofday(%struct.timeval* %18, %struct.timezone* null) #6
  %301 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = mul nsw i64 %304, 1000000
  %306 = add nsw i64 %302, %305
  store i64 %306, i64* %3, align 8
  br label %309

; <label>:307:                                    ; preds = %293
  %308 = load i64, i64* %4, align 8
  store i64 %308, i64* %3, align 8
  br label %309

; <label>:309:                                    ; preds = %307, %299
  %310 = load i64, i64* %1, align 8
  %311 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %312 = load i64, i64* %6, align 8
  call void @ConstructGrid(i64 %310, %struct._Time_Info* %311, i64 %312)
  %313 = load i64, i64* %1, align 8
  %314 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %315 = load i64, i64* %6, align 8
  call void @ConstructLists(i64 %313, %struct._Time_Info* %314, i64 %315)
  %316 = load i64, i64* %1, align 8
  %317 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %318 = load i64, i64* %6, align 8
  call void @PartitionGrid(i64 %316, %struct._Time_Info* %317, i64 %318)
  %319 = load i64, i64* %1, align 8
  %320 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %321 = load i64, i64* %6, align 8
  call void @StepSimulation(i64 %319, %struct._Time_Info* %320, i64 %321)
  %322 = load i64, i64* %1, align 8
  %323 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %324 = load i64, i64* %6, align 8
  call void @DestroyGrid(i64 %322, %struct._Time_Info* %323, i64 %324)
  %325 = call i32 @gettimeofday(%struct.timeval* %19, %struct.timezone* null) #6
  %326 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = mul nsw i64 %329, 1000000
  %331 = add nsw i64 %327, %330
  store i64 %331, i64* %4, align 8
  %332 = load double, double* @Timestep_Dur, align 8
  %333 = load i64, i64* %1, align 8
  %334 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %333
  %335 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %334, i32 0, i32 19
  %336 = load double, double* %335, align 8
  %337 = fadd double %336, %332
  store double %337, double* %335, align 8
  %338 = load i64, i64* %4, align 8
  %339 = load i64, i64* %3, align 8
  %340 = sub i64 %338, %339
  %341 = load i64, i64* %1, align 8
  %342 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %341
  %343 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %342, i32 0, i32 21
  %344 = load i64, i64* %1, align 8
  %345 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %344
  %346 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %345, i32 0, i32 18
  %347 = load i64, i64* %346, align 8
  %348 = getelementptr inbounds [10 x %struct._Time_Info], [10 x %struct._Time_Info]* %343, i64 0, i64 %347
  %349 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %348, i32 0, i32 8
  store i64 %340, i64* %349, align 8
  br label %350

; <label>:350:                                    ; preds = %309
  %351 = load i64, i64* %1, align 8
  %352 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %351
  %353 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %352, i32 0, i32 18
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %354, 1
  store i64 %355, i64* %353, align 8
  br label %258

; <label>:356:                                    ; preds = %258
  %357 = load i64, i64* %1, align 8
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %359, label %367

; <label>:359:                                    ; preds = %356
  %360 = call i32 @gettimeofday(%struct.timeval* %20, %struct.timezone* null) #6
  %361 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = mul nsw i64 %364, 1000000
  %366 = add nsw i64 %362, %365
  store i64 %366, i64* @endtime, align 8
  br label %367

; <label>:367:                                    ; preds = %359, %356
  %368 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %369 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %368, i32 0, i32 6
  %370 = getelementptr inbounds %struct.anon, %struct.anon* %369, i32 0, i32 0
  %371 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %370) #6
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %21, align 8
  %373 = load i64, i64* %21, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %377

; <label>:375:                                    ; preds = %367
  %376 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:377:                                    ; preds = %367
  %378 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %379 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %378, i32 0, i32 6
  %380 = getelementptr inbounds %struct.anon, %struct.anon* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %22, align 8
  %382 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %383 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %382, i32 0, i32 6
  %384 = getelementptr inbounds %struct.anon, %struct.anon* %383, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = add i64 %385, 1
  store i64 %386, i64* %384, align 8
  %387 = load i64, i64* @Number_Of_Processors, align 8
  %388 = icmp ne i64 %386, %387
  br i1 %388, label %389, label %414

; <label>:389:                                    ; preds = %377
  %390 = call i32 @pthread_setcancelstate(i32 1, i32* %23)
  br label %391

; <label>:391:                                    ; preds = %410, %389
  %392 = load i64, i64* %22, align 8
  %393 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %394 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %393, i32 0, i32 6
  %395 = getelementptr inbounds %struct.anon, %struct.anon* %394, i32 0, i32 3
  %396 = load i64, i64* %395, align 8
  %397 = icmp eq i64 %392, %396
  br i1 %397, label %398, label %411

; <label>:398:                                    ; preds = %391
  %399 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %400 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %399, i32 0, i32 6
  %401 = getelementptr inbounds %struct.anon, %struct.anon* %400, i32 0, i32 1
  %402 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %403 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %402, i32 0, i32 6
  %404 = getelementptr inbounds %struct.anon, %struct.anon* %403, i32 0, i32 0
  %405 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %401, %union.pthread_mutex_t* %404)
  %406 = sext i32 %405 to i64
  store i64 %406, i64* %21, align 8
  %407 = load i64, i64* %21, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %410

; <label>:409:                                    ; preds = %398
  br label %411

; <label>:410:                                    ; preds = %398
  br label %391

; <label>:411:                                    ; preds = %409, %391
  %412 = load i32, i32* %23, align 4
  %413 = call i32 @pthread_setcancelstate(i32 %412, i32* %24)
  br label %434

; <label>:414:                                    ; preds = %377
  %415 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %416 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %415, i32 0, i32 6
  %417 = getelementptr inbounds %struct.anon, %struct.anon* %416, i32 0, i32 3
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  %420 = xor i1 %419, true
  %421 = zext i1 %420 to i32
  %422 = sext i32 %421 to i64
  %423 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %424 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %423, i32 0, i32 6
  %425 = getelementptr inbounds %struct.anon, %struct.anon* %424, i32 0, i32 3
  store i64 %422, i64* %425, align 8
  %426 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %427 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %426, i32 0, i32 6
  %428 = getelementptr inbounds %struct.anon, %struct.anon* %427, i32 0, i32 2
  store i64 0, i64* %428, align 8
  %429 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %430 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %429, i32 0, i32 6
  %431 = getelementptr inbounds %struct.anon, %struct.anon* %430, i32 0, i32 1
  %432 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %431) #6
  %433 = sext i32 %432 to i64
  store i64 %433, i64* %21, align 8
  br label %434

; <label>:434:                                    ; preds = %414, %411
  %435 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %436 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %435, i32 0, i32 6
  %437 = getelementptr inbounds %struct.anon, %struct.anon* %436, i32 0, i32 0
  %438 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %437) #6
  %439 = load i64, i64* %1, align 8
  %440 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %439
  %441 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %440, i32 0, i32 18
  store i64 0, i64* %441, align 8
  br label %442

; <label>:442:                                    ; preds = %538, %434
  %443 = load i64, i64* %1, align 8
  %444 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %443
  %445 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %444, i32 0, i32 18
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @Time_Steps, align 8
  %448 = icmp slt i64 %446, %447
  br i1 %448, label %449, label %544

; <label>:449:                                    ; preds = %442
  %450 = load i64, i64* %1, align 8
  %451 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %450
  %452 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %451, i32 0, i32 21
  %453 = load i64, i64* %1, align 8
  %454 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %453
  %455 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %454, i32 0, i32 18
  %456 = load i64, i64* %455, align 8
  %457 = getelementptr inbounds [10 x %struct._Time_Info], [10 x %struct._Time_Info]* %452, i64 0, i64 %456
  store %struct._Time_Info* %457, %struct._Time_Info** %7, align 8
  %458 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %459 = load i64, i64* %1, align 8
  %460 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %459
  %461 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %460, i32 0, i32 18
  %462 = load i64, i64* %461, align 8
  %463 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %458, i64 %462
  %464 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %463, i32 0, i32 7
  %465 = load i64, i64* %464, align 8
  %466 = load %struct._Time_Info*, %struct._Time_Info** %7, align 8
  %467 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %466, i32 0, i32 7
  store i64 %465, i64* %467, align 8
  %468 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %469 = load i64, i64* %1, align 8
  %470 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %469
  %471 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %470, i32 0, i32 18
  %472 = load i64, i64* %471, align 8
  %473 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %468, i64 %472
  %474 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = load %struct._Time_Info*, %struct._Time_Info** %7, align 8
  %477 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %476, i32 0, i32 0
  store i64 %475, i64* %477, align 8
  %478 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %479 = load i64, i64* %1, align 8
  %480 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %479
  %481 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %480, i32 0, i32 18
  %482 = load i64, i64* %481, align 8
  %483 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %478, i64 %482
  %484 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = load %struct._Time_Info*, %struct._Time_Info** %7, align 8
  %487 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %486, i32 0, i32 1
  store i64 %485, i64* %487, align 8
  %488 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %489 = load i64, i64* %1, align 8
  %490 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %489
  %491 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %490, i32 0, i32 18
  %492 = load i64, i64* %491, align 8
  %493 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %488, i64 %492
  %494 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %493, i32 0, i32 2
  %495 = load i64, i64* %494, align 8
  %496 = load %struct._Time_Info*, %struct._Time_Info** %7, align 8
  %497 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %496, i32 0, i32 2
  store i64 %495, i64* %497, align 8
  %498 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %499 = load i64, i64* %1, align 8
  %500 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %499
  %501 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %500, i32 0, i32 18
  %502 = load i64, i64* %501, align 8
  %503 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %498, i64 %502
  %504 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %503, i32 0, i32 4
  %505 = load i64, i64* %504, align 8
  %506 = load %struct._Time_Info*, %struct._Time_Info** %7, align 8
  %507 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %506, i32 0, i32 4
  store i64 %505, i64* %507, align 8
  %508 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %509 = load i64, i64* %1, align 8
  %510 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %509
  %511 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %510, i32 0, i32 18
  %512 = load i64, i64* %511, align 8
  %513 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %508, i64 %512
  %514 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %513, i32 0, i32 3
  %515 = load i64, i64* %514, align 8
  %516 = load %struct._Time_Info*, %struct._Time_Info** %7, align 8
  %517 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %516, i32 0, i32 3
  store i64 %515, i64* %517, align 8
  %518 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %519 = load i64, i64* %1, align 8
  %520 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %519
  %521 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %520, i32 0, i32 18
  %522 = load i64, i64* %521, align 8
  %523 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %518, i64 %522
  %524 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %523, i32 0, i32 6
  %525 = load i64, i64* %524, align 8
  %526 = load %struct._Time_Info*, %struct._Time_Info** %7, align 8
  %527 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %526, i32 0, i32 6
  store i64 %525, i64* %527, align 8
  %528 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %529 = load i64, i64* %1, align 8
  %530 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %529
  %531 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %530, i32 0, i32 18
  %532 = load i64, i64* %531, align 8
  %533 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %528, i64 %532
  %534 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %533, i32 0, i32 5
  %535 = load i64, i64* %534, align 8
  %536 = load %struct._Time_Info*, %struct._Time_Info** %7, align 8
  %537 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %536, i32 0, i32 5
  store i64 %535, i64* %537, align 8
  br label %538

; <label>:538:                                    ; preds = %449
  %539 = load i64, i64* %1, align 8
  %540 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %539
  %541 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %540, i32 0, i32 18
  %542 = load i64, i64* %541, align 8
  %543 = add nsw i64 %542, 1
  store i64 %543, i64* %541, align 8
  br label %442

; <label>:544:                                    ; preds = %442
  %545 = load i64, i64* %8, align 8
  %546 = load i64, i64* %1, align 8
  %547 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %546
  %548 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %547, i32 0, i32 20
  store i64 %545, i64* %548, align 8
  %549 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %550 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %549, i32 0, i32 6
  %551 = getelementptr inbounds %struct.anon, %struct.anon* %550, i32 0, i32 0
  %552 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %551) #6
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %25, align 8
  %554 = load i64, i64* %25, align 8
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %558

; <label>:556:                                    ; preds = %544
  %557 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:558:                                    ; preds = %544
  %559 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %560 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %559, i32 0, i32 6
  %561 = getelementptr inbounds %struct.anon, %struct.anon* %560, i32 0, i32 3
  %562 = load i64, i64* %561, align 8
  store i64 %562, i64* %26, align 8
  %563 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %564 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %563, i32 0, i32 6
  %565 = getelementptr inbounds %struct.anon, %struct.anon* %564, i32 0, i32 2
  %566 = load i64, i64* %565, align 8
  %567 = add i64 %566, 1
  store i64 %567, i64* %565, align 8
  %568 = load i64, i64* @Number_Of_Processors, align 8
  %569 = icmp ne i64 %567, %568
  br i1 %569, label %570, label %595

; <label>:570:                                    ; preds = %558
  %571 = call i32 @pthread_setcancelstate(i32 1, i32* %27)
  br label %572

; <label>:572:                                    ; preds = %591, %570
  %573 = load i64, i64* %26, align 8
  %574 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %575 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %574, i32 0, i32 6
  %576 = getelementptr inbounds %struct.anon, %struct.anon* %575, i32 0, i32 3
  %577 = load i64, i64* %576, align 8
  %578 = icmp eq i64 %573, %577
  br i1 %578, label %579, label %592

; <label>:579:                                    ; preds = %572
  %580 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %581 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %580, i32 0, i32 6
  %582 = getelementptr inbounds %struct.anon, %struct.anon* %581, i32 0, i32 1
  %583 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %584 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %583, i32 0, i32 6
  %585 = getelementptr inbounds %struct.anon, %struct.anon* %584, i32 0, i32 0
  %586 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %582, %union.pthread_mutex_t* %585)
  %587 = sext i32 %586 to i64
  store i64 %587, i64* %25, align 8
  %588 = load i64, i64* %25, align 8
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %591

; <label>:590:                                    ; preds = %579
  br label %592

; <label>:591:                                    ; preds = %579
  br label %572

; <label>:592:                                    ; preds = %590, %572
  %593 = load i32, i32* %27, align 4
  %594 = call i32 @pthread_setcancelstate(i32 %593, i32* %28)
  br label %615

; <label>:595:                                    ; preds = %558
  %596 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %597 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %596, i32 0, i32 6
  %598 = getelementptr inbounds %struct.anon, %struct.anon* %597, i32 0, i32 3
  %599 = load i64, i64* %598, align 8
  %600 = icmp ne i64 %599, 0
  %601 = xor i1 %600, true
  %602 = zext i1 %601 to i32
  %603 = sext i32 %602 to i64
  %604 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %605 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %604, i32 0, i32 6
  %606 = getelementptr inbounds %struct.anon, %struct.anon* %605, i32 0, i32 3
  store i64 %603, i64* %606, align 8
  %607 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %608 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %607, i32 0, i32 6
  %609 = getelementptr inbounds %struct.anon, %struct.anon* %608, i32 0, i32 2
  store i64 0, i64* %609, align 8
  %610 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %611 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %610, i32 0, i32 6
  %612 = getelementptr inbounds %struct.anon, %struct.anon* %611, i32 0, i32 1
  %613 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %612) #6
  %614 = sext i32 %613 to i64
  store i64 %614, i64* %25, align 8
  br label %615

; <label>:615:                                    ; preds = %595, %592
  %616 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %617 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %616, i32 0, i32 6
  %618 = getelementptr inbounds %struct.anon, %struct.anon* %617, i32 0, i32 0
  %619 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %618) #6
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @pthread_join(i64, i8**) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @PrintTimes() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct._Time_Info*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %23, align 8
  %26 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** %4, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 @fflush(%struct._IO_FILE* %31)
  call void @exit(i32 -1) #7
  unreachable

; <label>:33:                                     ; preds = %0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %37 = load i64, i64* @Number_Of_Processors, align 8
  %38 = load i64, i64* @Total_Particles, align 8
  %39 = load double, double* @Precision, align 8
  %40 = load i64, i64* @Time_Steps, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i64 %37, i64 %38, double %39, i64 %40)
  store i64 0, i64* %1, align 8
  br label %42

; <label>:42:                                     ; preds = %118, %33
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* @Time_Steps, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %121

; <label>:46:                                     ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %48 = load i64, i64* %1, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i64 %48)
  store i64 0, i64* %2, align 8
  br label %50

; <label>:50:                                     ; preds = %114, %46
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @Number_Of_Processors, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %117

; <label>:54:                                     ; preds = %50
  %55 = load i64, i64* %2, align 8
  %56 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %55
  %57 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %56, i32 0, i32 21
  %58 = load i64, i64* %1, align 8
  %59 = getelementptr inbounds [10 x %struct._Time_Info], [10 x %struct._Time_Info]* %57, i64 0, i64 %58
  store %struct._Time_Info* %59, %struct._Time_Info** %3, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %61 = load i64, i64* %2, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i64 %61)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %64 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %65 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), i64 %66)
  %68 = load i64, i64* @do_stats, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %111

; <label>:70:                                     ; preds = %54
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %72 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %73 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i32 0, i32 0), i64 %74)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %77 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %78 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i32 0, i32 0), i64 %79)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %82 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %83 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i64 %84)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %87 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %88 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i32 0, i32 0), i64 %89)
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %92 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %93 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i64 %94)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %97 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %98 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0), i64 %99)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %102 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %103 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0), i64 %104)
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %107 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %108 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), i64 %109)
  br label %111

; <label>:111:                                    ; preds = %70, %54
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %113 = call i32 @fflush(%struct._IO_FILE* %112)
  br label %114

; <label>:114:                                    ; preds = %111
  %115 = load i64, i64* %2, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %2, align 8
  br label %50

; <label>:117:                                    ; preds = %50
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i64, i64* %1, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %1, align 8
  br label %42

; <label>:121:                                    ; preds = %42
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0))
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %125 = call i32 @fclose(%struct._IO_FILE* %124)
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.53, i32 0, i32 0))
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.54, i32 0, i32 0))
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.55, i32 0, i32 0))
  store double 0.000000e+00, double* %22, align 8
  store double 0.000000e+00, double* %21, align 8
  store double 0.000000e+00, double* %20, align 8
  store double 0.000000e+00, double* %19, align 8
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %14, align 8
  store i64 2, i64* %1, align 8
  br label %129

; <label>:129:                                    ; preds = %190, %121
  %130 = load i64, i64* %1, align 8
  %131 = load i64, i64* @Time_Steps, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %193

; <label>:133:                                    ; preds = %129
  %134 = load i64, i64* %1, align 8
  %135 = getelementptr inbounds [10 x %struct._Time_Info], [10 x %struct._Time_Info]* getelementptr inbounds ([1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 0, i32 21), i64 0, i64 %134
  store %struct._Time_Info* %135, %struct._Time_Info** %3, align 8
  %136 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %137 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = uitofp i64 %138 to double
  %140 = load double, double* %14, align 8
  %141 = fadd double %140, %139
  store double %141, double* %14, align 8
  %142 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %143 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = uitofp i64 %144 to double
  %146 = load double, double* %15, align 8
  %147 = fadd double %146, %145
  store double %147, double* %15, align 8
  %148 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %149 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = uitofp i64 %150 to double
  %152 = load double, double* %16, align 8
  %153 = fadd double %152, %151
  store double %153, double* %16, align 8
  %154 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %155 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = uitofp i64 %156 to double
  %158 = load double, double* %17, align 8
  %159 = fadd double %158, %157
  store double %159, double* %17, align 8
  %160 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %161 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = uitofp i64 %162 to double
  %164 = load double, double* %18, align 8
  %165 = fadd double %164, %163
  store double %165, double* %18, align 8
  %166 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %167 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = uitofp i64 %168 to double
  %170 = load double, double* %19, align 8
  %171 = fadd double %170, %169
  store double %171, double* %19, align 8
  %172 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %173 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = uitofp i64 %174 to double
  %176 = load double, double* %20, align 8
  %177 = fadd double %176, %175
  store double %177, double* %20, align 8
  %178 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %179 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = uitofp i64 %180 to double
  %182 = load double, double* %21, align 8
  %183 = fadd double %182, %181
  store double %183, double* %21, align 8
  %184 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %185 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %184, i32 0, i32 7
  %186 = load i64, i64* %185, align 8
  %187 = uitofp i64 %186 to double
  %188 = load double, double* %22, align 8
  %189 = fadd double %188, %187
  store double %189, double* %22, align 8
  br label %190

; <label>:190:                                    ; preds = %133
  %191 = load i64, i64* %1, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %1, align 8
  br label %129

; <label>:193:                                    ; preds = %129
  %194 = load double, double* %14, align 8
  %195 = load double, double* %15, align 8
  %196 = load double, double* %16, align 8
  %197 = load double, double* %17, align 8
  %198 = load double, double* %18, align 8
  %199 = load double, double* %19, align 8
  %200 = load double, double* %20, align 8
  %201 = load double, double* %21, align 8
  %202 = load double, double* %22, align 8
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.56, i32 0, i32 0), i32 0, double %194, double %195, double %196, double %197, double %198, double %199, double %200, double %201, double %202)
  %204 = load double, double* %14, align 8
  %205 = load double, double* %5, align 8
  %206 = fadd double %205, %204
  store double %206, double* %5, align 8
  %207 = load double, double* %15, align 8
  %208 = load double, double* %6, align 8
  %209 = fadd double %208, %207
  store double %209, double* %6, align 8
  %210 = load double, double* %16, align 8
  %211 = load double, double* %7, align 8
  %212 = fadd double %211, %210
  store double %212, double* %7, align 8
  %213 = load double, double* %17, align 8
  %214 = load double, double* %8, align 8
  %215 = fadd double %214, %213
  store double %215, double* %8, align 8
  %216 = load double, double* %18, align 8
  %217 = load double, double* %9, align 8
  %218 = fadd double %217, %216
  store double %218, double* %9, align 8
  %219 = load double, double* %19, align 8
  %220 = load double, double* %10, align 8
  %221 = fadd double %220, %219
  store double %221, double* %10, align 8
  %222 = load double, double* %20, align 8
  %223 = load double, double* %11, align 8
  %224 = fadd double %223, %222
  store double %224, double* %11, align 8
  %225 = load double, double* %21, align 8
  %226 = load double, double* %12, align 8
  %227 = fadd double %226, %225
  store double %227, double* %12, align 8
  %228 = load double, double* %22, align 8
  %229 = load double, double* %13, align 8
  %230 = fadd double %229, %228
  store double %230, double* %13, align 8
  %231 = load double, double* %14, align 8
  %232 = load double, double* %23, align 8
  %233 = fcmp ogt double %231, %232
  br i1 %233, label %234, label %236

; <label>:234:                                    ; preds = %193
  %235 = load double, double* %14, align 8
  store double %235, double* %23, align 8
  br label %236

; <label>:236:                                    ; preds = %234, %193
  store i64 1, i64* %2, align 8
  br label %237

; <label>:237:                                    ; preds = %358, %236
  %238 = load i64, i64* %2, align 8
  %239 = load i64, i64* @Number_Of_Processors, align 8
  %240 = icmp slt i64 %238, %239
  br i1 %240, label %241, label %361

; <label>:241:                                    ; preds = %237
  store double 0.000000e+00, double* %22, align 8
  store double 0.000000e+00, double* %21, align 8
  store double 0.000000e+00, double* %20, align 8
  store double 0.000000e+00, double* %19, align 8
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %14, align 8
  store i64 2, i64* %1, align 8
  br label %242

; <label>:242:                                    ; preds = %306, %241
  %243 = load i64, i64* %1, align 8
  %244 = load i64, i64* @Time_Steps, align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %309

; <label>:246:                                    ; preds = %242
  %247 = load i64, i64* %2, align 8
  %248 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %247
  %249 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %248, i32 0, i32 21
  %250 = load i64, i64* %1, align 8
  %251 = getelementptr inbounds [10 x %struct._Time_Info], [10 x %struct._Time_Info]* %249, i64 0, i64 %250
  store %struct._Time_Info* %251, %struct._Time_Info** %3, align 8
  %252 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %253 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %252, i32 0, i32 8
  %254 = load i64, i64* %253, align 8
  %255 = uitofp i64 %254 to double
  %256 = load double, double* %14, align 8
  %257 = fadd double %256, %255
  store double %257, double* %14, align 8
  %258 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %259 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = uitofp i64 %260 to double
  %262 = load double, double* %15, align 8
  %263 = fadd double %262, %261
  store double %263, double* %15, align 8
  %264 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %265 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = uitofp i64 %266 to double
  %268 = load double, double* %16, align 8
  %269 = fadd double %268, %267
  store double %269, double* %16, align 8
  %270 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %271 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = uitofp i64 %272 to double
  %274 = load double, double* %17, align 8
  %275 = fadd double %274, %273
  store double %275, double* %17, align 8
  %276 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %277 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %276, i32 0, i32 4
  %278 = load i64, i64* %277, align 8
  %279 = uitofp i64 %278 to double
  %280 = load double, double* %18, align 8
  %281 = fadd double %280, %279
  store double %281, double* %18, align 8
  %282 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %283 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = uitofp i64 %284 to double
  %286 = load double, double* %19, align 8
  %287 = fadd double %286, %285
  store double %287, double* %19, align 8
  %288 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %289 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %288, i32 0, i32 6
  %290 = load i64, i64* %289, align 8
  %291 = uitofp i64 %290 to double
  %292 = load double, double* %20, align 8
  %293 = fadd double %292, %291
  store double %293, double* %20, align 8
  %294 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %295 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %294, i32 0, i32 5
  %296 = load i64, i64* %295, align 8
  %297 = uitofp i64 %296 to double
  %298 = load double, double* %21, align 8
  %299 = fadd double %298, %297
  store double %299, double* %21, align 8
  %300 = load %struct._Time_Info*, %struct._Time_Info** %3, align 8
  %301 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = uitofp i64 %302 to double
  %304 = load double, double* %22, align 8
  %305 = fadd double %304, %303
  store double %305, double* %22, align 8
  br label %306

; <label>:306:                                    ; preds = %246
  %307 = load i64, i64* %1, align 8
  %308 = add nsw i64 %307, 1
  store i64 %308, i64* %1, align 8
  br label %242

; <label>:309:                                    ; preds = %242
  %310 = load i64, i64* @do_stats, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %324

; <label>:312:                                    ; preds = %309
  %313 = load i64, i64* %2, align 8
  %314 = load double, double* %14, align 8
  %315 = load double, double* %15, align 8
  %316 = load double, double* %16, align 8
  %317 = load double, double* %17, align 8
  %318 = load double, double* %18, align 8
  %319 = load double, double* %19, align 8
  %320 = load double, double* %20, align 8
  %321 = load double, double* %21, align 8
  %322 = load double, double* %22, align 8
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.57, i32 0, i32 0), i64 %313, double %314, double %315, double %316, double %317, double %318, double %319, double %320, double %321, double %322)
  br label %324

; <label>:324:                                    ; preds = %312, %309
  %325 = load double, double* %14, align 8
  %326 = load double, double* %5, align 8
  %327 = fadd double %326, %325
  store double %327, double* %5, align 8
  %328 = load double, double* %15, align 8
  %329 = load double, double* %6, align 8
  %330 = fadd double %329, %328
  store double %330, double* %6, align 8
  %331 = load double, double* %16, align 8
  %332 = load double, double* %7, align 8
  %333 = fadd double %332, %331
  store double %333, double* %7, align 8
  %334 = load double, double* %17, align 8
  %335 = load double, double* %8, align 8
  %336 = fadd double %335, %334
  store double %336, double* %8, align 8
  %337 = load double, double* %18, align 8
  %338 = load double, double* %9, align 8
  %339 = fadd double %338, %337
  store double %339, double* %9, align 8
  %340 = load double, double* %19, align 8
  %341 = load double, double* %10, align 8
  %342 = fadd double %341, %340
  store double %342, double* %10, align 8
  %343 = load double, double* %20, align 8
  %344 = load double, double* %11, align 8
  %345 = fadd double %344, %343
  store double %345, double* %11, align 8
  %346 = load double, double* %21, align 8
  %347 = load double, double* %12, align 8
  %348 = fadd double %347, %346
  store double %348, double* %12, align 8
  %349 = load double, double* %22, align 8
  %350 = load double, double* %13, align 8
  %351 = fadd double %350, %349
  store double %351, double* %13, align 8
  %352 = load double, double* %14, align 8
  %353 = load double, double* %23, align 8
  %354 = fcmp ogt double %352, %353
  br i1 %354, label %355, label %357

; <label>:355:                                    ; preds = %324
  %356 = load double, double* %14, align 8
  store double %356, double* %23, align 8
  br label %357

; <label>:357:                                    ; preds = %355, %324
  br label %358

; <label>:358:                                    ; preds = %357
  %359 = load i64, i64* %2, align 8
  %360 = add nsw i64 %359, 1
  store i64 %360, i64* %2, align 8
  br label %237

; <label>:361:                                    ; preds = %237
  %362 = load i64, i64* @do_stats, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %403

; <label>:364:                                    ; preds = %361
  %365 = load i64, i64* @Number_Of_Processors, align 8
  store i64 %365, i64* %24, align 8
  %366 = load double, double* %5, align 8
  %367 = load i64, i64* %24, align 8
  %368 = sitofp i64 %367 to double
  %369 = fdiv double %366, %368
  %370 = load double, double* %6, align 8
  %371 = load i64, i64* %24, align 8
  %372 = sitofp i64 %371 to double
  %373 = fdiv double %370, %372
  %374 = load double, double* %7, align 8
  %375 = load i64, i64* %24, align 8
  %376 = sitofp i64 %375 to double
  %377 = fdiv double %374, %376
  %378 = load double, double* %8, align 8
  %379 = load i64, i64* %24, align 8
  %380 = sitofp i64 %379 to double
  %381 = fdiv double %378, %380
  %382 = load double, double* %9, align 8
  %383 = load i64, i64* %24, align 8
  %384 = sitofp i64 %383 to double
  %385 = fdiv double %382, %384
  %386 = load double, double* %10, align 8
  %387 = load i64, i64* %24, align 8
  %388 = sitofp i64 %387 to double
  %389 = fdiv double %386, %388
  %390 = load double, double* %11, align 8
  %391 = load i64, i64* %24, align 8
  %392 = sitofp i64 %391 to double
  %393 = fdiv double %390, %392
  %394 = load double, double* %12, align 8
  %395 = load i64, i64* %24, align 8
  %396 = sitofp i64 %395 to double
  %397 = fdiv double %394, %396
  %398 = load double, double* %13, align 8
  %399 = load i64, i64* %24, align 8
  %400 = sitofp i64 %399 to double
  %401 = fdiv double %398, %400
  %402 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.58, i32 0, i32 0), double %369, double %373, double %377, double %381, double %385, double %389, double %393, double %397, double %401)
  br label %403

; <label>:403:                                    ; preds = %364, %361
  %404 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0))
  %405 = load i64, i64* @Time_Steps, align 8
  %406 = icmp sgt i64 %405, 2
  br i1 %406, label %407, label %453

; <label>:407:                                    ; preds = %403
  %408 = load i64, i64* getelementptr inbounds ([1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 0, i32 20), align 16
  store i64 %408, i64* %25, align 8
  %409 = load i64, i64* @do_stats, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %433

; <label>:411:                                    ; preds = %407
  store i64 1, i64* %2, align 8
  br label %412

; <label>:412:                                    ; preds = %429, %411
  %413 = load i64, i64* %2, align 8
  %414 = load i64, i64* @Number_Of_Processors, align 8
  %415 = icmp slt i64 %413, %414
  br i1 %415, label %416, label %432

; <label>:416:                                    ; preds = %412
  %417 = load i64, i64* %2, align 8
  %418 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %417
  %419 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %418, i32 0, i32 20
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* %25, align 8
  %422 = icmp ugt i64 %420, %421
  br i1 %422, label %423, label %428

; <label>:423:                                    ; preds = %416
  %424 = load i64, i64* %2, align 8
  %425 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %424
  %426 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %425, i32 0, i32 20
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %25, align 8
  br label %428

; <label>:428:                                    ; preds = %423, %416
  br label %429

; <label>:429:                                    ; preds = %428
  %430 = load i64, i64* %2, align 8
  %431 = add nsw i64 %430, 1
  store i64 %431, i64* %2, align 8
  br label %412

; <label>:432:                                    ; preds = %412
  br label %433

; <label>:433:                                    ; preds = %432, %407
  %434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i32 0, i32 0))
  %435 = load i64, i64* @starttime, align 8
  %436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.61, i32 0, i32 0), i64 %435)
  %437 = load i64, i64* %25, align 8
  %438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.62, i32 0, i32 0), i64 %437)
  %439 = load i64, i64* @endtime, align 8
  %440 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.63, i32 0, i32 0), i64 %439)
  %441 = load i64, i64* @endtime, align 8
  %442 = load i64, i64* @starttime, align 8
  %443 = sub i64 %441, %442
  %444 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.64, i32 0, i32 0), i64 %443)
  %445 = load double, double* %23, align 8
  %446 = fptosi double %445 to i64
  %447 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.65, i32 0, i32 0), i64 %446)
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0))
  %449 = load i64, i64* @Time_Steps, align 8
  %450 = load double, double* %23, align 8
  %451 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.66, i32 0, i32 0), i64 3, i64 %449, double %450)
  %452 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0))
  br label %453

; <label>:453:                                    ; preds = %433, %403
  ret void
}

declare void @PrintAllParticles() #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare i32 @pthread_setcancelstate(i32, i32*) #2

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

declare void @CreateParticleList(i64, i64) #2

declare void @InitParticleList(i64, i64, i64) #2

declare void @CreateBoxes(i64, i64) #2

declare void @LockedPrint(i8*, ...) #2

declare void @ConstructGrid(i64, %struct._Time_Info*, i64) #2

declare void @ConstructLists(i64, %struct._Time_Info*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @PartitionGrid(i64, %struct._Time_Info*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Time_Info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  store i64 %0, i64* %4, align 8
  store %struct._Time_Info* %1, %struct._Time_Info** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %3
  %14 = call i32 @gettimeofday(%struct.timeval* %9, %struct.timezone* null) #6
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = mul nsw i64 %18, 1000000
  %20 = add nsw i64 %16, %19
  store i64 %20, i64* %7, align 8
  br label %21

; <label>:21:                                     ; preds = %13, %3
  %22 = load i32, i32* @Partition_Flag, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %21
  %25 = load i64, i64* %4, align 8
  call void @CostZones(i64 %25)
  br label %26

; <label>:26:                                     ; preds = %24, %21
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

; <label>:29:                                     ; preds = %26
  %30 = call i32 @gettimeofday(%struct.timeval* %10, %struct.timezone* null) #6
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = mul nsw i64 %34, 1000000
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %37, %38
  %40 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %41
  %43 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %42, i32 0, i32 18
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %40, i64 %44
  %46 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %45, i32 0, i32 2
  store i64 %39, i64* %46, align 8
  br label %47

; <label>:47:                                     ; preds = %29, %26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @StepSimulation(i64, %struct._Time_Info*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Time_Info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.timeval, align 8
  %21 = alloca %struct.timeval, align 8
  %22 = alloca %struct.timeval, align 8
  store i64 %0, i64* %4, align 8
  store %struct._Time_Info* %1, %struct._Time_Info** %5, align 8
  store i64 %2, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

; <label>:25:                                     ; preds = %3
  %26 = call i32 @gettimeofday(%struct.timeval* %13, %struct.timezone* null) #6
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = mul nsw i64 %30, 1000000
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %7, align 8
  br label %33

; <label>:33:                                     ; preds = %25, %3
  %34 = load i64, i64* %4, align 8
  call void @PartitionIterate(i64 %34, void (i64, %struct._Box*)* @UpwardPass, i32 1)
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

; <label>:37:                                     ; preds = %33
  %38 = call i32 @gettimeofday(%struct.timeval* %14, %struct.timezone* null) #6
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = mul nsw i64 %42, 1000000
  %44 = add nsw i64 %40, %43
  store i64 %44, i64* %9, align 8
  br label %45

; <label>:45:                                     ; preds = %37, %33
  %46 = load i64, i64* %4, align 8
  call void @PartitionIterate(i64 %46, void (i64, %struct._Box*)* @ComputeInteractions, i32 1)
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

; <label>:49:                                     ; preds = %45
  %50 = call i32 @gettimeofday(%struct.timeval* %15, %struct.timezone* null) #6
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = mul nsw i64 %54, 1000000
  %56 = add nsw i64 %52, %55
  store i64 %56, i64* %10, align 8
  br label %57

; <label>:57:                                     ; preds = %49, %45
  %58 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %59 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  %61 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %60) #6
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %57
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:67:                                     ; preds = %57
  %68 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %69 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %17, align 8
  %72 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %73 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load i64, i64* @Number_Of_Processors, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %104

; <label>:79:                                     ; preds = %67
  %80 = call i32 @pthread_setcancelstate(i32 1, i32* %18)
  br label %81

; <label>:81:                                     ; preds = %100, %79
  %82 = load i64, i64* %17, align 8
  %83 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %84 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %82, %86
  br i1 %87, label %88, label %101

; <label>:88:                                     ; preds = %81
  %89 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %90 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 1
  %92 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %93 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 0
  %95 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %91, %union.pthread_mutex_t* %94)
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %16, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %88
  br label %101

; <label>:100:                                    ; preds = %88
  br label %81

; <label>:101:                                    ; preds = %99, %81
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @pthread_setcancelstate(i32 %102, i32* %19)
  br label %124

; <label>:104:                                    ; preds = %67
  %105 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %106 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = sext i32 %111 to i64
  %113 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %114 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.anon, %struct.anon* %114, i32 0, i32 3
  store i64 %112, i64* %115, align 8
  %116 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %117 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.anon, %struct.anon* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %120 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %120, i32 0, i32 1
  %122 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %121) #6
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %16, align 8
  br label %124

; <label>:124:                                    ; preds = %104, %101
  %125 = load %struct._G_Mem*, %struct._G_Mem** @G_Memory, align 8
  %126 = getelementptr inbounds %struct._G_Mem, %struct._G_Mem* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.anon, %struct.anon* %126, i32 0, i32 0
  %128 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %127) #6
  %129 = load i64, i64* %6, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

; <label>:131:                                    ; preds = %124
  %132 = call i32 @gettimeofday(%struct.timeval* %20, %struct.timezone* null) #6
  %133 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = mul nsw i64 %136, 1000000
  %138 = add nsw i64 %134, %137
  store i64 %138, i64* %12, align 8
  br label %139

; <label>:139:                                    ; preds = %131, %124
  %140 = load i64, i64* %4, align 8
  call void @PartitionIterate(i64 %140, void (i64, %struct._Box*)* @DownwardPass, i32 0)
  %141 = load i64, i64* %6, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

; <label>:143:                                    ; preds = %139
  %144 = call i32 @gettimeofday(%struct.timeval* %21, %struct.timezone* null) #6
  %145 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = mul nsw i64 %148, 1000000
  %150 = add nsw i64 %146, %149
  store i64 %150, i64* %11, align 8
  br label %151

; <label>:151:                                    ; preds = %143, %139
  %152 = load i64, i64* %4, align 8
  call void @PartitionIterate(i64 %152, void (i64, %struct._Box*)* @ComputeParticlePositions, i32 2)
  %153 = load i64, i64* %6, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

; <label>:155:                                    ; preds = %151
  %156 = call i32 @gettimeofday(%struct.timeval* %22, %struct.timezone* null) #6
  %157 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = mul nsw i64 %160, 1000000
  %162 = add nsw i64 %158, %161
  store i64 %162, i64* %8, align 8
  br label %163

; <label>:163:                                    ; preds = %155, %151
  %164 = load i64, i64* %6, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %219

; <label>:166:                                    ; preds = %163
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %7, align 8
  %169 = sub i64 %167, %168
  %170 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %171 = load i64, i64* %4, align 8
  %172 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %171
  %173 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %172, i32 0, i32 18
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %170, i64 %174
  %176 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %175, i32 0, i32 4
  store i64 %169, i64* %176, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %9, align 8
  %179 = sub i64 %177, %178
  %180 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %181 = load i64, i64* %4, align 8
  %182 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %181
  %183 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %182, i32 0, i32 18
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %180, i64 %184
  %186 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %185, i32 0, i32 3
  store i64 %179, i64* %186, align 8
  %187 = load i64, i64* %12, align 8
  %188 = load i64, i64* %10, align 8
  %189 = sub i64 %187, %188
  %190 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %191 = load i64, i64* %4, align 8
  %192 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %191
  %193 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %192, i32 0, i32 18
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %190, i64 %194
  %196 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %195, i32 0, i32 6
  store i64 %189, i64* %196, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* %12, align 8
  %199 = sub i64 %197, %198
  %200 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %201 = load i64, i64* %4, align 8
  %202 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %201
  %203 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %202, i32 0, i32 18
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %200, i64 %204
  %206 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = add i64 %207, %199
  store i64 %208, i64* %206, align 8
  %209 = load i64, i64* %8, align 8
  %210 = load i64, i64* %11, align 8
  %211 = sub i64 %209, %210
  %212 = load %struct._Time_Info*, %struct._Time_Info** %5, align 8
  %213 = load i64, i64* %4, align 8
  %214 = getelementptr inbounds [1024 x %struct._Local_Memory], [1024 x %struct._Local_Memory]* @Local, i64 0, i64 %213
  %215 = getelementptr inbounds %struct._Local_Memory, %struct._Local_Memory* %214, i32 0, i32 18
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %212, i64 %216
  %218 = getelementptr inbounds %struct._Time_Info, %struct._Time_Info* %217, i32 0, i32 5
  store i64 %211, i64* %218, align 8
  br label %219

; <label>:219:                                    ; preds = %166, %163
  ret void
}

declare void @DestroyGrid(i64, %struct._Time_Info*, i64) #2

declare void @CostZones(i64) #2

declare void @PartitionIterate(i64, void (i64, %struct._Box*)*, i32) #2

declare void @UpwardPass(i64, %struct._Box*) #2

declare void @ComputeInteractions(i64, %struct._Box*) #2

declare void @DownwardPass(i64, %struct._Box*) #2

declare void @ComputeParticlePositions(i64, %struct._Box*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @gets(...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind readonly
declare double @atof(i8*) #4

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.ceil.f64(double) #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
