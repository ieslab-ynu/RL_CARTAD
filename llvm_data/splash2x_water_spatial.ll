; ModuleID = 'water.c'
source_filename = "water.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.array_dummy = type { [3 x [2 x i64]] }
%struct.list_of_boxes = type { [3 x i64], %struct.list_of_boxes* }
%struct.box_dummy = type { %struct.link*, %union.pthread_mutex_t }
%struct.link = type { %struct.mol_dummy, %struct.link* }
%struct.mol_dummy = type { [3 x double], [9 x [3 x [3 x double]]] }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.GlobalMemory = type { %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %struct.anon, %struct.anon.1, %struct.anon.2, i64, double, [3 x double], double, double, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i64, i64 }
%union.pthread_cond_t = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct.anon.1 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i64, i64 }
%struct.anon.2 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i64, i64 }
%struct.timeval = type { i64, i64 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%struct.timezone = type { i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@NFRST = global i64 11, align 8
@NFSV = global i64 10, align 8
@LKT = global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-H\00", align 1
@.str.2 = private unnamed_addr constant [161 x i8] c"Usage:  WATER-SPATIAL < infile, where the contents of infile can be\0Aobtained from the comments at the top of water.C and the first scanf \0Ain main() in water.C\0A\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@six = common global %struct._IO_FILE* null, align 8
@TEMP = common global double 0.000000e+00, align 8
@RHO = common global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"%lf%ld%ld%ld%ld%ld%ld%ld%ld%lf\00", align 1
@TSTEP = common global double 0.000000e+00, align 8
@NMOL = common global i64 0, align 8
@NSTEP = common global i64 0, align 8
@NORDER = common global i64 0, align 8
@NSAVE = common global i64 0, align 8
@NRST = common global i64 0, align 8
@NPRINT = common global i64 0, align 8
@NFMC = common global i64 0, align 8
@NumProcs = common global i64 0, align 8
@CUTOFF = common global double 0.000000e+00, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [112 x i8] c"ERROR: Usage: water < infile, which must have 10 fields, see SPLASH documentation or comment at top of water.C\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Using %ld procs on %ld steps of %ld mols\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Other parameters:\0A\09TSTEP = %8.2e\0A\09NORDER = %ld\0A\09NSAVE = %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"\09NRST = %ld\0A\09NPRINT = %ld\0A\09NFMC = %ld\0A\09CUTOFF = %lf\0A\0A\00", align 1
@NORD1 = common global i64 0, align 8
@TLC = common global [100 x double] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [32 x i8] c"%ld boxes with %ld processors\0A\0A\00", align 1
@BOX_PER_SIDE = common global i64 0, align 8
@.str.9 = private unnamed_addr constant [47 x i8] c"ERROR: less boxes (%ld) than processors (%ld)\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\0ATEMPERATURE                = %8.2f K\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"DENSITY                    = %8.5f G/C.C.\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"NUMBER OF MOLECULES        = %8ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"NUMBER OF PROCESSORS       = %8ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"TIME STEP                  = %8.2e SEC\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"ORDER USED TO SOLVE F=MA   = %8ld \0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"NO. OF TIME STEPS          = %8ld \0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"FREQUENCY OF DATA SAVING   = %8ld \0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"FREQUENCY TO WRITE RST FILE= %8ld \0A\00", align 1
@start_end = common global %struct.array_dummy** null, align 8
@.str.19 = private unnamed_addr constant [40 x i8] c"xprocs = %ld\09yprocs = %ld\09zprocs = %ld\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"x_inc = %ld\09 y_inc = %ld\09 z_inc = %ld\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"x_left = %ld\09 y_left = %ld\09 z_left = %ld\0A\00", align 1
@my_boxes = common global %struct.list_of_boxes** null, align 8
@BOX = common global %struct.box_dummy*** null, align 8
@gl = common global %struct.GlobalMemory* null, align 8
@.str.22 = private unnamed_addr constant [35 x i8] c"Error while initializing barrier.\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"SPHERICAL CUTOFF RADIUS    = %8.4f ANGSTROM\0A\00", align 1
@IRST = common global i64 0, align 8
@.str.24 = private unnamed_addr constant [51 x i8] c"COLLECTING X AND V DATA AT EVERY %4ld TIME STEPS \0A\00", align 1
@PThreadTable = common global [1024 x i64] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [28 x i8] c"Error in pthread_create().\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Error in pthread_join().\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"COMPUTESTART (after initialization) = %lu\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"COMPUTEEND = %lu\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"COMPUTETIME (after initialization) = %lu\0A\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"Measured Time (2nd timestep onward) = %lu\0A\00", align 1
@.str.31 = private unnamed_addr constant [54 x i8] c"Intramolecular time only (2nd timestep onward) = %lu\0A\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"Intermolecular time only (2nd timestep onward) = %lu\0A\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"Other time (2nd timestep onward) = %lu\0A\00", align 1
@.str.34 = private unnamed_addr constant [78 x i8] c"\0AExited Happily with XTT = %g (note: XTT value is garbage if NPRINT > NSTEP)\0A\00", align 1
@XTT = common global double 0.000000e+00, align 8
@NATOMS = common global i64 0, align 8
@I2 = common global i64 0, align 8
@NATMO = common global i64 0, align 8
@NATMO3 = common global i64 0, align 8
@NMOL1 = common global i64 0, align 8
@BPS_SQRD = common global i64 0, align 8
@IX = common global [28 x i64] zeroinitializer, align 16
@NVAR = common global i64 0, align 8
@NXYZ = common global i64 0, align 8
@NXV = common global i64 0, align 8
@IXF = common global i64 0, align 8
@IYF = common global i64 0, align 8
@IZF = common global i64 0, align 8
@IMY = common global i64 0, align 8
@IMZ = common global i64 0, align 8
@NumBoxes = common global i64 0, align 8
@UNITT = common global double 0.000000e+00, align 8
@UNITL = common global double 0.000000e+00, align 8
@UNITM = common global double 0.000000e+00, align 8
@BOLTZ = common global double 0.000000e+00, align 8
@AVGNO = common global double 0.000000e+00, align 8
@PCC = common global [11 x double] zeroinitializer, align 16
@FC11 = common global double 0.000000e+00, align 8
@FC12 = common global double 0.000000e+00, align 8
@FC13 = common global double 0.000000e+00, align 8
@FC33 = common global double 0.000000e+00, align 8
@FC111 = common global double 0.000000e+00, align 8
@FC333 = common global double 0.000000e+00, align 8
@FC112 = common global double 0.000000e+00, align 8
@FC113 = common global double 0.000000e+00, align 8
@FC123 = common global double 0.000000e+00, align 8
@FC133 = common global double 0.000000e+00, align 8
@FC1111 = common global double 0.000000e+00, align 8
@FC3333 = common global double 0.000000e+00, align 8
@FC1112 = common global double 0.000000e+00, align 8
@FC1122 = common global double 0.000000e+00, align 8
@FC1113 = common global double 0.000000e+00, align 8
@FC1123 = common global double 0.000000e+00, align 8
@FC1133 = common global double 0.000000e+00, align 8
@FC1233 = common global double 0.000000e+00, align 8
@FC1333 = common global double 0.000000e+00, align 8
@FPOT = common global double 0.000000e+00, align 8
@FKIN = common global double 0.000000e+00, align 8
@BOXL = common global double 0.000000e+00, align 8
@BOXH = common global double 0.000000e+00, align 8
@CUT2 = common global double 0.000000e+00, align 8
@BOX_LENGTH = common global double 0.000000e+00, align 8
@R3 = common global [128 x double] zeroinitializer, align 16
@R1 = common global double 0.000000e+00, align 8
@OMAS = common global double 0.000000e+00, align 8
@HMAS = common global double 0.000000e+00, align 8
@WTMOL = common global double 0.000000e+00, align 8
@ROH = common global double 0.000000e+00, align 8
@ANGLE = common global double 0.000000e+00, align 8
@FHM = common global double 0.000000e+00, align 8
@FOM = common global double 0.000000e+00, align 8
@ROHI = common global double 0.000000e+00, align 8
@ROHI2 = common global double 0.000000e+00, align 8
@QQ = common global double 0.000000e+00, align 8
@A1 = common global double 0.000000e+00, align 8
@B1 = common global double 0.000000e+00, align 8
@A2 = common global double 0.000000e+00, align 8
@B2 = common global double 0.000000e+00, align 8
@A3 = common global double 0.000000e+00, align 8
@B3 = common global double 0.000000e+00, align 8
@A4 = common global double 0.000000e+00, align 8
@B4 = common global double 0.000000e+00, align 8
@AB1 = common global double 0.000000e+00, align 8
@AB2 = common global double 0.000000e+00, align 8
@AB3 = common global double 0.000000e+00, align 8
@AB4 = common global double 0.000000e+00, align 8
@C1 = common global double 0.000000e+00, align 8
@C2 = common global double 0.000000e+00, align 8
@QQ2 = common global double 0.000000e+00, align 8
@QQ4 = common global double 0.000000e+00, align 8
@REF1 = common global double 0.000000e+00, align 8
@REF2 = common global double 0.000000e+00, align 8
@REF4 = common global double 0.000000e+00, align 8
@II = common global i64 0, align 8
@i = common global i64 0, align 8
@NDATA = common global i64 0, align 8

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
  %11 = alloca %struct.list_of_boxes*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca double, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct.timeval, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %57

; <label>:43:                                     ; preds = %2
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

; <label>:49:                                     ; preds = %43
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 2) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %49, %43
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

; <label>:57:                                     ; preds = %49, %2
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %58, %struct._IO_FILE** @six, align 8
  store double 2.980000e+02, double* @TEMP, align 8
  store double 0x3FEFEF9DB22D0E56, double* @RHO, align 8
  %59 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), double* @TSTEP, i64* @NMOL, i64* @NSTEP, i64* @NORDER, i64* @NSAVE, i64* @NRST, i64* @NPRINT, i64* @NFMC, i64* @NumProcs, double* @CUTOFF)
  %60 = icmp ne i32 %59, 10
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %57
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.4, i32 0, i32 0))
  br label %64

; <label>:64:                                     ; preds = %61, %57
  %65 = load i64, i64* @NumProcs, align 8
  %66 = load i64, i64* @NSTEP, align 8
  %67 = load i64, i64* @NMOL, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i64 %65, i64 %66, i64 %67)
  %69 = load double, double* @TSTEP, align 8
  %70 = load i64, i64* @NORDER, align 8
  %71 = load i64, i64* @NSAVE, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i32 0, i32 0), double %69, i64 %70, i64 %71)
  %73 = load i64, i64* @NRST, align 8
  %74 = load i64, i64* @NPRINT, align 8
  %75 = load i64, i64* @NFMC, align 8
  %76 = load double, double* @CUTOFF, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i64 %73, i64 %74, i64 %75, double %76)
  %78 = load i64, i64* @NORDER, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* @NORD1, align 8
  %80 = load i64, i64* @NORD1, align 8
  call void @CNSTNT(i64 %80, double* getelementptr inbounds ([100 x double], [100 x double]* @TLC, i32 0, i32 0))
  call void @SYSCNS()
  %81 = load i64, i64* @BOX_PER_SIDE, align 8
  %82 = load i64, i64* @BOX_PER_SIDE, align 8
  %83 = mul nsw i64 %81, %82
  %84 = load i64, i64* @BOX_PER_SIDE, align 8
  %85 = mul nsw i64 %83, %84
  %86 = load i64, i64* @NumProcs, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i64 %85, i64 %86)
  %88 = load i64, i64* @NumProcs, align 8
  %89 = load i64, i64* @BOX_PER_SIDE, align 8
  %90 = load i64, i64* @BOX_PER_SIDE, align 8
  %91 = mul nsw i64 %89, %90
  %92 = load i64, i64* @BOX_PER_SIDE, align 8
  %93 = mul nsw i64 %91, %92
  %94 = icmp sgt i64 %88, %93
  br i1 %94, label %95, label %106

; <label>:95:                                     ; preds = %64
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %97 = load i64, i64* @BOX_PER_SIDE, align 8
  %98 = load i64, i64* @BOX_PER_SIDE, align 8
  %99 = mul nsw i64 %97, %98
  %100 = load i64, i64* @BOX_PER_SIDE, align 8
  %101 = mul nsw i64 %99, %100
  %102 = load i64, i64* @NumProcs, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0), i64 %101, i64 %102)
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %105 = call i32 @fflush(%struct._IO_FILE* %104)
  call void @exit(i32 -1) #6
  unreachable

; <label>:106:                                    ; preds = %64
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %108 = load double, double* @TEMP, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0), double %108)
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %111 = load double, double* @RHO, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), double %111)
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %114 = load i64, i64* @NMOL, align 8
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i64 %114)
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %117 = load i64, i64* @NumProcs, align 8
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i64 %117)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %120 = load double, double* @TSTEP, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0), double %120)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %123 = load i64, i64* @NORDER, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i64 %123)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %126 = load i64, i64* @NSTEP, align 8
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i64 %126)
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %129 = load i64, i64* @NSAVE, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0), i64 %129)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %132 = load i64, i64* @NRST, align 8
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i64 %132)
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %135 = call i32 @fflush(%struct._IO_FILE* %134)
  store i64 704, i64* %31, align 8
  %136 = load i64, i64* @NumProcs, align 8
  %137 = mul i64 8, %136
  %138 = call noalias i8* @malloc(i64 %137) #7
  %139 = bitcast i8* %138 to %struct.array_dummy**
  store %struct.array_dummy** %139, %struct.array_dummy*** @start_end, align 8
  store i64 0, i64* %7, align 8
  br label %140

; <label>:140:                                    ; preds = %150, %106
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* @NumProcs, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %153

; <label>:144:                                    ; preds = %140
  %145 = call noalias i8* @malloc(i64 48) #7
  %146 = bitcast i8* %145 to %struct.array_dummy*
  %147 = load %struct.array_dummy**, %struct.array_dummy*** @start_end, align 8
  %148 = load i64, i64* %7, align 8
  %149 = getelementptr inbounds %struct.array_dummy*, %struct.array_dummy** %147, i64 %148
  store %struct.array_dummy* %146, %struct.array_dummy** %149, align 8
  br label %150

; <label>:150:                                    ; preds = %144
  %151 = load i64, i64* %7, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %7, align 8
  br label %140

; <label>:153:                                    ; preds = %140
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %154 = load i64, i64* @NumProcs, align 8
  %155 = sitofp i64 %154 to double
  %156 = call double @pow(double %155, double 0x3FD5555555555555) #7
  %157 = fadd double %156, 0x3D06849B86A12B9B
  store double %157, double* %30, align 8
  %158 = load double, double* %30, align 8
  %159 = fptosi double %158 to i64
  store i64 %159, i64* %8, align 8
  %160 = load i64, i64* %8, align 8
  %161 = icmp slt i64 %160, 1
  br i1 %161, label %162, label %163

; <label>:162:                                    ; preds = %153
  store i64 1, i64* %8, align 8
  br label %163

; <label>:163:                                    ; preds = %162, %153
  br label %164

; <label>:164:                                    ; preds = %211, %163
  %165 = load i64, i64* %12, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

; <label>:167:                                    ; preds = %164
  %168 = load i64, i64* %8, align 8
  %169 = icmp sgt i64 %168, 0
  br label %170

; <label>:170:                                    ; preds = %167, %164
  %171 = phi i1 [ false, %164 ], [ %169, %167 ]
  br i1 %171, label %172, label %214

; <label>:172:                                    ; preds = %170
  %173 = load i64, i64* @NumProcs, align 8
  %174 = load i64, i64* %8, align 8
  %175 = sdiv i64 %173, %174
  %176 = sitofp i64 %175 to double
  %177 = call double @sqrt(double %176) #7
  %178 = fptosi double %177 to i64
  store i64 %178, i64* %9, align 8
  %179 = load i64, i64* %9, align 8
  %180 = icmp slt i64 %179, 1
  br i1 %180, label %181, label %182

; <label>:181:                                    ; preds = %172
  store i64 1, i64* %9, align 8
  br label %182

; <label>:182:                                    ; preds = %181, %172
  br label %183

; <label>:183:                                    ; preds = %208, %182
  %184 = load i64, i64* %13, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %189

; <label>:186:                                    ; preds = %183
  %187 = load i64, i64* %9, align 8
  %188 = icmp sgt i64 %187, 0
  br label %189

; <label>:189:                                    ; preds = %186, %183
  %190 = phi i1 [ false, %183 ], [ %188, %186 ]
  br i1 %190, label %191, label %211

; <label>:191:                                    ; preds = %189
  %192 = load i64, i64* @NumProcs, align 8
  %193 = load i64, i64* %8, align 8
  %194 = load i64, i64* %9, align 8
  %195 = mul nsw i64 %193, %194
  %196 = sdiv i64 %192, %195
  store i64 %196, i64* %10, align 8
  %197 = load i64, i64* %8, align 8
  %198 = load i64, i64* %9, align 8
  %199 = mul nsw i64 %197, %198
  %200 = load i64, i64* %10, align 8
  %201 = mul nsw i64 %199, %200
  %202 = load i64, i64* @NumProcs, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

; <label>:204:                                    ; preds = %191
  %205 = load i64, i64* %8, align 8
  store i64 %205, i64* %12, align 8
  %206 = load i64, i64* %9, align 8
  store i64 %206, i64* %13, align 8
  %207 = load i64, i64* %10, align 8
  store i64 %207, i64* %14, align 8
  br label %208

; <label>:208:                                    ; preds = %204, %191
  %209 = load i64, i64* %9, align 8
  %210 = add nsw i64 %209, -1
  store i64 %210, i64* %9, align 8
  br label %183

; <label>:211:                                    ; preds = %189
  %212 = load i64, i64* %8, align 8
  %213 = add nsw i64 %212, -1
  store i64 %213, i64* %8, align 8
  br label %164

; <label>:214:                                    ; preds = %170
  %215 = load i64, i64* %12, align 8
  %216 = load i64, i64* %13, align 8
  %217 = load i64, i64* %14, align 8
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0), i64 %215, i64 %216, i64 %217)
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %220 = call i32 @fflush(%struct._IO_FILE* %219)
  store i64 0, i64* %6, align 8
  %221 = load i64, i64* @BOX_PER_SIDE, align 8
  %222 = load i64, i64* %12, align 8
  %223 = sdiv i64 %221, %222
  store i64 %223, i64* %15, align 8
  %224 = load i64, i64* @BOX_PER_SIDE, align 8
  %225 = load i64, i64* %13, align 8
  %226 = sdiv i64 %224, %225
  store i64 %226, i64* %16, align 8
  %227 = load i64, i64* @BOX_PER_SIDE, align 8
  %228 = load i64, i64* %14, align 8
  %229 = sdiv i64 %227, %228
  store i64 %229, i64* %17, align 8
  %230 = load i64, i64* @BOX_PER_SIDE, align 8
  %231 = load i64, i64* %12, align 8
  %232 = load i64, i64* %15, align 8
  %233 = mul nsw i64 %231, %232
  %234 = sub nsw i64 %230, %233
  store i64 %234, i64* %21, align 8
  %235 = load i64, i64* @BOX_PER_SIDE, align 8
  %236 = load i64, i64* %13, align 8
  %237 = load i64, i64* %16, align 8
  %238 = mul nsw i64 %236, %237
  %239 = sub nsw i64 %235, %238
  store i64 %239, i64* %22, align 8
  %240 = load i64, i64* @BOX_PER_SIDE, align 8
  %241 = load i64, i64* %14, align 8
  %242 = load i64, i64* %17, align 8
  %243 = mul nsw i64 %241, %242
  %244 = sub nsw i64 %240, %243
  store i64 %244, i64* %23, align 8
  %245 = load i64, i64* %15, align 8
  %246 = load i64, i64* %16, align 8
  %247 = load i64, i64* %17, align 8
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0), i64 %245, i64 %246, i64 %247)
  %249 = load i64, i64* %21, align 8
  %250 = load i64, i64* %22, align 8
  %251 = load i64, i64* %23, align 8
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i64 %249, i64 %250, i64 %251)
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %254 = call i32 @fflush(%struct._IO_FILE* %253)
  store i64 0, i64* %24, align 8
  %255 = load i64, i64* %21, align 8
  store i64 %255, i64* %18, align 8
  store i64 -1, i64* %27, align 8
  %256 = load i64, i64* %15, align 8
  %257 = add nsw i64 %256, 1
  store i64 %257, i64* %15, align 8
  store i64 0, i64* %7, align 8
  br label %258

; <label>:258:                                    ; preds = %406, %214
  %259 = load i64, i64* %7, align 8
  %260 = load i64, i64* %12, align 8
  %261 = icmp slt i64 %259, %260
  br i1 %261, label %262, label %409

; <label>:262:                                    ; preds = %258
  %263 = load i64, i64* %22, align 8
  store i64 %263, i64* %19, align 8
  %264 = load i64, i64* %18, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %269

; <label>:266:                                    ; preds = %262
  %267 = load i64, i64* %15, align 8
  %268 = add nsw i64 %267, -1
  store i64 %268, i64* %15, align 8
  br label %269

; <label>:269:                                    ; preds = %266, %262
  %270 = load i64, i64* %15, align 8
  %271 = load i64, i64* %27, align 8
  %272 = add nsw i64 %271, %270
  store i64 %272, i64* %27, align 8
  store i64 0, i64* %25, align 8
  store i64 -1, i64* %28, align 8
  %273 = load i64, i64* %16, align 8
  %274 = add nsw i64 %273, 1
  store i64 %274, i64* %16, align 8
  store i64 0, i64* %8, align 8
  br label %275

; <label>:275:                                    ; preds = %398, %269
  %276 = load i64, i64* %8, align 8
  %277 = load i64, i64* %13, align 8
  %278 = icmp slt i64 %276, %277
  br i1 %278, label %279, label %401

; <label>:279:                                    ; preds = %275
  %280 = load i64, i64* %23, align 8
  store i64 %280, i64* %20, align 8
  %281 = load i64, i64* %19, align 8
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %286

; <label>:283:                                    ; preds = %279
  %284 = load i64, i64* %16, align 8
  %285 = add nsw i64 %284, -1
  store i64 %285, i64* %16, align 8
  br label %286

; <label>:286:                                    ; preds = %283, %279
  %287 = load i64, i64* %16, align 8
  %288 = load i64, i64* %28, align 8
  %289 = add nsw i64 %288, %287
  store i64 %289, i64* %28, align 8
  store i64 0, i64* %26, align 8
  store i64 -1, i64* %29, align 8
  %290 = load i64, i64* %17, align 8
  %291 = add nsw i64 %290, 1
  store i64 %291, i64* %17, align 8
  store i64 0, i64* %9, align 8
  br label %292

; <label>:292:                                    ; preds = %390, %286
  %293 = load i64, i64* %9, align 8
  %294 = load i64, i64* %14, align 8
  %295 = icmp slt i64 %293, %294
  br i1 %295, label %296, label %393

; <label>:296:                                    ; preds = %292
  %297 = load i64, i64* %20, align 8
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %302

; <label>:299:                                    ; preds = %296
  %300 = load i64, i64* %17, align 8
  %301 = add nsw i64 %300, -1
  store i64 %301, i64* %17, align 8
  br label %302

; <label>:302:                                    ; preds = %299, %296
  %303 = load i64, i64* %17, align 8
  %304 = load i64, i64* %29, align 8
  %305 = add nsw i64 %304, %303
  store i64 %305, i64* %29, align 8
  %306 = load i64, i64* %24, align 8
  %307 = load %struct.array_dummy**, %struct.array_dummy*** @start_end, align 8
  %308 = load i64, i64* %6, align 8
  %309 = getelementptr inbounds %struct.array_dummy*, %struct.array_dummy** %307, i64 %308
  %310 = load %struct.array_dummy*, %struct.array_dummy** %309, align 8
  %311 = getelementptr inbounds %struct.array_dummy, %struct.array_dummy* %310, i32 0, i32 0
  %312 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %311, i64 0, i64 0
  %313 = getelementptr inbounds [2 x i64], [2 x i64]* %312, i64 0, i64 0
  store i64 %306, i64* %313, align 8
  %314 = load i64, i64* %27, align 8
  %315 = load i64, i64* @BOX_PER_SIDE, align 8
  %316 = sub nsw i64 %315, 1
  %317 = icmp sgt i64 %314, %316
  br i1 %317, label %318, label %321

; <label>:318:                                    ; preds = %302
  %319 = load i64, i64* @BOX_PER_SIDE, align 8
  %320 = sub nsw i64 %319, 1
  br label %323

; <label>:321:                                    ; preds = %302
  %322 = load i64, i64* %27, align 8
  br label %323

; <label>:323:                                    ; preds = %321, %318
  %324 = phi i64 [ %320, %318 ], [ %322, %321 ]
  %325 = load %struct.array_dummy**, %struct.array_dummy*** @start_end, align 8
  %326 = load i64, i64* %6, align 8
  %327 = getelementptr inbounds %struct.array_dummy*, %struct.array_dummy** %325, i64 %326
  %328 = load %struct.array_dummy*, %struct.array_dummy** %327, align 8
  %329 = getelementptr inbounds %struct.array_dummy, %struct.array_dummy* %328, i32 0, i32 0
  %330 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %329, i64 0, i64 0
  %331 = getelementptr inbounds [2 x i64], [2 x i64]* %330, i64 0, i64 1
  store i64 %324, i64* %331, align 8
  %332 = load i64, i64* %25, align 8
  %333 = load %struct.array_dummy**, %struct.array_dummy*** @start_end, align 8
  %334 = load i64, i64* %6, align 8
  %335 = getelementptr inbounds %struct.array_dummy*, %struct.array_dummy** %333, i64 %334
  %336 = load %struct.array_dummy*, %struct.array_dummy** %335, align 8
  %337 = getelementptr inbounds %struct.array_dummy, %struct.array_dummy* %336, i32 0, i32 0
  %338 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %337, i64 0, i64 1
  %339 = getelementptr inbounds [2 x i64], [2 x i64]* %338, i64 0, i64 0
  store i64 %332, i64* %339, align 8
  %340 = load i64, i64* %28, align 8
  %341 = load i64, i64* @BOX_PER_SIDE, align 8
  %342 = sub nsw i64 %341, 1
  %343 = icmp sgt i64 %340, %342
  br i1 %343, label %344, label %347

; <label>:344:                                    ; preds = %323
  %345 = load i64, i64* @BOX_PER_SIDE, align 8
  %346 = sub nsw i64 %345, 1
  br label %349

; <label>:347:                                    ; preds = %323
  %348 = load i64, i64* %28, align 8
  br label %349

; <label>:349:                                    ; preds = %347, %344
  %350 = phi i64 [ %346, %344 ], [ %348, %347 ]
  %351 = load %struct.array_dummy**, %struct.array_dummy*** @start_end, align 8
  %352 = load i64, i64* %6, align 8
  %353 = getelementptr inbounds %struct.array_dummy*, %struct.array_dummy** %351, i64 %352
  %354 = load %struct.array_dummy*, %struct.array_dummy** %353, align 8
  %355 = getelementptr inbounds %struct.array_dummy, %struct.array_dummy* %354, i32 0, i32 0
  %356 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %355, i64 0, i64 1
  %357 = getelementptr inbounds [2 x i64], [2 x i64]* %356, i64 0, i64 1
  store i64 %350, i64* %357, align 8
  %358 = load i64, i64* %26, align 8
  %359 = load %struct.array_dummy**, %struct.array_dummy*** @start_end, align 8
  %360 = load i64, i64* %6, align 8
  %361 = getelementptr inbounds %struct.array_dummy*, %struct.array_dummy** %359, i64 %360
  %362 = load %struct.array_dummy*, %struct.array_dummy** %361, align 8
  %363 = getelementptr inbounds %struct.array_dummy, %struct.array_dummy* %362, i32 0, i32 0
  %364 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %363, i64 0, i64 2
  %365 = getelementptr inbounds [2 x i64], [2 x i64]* %364, i64 0, i64 0
  store i64 %358, i64* %365, align 8
  %366 = load i64, i64* %29, align 8
  %367 = load i64, i64* @BOX_PER_SIDE, align 8
  %368 = sub nsw i64 %367, 1
  %369 = icmp sgt i64 %366, %368
  br i1 %369, label %370, label %373

; <label>:370:                                    ; preds = %349
  %371 = load i64, i64* @BOX_PER_SIDE, align 8
  %372 = sub nsw i64 %371, 1
  br label %375

; <label>:373:                                    ; preds = %349
  %374 = load i64, i64* %29, align 8
  br label %375

; <label>:375:                                    ; preds = %373, %370
  %376 = phi i64 [ %372, %370 ], [ %374, %373 ]
  %377 = load %struct.array_dummy**, %struct.array_dummy*** @start_end, align 8
  %378 = load i64, i64* %6, align 8
  %379 = getelementptr inbounds %struct.array_dummy*, %struct.array_dummy** %377, i64 %378
  %380 = load %struct.array_dummy*, %struct.array_dummy** %379, align 8
  %381 = getelementptr inbounds %struct.array_dummy, %struct.array_dummy* %380, i32 0, i32 0
  %382 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %381, i64 0, i64 2
  %383 = getelementptr inbounds [2 x i64], [2 x i64]* %382, i64 0, i64 1
  store i64 %376, i64* %383, align 8
  %384 = load i64, i64* %29, align 8
  %385 = add nsw i64 %384, 1
  store i64 %385, i64* %26, align 8
  %386 = load i64, i64* %20, align 8
  %387 = add nsw i64 %386, -1
  store i64 %387, i64* %20, align 8
  %388 = load i64, i64* %6, align 8
  %389 = add nsw i64 %388, 1
  store i64 %389, i64* %6, align 8
  br label %390

; <label>:390:                                    ; preds = %375
  %391 = load i64, i64* %9, align 8
  %392 = add nsw i64 %391, 1
  store i64 %392, i64* %9, align 8
  br label %292

; <label>:393:                                    ; preds = %292
  %394 = load i64, i64* %28, align 8
  %395 = add nsw i64 %394, 1
  store i64 %395, i64* %25, align 8
  %396 = load i64, i64* %19, align 8
  %397 = add nsw i64 %396, -1
  store i64 %397, i64* %19, align 8
  br label %398

; <label>:398:                                    ; preds = %393
  %399 = load i64, i64* %8, align 8
  %400 = add nsw i64 %399, 1
  store i64 %400, i64* %8, align 8
  br label %275

; <label>:401:                                    ; preds = %275
  %402 = load i64, i64* %27, align 8
  %403 = add nsw i64 %402, 1
  store i64 %403, i64* %24, align 8
  %404 = load i64, i64* %18, align 8
  %405 = add nsw i64 %404, -1
  store i64 %405, i64* %18, align 8
  br label %406

; <label>:406:                                    ; preds = %401
  %407 = load i64, i64* %7, align 8
  %408 = add nsw i64 %407, 1
  store i64 %408, i64* %7, align 8
  br label %258

; <label>:409:                                    ; preds = %258
  %410 = load i64, i64* @NumProcs, align 8
  %411 = mul i64 %410, 8
  %412 = call noalias i8* @malloc(i64 %411) #7
  %413 = bitcast i8* %412 to %struct.list_of_boxes**
  store %struct.list_of_boxes** %413, %struct.list_of_boxes*** @my_boxes, align 8
  store i64 0, i64* %7, align 8
  br label %414

; <label>:414:                                    ; preds = %422, %409
  %415 = load i64, i64* %7, align 8
  %416 = load i64, i64* @NumProcs, align 8
  %417 = icmp slt i64 %415, %416
  br i1 %417, label %418, label %425

; <label>:418:                                    ; preds = %414
  %419 = load %struct.list_of_boxes**, %struct.list_of_boxes*** @my_boxes, align 8
  %420 = load i64, i64* %7, align 8
  %421 = getelementptr inbounds %struct.list_of_boxes*, %struct.list_of_boxes** %419, i64 %420
  store %struct.list_of_boxes* null, %struct.list_of_boxes** %421, align 8
  br label %422

; <label>:422:                                    ; preds = %418
  %423 = load i64, i64* %7, align 8
  %424 = add nsw i64 %423, 1
  store i64 %424, i64* %7, align 8
  br label %414

; <label>:425:                                    ; preds = %414
  %426 = load %struct.list_of_boxes**, %struct.list_of_boxes*** @my_boxes, align 8
  %427 = getelementptr inbounds %struct.list_of_boxes*, %struct.list_of_boxes** %426, i64 0
  %428 = load %struct.list_of_boxes*, %struct.list_of_boxes** %427, align 8
  store %struct.list_of_boxes* %428, %struct.list_of_boxes** %11, align 8
  br label %429

; <label>:429:                                    ; preds = %432, %425
  %430 = load %struct.list_of_boxes*, %struct.list_of_boxes** %11, align 8
  %431 = icmp ne %struct.list_of_boxes* %430, null
  br i1 %431, label %432, label %436

; <label>:432:                                    ; preds = %429
  %433 = load %struct.list_of_boxes*, %struct.list_of_boxes** %11, align 8
  %434 = getelementptr inbounds %struct.list_of_boxes, %struct.list_of_boxes* %433, i32 0, i32 1
  %435 = load %struct.list_of_boxes*, %struct.list_of_boxes** %434, align 8
  store %struct.list_of_boxes* %435, %struct.list_of_boxes** %11, align 8
  br label %429

; <label>:436:                                    ; preds = %429
  %437 = load i64, i64* @BOX_PER_SIDE, align 8
  %438 = mul i64 %437, 8
  %439 = call noalias i8* @malloc(i64 %438) #7
  %440 = bitcast i8* %439 to %struct.box_dummy***
  store %struct.box_dummy*** %440, %struct.box_dummy**** @BOX, align 8
  store i64 0, i64* %7, align 8
  br label %441

; <label>:441:                                    ; preds = %502, %436
  %442 = load i64, i64* %7, align 8
  %443 = load i64, i64* @BOX_PER_SIDE, align 8
  %444 = icmp slt i64 %442, %443
  br i1 %444, label %445, label %505

; <label>:445:                                    ; preds = %441
  %446 = load i64, i64* @BOX_PER_SIDE, align 8
  %447 = mul i64 %446, 8
  %448 = call noalias i8* @malloc(i64 %447) #7
  %449 = bitcast i8* %448 to %struct.box_dummy**
  %450 = load %struct.box_dummy***, %struct.box_dummy**** @BOX, align 8
  %451 = load i64, i64* %7, align 8
  %452 = getelementptr inbounds %struct.box_dummy**, %struct.box_dummy*** %450, i64 %451
  store %struct.box_dummy** %449, %struct.box_dummy*** %452, align 8
  store i64 0, i64* %8, align 8
  br label %453

; <label>:453:                                    ; preds = %498, %445
  %454 = load i64, i64* %8, align 8
  %455 = load i64, i64* @BOX_PER_SIDE, align 8
  %456 = icmp slt i64 %454, %455
  br i1 %456, label %457, label %501

; <label>:457:                                    ; preds = %453
  %458 = load i64, i64* @BOX_PER_SIDE, align 8
  %459 = mul i64 %458, 48
  %460 = call noalias i8* @malloc(i64 %459) #7
  %461 = bitcast i8* %460 to %struct.box_dummy*
  %462 = load %struct.box_dummy***, %struct.box_dummy**** @BOX, align 8
  %463 = load i64, i64* %7, align 8
  %464 = getelementptr inbounds %struct.box_dummy**, %struct.box_dummy*** %462, i64 %463
  %465 = load %struct.box_dummy**, %struct.box_dummy*** %464, align 8
  %466 = load i64, i64* %8, align 8
  %467 = getelementptr inbounds %struct.box_dummy*, %struct.box_dummy** %465, i64 %466
  store %struct.box_dummy* %461, %struct.box_dummy** %467, align 8
  store i64 0, i64* %9, align 8
  br label %468

; <label>:468:                                    ; preds = %494, %457
  %469 = load i64, i64* %9, align 8
  %470 = load i64, i64* @BOX_PER_SIDE, align 8
  %471 = icmp slt i64 %469, %470
  br i1 %471, label %472, label %497

; <label>:472:                                    ; preds = %468
  %473 = load %struct.box_dummy***, %struct.box_dummy**** @BOX, align 8
  %474 = load i64, i64* %7, align 8
  %475 = getelementptr inbounds %struct.box_dummy**, %struct.box_dummy*** %473, i64 %474
  %476 = load %struct.box_dummy**, %struct.box_dummy*** %475, align 8
  %477 = load i64, i64* %8, align 8
  %478 = getelementptr inbounds %struct.box_dummy*, %struct.box_dummy** %476, i64 %477
  %479 = load %struct.box_dummy*, %struct.box_dummy** %478, align 8
  %480 = load i64, i64* %9, align 8
  %481 = getelementptr inbounds %struct.box_dummy, %struct.box_dummy* %479, i64 %480
  %482 = getelementptr inbounds %struct.box_dummy, %struct.box_dummy* %481, i32 0, i32 0
  store %struct.link* null, %struct.link** %482, align 8
  %483 = load %struct.box_dummy***, %struct.box_dummy**** @BOX, align 8
  %484 = load i64, i64* %7, align 8
  %485 = getelementptr inbounds %struct.box_dummy**, %struct.box_dummy*** %483, i64 %484
  %486 = load %struct.box_dummy**, %struct.box_dummy*** %485, align 8
  %487 = load i64, i64* %8, align 8
  %488 = getelementptr inbounds %struct.box_dummy*, %struct.box_dummy** %486, i64 %487
  %489 = load %struct.box_dummy*, %struct.box_dummy** %488, align 8
  %490 = load i64, i64* %9, align 8
  %491 = getelementptr inbounds %struct.box_dummy, %struct.box_dummy* %489, i64 %490
  %492 = getelementptr inbounds %struct.box_dummy, %struct.box_dummy* %491, i32 0, i32 1
  %493 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %492, %union.pthread_mutexattr_t* null) #7
  br label %494

; <label>:494:                                    ; preds = %472
  %495 = load i64, i64* %9, align 8
  %496 = add nsw i64 %495, 1
  store i64 %496, i64* %9, align 8
  br label %468

; <label>:497:                                    ; preds = %468
  br label %498

; <label>:498:                                    ; preds = %497
  %499 = load i64, i64* %8, align 8
  %500 = add nsw i64 %499, 1
  store i64 %500, i64* %8, align 8
  br label %453

; <label>:501:                                    ; preds = %453
  br label %502

; <label>:502:                                    ; preds = %501
  %503 = load i64, i64* %7, align 8
  %504 = add nsw i64 %503, 1
  store i64 %504, i64* %7, align 8
  br label %441

; <label>:505:                                    ; preds = %441
  %506 = load i64, i64* %31, align 8
  %507 = call noalias i8* @malloc(i64 %506) #7
  %508 = bitcast i8* %507 to %struct.GlobalMemory*
  store %struct.GlobalMemory* %508, %struct.GlobalMemory** @gl, align 8
  %509 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %510 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %509, i32 0, i32 6
  %511 = getelementptr inbounds %struct.anon, %struct.anon* %510, i32 0, i32 0
  %512 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %511, %union.pthread_mutexattr_t* null) #7
  %513 = sext i32 %512 to i64
  store i64 %513, i64* %32, align 8
  %514 = load i64, i64* %32, align 8
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %518

; <label>:516:                                    ; preds = %505
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

; <label>:518:                                    ; preds = %505
  %519 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %520 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %519, i32 0, i32 6
  %521 = getelementptr inbounds %struct.anon, %struct.anon* %520, i32 0, i32 1
  %522 = call i32 @pthread_cond_init(%union.pthread_cond_t* %521, %union.pthread_condattr_t* null) #7
  %523 = sext i32 %522 to i64
  store i64 %523, i64* %32, align 8
  %524 = load i64, i64* %32, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %532

; <label>:526:                                    ; preds = %518
  %527 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0))
  %528 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %529 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %528, i32 0, i32 6
  %530 = getelementptr inbounds %struct.anon, %struct.anon* %529, i32 0, i32 0
  %531 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %530) #7
  call void @exit(i32 -1) #6
  unreachable

; <label>:532:                                    ; preds = %518
  %533 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %534 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %533, i32 0, i32 6
  %535 = getelementptr inbounds %struct.anon, %struct.anon* %534, i32 0, i32 2
  store i64 0, i64* %535, align 8
  %536 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %537 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %536, i32 0, i32 6
  %538 = getelementptr inbounds %struct.anon, %struct.anon* %537, i32 0, i32 3
  store i64 0, i64* %538, align 8
  %539 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %540 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %539, i32 0, i32 7
  %541 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %540, i32 0, i32 0
  %542 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %541, %union.pthread_mutexattr_t* null) #7
  %543 = sext i32 %542 to i64
  store i64 %543, i64* %33, align 8
  %544 = load i64, i64* %33, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %548

; <label>:546:                                    ; preds = %532
  %547 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

; <label>:548:                                    ; preds = %532
  %549 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %550 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %549, i32 0, i32 7
  %551 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %550, i32 0, i32 1
  %552 = call i32 @pthread_cond_init(%union.pthread_cond_t* %551, %union.pthread_condattr_t* null) #7
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %33, align 8
  %554 = load i64, i64* %33, align 8
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %562

; <label>:556:                                    ; preds = %548
  %557 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0))
  %558 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %559 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %558, i32 0, i32 7
  %560 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %559, i32 0, i32 0
  %561 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %560) #7
  call void @exit(i32 -1) #6
  unreachable

; <label>:562:                                    ; preds = %548
  %563 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %564 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %563, i32 0, i32 7
  %565 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %564, i32 0, i32 2
  store i64 0, i64* %565, align 8
  %566 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %567 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %566, i32 0, i32 7
  %568 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %567, i32 0, i32 3
  store i64 0, i64* %568, align 8
  %569 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %570 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %569, i32 0, i32 8
  %571 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %570, i32 0, i32 0
  %572 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %571, %union.pthread_mutexattr_t* null) #7
  %573 = sext i32 %572 to i64
  store i64 %573, i64* %34, align 8
  %574 = load i64, i64* %34, align 8
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %578

; <label>:576:                                    ; preds = %562
  %577 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

; <label>:578:                                    ; preds = %562
  %579 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %580 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %579, i32 0, i32 8
  %581 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %580, i32 0, i32 1
  %582 = call i32 @pthread_cond_init(%union.pthread_cond_t* %581, %union.pthread_condattr_t* null) #7
  %583 = sext i32 %582 to i64
  store i64 %583, i64* %34, align 8
  %584 = load i64, i64* %34, align 8
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %592

; <label>:586:                                    ; preds = %578
  %587 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0))
  %588 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %589 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %588, i32 0, i32 8
  %590 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %589, i32 0, i32 0
  %591 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %590) #7
  call void @exit(i32 -1) #6
  unreachable

; <label>:592:                                    ; preds = %578
  %593 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %594 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %593, i32 0, i32 8
  %595 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %594, i32 0, i32 2
  store i64 0, i64* %595, align 8
  %596 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %597 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %596, i32 0, i32 8
  %598 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %597, i32 0, i32 3
  store i64 0, i64* %598, align 8
  %599 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %600 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %599, i32 0, i32 0
  %601 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %600, %union.pthread_mutexattr_t* null) #7
  %602 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %603 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %602, i32 0, i32 1
  %604 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %603, %union.pthread_mutexattr_t* null) #7
  %605 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %606 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %605, i32 0, i32 2
  %607 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %606, %union.pthread_mutexattr_t* null) #7
  %608 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %609 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %608, i32 0, i32 3
  %610 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %609, %union.pthread_mutexattr_t* null) #7
  %611 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %612 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %611, i32 0, i32 4
  %613 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %612, %union.pthread_mutexattr_t* null) #7
  %614 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %615 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %614, i32 0, i32 5
  %616 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %615, %union.pthread_mutexattr_t* null) #7
  %617 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %618 = load double, double* @CUTOFF, align 8
  %619 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %617, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i32 0, i32 0), double %618)
  %620 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %621 = call i32 @fflush(%struct._IO_FILE* %620)
  store i64 0, i64* @IRST, align 8
  call void @INITIA()
  %622 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %623 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %622, i32 0, i32 19
  store i64 0, i64* %623, align 8
  %624 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %625 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %624, i32 0, i32 22
  store i64 0, i64* %625, align 8
  %626 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %627 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %626, i32 0, i32 25
  store i64 0, i64* %627, align 8
  %628 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %629 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %628, i32 0, i32 9
  store i64 1, i64* %629, align 8
  %630 = load i64, i64* @NSAVE, align 8
  %631 = icmp sgt i64 %630, 0
  br i1 %631, label %632, label %636

; <label>:632:                                    ; preds = %592
  %633 = load %struct._IO_FILE*, %struct._IO_FILE** @six, align 8
  %634 = load i64, i64* @NSAVE, align 8
  %635 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %633, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i32 0, i32 0), i64 %634)
  br label %636

; <label>:636:                                    ; preds = %632, %592
  %637 = call i32 @gettimeofday(%struct.timeval* %35, %struct.timezone* null) #7
  %638 = getelementptr inbounds %struct.timeval, %struct.timeval* %35, i32 0, i32 1
  %639 = load i64, i64* %638, align 8
  %640 = getelementptr inbounds %struct.timeval, %struct.timeval* %35, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = mul nsw i64 %641, 1000000
  %643 = add nsw i64 %639, %642
  %644 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %645 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %644, i32 0, i32 15
  store i64 %643, i64* %645, align 8
  store i64 0, i64* %36, align 8
  br label %646

; <label>:646:                                    ; preds = %661, %636
  %647 = load i64, i64* %36, align 8
  %648 = load i64, i64* @NumProcs, align 8
  %649 = sub nsw i64 %648, 1
  %650 = icmp slt i64 %647, %649
  br i1 %650, label %651, label %664

; <label>:651:                                    ; preds = %646
  %652 = load i64, i64* %36, align 8
  %653 = getelementptr inbounds [1024 x i64], [1024 x i64]* @PThreadTable, i64 0, i64 %652
  %654 = call i32 @pthread_create(i64* %653, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void ()* @WorkStart to i8* (i8*)*), i8* null) #7
  %655 = sext i32 %654 to i64
  store i64 %655, i64* %37, align 8
  %656 = load i64, i64* %37, align 8
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %658, label %660

; <label>:658:                                    ; preds = %651
  %659 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

; <label>:660:                                    ; preds = %651
  br label %661

; <label>:661:                                    ; preds = %660
  %662 = load i64, i64* %36, align 8
  %663 = add nsw i64 %662, 1
  store i64 %663, i64* %36, align 8
  br label %646

; <label>:664:                                    ; preds = %646
  call void @WorkStart()
  store i64 0, i64* %38, align 8
  br label %665

; <label>:665:                                    ; preds = %681, %664
  %666 = load i64, i64* %38, align 8
  %667 = load i64, i64* @NumProcs, align 8
  %668 = sub nsw i64 %667, 1
  %669 = icmp ult i64 %666, %668
  br i1 %669, label %670, label %684

; <label>:670:                                    ; preds = %665
  %671 = load i64, i64* %38, align 8
  %672 = getelementptr inbounds [1024 x i64], [1024 x i64]* @PThreadTable, i64 0, i64 %671
  %673 = load i64, i64* %672, align 8
  %674 = call i32 @pthread_join(i64 %673, i8** null)
  %675 = sext i32 %674 to i64
  store i64 %675, i64* %39, align 8
  %676 = load i64, i64* %39, align 8
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %680

; <label>:678:                                    ; preds = %670
  %679 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

; <label>:680:                                    ; preds = %670
  br label %681

; <label>:681:                                    ; preds = %680
  %682 = load i64, i64* %38, align 8
  %683 = add i64 %682, 1
  store i64 %683, i64* %38, align 8
  br label %665

; <label>:684:                                    ; preds = %665
  %685 = call i32 @gettimeofday(%struct.timeval* %40, %struct.timezone* null) #7
  %686 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 1
  %687 = load i64, i64* %686, align 8
  %688 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0
  %689 = load i64, i64* %688, align 8
  %690 = mul nsw i64 %689, 1000000
  %691 = add nsw i64 %687, %690
  %692 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %693 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %692, i32 0, i32 16
  store i64 %691, i64* %693, align 8
  %694 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %695 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %694, i32 0, i32 15
  %696 = load i64, i64* %695, align 8
  %697 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i64 %696)
  %698 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %699 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %698, i32 0, i32 16
  %700 = load i64, i64* %699, align 8
  %701 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i64 %700)
  %702 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %703 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %702, i32 0, i32 16
  %704 = load i64, i64* %703, align 8
  %705 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %706 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %705, i32 0, i32 15
  %707 = load i64, i64* %706, align 8
  %708 = sub i64 %704, %707
  %709 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0), i64 %708)
  %710 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %711 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %710, i32 0, i32 19
  %712 = load i64, i64* %711, align 8
  %713 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i32 0, i32 0), i64 %712)
  %714 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %715 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %714, i32 0, i32 22
  %716 = load i64, i64* %715, align 8
  %717 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.31, i32 0, i32 0), i64 %716)
  %718 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %719 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %718, i32 0, i32 25
  %720 = load i64, i64* %719, align 8
  %721 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i32 0, i32 0), i64 %720)
  %722 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %723 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %722, i32 0, i32 19
  %724 = load i64, i64* %723, align 8
  %725 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %726 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %725, i32 0, i32 22
  %727 = load i64, i64* %726, align 8
  %728 = sub i64 %724, %727
  %729 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %730 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %729, i32 0, i32 25
  %731 = load i64, i64* %730, align 8
  %732 = sub i64 %728, %731
  %733 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0), i64 %732)
  %734 = load double, double* @XTT, align 8
  %735 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.34, i32 0, i32 0), double %734)
  call void @exit(i32 0) #6
  unreachable
                                                  ; No predecessors!
  %737 = load i32, i32* %3, align 4
  ret i32 %737
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @__isoc99_scanf(i8*, ...) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @CNSTNT(i64, double*) #2

declare void @SYSCNS() #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #4

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #4

declare void @INITIA() #2

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @WorkStart() #0 {
  %1 = alloca i64, align 8
  %2 = alloca double, align 8
  %3 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %4 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %3, i32 0, i32 1
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) #7
  %6 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %7 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %6, i32 0, i32 9
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  store i64 %8, i64* %1, align 8
  %10 = load %struct.GlobalMemory*, %struct.GlobalMemory** @gl, align 8
  %11 = getelementptr inbounds %struct.GlobalMemory, %struct.GlobalMemory* %10, i32 0, i32 1
  %12 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %11) #7
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @NumProcs, align 8
  %15 = srem i64 %13, %14
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* @NSTEP, align 8
  %17 = load i64, i64* @NPRINT, align 8
  %18 = load i64, i64* @NSAVE, align 8
  %19 = load i64, i64* @NORD1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = call double @MDMAIN(i64 %16, i64 %17, i64 %18, i64 %19, i64 %20)
  store double %21, double* %2, align 8
  %22 = load i64, i64* %1, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %0
  %25 = load double, double* %2, align 8
  store double %25, double* @XTT, align 8
  br label %26

; <label>:26:                                     ; preds = %24, %0
  ret void
}

declare i32 @pthread_join(i64, i8**) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #4

declare double @MDMAIN(i64, i64, i64, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
