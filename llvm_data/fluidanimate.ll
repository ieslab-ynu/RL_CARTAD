; ModuleID = 'pthreads.cpp'
source_filename = "pthreads.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.Vec3 = type { float, float, float }
%struct.cellpool = type { %struct.Cell*, i32, %struct.datablockhdr* }
%struct.Cell = type { [16 x %class.Vec3], [16 x %class.Vec3], [16 x %class.Vec3], [16 x %class.Vec3], [16 x float], %struct.Cell*, [56 x i8] }
%struct.datablockhdr = type { %struct.datablockhdr*, [120 x i8] }
%struct.Grid = type { %union.anon }
%union.anon = type { %struct.anon, [104 x i8] }
%struct.anon = type { i32, i32, i32, i32, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.pthread_mutex_t = type { %"struct.(anonymous union)::__pthread_mutex_s" }
%"struct.(anonymous union)::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.parsec_barrier_t = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32, i32, i32 }
%union.pthread_cond_t = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%"class.std::__basic_file" = type <{ %struct._IO_FILE*, i8, [7 x i8] }>
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon.1 }
%union.anon.1 = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base.base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base.base" = type { %"class.std::locale::facet.base" }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%union.pthread_mutexattr_t = type { i32 }
%union.anon.2 = type { i16 }
%union.__float_and_int = type { i32 }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%struct.__thread_args = type { i32, i32 }

$_ZN4Vec3C2Efff = comdat any

$_ZN4Vec3C2Ev = comdat any

$_ZNK4Vec3miERKS_ = comdat any

$_ZN4CellC2Ev = comdat any

$_ZNK4Vec311GetLengthSqEv = comdat any

$_ZSt3maxIfERKT_S2_S2_ = comdat any

$_ZNK4Vec3mlEf = comdat any

$_ZN4Vec3pLERKS_ = comdat any

$_ZN4Vec3dVEf = comdat any

$_ZN4Vec3mIERKS_ = comdat any

$_ZNK4Vec3plERKS_ = comdat any

$_ZN4Vec3mLEf = comdat any

$_ZSt4swapIP4CellEvRT_S3_ = comdat any

$_ZSt4swapIPiEvRT_S2_ = comdat any

$_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZL20externalAcceleration = internal global %class.Vec3 zeroinitializer, align 4
@_ZL9domainMin = internal global %class.Vec3 zeroinitializer, align 4
@_ZL9domainMax = internal global %class.Vec3 zeroinitializer, align 4
@pools = global %struct.cellpool* null, align 8
@restParticlesPerMeter = global float 0.000000e+00, align 4
@h = global float 0.000000e+00, align 4
@hSq = global float 0.000000e+00, align 4
@densityCoeff = global float 0.000000e+00, align 4
@pressureCoeff = global float 0.000000e+00, align 4
@viscosityCoeff = global float 0.000000e+00, align 4
@nx = global i32 0, align 4
@ny = global i32 0, align 4
@nz = global i32 0, align 4
@delta = global %class.Vec3 zeroinitializer, align 4
@numParticles = global i32 0, align 4
@numCells = global i32 0, align 4
@cells = global %struct.Cell* null, align 8
@cells2 = global %struct.Cell* null, align 8
@cnumPars = global i32* null, align 8
@cnumPars2 = global i32* null, align 8
@last_cells = global %struct.Cell** null, align 8
@XDIVS = global i32 1, align 4
@ZDIVS = global i32 1, align 4
@grids = global %struct.Grid* null, align 8
@border = global i8* null, align 8
@attr = global %union.pthread_attr_t zeroinitializer, align 8
@thread = global i64* null, align 8
@mutex = global %union.pthread_mutex_t** null, align 8
@barrier = global %struct.parsec_barrier_t zeroinitializer, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [39 x i8] c"Number of threads must be a power of 2\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"XDIVS * ZDIVS == threadnum\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"pthreads.cpp\00", align 1
@__PRETTY_FUNCTION__._Z7InitSimPKcj = private unnamed_addr constant [41 x i8] c"void InitSim(const char *, unsigned int)\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"Loading file \22\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\22...\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Error opening file. Aborting.\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"nx >= 1 && ny >= 1 && nz >= 1\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Number of cells: \00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"delta.x >= h && delta.y >= h && delta.z >= h\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Grids steps over x, y, z: \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"nx >= XDIVS && nz >= ZDIVS\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"sx < ex\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"sz < ez\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"gi == NUM_GRIDS\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"(rv0==0) && (rv1==0) && (rv2==0) && (rv3==0) && (rv4==0)\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Number of particles: \00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Saving file \22\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@__PRETTY_FUNCTION__._Z8SaveFilePKc = private unnamed_addr constant [28 x i8] c"void SaveFile(const char *)\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"count == numParticles\00", align 1
@_ZL8timeStep = internal global float 0x3F50624DE0000000, align 4
@.str.24 = private unnamed_addr constant [23 x i8] c"PARSEC Benchmark Suite\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Usage: \00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c" <threadnum> <framenum> <.fluid input file> [.fluid output file]\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"<threadnum> must at least be 1\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"<framenum> must at least be 1\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_pthreads.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
  call void @_ZN4Vec3C2Efff(%class.Vec3* @_ZL20externalAcceleration, float 0.000000e+00, float 0xC0239999A0000000, float 0.000000e+00)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN4Vec3C2Efff(%class.Vec3*, float, float, float) unnamed_addr #4 comdat align 2 {
  %5 = alloca %class.Vec3*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %class.Vec3* %0, %class.Vec3** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load %class.Vec3*, %class.Vec3** %5, align 8
  %10 = getelementptr inbounds %class.Vec3, %class.Vec3* %9, i32 0, i32 0
  %11 = load float, float* %6, align 4
  store float %11, float* %10, align 4
  %12 = getelementptr inbounds %class.Vec3, %class.Vec3* %9, i32 0, i32 1
  %13 = load float, float* %7, align 4
  store float %13, float* %12, align 4
  %14 = getelementptr inbounds %class.Vec3, %class.Vec3* %9, i32 0, i32 2
  %15 = load float, float* %8, align 4
  store float %15, float* %14, align 4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" {
  call void @_ZN4Vec3C2Efff(%class.Vec3* @_ZL9domainMin, float 0xBFB0A3D700000000, float 0xBFB47AE140000000, float 0xBFB0A3D700000000)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.3() #0 section ".text.startup" {
  call void @_ZN4Vec3C2Efff(%class.Vec3* @_ZL9domainMax, float 0x3FB0A3D700000000, float 0x3FB99999A0000000, float 0x3FB0A3D700000000)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.4() #0 section ".text.startup" {
  call void @_ZN4Vec3C2Ev(%class.Vec3* @delta)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN4Vec3C2Ev(%class.Vec3*) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.Vec3*, align 8
  store %class.Vec3* %0, %class.Vec3** %2, align 8
  %3 = load %class.Vec3*, %class.Vec3** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z9hmgweightjPi(i32, i32*) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  store i32 -1, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %31, %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %36

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %31

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %21
  br label %31

; <label>:31:                                     ; preds = %30, %13
  %32 = load i32, i32* %3, align 4
  %33 = lshr i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %10

; <label>:36:                                     ; preds = %10
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

; Function Attrs: noinline optnone uwtable
define void @_Z7InitSimPKcj(i8*, i32) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::basic_ifstream", align 8
  %7 = alloca i8*
  %8 = alloca i32
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %class.Vec3, align 4
  %17 = alloca { <2 x float>, float }, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  %48 = alloca float, align 4
  %49 = alloca float, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = alloca float, align 4
  %53 = alloca float, align 4
  %54 = alloca float, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca %struct.Cell*, align 8
  %61 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @_Z9hmgweightjPi(i32 %62, i32* %5)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %2
  %66 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %67 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %66, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @exit(i32 1) #13
  unreachable

; <label>:68:                                     ; preds = %2
  %69 = load i32, i32* %5, align 4
  %70 = sdiv i32 %69, 2
  %71 = shl i32 1, %70
  store i32 %71, i32* @XDIVS, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sdiv i32 %72, 2
  %74 = shl i32 1, %73
  store i32 %74, i32* @ZDIVS, align 4
  %75 = load i32, i32* @XDIVS, align 4
  %76 = load i32, i32* @ZDIVS, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %83

; <label>:80:                                     ; preds = %68
  %81 = load i32, i32* @XDIVS, align 4
  %82 = mul nsw i32 %81, 2
  store i32 %82, i32* @XDIVS, align 4
  br label %83

; <label>:83:                                     ; preds = %80, %68
  %84 = load i32, i32* @XDIVS, align 4
  %85 = load i32, i32* @ZDIVS, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %83
  br label %92

; <label>:90:                                     ; preds = %83
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__._Z7InitSimPKcj, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %92

; <label>:92:                                     ; preds = %91, %89
  %93 = load i32, i32* @XDIVS, align 4
  %94 = load i32, i32* @ZDIVS, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %96, i64 8)
  %98 = extractvalue { i64, i1 } %97, 1
  %99 = extractvalue { i64, i1 } %97, 0
  %100 = select i1 %98, i64 -1, i64 %99
  %101 = call i8* @_Znam(i64 %100) #14
  %102 = bitcast i8* %101 to i64*
  store i64* %102, i64** @thread, align 8
  %103 = load i32, i32* @XDIVS, align 4
  %104 = load i32, i32* @ZDIVS, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %106, i64 128)
  %108 = extractvalue { i64, i1 } %107, 1
  %109 = extractvalue { i64, i1 } %107, 0
  %110 = select i1 %108, i64 -1, i64 %109
  %111 = call i8* @_Znam(i64 %110) #14
  %112 = bitcast i8* %111 to %struct.Grid*
  store %struct.Grid* %112, %struct.Grid** @grids, align 8
  %113 = load i32, i32* @XDIVS, align 4
  %114 = load i32, i32* @ZDIVS, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %116, i64 24)
  %118 = extractvalue { i64, i1 } %117, 1
  %119 = extractvalue { i64, i1 } %117, 0
  %120 = select i1 %118, i64 -1, i64 %119
  %121 = call i8* @_Znam(i64 %120) #14
  %122 = bitcast i8* %121 to %struct.cellpool*
  store %struct.cellpool* %122, %struct.cellpool** @pools, align 8
  %123 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  %124 = load i8*, i8** %3, align 8
  %125 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %123, i8* %124)
  %126 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %127 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %126, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %128 = load i8*, i8** %3, align 8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"* %6, i8* %128, i32 4)
  %129 = bitcast %"class.std::basic_ifstream"* %6 to i8**
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr i8, i8* %130, i64 -24
  %132 = bitcast i8* %131 to i64*
  %133 = load i64, i64* %132, align 8
  %134 = bitcast %"class.std::basic_ifstream"* %6 to i8*
  %135 = getelementptr inbounds i8, i8* %134, i64 %133
  %136 = bitcast i8* %135 to %"class.std::basic_ios"*
  %137 = invoke zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(%"class.std::basic_ios"* %136)
          to label %138 unwind label %144

; <label>:138:                                    ; preds = %92
  br i1 %137, label %139, label %148

; <label>:139:                                    ; preds = %138
  %140 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
          to label %141 unwind label %144

; <label>:141:                                    ; preds = %139
  %142 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %140, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %143 unwind label %144

; <label>:143:                                    ; preds = %141
  call void @exit(i32 1) #13
  unreachable

; <label>:144:                                    ; preds = %1111, %1108, %1106, %1013, %913, %910, %907, %904, %901, %898, %895, %892, %889, %885, %881, %877, %873, %869, %865, %861, %857, %853, %849, %828, %821, %773, %730, %714, %455, %326, %323, %321, %318, %316, %313, %311, %279, %276, %269, %191, %177, %163, %160, %156, %152, %148, %141, %139, %92
  %145 = landingpad { i8*, i32 }
          cleanup
  %146 = extractvalue { i8*, i32 } %145, 0
  store i8* %146, i8** %7, align 8
  %147 = extractvalue { i8*, i32 } %145, 1
  store i32 %147, i32* %8, align 4
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %6) #3
  br label %1114

; <label>:148:                                    ; preds = %138
  %149 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %150 = bitcast float* %9 to i8*
  %151 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %149, i8* %150, i64 4)
          to label %152 unwind label %144

; <label>:152:                                    ; preds = %148
  %153 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %154 = bitcast i32* %10 to i8*
  %155 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %153, i8* %154, i64 4)
          to label %156 unwind label %144

; <label>:156:                                    ; preds = %152
  %157 = invoke i32 @_ZL14isLittleEndianv()
          to label %158 unwind label %144

; <label>:158:                                    ; preds = %156
  %159 = icmp ne i32 %157, 0
  br i1 %159, label %167, label %160

; <label>:160:                                    ; preds = %158
  %161 = load float, float* %9, align 4
  %162 = invoke float @_ZL11bswap_floatf(float %161)
          to label %163 unwind label %144

; <label>:163:                                    ; preds = %160
  store float %162, float* @restParticlesPerMeter, align 4
  %164 = load i32, i32* %10, align 4
  %165 = invoke i32 @_ZL11bswap_int32i(i32 %164)
          to label %166 unwind label %144

; <label>:166:                                    ; preds = %163
  store i32 %165, i32* @numParticles, align 4
  br label %170

; <label>:167:                                    ; preds = %158
  %168 = load float, float* %9, align 4
  store float %168, float* @restParticlesPerMeter, align 4
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* @numParticles, align 4
  br label %170

; <label>:170:                                    ; preds = %167, %166
  store i32 0, i32* %11, align 4
  br label %171

; <label>:171:                                    ; preds = %188, %170
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @XDIVS, align 4
  %174 = load i32, i32* @ZDIVS, align 4
  %175 = mul nsw i32 %173, %174
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %191

; <label>:177:                                    ; preds = %171
  %178 = load %struct.cellpool*, %struct.cellpool** @pools, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.cellpool, %struct.cellpool* %178, i64 %180
  %182 = load i32, i32* @numParticles, align 4
  %183 = load i32, i32* @XDIVS, align 4
  %184 = load i32, i32* @ZDIVS, align 4
  %185 = mul nsw i32 %183, %184
  %186 = sdiv i32 %182, %185
  invoke void @_Z13cellpool_initP8cellpooli(%struct.cellpool* %181, i32 %186)
          to label %187 unwind label %144

; <label>:187:                                    ; preds = %177
  br label %188

; <label>:188:                                    ; preds = %187
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %171

; <label>:191:                                    ; preds = %171
  %192 = load float, float* @restParticlesPerMeter, align 4
  %193 = fdiv float 0x3FFB1EB860000000, %192
  store float %193, float* @h, align 4
  %194 = load float, float* @h, align 4
  %195 = load float, float* @h, align 4
  %196 = fmul float %194, %195
  store float %196, float* @hSq, align 4
  %197 = load float, float* @h, align 4
  %198 = call float @powf(float %197, float 9.000000e+00) #3
  %199 = fpext float %198 to double
  %200 = fmul double 0x406921FB60000000, %199
  %201 = fdiv double 3.150000e+02, %200
  %202 = fptrunc double %201 to float
  store float %202, float* %12, align 4
  %203 = load float, float* @h, align 4
  %204 = call float @powf(float %203, float 6.000000e+00) #3
  %205 = fmul float 0x400921FB60000000, %204
  %206 = fpext float %205 to double
  %207 = fdiv double 1.500000e+01, %206
  %208 = fptrunc double %207 to float
  store float %208, float* %13, align 4
  %209 = load float, float* @h, align 4
  %210 = call float @powf(float %209, float 6.000000e+00) #3
  %211 = fmul float 0x400921FB60000000, %210
  %212 = fpext float %211 to double
  %213 = fdiv double 4.500000e+01, %212
  %214 = fptrunc double %213 to float
  store float %214, float* %14, align 4
  %215 = load float, float* @restParticlesPerMeter, align 4
  %216 = load float, float* @restParticlesPerMeter, align 4
  %217 = fmul float %215, %216
  %218 = load float, float* @restParticlesPerMeter, align 4
  %219 = fmul float %217, %218
  %220 = fpext float %219 to double
  %221 = fdiv double 1.000000e+03, %220
  %222 = fptrunc double %221 to float
  store float %222, float* %15, align 4
  %223 = load float, float* %15, align 4
  %224 = load float, float* %12, align 4
  %225 = fmul float %223, %224
  store float %225, float* @densityCoeff, align 4
  %226 = load float, float* %13, align 4
  %227 = fpext float %226 to double
  %228 = fmul double 3.000000e+00, %227
  %229 = fmul double %228, 5.000000e-01
  %230 = fmul double %229, 3.000000e+00
  %231 = load float, float* %15, align 4
  %232 = fpext float %231 to double
  %233 = fmul double %230, %232
  %234 = fptrunc double %233 to float
  store float %234, float* @pressureCoeff, align 4
  %235 = load float, float* %14, align 4
  %236 = fmul float 0x3FD99999A0000000, %235
  %237 = load float, float* %15, align 4
  %238 = fmul float %236, %237
  store float %238, float* @viscosityCoeff, align 4
  %239 = invoke { <2 x float>, float } @_ZNK4Vec3miERKS_(%class.Vec3* @_ZL9domainMax, %class.Vec3* dereferenceable(12) @_ZL9domainMin)
          to label %240 unwind label %144

; <label>:240:                                    ; preds = %191
  store { <2 x float>, float } %239, { <2 x float>, float }* %17, align 8
  %241 = bitcast { <2 x float>, float }* %17 to i8*
  %242 = bitcast %class.Vec3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* %241, i64 12, i32 4, i1 false)
  %243 = getelementptr inbounds %class.Vec3, %class.Vec3* %16, i32 0, i32 0
  %244 = load float, float* %243, align 4
  %245 = load float, float* @h, align 4
  %246 = fdiv float %244, %245
  %247 = fptosi float %246 to i32
  store i32 %247, i32* @nx, align 4
  %248 = getelementptr inbounds %class.Vec3, %class.Vec3* %16, i32 0, i32 1
  %249 = load float, float* %248, align 4
  %250 = load float, float* @h, align 4
  %251 = fdiv float %249, %250
  %252 = fptosi float %251 to i32
  store i32 %252, i32* @ny, align 4
  %253 = getelementptr inbounds %class.Vec3, %class.Vec3* %16, i32 0, i32 2
  %254 = load float, float* %253, align 4
  %255 = load float, float* @h, align 4
  %256 = fdiv float %254, %255
  %257 = fptosi float %256 to i32
  store i32 %257, i32* @nz, align 4
  %258 = load i32, i32* @nx, align 4
  %259 = icmp sge i32 %258, 1
  br i1 %259, label %260, label %267

; <label>:260:                                    ; preds = %240
  %261 = load i32, i32* @ny, align 4
  %262 = icmp sge i32 %261, 1
  br i1 %262, label %263, label %267

; <label>:263:                                    ; preds = %260
  %264 = load i32, i32* @nz, align 4
  %265 = icmp sge i32 %264, 1
  br i1 %265, label %266, label %267

; <label>:266:                                    ; preds = %263
  br label %269

; <label>:267:                                    ; preds = %263, %260, %240
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 184, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__._Z7InitSimPKcj, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %269

; <label>:269:                                    ; preds = %268, %266
  %270 = load i32, i32* @nx, align 4
  %271 = load i32, i32* @ny, align 4
  %272 = mul nsw i32 %270, %271
  %273 = load i32, i32* @nz, align 4
  %274 = mul nsw i32 %272, %273
  store i32 %274, i32* @numCells, align 4
  %275 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
          to label %276 unwind label %144

; <label>:276:                                    ; preds = %269
  %277 = load i32, i32* @numCells, align 4
  %278 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %275, i32 %277)
          to label %279 unwind label %144

; <label>:279:                                    ; preds = %276
  %280 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %278, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %281 unwind label %144

; <label>:281:                                    ; preds = %279
  %282 = getelementptr inbounds %class.Vec3, %class.Vec3* %16, i32 0, i32 0
  %283 = load float, float* %282, align 4
  %284 = load i32, i32* @nx, align 4
  %285 = sitofp i32 %284 to float
  %286 = fdiv float %283, %285
  store float %286, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 0), align 4
  %287 = getelementptr inbounds %class.Vec3, %class.Vec3* %16, i32 0, i32 1
  %288 = load float, float* %287, align 4
  %289 = load i32, i32* @ny, align 4
  %290 = sitofp i32 %289 to float
  %291 = fdiv float %288, %290
  store float %291, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 1), align 4
  %292 = getelementptr inbounds %class.Vec3, %class.Vec3* %16, i32 0, i32 2
  %293 = load float, float* %292, align 4
  %294 = load i32, i32* @nz, align 4
  %295 = sitofp i32 %294 to float
  %296 = fdiv float %293, %295
  store float %296, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 2), align 4
  %297 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 0), align 4
  %298 = load float, float* @h, align 4
  %299 = fcmp oge float %297, %298
  br i1 %299, label %300, label %309

; <label>:300:                                    ; preds = %281
  %301 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 1), align 4
  %302 = load float, float* @h, align 4
  %303 = fcmp oge float %301, %302
  br i1 %303, label %304, label %309

; <label>:304:                                    ; preds = %300
  %305 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 2), align 4
  %306 = load float, float* @h, align 4
  %307 = fcmp oge float %305, %306
  br i1 %307, label %308, label %309

; <label>:308:                                    ; preds = %304
  br label %311

; <label>:309:                                    ; preds = %304, %300, %281
  call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 190, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__._Z7InitSimPKcj, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %311

; <label>:311:                                    ; preds = %310, %308
  %312 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
          to label %313 unwind label %144

; <label>:313:                                    ; preds = %311
  %314 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 0), align 4
  %315 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %312, float %314)
          to label %316 unwind label %144

; <label>:316:                                    ; preds = %313
  %317 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %315, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
          to label %318 unwind label %144

; <label>:318:                                    ; preds = %316
  %319 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 1), align 4
  %320 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %317, float %319)
          to label %321 unwind label %144

; <label>:321:                                    ; preds = %318
  %322 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %320, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
          to label %323 unwind label %144

; <label>:323:                                    ; preds = %321
  %324 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 2), align 4
  %325 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %322, float %324)
          to label %326 unwind label %144

; <label>:326:                                    ; preds = %323
  %327 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %325, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %328 unwind label %144

; <label>:328:                                    ; preds = %326
  %329 = load i32, i32* @nx, align 4
  %330 = load i32, i32* @XDIVS, align 4
  %331 = icmp sge i32 %329, %330
  br i1 %331, label %332, label %337

; <label>:332:                                    ; preds = %328
  %333 = load i32, i32* @nz, align 4
  %334 = load i32, i32* @ZDIVS, align 4
  %335 = icmp sge i32 %333, %334
  br i1 %335, label %336, label %337

; <label>:336:                                    ; preds = %332
  br label %339

; <label>:337:                                    ; preds = %332, %328
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__._Z7InitSimPKcj, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %339

; <label>:339:                                    ; preds = %338, %336
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  br label %340

; <label>:340:                                    ; preds = %443, %339
  %341 = load i32, i32* %23, align 4
  %342 = load i32, i32* @XDIVS, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %446

; <label>:344:                                    ; preds = %340
  %345 = load i32, i32* %21, align 4
  store i32 %345, i32* %19, align 4
  %346 = load i32, i32* @nx, align 4
  %347 = sitofp i32 %346 to float
  %348 = load i32, i32* @XDIVS, align 4
  %349 = sitofp i32 %348 to float
  %350 = fdiv float %347, %349
  %351 = load i32, i32* %23, align 4
  %352 = add nsw i32 %351, 1
  %353 = sitofp i32 %352 to float
  %354 = fmul float %350, %353
  %355 = fpext float %354 to double
  %356 = fadd double %355, 5.000000e-01
  %357 = fptosi double %356 to i32
  store i32 %357, i32* %21, align 4
  %358 = load i32, i32* %19, align 4
  %359 = load i32, i32* %21, align 4
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %361, label %362

; <label>:361:                                    ; preds = %344
  br label %364

; <label>:362:                                    ; preds = %344
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 202, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__._Z7InitSimPKcj, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %364

; <label>:364:                                    ; preds = %363, %361
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %365

; <label>:365:                                    ; preds = %437, %364
  %366 = load i32, i32* %24, align 4
  %367 = load i32, i32* @ZDIVS, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %442

; <label>:369:                                    ; preds = %365
  %370 = load i32, i32* %22, align 4
  store i32 %370, i32* %20, align 4
  %371 = load i32, i32* @nz, align 4
  %372 = sitofp i32 %371 to float
  %373 = load i32, i32* @ZDIVS, align 4
  %374 = sitofp i32 %373 to float
  %375 = fdiv float %372, %374
  %376 = load i32, i32* %24, align 4
  %377 = add nsw i32 %376, 1
  %378 = sitofp i32 %377 to float
  %379 = fmul float %375, %378
  %380 = fpext float %379 to double
  %381 = fadd double %380, 5.000000e-01
  %382 = fptosi double %381 to i32
  store i32 %382, i32* %22, align 4
  %383 = load i32, i32* %20, align 4
  %384 = load i32, i32* %22, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %386, label %387

; <label>:386:                                    ; preds = %369
  br label %389

; <label>:387:                                    ; preds = %369
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 209, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__._Z7InitSimPKcj, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %389

; <label>:389:                                    ; preds = %388, %386
  %390 = load i32, i32* %19, align 4
  %391 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %392 = load i32, i32* %18, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.Grid, %struct.Grid* %391, i64 %393
  %395 = getelementptr inbounds %struct.Grid, %struct.Grid* %394, i32 0, i32 0
  %396 = bitcast %union.anon* %395 to %struct.anon*
  %397 = getelementptr inbounds %struct.anon, %struct.anon* %396, i32 0, i32 0
  store i32 %390, i32* %397, align 4
  %398 = load i32, i32* %21, align 4
  %399 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %400 = load i32, i32* %18, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.Grid, %struct.Grid* %399, i64 %401
  %403 = getelementptr inbounds %struct.Grid, %struct.Grid* %402, i32 0, i32 0
  %404 = bitcast %union.anon* %403 to %struct.anon*
  %405 = getelementptr inbounds %struct.anon, %struct.anon* %404, i32 0, i32 3
  store i32 %398, i32* %405, align 4
  %406 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %407 = load i32, i32* %18, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.Grid, %struct.Grid* %406, i64 %408
  %410 = getelementptr inbounds %struct.Grid, %struct.Grid* %409, i32 0, i32 0
  %411 = bitcast %union.anon* %410 to %struct.anon*
  %412 = getelementptr inbounds %struct.anon, %struct.anon* %411, i32 0, i32 1
  store i32 0, i32* %412, align 4
  %413 = load i32, i32* @ny, align 4
  %414 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %415 = load i32, i32* %18, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.Grid, %struct.Grid* %414, i64 %416
  %418 = getelementptr inbounds %struct.Grid, %struct.Grid* %417, i32 0, i32 0
  %419 = bitcast %union.anon* %418 to %struct.anon*
  %420 = getelementptr inbounds %struct.anon, %struct.anon* %419, i32 0, i32 4
  store i32 %413, i32* %420, align 4
  %421 = load i32, i32* %20, align 4
  %422 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %423 = load i32, i32* %18, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.Grid, %struct.Grid* %422, i64 %424
  %426 = getelementptr inbounds %struct.Grid, %struct.Grid* %425, i32 0, i32 0
  %427 = bitcast %union.anon* %426 to %struct.anon*
  %428 = getelementptr inbounds %struct.anon, %struct.anon* %427, i32 0, i32 2
  store i32 %421, i32* %428, align 4
  %429 = load i32, i32* %22, align 4
  %430 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %431 = load i32, i32* %18, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.Grid, %struct.Grid* %430, i64 %432
  %434 = getelementptr inbounds %struct.Grid, %struct.Grid* %433, i32 0, i32 0
  %435 = bitcast %union.anon* %434 to %struct.anon*
  %436 = getelementptr inbounds %struct.anon, %struct.anon* %435, i32 0, i32 5
  store i32 %429, i32* %436, align 4
  br label %437

; <label>:437:                                    ; preds = %389
  %438 = load i32, i32* %24, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %24, align 4
  %440 = load i32, i32* %18, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %18, align 4
  br label %365

; <label>:442:                                    ; preds = %365
  br label %443

; <label>:443:                                    ; preds = %442
  %444 = load i32, i32* %23, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %23, align 4
  br label %340

; <label>:446:                                    ; preds = %340
  %447 = load i32, i32* %18, align 4
  %448 = load i32, i32* @XDIVS, align 4
  %449 = load i32, i32* @ZDIVS, align 4
  %450 = mul nsw i32 %448, %449
  %451 = icmp eq i32 %447, %450
  br i1 %451, label %452, label %453

; <label>:452:                                    ; preds = %446
  br label %455

; <label>:453:                                    ; preds = %446
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__._Z7InitSimPKcj, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %455

; <label>:455:                                    ; preds = %454, %452
  %456 = load i32, i32* @numCells, align 4
  %457 = sext i32 %456 to i64
  %458 = invoke i8* @_Znam(i64 %457) #14
          to label %459 unwind label %144

; <label>:459:                                    ; preds = %455
  store i8* %458, i8** @border, align 8
  store i32 0, i32* %25, align 4
  br label %460

; <label>:460:                                    ; preds = %711, %459
  %461 = load i32, i32* %25, align 4
  %462 = load i32, i32* @XDIVS, align 4
  %463 = load i32, i32* @ZDIVS, align 4
  %464 = mul nsw i32 %462, %463
  %465 = icmp slt i32 %461, %464
  br i1 %465, label %466, label %714

; <label>:466:                                    ; preds = %460
  %467 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %468 = load i32, i32* %25, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.Grid, %struct.Grid* %467, i64 %469
  %471 = getelementptr inbounds %struct.Grid, %struct.Grid* %470, i32 0, i32 0
  %472 = bitcast %union.anon* %471 to %struct.anon*
  %473 = getelementptr inbounds %struct.anon, %struct.anon* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 4
  store i32 %474, i32* %26, align 4
  br label %475

; <label>:475:                                    ; preds = %707, %466
  %476 = load i32, i32* %26, align 4
  %477 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %478 = load i32, i32* %25, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.Grid, %struct.Grid* %477, i64 %479
  %481 = getelementptr inbounds %struct.Grid, %struct.Grid* %480, i32 0, i32 0
  %482 = bitcast %union.anon* %481 to %struct.anon*
  %483 = getelementptr inbounds %struct.anon, %struct.anon* %482, i32 0, i32 5
  %484 = load i32, i32* %483, align 4
  %485 = icmp slt i32 %476, %484
  br i1 %485, label %486, label %710

; <label>:486:                                    ; preds = %475
  %487 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %488 = load i32, i32* %25, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.Grid, %struct.Grid* %487, i64 %489
  %491 = getelementptr inbounds %struct.Grid, %struct.Grid* %490, i32 0, i32 0
  %492 = bitcast %union.anon* %491 to %struct.anon*
  %493 = getelementptr inbounds %struct.anon, %struct.anon* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  store i32 %494, i32* %27, align 4
  br label %495

; <label>:495:                                    ; preds = %703, %486
  %496 = load i32, i32* %27, align 4
  %497 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %498 = load i32, i32* %25, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.Grid, %struct.Grid* %497, i64 %499
  %501 = getelementptr inbounds %struct.Grid, %struct.Grid* %500, i32 0, i32 0
  %502 = bitcast %union.anon* %501 to %struct.anon*
  %503 = getelementptr inbounds %struct.anon, %struct.anon* %502, i32 0, i32 4
  %504 = load i32, i32* %503, align 4
  %505 = icmp slt i32 %496, %504
  br i1 %505, label %506, label %706

; <label>:506:                                    ; preds = %495
  %507 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %508 = load i32, i32* %25, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.Grid, %struct.Grid* %507, i64 %509
  %511 = getelementptr inbounds %struct.Grid, %struct.Grid* %510, i32 0, i32 0
  %512 = bitcast %union.anon* %511 to %struct.anon*
  %513 = getelementptr inbounds %struct.anon, %struct.anon* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  store i32 %514, i32* %28, align 4
  br label %515

; <label>:515:                                    ; preds = %699, %506
  %516 = load i32, i32* %28, align 4
  %517 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %518 = load i32, i32* %25, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.Grid, %struct.Grid* %517, i64 %519
  %521 = getelementptr inbounds %struct.Grid, %struct.Grid* %520, i32 0, i32 0
  %522 = bitcast %union.anon* %521 to %struct.anon*
  %523 = getelementptr inbounds %struct.anon, %struct.anon* %522, i32 0, i32 3
  %524 = load i32, i32* %523, align 4
  %525 = icmp slt i32 %516, %524
  br i1 %525, label %526, label %702

; <label>:526:                                    ; preds = %515
  %527 = load i32, i32* %26, align 4
  %528 = load i32, i32* @ny, align 4
  %529 = mul nsw i32 %527, %528
  %530 = load i32, i32* %27, align 4
  %531 = add nsw i32 %529, %530
  %532 = load i32, i32* @nx, align 4
  %533 = mul nsw i32 %531, %532
  %534 = load i32, i32* %28, align 4
  %535 = add nsw i32 %533, %534
  store i32 %535, i32* %29, align 4
  %536 = load i8*, i8** @border, align 8
  %537 = load i32, i32* %29, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8, i8* %536, i64 %538
  store i8 0, i8* %539, align 1
  store i32 -1, i32* %30, align 4
  br label %540

; <label>:540:                                    ; preds = %695, %526
  %541 = load i32, i32* %30, align 4
  %542 = icmp sle i32 %541, 1
  br i1 %542, label %543, label %698

; <label>:543:                                    ; preds = %540
  store i32 -1, i32* %31, align 4
  br label %544

; <label>:544:                                    ; preds = %683, %543
  %545 = load i32, i32* %31, align 4
  %546 = icmp sle i32 %545, 1
  br i1 %546, label %547, label %686

; <label>:547:                                    ; preds = %544
  store i32 -1, i32* %32, align 4
  br label %548

; <label>:548:                                    ; preds = %671, %547
  %549 = load i32, i32* %32, align 4
  %550 = icmp sle i32 %549, 1
  br i1 %550, label %551, label %674

; <label>:551:                                    ; preds = %548
  %552 = load i32, i32* %28, align 4
  %553 = load i32, i32* %32, align 4
  %554 = add nsw i32 %552, %553
  store i32 %554, i32* %33, align 4
  %555 = load i32, i32* %27, align 4
  %556 = load i32, i32* %31, align 4
  %557 = add nsw i32 %555, %556
  store i32 %557, i32* %34, align 4
  %558 = load i32, i32* %26, align 4
  %559 = load i32, i32* %30, align 4
  %560 = add nsw i32 %558, %559
  store i32 %560, i32* %35, align 4
  %561 = load i32, i32* %33, align 4
  %562 = icmp slt i32 %561, 0
  br i1 %562, label %563, label %564

; <label>:563:                                    ; preds = %551
  store i32 0, i32* %33, align 4
  br label %573

; <label>:564:                                    ; preds = %551
  %565 = load i32, i32* %33, align 4
  %566 = load i32, i32* @nx, align 4
  %567 = sub nsw i32 %566, 1
  %568 = icmp sgt i32 %565, %567
  br i1 %568, label %569, label %572

; <label>:569:                                    ; preds = %564
  %570 = load i32, i32* @nx, align 4
  %571 = sub nsw i32 %570, 1
  store i32 %571, i32* %33, align 4
  br label %572

; <label>:572:                                    ; preds = %569, %564
  br label %573

; <label>:573:                                    ; preds = %572, %563
  %574 = load i32, i32* %34, align 4
  %575 = icmp slt i32 %574, 0
  br i1 %575, label %576, label %577

; <label>:576:                                    ; preds = %573
  store i32 0, i32* %34, align 4
  br label %586

; <label>:577:                                    ; preds = %573
  %578 = load i32, i32* %34, align 4
  %579 = load i32, i32* @ny, align 4
  %580 = sub nsw i32 %579, 1
  %581 = icmp sgt i32 %578, %580
  br i1 %581, label %582, label %585

; <label>:582:                                    ; preds = %577
  %583 = load i32, i32* @ny, align 4
  %584 = sub nsw i32 %583, 1
  store i32 %584, i32* %34, align 4
  br label %585

; <label>:585:                                    ; preds = %582, %577
  br label %586

; <label>:586:                                    ; preds = %585, %576
  %587 = load i32, i32* %35, align 4
  %588 = icmp slt i32 %587, 0
  br i1 %588, label %589, label %590

; <label>:589:                                    ; preds = %586
  store i32 0, i32* %35, align 4
  br label %599

; <label>:590:                                    ; preds = %586
  %591 = load i32, i32* %35, align 4
  %592 = load i32, i32* @nz, align 4
  %593 = sub nsw i32 %592, 1
  %594 = icmp sgt i32 %591, %593
  br i1 %594, label %595, label %598

; <label>:595:                                    ; preds = %590
  %596 = load i32, i32* @nz, align 4
  %597 = sub nsw i32 %596, 1
  store i32 %597, i32* %35, align 4
  br label %598

; <label>:598:                                    ; preds = %595, %590
  br label %599

; <label>:599:                                    ; preds = %598, %589
  %600 = load i32, i32* %33, align 4
  %601 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %602 = load i32, i32* %25, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.Grid, %struct.Grid* %601, i64 %603
  %605 = getelementptr inbounds %struct.Grid, %struct.Grid* %604, i32 0, i32 0
  %606 = bitcast %union.anon* %605 to %struct.anon*
  %607 = getelementptr inbounds %struct.anon, %struct.anon* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 4
  %609 = icmp slt i32 %600, %608
  br i1 %609, label %665, label %610

; <label>:610:                                    ; preds = %599
  %611 = load i32, i32* %33, align 4
  %612 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %613 = load i32, i32* %25, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds %struct.Grid, %struct.Grid* %612, i64 %614
  %616 = getelementptr inbounds %struct.Grid, %struct.Grid* %615, i32 0, i32 0
  %617 = bitcast %union.anon* %616 to %struct.anon*
  %618 = getelementptr inbounds %struct.anon, %struct.anon* %617, i32 0, i32 3
  %619 = load i32, i32* %618, align 4
  %620 = icmp sge i32 %611, %619
  br i1 %620, label %665, label %621

; <label>:621:                                    ; preds = %610
  %622 = load i32, i32* %34, align 4
  %623 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %624 = load i32, i32* %25, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds %struct.Grid, %struct.Grid* %623, i64 %625
  %627 = getelementptr inbounds %struct.Grid, %struct.Grid* %626, i32 0, i32 0
  %628 = bitcast %union.anon* %627 to %struct.anon*
  %629 = getelementptr inbounds %struct.anon, %struct.anon* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = icmp slt i32 %622, %630
  br i1 %631, label %665, label %632

; <label>:632:                                    ; preds = %621
  %633 = load i32, i32* %34, align 4
  %634 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %635 = load i32, i32* %25, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.Grid, %struct.Grid* %634, i64 %636
  %638 = getelementptr inbounds %struct.Grid, %struct.Grid* %637, i32 0, i32 0
  %639 = bitcast %union.anon* %638 to %struct.anon*
  %640 = getelementptr inbounds %struct.anon, %struct.anon* %639, i32 0, i32 4
  %641 = load i32, i32* %640, align 4
  %642 = icmp sge i32 %633, %641
  br i1 %642, label %665, label %643

; <label>:643:                                    ; preds = %632
  %644 = load i32, i32* %35, align 4
  %645 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %646 = load i32, i32* %25, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.Grid, %struct.Grid* %645, i64 %647
  %649 = getelementptr inbounds %struct.Grid, %struct.Grid* %648, i32 0, i32 0
  %650 = bitcast %union.anon* %649 to %struct.anon*
  %651 = getelementptr inbounds %struct.anon, %struct.anon* %650, i32 0, i32 2
  %652 = load i32, i32* %651, align 4
  %653 = icmp slt i32 %644, %652
  br i1 %653, label %665, label %654

; <label>:654:                                    ; preds = %643
  %655 = load i32, i32* %35, align 4
  %656 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %657 = load i32, i32* %25, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds %struct.Grid, %struct.Grid* %656, i64 %658
  %660 = getelementptr inbounds %struct.Grid, %struct.Grid* %659, i32 0, i32 0
  %661 = bitcast %union.anon* %660 to %struct.anon*
  %662 = getelementptr inbounds %struct.anon, %struct.anon* %661, i32 0, i32 5
  %663 = load i32, i32* %662, align 4
  %664 = icmp sge i32 %655, %663
  br i1 %664, label %665, label %670

; <label>:665:                                    ; preds = %654, %643, %632, %621, %610, %599
  %666 = load i8*, i8** @border, align 8
  %667 = load i32, i32* %29, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i8, i8* %666, i64 %668
  store i8 1, i8* %669, align 1
  br label %674

; <label>:670:                                    ; preds = %654
  br label %671

; <label>:671:                                    ; preds = %670
  %672 = load i32, i32* %32, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* %32, align 4
  br label %548

; <label>:674:                                    ; preds = %665, %548
  %675 = load i8*, i8** @border, align 8
  %676 = load i32, i32* %29, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i8, i8* %675, i64 %677
  %679 = load i8, i8* %678, align 1
  %680 = trunc i8 %679 to i1
  br i1 %680, label %681, label %682

; <label>:681:                                    ; preds = %674
  br label %686

; <label>:682:                                    ; preds = %674
  br label %683

; <label>:683:                                    ; preds = %682
  %684 = load i32, i32* %31, align 4
  %685 = add nsw i32 %684, 1
  store i32 %685, i32* %31, align 4
  br label %544

; <label>:686:                                    ; preds = %681, %544
  %687 = load i8*, i8** @border, align 8
  %688 = load i32, i32* %29, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i8, i8* %687, i64 %689
  %691 = load i8, i8* %690, align 1
  %692 = trunc i8 %691 to i1
  br i1 %692, label %693, label %694

; <label>:693:                                    ; preds = %686
  br label %698

; <label>:694:                                    ; preds = %686
  br label %695

; <label>:695:                                    ; preds = %694
  %696 = load i32, i32* %30, align 4
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %30, align 4
  br label %540

; <label>:698:                                    ; preds = %693, %540
  br label %699

; <label>:699:                                    ; preds = %698
  %700 = load i32, i32* %28, align 4
  %701 = add nsw i32 %700, 1
  store i32 %701, i32* %28, align 4
  br label %515

; <label>:702:                                    ; preds = %515
  br label %703

; <label>:703:                                    ; preds = %702
  %704 = load i32, i32* %27, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %27, align 4
  br label %495

; <label>:706:                                    ; preds = %495
  br label %707

; <label>:707:                                    ; preds = %706
  %708 = load i32, i32* %26, align 4
  %709 = add nsw i32 %708, 1
  store i32 %709, i32* %26, align 4
  br label %475

; <label>:710:                                    ; preds = %475
  br label %711

; <label>:711:                                    ; preds = %710
  %712 = load i32, i32* %25, align 4
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %25, align 4
  br label %460

; <label>:714:                                    ; preds = %460
  %715 = call i32 @pthread_attr_init(%union.pthread_attr_t* @attr) #3
  %716 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* @attr, i32 0) #3
  %717 = load i32, i32* @numCells, align 4
  %718 = sext i32 %717 to i64
  %719 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %718, i64 8)
  %720 = extractvalue { i64, i1 } %719, 1
  %721 = extractvalue { i64, i1 } %719, 0
  %722 = select i1 %720, i64 -1, i64 %721
  %723 = invoke i8* @_Znam(i64 %722) #14
          to label %724 unwind label %144

; <label>:724:                                    ; preds = %714
  %725 = bitcast i8* %723 to %union.pthread_mutex_t**
  store %union.pthread_mutex_t** %725, %union.pthread_mutex_t*** @mutex, align 8
  store i32 0, i32* %36, align 4
  br label %726

; <label>:726:                                    ; preds = %770, %724
  %727 = load i32, i32* %36, align 4
  %728 = load i32, i32* @numCells, align 4
  %729 = icmp slt i32 %727, %728
  br i1 %729, label %730, label %773

; <label>:730:                                    ; preds = %726
  %731 = load i8*, i8** @border, align 8
  %732 = load i32, i32* %36, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds i8, i8* %731, i64 %733
  %735 = load i8, i8* %734, align 1
  %736 = trunc i8 %735 to i1
  %737 = zext i1 %736 to i64
  %738 = select i1 %736, i32 128, i32 1
  store i32 %738, i32* %37, align 4
  %739 = load i32, i32* %37, align 4
  %740 = sext i32 %739 to i64
  %741 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %740, i64 40)
  %742 = extractvalue { i64, i1 } %741, 1
  %743 = extractvalue { i64, i1 } %741, 0
  %744 = select i1 %742, i64 -1, i64 %743
  %745 = invoke i8* @_Znam(i64 %744) #14
          to label %746 unwind label %144

; <label>:746:                                    ; preds = %730
  %747 = bitcast i8* %745 to %union.pthread_mutex_t*
  %748 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %749 = load i32, i32* %36, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %748, i64 %750
  store %union.pthread_mutex_t* %747, %union.pthread_mutex_t** %751, align 8
  store i32 0, i32* %38, align 4
  br label %752

; <label>:752:                                    ; preds = %766, %746
  %753 = load i32, i32* %38, align 4
  %754 = load i32, i32* %37, align 4
  %755 = icmp slt i32 %753, %754
  br i1 %755, label %756, label %769

; <label>:756:                                    ; preds = %752
  %757 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %758 = load i32, i32* %36, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %757, i64 %759
  %761 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %760, align 8
  %762 = load i32, i32* %38, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %761, i64 %763
  %765 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %764, %union.pthread_mutexattr_t* null) #3
  br label %766

; <label>:766:                                    ; preds = %756
  %767 = load i32, i32* %38, align 4
  %768 = add nsw i32 %767, 1
  store i32 %768, i32* %38, align 4
  br label %752

; <label>:769:                                    ; preds = %752
  br label %770

; <label>:770:                                    ; preds = %769
  %771 = load i32, i32* %36, align 4
  %772 = add nsw i32 %771, 1
  store i32 %772, i32* %36, align 4
  br label %726

; <label>:773:                                    ; preds = %726
  %774 = load i32, i32* @XDIVS, align 4
  %775 = load i32, i32* @ZDIVS, align 4
  %776 = mul nsw i32 %774, %775
  %777 = invoke i32 @_Z19parsec_barrier_initP16parsec_barrier_tPKij(%struct.parsec_barrier_t* @barrier, i32* null, i32 %776)
          to label %778 unwind label %144

; <label>:778:                                    ; preds = %773
  %779 = load i32, i32* @numCells, align 4
  %780 = sext i32 %779 to i64
  %781 = mul i64 896, %780
  %782 = call i32 @posix_memalign(i8** bitcast (%struct.Cell** @cells to i8**), i64 128, i64 %781) #3
  store i32 %782, i32* %39, align 4
  %783 = load i32, i32* @numCells, align 4
  %784 = sext i32 %783 to i64
  %785 = mul i64 896, %784
  %786 = call i32 @posix_memalign(i8** bitcast (%struct.Cell** @cells2 to i8**), i64 128, i64 %785) #3
  store i32 %786, i32* %40, align 4
  %787 = load i32, i32* @numCells, align 4
  %788 = sext i32 %787 to i64
  %789 = mul i64 4, %788
  %790 = call i32 @posix_memalign(i8** bitcast (i32** @cnumPars to i8**), i64 128, i64 %789) #3
  store i32 %790, i32* %41, align 4
  %791 = load i32, i32* @numCells, align 4
  %792 = sext i32 %791 to i64
  %793 = mul i64 4, %792
  %794 = call i32 @posix_memalign(i8** bitcast (i32** @cnumPars2 to i8**), i64 128, i64 %793) #3
  store i32 %794, i32* %42, align 4
  %795 = load i32, i32* @numCells, align 4
  %796 = sext i32 %795 to i64
  %797 = mul i64 8, %796
  %798 = call i32 @posix_memalign(i8** bitcast (%struct.Cell*** @last_cells to i8**), i64 128, i64 %797) #3
  store i32 %798, i32* %43, align 4
  %799 = load i32, i32* %39, align 4
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %814

; <label>:801:                                    ; preds = %778
  %802 = load i32, i32* %40, align 4
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %814

; <label>:804:                                    ; preds = %801
  %805 = load i32, i32* %41, align 4
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %814

; <label>:807:                                    ; preds = %804
  %808 = load i32, i32* %42, align 4
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %810, label %814

; <label>:810:                                    ; preds = %807
  %811 = load i32, i32* %43, align 4
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %814

; <label>:813:                                    ; preds = %810
  br label %816

; <label>:814:                                    ; preds = %810, %807, %804, %801, %778
  call void @__assert_fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 301, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__._Z7InitSimPKcj, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %816

; <label>:816:                                    ; preds = %815, %813
  store i32 0, i32* %44, align 4
  br label %817

; <label>:817:                                    ; preds = %836, %816
  %818 = load i32, i32* %44, align 4
  %819 = load i32, i32* @numCells, align 4
  %820 = icmp slt i32 %818, %819
  br i1 %820, label %821, label %839

; <label>:821:                                    ; preds = %817
  %822 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %823 = load i32, i32* %44, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds %struct.Cell, %struct.Cell* %822, i64 %824
  %826 = bitcast %struct.Cell* %825 to i8*
  %827 = bitcast i8* %826 to %struct.Cell*
  invoke void @_ZN4CellC2Ev(%struct.Cell* %827)
          to label %828 unwind label %144

; <label>:828:                                    ; preds = %821
  %829 = load %struct.Cell*, %struct.Cell** @cells2, align 8
  %830 = load i32, i32* %44, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds %struct.Cell, %struct.Cell* %829, i64 %831
  %833 = bitcast %struct.Cell* %832 to i8*
  %834 = bitcast i8* %833 to %struct.Cell*
  invoke void @_ZN4CellC2Ev(%struct.Cell* %834)
          to label %835 unwind label %144

; <label>:835:                                    ; preds = %828
  br label %836

; <label>:836:                                    ; preds = %835
  %837 = load i32, i32* %44, align 4
  %838 = add nsw i32 %837, 1
  store i32 %838, i32* %44, align 4
  br label %817

; <label>:839:                                    ; preds = %817
  %840 = load i32*, i32** @cnumPars, align 8
  %841 = bitcast i32* %840 to i8*
  %842 = load i32, i32* @numCells, align 4
  %843 = sext i32 %842 to i64
  %844 = mul i64 %843, 4
  call void @llvm.memset.p0i8.i64(i8* %841, i8 0, i64 %844, i32 4, i1 false)
  store i32 0, i32* %45, align 4
  store i32 0, i32* %55, align 4
  br label %845

; <label>:845:                                    ; preds = %1103, %839
  %846 = load i32, i32* %55, align 4
  %847 = load i32, i32* @numParticles, align 4
  %848 = icmp slt i32 %846, %847
  br i1 %848, label %849, label %1106

; <label>:849:                                    ; preds = %845
  %850 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %851 = bitcast float* %46 to i8*
  %852 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %850, i8* %851, i64 4)
          to label %853 unwind label %144

; <label>:853:                                    ; preds = %849
  %854 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %855 = bitcast float* %47 to i8*
  %856 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %854, i8* %855, i64 4)
          to label %857 unwind label %144

; <label>:857:                                    ; preds = %853
  %858 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %859 = bitcast float* %48 to i8*
  %860 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %858, i8* %859, i64 4)
          to label %861 unwind label %144

; <label>:861:                                    ; preds = %857
  %862 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %863 = bitcast float* %49 to i8*
  %864 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %862, i8* %863, i64 4)
          to label %865 unwind label %144

; <label>:865:                                    ; preds = %861
  %866 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %867 = bitcast float* %50 to i8*
  %868 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %866, i8* %867, i64 4)
          to label %869 unwind label %144

; <label>:869:                                    ; preds = %865
  %870 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %871 = bitcast float* %51 to i8*
  %872 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %870, i8* %871, i64 4)
          to label %873 unwind label %144

; <label>:873:                                    ; preds = %869
  %874 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %875 = bitcast float* %52 to i8*
  %876 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %874, i8* %875, i64 4)
          to label %877 unwind label %144

; <label>:877:                                    ; preds = %873
  %878 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %879 = bitcast float* %53 to i8*
  %880 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %878, i8* %879, i64 4)
          to label %881 unwind label %144

; <label>:881:                                    ; preds = %877
  %882 = bitcast %"class.std::basic_ifstream"* %6 to %"class.std::basic_istream"*
  %883 = bitcast float* %54 to i8*
  %884 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"* %882, i8* %883, i64 4)
          to label %885 unwind label %144

; <label>:885:                                    ; preds = %881
  %886 = invoke i32 @_ZL14isLittleEndianv()
          to label %887 unwind label %144

; <label>:887:                                    ; preds = %885
  %888 = icmp ne i32 %886, 0
  br i1 %888, label %917, label %889

; <label>:889:                                    ; preds = %887
  %890 = load float, float* %46, align 4
  %891 = invoke float @_ZL11bswap_floatf(float %890)
          to label %892 unwind label %144

; <label>:892:                                    ; preds = %889
  store float %891, float* %46, align 4
  %893 = load float, float* %47, align 4
  %894 = invoke float @_ZL11bswap_floatf(float %893)
          to label %895 unwind label %144

; <label>:895:                                    ; preds = %892
  store float %894, float* %47, align 4
  %896 = load float, float* %48, align 4
  %897 = invoke float @_ZL11bswap_floatf(float %896)
          to label %898 unwind label %144

; <label>:898:                                    ; preds = %895
  store float %897, float* %48, align 4
  %899 = load float, float* %49, align 4
  %900 = invoke float @_ZL11bswap_floatf(float %899)
          to label %901 unwind label %144

; <label>:901:                                    ; preds = %898
  store float %900, float* %49, align 4
  %902 = load float, float* %50, align 4
  %903 = invoke float @_ZL11bswap_floatf(float %902)
          to label %904 unwind label %144

; <label>:904:                                    ; preds = %901
  store float %903, float* %50, align 4
  %905 = load float, float* %51, align 4
  %906 = invoke float @_ZL11bswap_floatf(float %905)
          to label %907 unwind label %144

; <label>:907:                                    ; preds = %904
  store float %906, float* %51, align 4
  %908 = load float, float* %52, align 4
  %909 = invoke float @_ZL11bswap_floatf(float %908)
          to label %910 unwind label %144

; <label>:910:                                    ; preds = %907
  store float %909, float* %52, align 4
  %911 = load float, float* %53, align 4
  %912 = invoke float @_ZL11bswap_floatf(float %911)
          to label %913 unwind label %144

; <label>:913:                                    ; preds = %910
  store float %912, float* %53, align 4
  %914 = load float, float* %54, align 4
  %915 = invoke float @_ZL11bswap_floatf(float %914)
          to label %916 unwind label %144

; <label>:916:                                    ; preds = %913
  store float %915, float* %54, align 4
  br label %917

; <label>:917:                                    ; preds = %916, %887
  %918 = load float, float* %46, align 4
  %919 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 0), align 4
  %920 = fsub float %918, %919
  %921 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 0), align 4
  %922 = fdiv float %920, %921
  %923 = fptosi float %922 to i32
  store i32 %923, i32* %56, align 4
  %924 = load float, float* %47, align 4
  %925 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 1), align 4
  %926 = fsub float %924, %925
  %927 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 1), align 4
  %928 = fdiv float %926, %927
  %929 = fptosi float %928 to i32
  store i32 %929, i32* %57, align 4
  %930 = load float, float* %48, align 4
  %931 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 2), align 4
  %932 = fsub float %930, %931
  %933 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 2), align 4
  %934 = fdiv float %932, %933
  %935 = fptosi float %934 to i32
  store i32 %935, i32* %58, align 4
  %936 = load i32, i32* %56, align 4
  %937 = icmp slt i32 %936, 0
  br i1 %937, label %938, label %939

; <label>:938:                                    ; preds = %917
  store i32 0, i32* %56, align 4
  br label %948

; <label>:939:                                    ; preds = %917
  %940 = load i32, i32* %56, align 4
  %941 = load i32, i32* @nx, align 4
  %942 = sub nsw i32 %941, 1
  %943 = icmp sgt i32 %940, %942
  br i1 %943, label %944, label %947

; <label>:944:                                    ; preds = %939
  %945 = load i32, i32* @nx, align 4
  %946 = sub nsw i32 %945, 1
  store i32 %946, i32* %56, align 4
  br label %947

; <label>:947:                                    ; preds = %944, %939
  br label %948

; <label>:948:                                    ; preds = %947, %938
  %949 = load i32, i32* %57, align 4
  %950 = icmp slt i32 %949, 0
  br i1 %950, label %951, label %952

; <label>:951:                                    ; preds = %948
  store i32 0, i32* %57, align 4
  br label %961

; <label>:952:                                    ; preds = %948
  %953 = load i32, i32* %57, align 4
  %954 = load i32, i32* @ny, align 4
  %955 = sub nsw i32 %954, 1
  %956 = icmp sgt i32 %953, %955
  br i1 %956, label %957, label %960

; <label>:957:                                    ; preds = %952
  %958 = load i32, i32* @ny, align 4
  %959 = sub nsw i32 %958, 1
  store i32 %959, i32* %57, align 4
  br label %960

; <label>:960:                                    ; preds = %957, %952
  br label %961

; <label>:961:                                    ; preds = %960, %951
  %962 = load i32, i32* %58, align 4
  %963 = icmp slt i32 %962, 0
  br i1 %963, label %964, label %965

; <label>:964:                                    ; preds = %961
  store i32 0, i32* %58, align 4
  br label %974

; <label>:965:                                    ; preds = %961
  %966 = load i32, i32* %58, align 4
  %967 = load i32, i32* @nz, align 4
  %968 = sub nsw i32 %967, 1
  %969 = icmp sgt i32 %966, %968
  br i1 %969, label %970, label %973

; <label>:970:                                    ; preds = %965
  %971 = load i32, i32* @nz, align 4
  %972 = sub nsw i32 %971, 1
  store i32 %972, i32* %58, align 4
  br label %973

; <label>:973:                                    ; preds = %970, %965
  br label %974

; <label>:974:                                    ; preds = %973, %964
  %975 = load i32, i32* %58, align 4
  %976 = load i32, i32* @ny, align 4
  %977 = mul nsw i32 %975, %976
  %978 = load i32, i32* %57, align 4
  %979 = add nsw i32 %977, %978
  %980 = load i32, i32* @nx, align 4
  %981 = mul nsw i32 %979, %980
  %982 = load i32, i32* %56, align 4
  %983 = add nsw i32 %981, %982
  store i32 %983, i32* %59, align 4
  %984 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %985 = load i32, i32* %59, align 4
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds %struct.Cell, %struct.Cell* %984, i64 %986
  store %struct.Cell* %987, %struct.Cell** %60, align 8
  %988 = load i32*, i32** @cnumPars, align 8
  %989 = load i32, i32* %59, align 4
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds i32, i32* %988, i64 %990
  %992 = load i32, i32* %991, align 4
  store i32 %992, i32* %61, align 4
  br label %993

; <label>:993:                                    ; preds = %996, %974
  %994 = load i32, i32* %61, align 4
  %995 = icmp sgt i32 %994, 16
  br i1 %995, label %996, label %1002

; <label>:996:                                    ; preds = %993
  %997 = load %struct.Cell*, %struct.Cell** %60, align 8
  %998 = getelementptr inbounds %struct.Cell, %struct.Cell* %997, i32 0, i32 5
  %999 = load %struct.Cell*, %struct.Cell** %998, align 8
  store %struct.Cell* %999, %struct.Cell** %60, align 8
  %1000 = load i32, i32* %61, align 4
  %1001 = sub nsw i32 %1000, 16
  store i32 %1001, i32* %61, align 4
  br label %993

; <label>:1002:                                   ; preds = %993
  %1003 = load i32, i32* %61, align 4
  %1004 = srem i32 %1003, 16
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %1033

; <label>:1006:                                   ; preds = %1002
  %1007 = load i32*, i32** @cnumPars, align 8
  %1008 = load i32, i32* %59, align 4
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds i32, i32* %1007, i64 %1009
  %1011 = load i32, i32* %1010, align 4
  %1012 = icmp ne i32 %1011, 0
  br i1 %1012, label %1013, label %1033

; <label>:1013:                                   ; preds = %1006
  %1014 = load %struct.cellpool*, %struct.cellpool** @pools, align 8
  %1015 = load i32, i32* %45, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds %struct.cellpool, %struct.cellpool* %1014, i64 %1016
  %1018 = invoke %struct.Cell* @_Z16cellpool_getcellP8cellpool(%struct.cellpool* %1017)
          to label %1019 unwind label %144

; <label>:1019:                                   ; preds = %1013
  %1020 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1021 = getelementptr inbounds %struct.Cell, %struct.Cell* %1020, i32 0, i32 5
  store %struct.Cell* %1018, %struct.Cell** %1021, align 8
  %1022 = load i32, i32* %45, align 4
  %1023 = add nsw i32 %1022, 1
  %1024 = load i32, i32* @XDIVS, align 4
  %1025 = load i32, i32* @ZDIVS, align 4
  %1026 = mul nsw i32 %1024, %1025
  %1027 = srem i32 %1023, %1026
  store i32 %1027, i32* %45, align 4
  %1028 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1029 = getelementptr inbounds %struct.Cell, %struct.Cell* %1028, i32 0, i32 5
  %1030 = load %struct.Cell*, %struct.Cell** %1029, align 8
  store %struct.Cell* %1030, %struct.Cell** %60, align 8
  %1031 = load i32, i32* %61, align 4
  %1032 = sub nsw i32 %1031, 16
  store i32 %1032, i32* %61, align 4
  br label %1033

; <label>:1033:                                   ; preds = %1019, %1006, %1002
  %1034 = load float, float* %46, align 4
  %1035 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1036 = getelementptr inbounds %struct.Cell, %struct.Cell* %1035, i32 0, i32 0
  %1037 = load i32, i32* %61, align 4
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %1036, i64 0, i64 %1038
  %1040 = getelementptr inbounds %class.Vec3, %class.Vec3* %1039, i32 0, i32 0
  store float %1034, float* %1040, align 4
  %1041 = load float, float* %47, align 4
  %1042 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1043 = getelementptr inbounds %struct.Cell, %struct.Cell* %1042, i32 0, i32 0
  %1044 = load i32, i32* %61, align 4
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %1043, i64 0, i64 %1045
  %1047 = getelementptr inbounds %class.Vec3, %class.Vec3* %1046, i32 0, i32 1
  store float %1041, float* %1047, align 4
  %1048 = load float, float* %48, align 4
  %1049 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1050 = getelementptr inbounds %struct.Cell, %struct.Cell* %1049, i32 0, i32 0
  %1051 = load i32, i32* %61, align 4
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %1050, i64 0, i64 %1052
  %1054 = getelementptr inbounds %class.Vec3, %class.Vec3* %1053, i32 0, i32 2
  store float %1048, float* %1054, align 4
  %1055 = load float, float* %49, align 4
  %1056 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1057 = getelementptr inbounds %struct.Cell, %struct.Cell* %1056, i32 0, i32 1
  %1058 = load i32, i32* %61, align 4
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %1057, i64 0, i64 %1059
  %1061 = getelementptr inbounds %class.Vec3, %class.Vec3* %1060, i32 0, i32 0
  store float %1055, float* %1061, align 4
  %1062 = load float, float* %50, align 4
  %1063 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1064 = getelementptr inbounds %struct.Cell, %struct.Cell* %1063, i32 0, i32 1
  %1065 = load i32, i32* %61, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %1064, i64 0, i64 %1066
  %1068 = getelementptr inbounds %class.Vec3, %class.Vec3* %1067, i32 0, i32 1
  store float %1062, float* %1068, align 4
  %1069 = load float, float* %51, align 4
  %1070 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1071 = getelementptr inbounds %struct.Cell, %struct.Cell* %1070, i32 0, i32 1
  %1072 = load i32, i32* %61, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %1071, i64 0, i64 %1073
  %1075 = getelementptr inbounds %class.Vec3, %class.Vec3* %1074, i32 0, i32 2
  store float %1069, float* %1075, align 4
  %1076 = load float, float* %52, align 4
  %1077 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1078 = getelementptr inbounds %struct.Cell, %struct.Cell* %1077, i32 0, i32 2
  %1079 = load i32, i32* %61, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %1078, i64 0, i64 %1080
  %1082 = getelementptr inbounds %class.Vec3, %class.Vec3* %1081, i32 0, i32 0
  store float %1076, float* %1082, align 4
  %1083 = load float, float* %53, align 4
  %1084 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1085 = getelementptr inbounds %struct.Cell, %struct.Cell* %1084, i32 0, i32 2
  %1086 = load i32, i32* %61, align 4
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %1085, i64 0, i64 %1087
  %1089 = getelementptr inbounds %class.Vec3, %class.Vec3* %1088, i32 0, i32 1
  store float %1083, float* %1089, align 4
  %1090 = load float, float* %54, align 4
  %1091 = load %struct.Cell*, %struct.Cell** %60, align 8
  %1092 = getelementptr inbounds %struct.Cell, %struct.Cell* %1091, i32 0, i32 2
  %1093 = load i32, i32* %61, align 4
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %1092, i64 0, i64 %1094
  %1096 = getelementptr inbounds %class.Vec3, %class.Vec3* %1095, i32 0, i32 2
  store float %1090, float* %1096, align 4
  %1097 = load i32*, i32** @cnumPars, align 8
  %1098 = load i32, i32* %59, align 4
  %1099 = sext i32 %1098 to i64
  %1100 = getelementptr inbounds i32, i32* %1097, i64 %1099
  %1101 = load i32, i32* %1100, align 4
  %1102 = add nsw i32 %1101, 1
  store i32 %1102, i32* %1100, align 4
  br label %1103

; <label>:1103:                                   ; preds = %1033
  %1104 = load i32, i32* %55, align 4
  %1105 = add nsw i32 %1104, 1
  store i32 %1105, i32* %55, align 4
  br label %845

; <label>:1106:                                   ; preds = %845
  %1107 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0))
          to label %1108 unwind label %144

; <label>:1108:                                   ; preds = %1106
  %1109 = load i32, i32* @numParticles, align 4
  %1110 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %1107, i32 %1109)
          to label %1111 unwind label %144

; <label>:1111:                                   ; preds = %1108
  %1112 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %1110, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %1113 unwind label %144

; <label>:1113:                                   ; preds = %1111
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %6) #3
  ret void

; <label>:1114:                                   ; preds = %144
  %1115 = load i8*, i8** %7, align 8
  %1116 = load i32, i32* %8, align 4
  %1117 = insertvalue { i8*, i32 } undef, i8* %1115, 0
  %1118 = insertvalue { i8*, i32 } %1117, i32 %1116, 1
  resume { i8*, i32 } %1118
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #8

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"*, i8*, i32) unnamed_addr #1

declare zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(%"class.std::basic_ios"*) #1

declare i32 @__gxx_personality_v0(...)

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSi4readEPcl(%"class.std::basic_istream"*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ZL14isLittleEndianv() #4 {
  %1 = alloca %union.anon.2, align 2
  %2 = bitcast %union.anon.2* %1 to i16*
  store i16 255, i16* %2, align 2
  %3 = bitcast %union.anon.2* %1 to i8*
  %4 = load i8, i8* %3, align 2
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, 255
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal float @_ZL11bswap_floatf(float) #4 {
  %2 = alloca float, align 4
  %3 = alloca %union.__float_and_int, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = bitcast %union.__float_and_int* %3 to float*
  store float %4, float* %5, align 4
  %6 = bitcast %union.__float_and_int* %3 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, -16777216
  %9 = lshr i32 %8, 24
  %10 = bitcast %union.__float_and_int* %3 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 16711680
  %13 = lshr i32 %12, 8
  %14 = or i32 %9, %13
  %15 = bitcast %union.__float_and_int* %3 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 65280
  %18 = shl i32 %17, 8
  %19 = or i32 %14, %18
  %20 = bitcast %union.__float_and_int* %3 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  %23 = shl i32 %22, 24
  %24 = or i32 %19, %23
  %25 = bitcast %union.__float_and_int* %3 to i32*
  store i32 %24, i32* %25, align 4
  %26 = bitcast %union.__float_and_int* %3 to float*
  %27 = load float, float* %26, align 4
  ret float %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ZL11bswap_int32i(i32) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, -16777216
  %5 = lshr i32 %4, 24
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 16711680
  %8 = ashr i32 %7, 8
  %9 = or i32 %5, %8
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 65280
  %12 = shl i32 %11, 8
  %13 = or i32 %9, %12
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 255
  %16 = shl i32 %15, 24
  %17 = or i32 %13, %16
  ret i32 %17
}

declare void @_Z13cellpool_initP8cellpooli(%struct.cellpool*, i32) #1

; Function Attrs: nounwind
declare float @powf(float, float) #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3miERKS_(%class.Vec3*, %class.Vec3* dereferenceable(12)) #5 comdat align 2 {
  %3 = alloca %class.Vec3, align 4
  %4 = alloca %class.Vec3*, align 8
  %5 = alloca %class.Vec3*, align 8
  %6 = alloca { <2 x float>, float }, align 8
  store %class.Vec3* %0, %class.Vec3** %4, align 8
  store %class.Vec3* %1, %class.Vec3** %5, align 8
  %7 = load %class.Vec3*, %class.Vec3** %4, align 8
  %8 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = load %class.Vec3*, %class.Vec3** %5, align 8
  %11 = getelementptr inbounds %class.Vec3, %class.Vec3* %10, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = fsub float %9, %12
  %14 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = load %class.Vec3*, %class.Vec3** %5, align 8
  %17 = getelementptr inbounds %class.Vec3, %class.Vec3* %16, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = fsub float %15, %18
  %20 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 2
  %21 = load float, float* %20, align 4
  %22 = load %class.Vec3*, %class.Vec3** %5, align 8
  %23 = getelementptr inbounds %class.Vec3, %class.Vec3* %22, i32 0, i32 2
  %24 = load float, float* %23, align 4
  %25 = fsub float %21, %24
  call void @_ZN4Vec3C2Efff(%class.Vec3* %3, float %13, float %19, float %25)
  %26 = bitcast { <2 x float>, float }* %6 to i8*
  %27 = bitcast %class.Vec3* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 12, i32 4, i1 false)
  %28 = load { <2 x float>, float }, { <2 x float>, float }* %6, align 8
  ret { <2 x float>, float } %28
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(%union.pthread_attr_t*, i32) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

declare i32 @_Z19parsec_barrier_initP16parsec_barrier_tPKij(%struct.parsec_barrier_t*, i32*, i32) #1

; Function Attrs: nounwind
declare i32 @posix_memalign(i8**, i64, i64) #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN4CellC2Ev(%struct.Cell*) unnamed_addr #5 comdat align 2 {
  %2 = alloca %struct.Cell*, align 8
  store %struct.Cell* %0, %struct.Cell** %2, align 8
  %3 = load %struct.Cell*, %struct.Cell** %2, align 8
  %4 = getelementptr inbounds %struct.Cell, %struct.Cell* %3, i32 0, i32 0
  %5 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %4, i32 0, i32 0
  %6 = getelementptr inbounds %class.Vec3, %class.Vec3* %5, i64 16
  br label %7

; <label>:7:                                      ; preds = %7, %1
  %8 = phi %class.Vec3* [ %5, %1 ], [ %9, %7 ]
  call void @_ZN4Vec3C2Ev(%class.Vec3* %8)
  %9 = getelementptr inbounds %class.Vec3, %class.Vec3* %8, i64 1
  %10 = icmp eq %class.Vec3* %9, %6
  br i1 %10, label %11, label %7

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.Cell, %struct.Cell* %3, i32 0, i32 1
  %13 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %12, i32 0, i32 0
  %14 = getelementptr inbounds %class.Vec3, %class.Vec3* %13, i64 16
  br label %15

; <label>:15:                                     ; preds = %15, %11
  %16 = phi %class.Vec3* [ %13, %11 ], [ %17, %15 ]
  call void @_ZN4Vec3C2Ev(%class.Vec3* %16)
  %17 = getelementptr inbounds %class.Vec3, %class.Vec3* %16, i64 1
  %18 = icmp eq %class.Vec3* %17, %14
  br i1 %18, label %19, label %15

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.Cell, %struct.Cell* %3, i32 0, i32 2
  %21 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %20, i32 0, i32 0
  %22 = getelementptr inbounds %class.Vec3, %class.Vec3* %21, i64 16
  br label %23

; <label>:23:                                     ; preds = %23, %19
  %24 = phi %class.Vec3* [ %21, %19 ], [ %25, %23 ]
  call void @_ZN4Vec3C2Ev(%class.Vec3* %24)
  %25 = getelementptr inbounds %class.Vec3, %class.Vec3* %24, i64 1
  %26 = icmp eq %class.Vec3* %25, %22
  br i1 %26, label %27, label %23

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.Cell, %struct.Cell* %3, i32 0, i32 3
  %29 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %28, i32 0, i32 0
  %30 = getelementptr inbounds %class.Vec3, %class.Vec3* %29, i64 16
  br label %31

; <label>:31:                                     ; preds = %31, %27
  %32 = phi %class.Vec3* [ %29, %27 ], [ %33, %31 ]
  call void @_ZN4Vec3C2Ev(%class.Vec3* %32)
  %33 = getelementptr inbounds %class.Vec3, %class.Vec3* %32, i64 1
  %34 = icmp eq %class.Vec3* %33, %30
  br i1 %34, label %35, label %31

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.Cell, %struct.Cell* %3, i32 0, i32 5
  store %struct.Cell* null, %struct.Cell** %36, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

declare %struct.Cell* @_Z16cellpool_getcellP8cellpool(%struct.cellpool*) #1

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"*) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define void @_Z8SaveFilePKc(i8*) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i8*, align 8
  %3 = alloca %"class.std::basic_ofstream", align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Cell*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i8* %0, i8** %2, align 8
  %22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0))
  %23 = load i8*, i8** %2, align 8
  %24 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %22, i8* %23)
  %25 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %26 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %25, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %27 = load i8*, i8** %2, align 8
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* %3, i8* %27, i32 4)
  %28 = bitcast %"class.std::basic_ofstream"* %3 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr i8, i8* %29, i64 -24
  %31 = bitcast i8* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = bitcast %"class.std::basic_ofstream"* %3 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 %32
  %35 = bitcast i8* %34 to %"class.std::basic_ios"*
  %36 = invoke zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"* %35)
          to label %37 unwind label %40

; <label>:37:                                     ; preds = %1
  br i1 %36, label %38, label %39

; <label>:38:                                     ; preds = %37
  br label %45

; <label>:39:                                     ; preds = %37
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 396, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__._Z8SaveFilePKc, i32 0, i32 0)) #13
  unreachable

; <label>:40:                                     ; preds = %290, %286, %282, %278, %274, %270, %266, %262, %258, %174, %164, %154, %144, %134, %124, %114, %104, %94, %90, %67, %64, %59, %55, %52, %49, %45, %1
  %41 = landingpad { i8*, i32 }
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %4, align 8
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %5, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* %3) #3
  br label %320
                                                  ; No predecessors!
  br label %45

; <label>:45:                                     ; preds = %44, %38
  %46 = invoke i32 @_ZL14isLittleEndianv()
          to label %47 unwind label %40

; <label>:47:                                     ; preds = %45
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %64, label %49

; <label>:49:                                     ; preds = %47
  %50 = load float, float* @restParticlesPerMeter, align 4
  %51 = invoke float @_ZL11bswap_floatf(float %50)
          to label %52 unwind label %40

; <label>:52:                                     ; preds = %49
  store float %51, float* %6, align 4
  %53 = load i32, i32* @numParticles, align 4
  %54 = invoke i32 @_ZL11bswap_int32i(i32 %53)
          to label %55 unwind label %40

; <label>:55:                                     ; preds = %52
  store i32 %54, i32* %7, align 4
  %56 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %57 = bitcast float* %6 to i8*
  %58 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %56, i8* %57, i64 4)
          to label %59 unwind label %40

; <label>:59:                                     ; preds = %55
  %60 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %61 = bitcast i32* %7 to i8*
  %62 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %60, i8* %61, i64 4)
          to label %63 unwind label %40

; <label>:63:                                     ; preds = %59
  br label %71

; <label>:64:                                     ; preds = %47
  %65 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %66 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %65, i8* bitcast (float* @restParticlesPerMeter to i8*), i64 4)
          to label %67 unwind label %40

; <label>:67:                                     ; preds = %64
  %68 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %69 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %68, i8* bitcast (i32* @numParticles to i8*), i64 4)
          to label %70 unwind label %40

; <label>:70:                                     ; preds = %67
  br label %71

; <label>:71:                                     ; preds = %70, %63
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %72

; <label>:72:                                     ; preds = %309, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @numCells, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %312

; <label>:76:                                     ; preds = %72
  %77 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.Cell, %struct.Cell* %77, i64 %79
  store %struct.Cell* %80, %struct.Cell** %10, align 8
  %81 = load i32*, i32** @cnumPars, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %86

; <label>:86:                                     ; preds = %305, %76
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %308

; <label>:90:                                     ; preds = %86
  %91 = invoke i32 @_ZL14isLittleEndianv()
          to label %92 unwind label %40

; <label>:92:                                     ; preds = %90
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %185, label %94

; <label>:94:                                     ; preds = %92
  %95 = load %struct.Cell*, %struct.Cell** %10, align 8
  %96 = getelementptr inbounds %struct.Cell, %struct.Cell* %95, i32 0, i32 0
  %97 = load i32, i32* %12, align 4
  %98 = srem i32 %97, 16
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %96, i64 0, i64 %99
  %101 = getelementptr inbounds %class.Vec3, %class.Vec3* %100, i32 0, i32 0
  %102 = load float, float* %101, align 4
  %103 = invoke float @_ZL11bswap_floatf(float %102)
          to label %104 unwind label %40

; <label>:104:                                    ; preds = %94
  store float %103, float* %13, align 4
  %105 = load %struct.Cell*, %struct.Cell** %10, align 8
  %106 = getelementptr inbounds %struct.Cell, %struct.Cell* %105, i32 0, i32 0
  %107 = load i32, i32* %12, align 4
  %108 = srem i32 %107, 16
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %106, i64 0, i64 %109
  %111 = getelementptr inbounds %class.Vec3, %class.Vec3* %110, i32 0, i32 1
  %112 = load float, float* %111, align 4
  %113 = invoke float @_ZL11bswap_floatf(float %112)
          to label %114 unwind label %40

; <label>:114:                                    ; preds = %104
  store float %113, float* %14, align 4
  %115 = load %struct.Cell*, %struct.Cell** %10, align 8
  %116 = getelementptr inbounds %struct.Cell, %struct.Cell* %115, i32 0, i32 0
  %117 = load i32, i32* %12, align 4
  %118 = srem i32 %117, 16
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %116, i64 0, i64 %119
  %121 = getelementptr inbounds %class.Vec3, %class.Vec3* %120, i32 0, i32 2
  %122 = load float, float* %121, align 4
  %123 = invoke float @_ZL11bswap_floatf(float %122)
          to label %124 unwind label %40

; <label>:124:                                    ; preds = %114
  store float %123, float* %15, align 4
  %125 = load %struct.Cell*, %struct.Cell** %10, align 8
  %126 = getelementptr inbounds %struct.Cell, %struct.Cell* %125, i32 0, i32 1
  %127 = load i32, i32* %12, align 4
  %128 = srem i32 %127, 16
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %126, i64 0, i64 %129
  %131 = getelementptr inbounds %class.Vec3, %class.Vec3* %130, i32 0, i32 0
  %132 = load float, float* %131, align 4
  %133 = invoke float @_ZL11bswap_floatf(float %132)
          to label %134 unwind label %40

; <label>:134:                                    ; preds = %124
  store float %133, float* %16, align 4
  %135 = load %struct.Cell*, %struct.Cell** %10, align 8
  %136 = getelementptr inbounds %struct.Cell, %struct.Cell* %135, i32 0, i32 1
  %137 = load i32, i32* %12, align 4
  %138 = srem i32 %137, 16
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %136, i64 0, i64 %139
  %141 = getelementptr inbounds %class.Vec3, %class.Vec3* %140, i32 0, i32 1
  %142 = load float, float* %141, align 4
  %143 = invoke float @_ZL11bswap_floatf(float %142)
          to label %144 unwind label %40

; <label>:144:                                    ; preds = %134
  store float %143, float* %17, align 4
  %145 = load %struct.Cell*, %struct.Cell** %10, align 8
  %146 = getelementptr inbounds %struct.Cell, %struct.Cell* %145, i32 0, i32 1
  %147 = load i32, i32* %12, align 4
  %148 = srem i32 %147, 16
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %146, i64 0, i64 %149
  %151 = getelementptr inbounds %class.Vec3, %class.Vec3* %150, i32 0, i32 2
  %152 = load float, float* %151, align 4
  %153 = invoke float @_ZL11bswap_floatf(float %152)
          to label %154 unwind label %40

; <label>:154:                                    ; preds = %144
  store float %153, float* %18, align 4
  %155 = load %struct.Cell*, %struct.Cell** %10, align 8
  %156 = getelementptr inbounds %struct.Cell, %struct.Cell* %155, i32 0, i32 2
  %157 = load i32, i32* %12, align 4
  %158 = srem i32 %157, 16
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %156, i64 0, i64 %159
  %161 = getelementptr inbounds %class.Vec3, %class.Vec3* %160, i32 0, i32 0
  %162 = load float, float* %161, align 4
  %163 = invoke float @_ZL11bswap_floatf(float %162)
          to label %164 unwind label %40

; <label>:164:                                    ; preds = %154
  store float %163, float* %19, align 4
  %165 = load %struct.Cell*, %struct.Cell** %10, align 8
  %166 = getelementptr inbounds %struct.Cell, %struct.Cell* %165, i32 0, i32 2
  %167 = load i32, i32* %12, align 4
  %168 = srem i32 %167, 16
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %166, i64 0, i64 %169
  %171 = getelementptr inbounds %class.Vec3, %class.Vec3* %170, i32 0, i32 1
  %172 = load float, float* %171, align 4
  %173 = invoke float @_ZL11bswap_floatf(float %172)
          to label %174 unwind label %40

; <label>:174:                                    ; preds = %164
  store float %173, float* %20, align 4
  %175 = load %struct.Cell*, %struct.Cell** %10, align 8
  %176 = getelementptr inbounds %struct.Cell, %struct.Cell* %175, i32 0, i32 2
  %177 = load i32, i32* %12, align 4
  %178 = srem i32 %177, 16
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %176, i64 0, i64 %179
  %181 = getelementptr inbounds %class.Vec3, %class.Vec3* %180, i32 0, i32 2
  %182 = load float, float* %181, align 4
  %183 = invoke float @_ZL11bswap_floatf(float %182)
          to label %184 unwind label %40

; <label>:184:                                    ; preds = %174
  store float %183, float* %21, align 4
  br label %258

; <label>:185:                                    ; preds = %92
  %186 = load %struct.Cell*, %struct.Cell** %10, align 8
  %187 = getelementptr inbounds %struct.Cell, %struct.Cell* %186, i32 0, i32 0
  %188 = load i32, i32* %12, align 4
  %189 = srem i32 %188, 16
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %187, i64 0, i64 %190
  %192 = getelementptr inbounds %class.Vec3, %class.Vec3* %191, i32 0, i32 0
  %193 = load float, float* %192, align 4
  store float %193, float* %13, align 4
  %194 = load %struct.Cell*, %struct.Cell** %10, align 8
  %195 = getelementptr inbounds %struct.Cell, %struct.Cell* %194, i32 0, i32 0
  %196 = load i32, i32* %12, align 4
  %197 = srem i32 %196, 16
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %195, i64 0, i64 %198
  %200 = getelementptr inbounds %class.Vec3, %class.Vec3* %199, i32 0, i32 1
  %201 = load float, float* %200, align 4
  store float %201, float* %14, align 4
  %202 = load %struct.Cell*, %struct.Cell** %10, align 8
  %203 = getelementptr inbounds %struct.Cell, %struct.Cell* %202, i32 0, i32 0
  %204 = load i32, i32* %12, align 4
  %205 = srem i32 %204, 16
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %203, i64 0, i64 %206
  %208 = getelementptr inbounds %class.Vec3, %class.Vec3* %207, i32 0, i32 2
  %209 = load float, float* %208, align 4
  store float %209, float* %15, align 4
  %210 = load %struct.Cell*, %struct.Cell** %10, align 8
  %211 = getelementptr inbounds %struct.Cell, %struct.Cell* %210, i32 0, i32 1
  %212 = load i32, i32* %12, align 4
  %213 = srem i32 %212, 16
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %211, i64 0, i64 %214
  %216 = getelementptr inbounds %class.Vec3, %class.Vec3* %215, i32 0, i32 0
  %217 = load float, float* %216, align 4
  store float %217, float* %16, align 4
  %218 = load %struct.Cell*, %struct.Cell** %10, align 8
  %219 = getelementptr inbounds %struct.Cell, %struct.Cell* %218, i32 0, i32 1
  %220 = load i32, i32* %12, align 4
  %221 = srem i32 %220, 16
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %219, i64 0, i64 %222
  %224 = getelementptr inbounds %class.Vec3, %class.Vec3* %223, i32 0, i32 1
  %225 = load float, float* %224, align 4
  store float %225, float* %17, align 4
  %226 = load %struct.Cell*, %struct.Cell** %10, align 8
  %227 = getelementptr inbounds %struct.Cell, %struct.Cell* %226, i32 0, i32 1
  %228 = load i32, i32* %12, align 4
  %229 = srem i32 %228, 16
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %227, i64 0, i64 %230
  %232 = getelementptr inbounds %class.Vec3, %class.Vec3* %231, i32 0, i32 2
  %233 = load float, float* %232, align 4
  store float %233, float* %18, align 4
  %234 = load %struct.Cell*, %struct.Cell** %10, align 8
  %235 = getelementptr inbounds %struct.Cell, %struct.Cell* %234, i32 0, i32 2
  %236 = load i32, i32* %12, align 4
  %237 = srem i32 %236, 16
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %235, i64 0, i64 %238
  %240 = getelementptr inbounds %class.Vec3, %class.Vec3* %239, i32 0, i32 0
  %241 = load float, float* %240, align 4
  store float %241, float* %19, align 4
  %242 = load %struct.Cell*, %struct.Cell** %10, align 8
  %243 = getelementptr inbounds %struct.Cell, %struct.Cell* %242, i32 0, i32 2
  %244 = load i32, i32* %12, align 4
  %245 = srem i32 %244, 16
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %243, i64 0, i64 %246
  %248 = getelementptr inbounds %class.Vec3, %class.Vec3* %247, i32 0, i32 1
  %249 = load float, float* %248, align 4
  store float %249, float* %20, align 4
  %250 = load %struct.Cell*, %struct.Cell** %10, align 8
  %251 = getelementptr inbounds %struct.Cell, %struct.Cell* %250, i32 0, i32 2
  %252 = load i32, i32* %12, align 4
  %253 = srem i32 %252, 16
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %251, i64 0, i64 %254
  %256 = getelementptr inbounds %class.Vec3, %class.Vec3* %255, i32 0, i32 2
  %257 = load float, float* %256, align 4
  store float %257, float* %21, align 4
  br label %258

; <label>:258:                                    ; preds = %185, %184
  %259 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %260 = bitcast float* %13 to i8*
  %261 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %259, i8* %260, i64 4)
          to label %262 unwind label %40

; <label>:262:                                    ; preds = %258
  %263 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %264 = bitcast float* %14 to i8*
  %265 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %263, i8* %264, i64 4)
          to label %266 unwind label %40

; <label>:266:                                    ; preds = %262
  %267 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %268 = bitcast float* %15 to i8*
  %269 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %267, i8* %268, i64 4)
          to label %270 unwind label %40

; <label>:270:                                    ; preds = %266
  %271 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %272 = bitcast float* %16 to i8*
  %273 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %271, i8* %272, i64 4)
          to label %274 unwind label %40

; <label>:274:                                    ; preds = %270
  %275 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %276 = bitcast float* %17 to i8*
  %277 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %275, i8* %276, i64 4)
          to label %278 unwind label %40

; <label>:278:                                    ; preds = %274
  %279 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %280 = bitcast float* %18 to i8*
  %281 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %279, i8* %280, i64 4)
          to label %282 unwind label %40

; <label>:282:                                    ; preds = %278
  %283 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %284 = bitcast float* %19 to i8*
  %285 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %283, i8* %284, i64 4)
          to label %286 unwind label %40

; <label>:286:                                    ; preds = %282
  %287 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %288 = bitcast float* %20 to i8*
  %289 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %287, i8* %288, i64 4)
          to label %290 unwind label %40

; <label>:290:                                    ; preds = %286
  %291 = bitcast %"class.std::basic_ofstream"* %3 to %"class.std::basic_ostream"*
  %292 = bitcast float* %21 to i8*
  %293 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"* %291, i8* %292, i64 4)
          to label %294 unwind label %40

; <label>:294:                                    ; preds = %290
  %295 = load i32, i32* %8, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %8, align 4
  %297 = load i32, i32* %12, align 4
  %298 = srem i32 %297, 16
  %299 = icmp eq i32 %298, 15
  br i1 %299, label %300, label %304

; <label>:300:                                    ; preds = %294
  %301 = load %struct.Cell*, %struct.Cell** %10, align 8
  %302 = getelementptr inbounds %struct.Cell, %struct.Cell* %301, i32 0, i32 5
  %303 = load %struct.Cell*, %struct.Cell** %302, align 8
  store %struct.Cell* %303, %struct.Cell** %10, align 8
  br label %304

; <label>:304:                                    ; preds = %300, %294
  br label %305

; <label>:305:                                    ; preds = %304
  %306 = load i32, i32* %12, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %12, align 4
  br label %86

; <label>:308:                                    ; preds = %86
  br label %309

; <label>:309:                                    ; preds = %308
  %310 = load i32, i32* %9, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %9, align 4
  br label %72

; <label>:312:                                    ; preds = %72
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* @numParticles, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %317

; <label>:316:                                    ; preds = %312
  br label %319

; <label>:317:                                    ; preds = %312
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 460, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__._Z8SaveFilePKc, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %319

; <label>:319:                                    ; preds = %318, %316
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* %3) #3
  ret void

; <label>:320:                                    ; preds = %40
  %321 = load i8*, i8** %4, align 8
  %322 = load i32, i32* %5, align 4
  %323 = insertvalue { i8*, i32 } undef, i8* %321, 0
  %324 = insertvalue { i8*, i32 } %323, i32 %322, 1
  resume { i8*, i32 } %324
}

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"*, i8*, i32) unnamed_addr #1

declare zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5writeEPKcl(%"class.std::basic_ostream"*, i8*, i64) #1

; Function Attrs: nounwind
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"*) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define void @_Z10CleanUpSimv() #5 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Cell*, align 8
  %3 = alloca %struct.Cell*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %8

; <label>:8:                                      ; preds = %35, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @numCells, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

; <label>:12:                                     ; preds = %8
  %13 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.Cell, %struct.Cell* %13, i64 %15
  store %struct.Cell* %16, %struct.Cell** %2, align 8
  br label %17

; <label>:17:                                     ; preds = %22, %12
  %18 = load %struct.Cell*, %struct.Cell** %2, align 8
  %19 = getelementptr inbounds %struct.Cell, %struct.Cell* %18, i32 0, i32 5
  %20 = load %struct.Cell*, %struct.Cell** %19, align 8
  %21 = icmp ne %struct.Cell* %20, null
  br i1 %21, label %22, label %34

; <label>:22:                                     ; preds = %17
  %23 = load %struct.Cell*, %struct.Cell** %2, align 8
  %24 = getelementptr inbounds %struct.Cell, %struct.Cell* %23, i32 0, i32 5
  %25 = load %struct.Cell*, %struct.Cell** %24, align 8
  store %struct.Cell* %25, %struct.Cell** %3, align 8
  %26 = load %struct.Cell*, %struct.Cell** %3, align 8
  %27 = getelementptr inbounds %struct.Cell, %struct.Cell* %26, i32 0, i32 5
  %28 = load %struct.Cell*, %struct.Cell** %27, align 8
  %29 = load %struct.Cell*, %struct.Cell** %2, align 8
  %30 = getelementptr inbounds %struct.Cell, %struct.Cell* %29, i32 0, i32 5
  store %struct.Cell* %28, %struct.Cell** %30, align 8
  %31 = load %struct.cellpool*, %struct.cellpool** @pools, align 8
  %32 = getelementptr inbounds %struct.cellpool, %struct.cellpool* %31, i64 0
  %33 = load %struct.Cell*, %struct.Cell** %3, align 8
  call void @_Z19cellpool_returncellP8cellpoolP4Cell(%struct.cellpool* %32, %struct.Cell* %33)
  br label %17

; <label>:34:                                     ; preds = %17
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %8

; <label>:38:                                     ; preds = %8
  store i32 0, i32* %4, align 4
  br label %39

; <label>:39:                                     ; preds = %50, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @XDIVS, align 4
  %42 = load i32, i32* @ZDIVS, align 4
  %43 = mul nsw i32 %41, %42
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %53

; <label>:45:                                     ; preds = %39
  %46 = load %struct.cellpool*, %struct.cellpool** @pools, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cellpool, %struct.cellpool* %46, i64 %48
  call void @_Z16cellpool_destroyP8cellpool(%struct.cellpool* %49)
  br label %50

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %39

; <label>:53:                                     ; preds = %39
  %54 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* @attr) #3
  store i32 0, i32* %5, align 4
  br label %55

; <label>:55:                                     ; preds = %95, %53
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @numCells, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %98

; <label>:59:                                     ; preds = %55
  %60 = load i8*, i8** @border, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = trunc i8 %64 to i1
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 128, i32 1
  store i32 %67, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %68

; <label>:68:                                     ; preds = %82, %59
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %85

; <label>:72:                                     ; preds = %68
  %73 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %73, i64 %75
  %77 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %77, i64 %79
  %81 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %80) #3
  br label %82

; <label>:82:                                     ; preds = %72
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %68

; <label>:85:                                     ; preds = %68
  %86 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %86, i64 %88
  %90 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %89, align 8
  %91 = icmp eq %union.pthread_mutex_t* %90, null
  br i1 %91, label %94, label %92

; <label>:92:                                     ; preds = %85
  %93 = bitcast %union.pthread_mutex_t* %90 to i8*
  call void @_ZdaPv(i8* %93) #15
  br label %94

; <label>:94:                                     ; preds = %92, %85
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %55

; <label>:98:                                     ; preds = %55
  %99 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %100 = icmp eq %union.pthread_mutex_t** %99, null
  br i1 %100, label %103, label %101

; <label>:101:                                    ; preds = %98
  %102 = bitcast %union.pthread_mutex_t** %99 to i8*
  call void @_ZdaPv(i8* %102) #15
  br label %103

; <label>:103:                                    ; preds = %101, %98
  %104 = call i32 @_Z22parsec_barrier_destroyP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  %105 = load i8*, i8** @border, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %108, label %107

; <label>:107:                                    ; preds = %103
  call void @_ZdaPv(i8* %105) #15
  br label %108

; <label>:108:                                    ; preds = %107, %103
  %109 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %110 = bitcast %struct.Cell* %109 to i8*
  call void @free(i8* %110) #3
  %111 = load %struct.Cell*, %struct.Cell** @cells2, align 8
  %112 = bitcast %struct.Cell* %111 to i8*
  call void @free(i8* %112) #3
  %113 = load i32*, i32** @cnumPars, align 8
  %114 = bitcast i32* %113 to i8*
  call void @free(i8* %114) #3
  %115 = load i32*, i32** @cnumPars2, align 8
  %116 = bitcast i32* %115 to i8*
  call void @free(i8* %116) #3
  %117 = load %struct.Cell**, %struct.Cell*** @last_cells, align 8
  %118 = bitcast %struct.Cell** %117 to i8*
  call void @free(i8* %118) #3
  %119 = load i64*, i64** @thread, align 8
  %120 = icmp eq i64* %119, null
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %108
  %122 = bitcast i64* %119 to i8*
  call void @_ZdaPv(i8* %122) #15
  br label %123

; <label>:123:                                    ; preds = %121, %108
  %124 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %125 = icmp eq %struct.Grid* %124, null
  br i1 %125, label %128, label %126

; <label>:126:                                    ; preds = %123
  %127 = bitcast %struct.Grid* %124 to i8*
  call void @_ZdaPv(i8* %127) #15
  br label %128

; <label>:128:                                    ; preds = %126, %123
  ret void
}

declare void @_Z19cellpool_returncellP8cellpoolP4Cell(%struct.cellpool*, %struct.Cell*) #1

declare void @_Z16cellpool_destroyP8cellpool(%struct.cellpool*) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(%union.pthread_attr_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #10

declare i32 @_Z22parsec_barrier_destroyP16parsec_barrier_t(%struct.parsec_barrier_t*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z16ClearParticlesMTi(i32) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.Grid, %struct.Grid* %7, i64 %9
  %11 = getelementptr inbounds %struct.Grid, %struct.Grid* %10, i32 0, i32 0
  %12 = bitcast %union.anon* %11 to %struct.anon*
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %15

; <label>:15:                                     ; preds = %101, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Grid, %struct.Grid* %17, i64 %19
  %21 = getelementptr inbounds %struct.Grid, %struct.Grid* %20, i32 0, i32 0
  %22 = bitcast %union.anon* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %16, %24
  br i1 %25, label %26, label %104

; <label>:26:                                     ; preds = %15
  %27 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.Grid, %struct.Grid* %27, i64 %29
  %31 = getelementptr inbounds %struct.Grid, %struct.Grid* %30, i32 0, i32 0
  %32 = bitcast %union.anon* %31 to %struct.anon*
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  br label %35

; <label>:35:                                     ; preds = %97, %26
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.Grid, %struct.Grid* %37, i64 %39
  %41 = getelementptr inbounds %struct.Grid, %struct.Grid* %40, i32 0, i32 0
  %42 = bitcast %union.anon* %41 to %struct.anon*
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %36, %44
  br i1 %45, label %46, label %100

; <label>:46:                                     ; preds = %35
  %47 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.Grid, %struct.Grid* %47, i64 %49
  %51 = getelementptr inbounds %struct.Grid, %struct.Grid* %50, i32 0, i32 0
  %52 = bitcast %union.anon* %51 to %struct.anon*
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  br label %55

; <label>:55:                                     ; preds = %93, %46
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.Grid, %struct.Grid* %57, i64 %59
  %61 = getelementptr inbounds %struct.Grid, %struct.Grid* %60, i32 0, i32 0
  %62 = bitcast %union.anon* %61 to %struct.anon*
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %56, %64
  br i1 %65, label %66, label %96

; <label>:66:                                     ; preds = %55
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @ny, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @nx, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %6, align 4
  %76 = load i32*, i32** @cnumPars, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.Cell, %struct.Cell* %80, i64 %82
  %84 = getelementptr inbounds %struct.Cell, %struct.Cell* %83, i32 0, i32 5
  store %struct.Cell* null, %struct.Cell** %84, align 8
  %85 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.Cell, %struct.Cell* %85, i64 %87
  %89 = load %struct.Cell**, %struct.Cell*** @last_cells, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.Cell*, %struct.Cell** %89, i64 %91
  store %struct.Cell* %88, %struct.Cell** %92, align 8
  br label %93

; <label>:93:                                     ; preds = %66
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %55

; <label>:96:                                     ; preds = %55
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %35

; <label>:100:                                    ; preds = %35
  br label %101

; <label>:101:                                    ; preds = %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %15

; <label>:104:                                    ; preds = %15
  ret void
}

; Function Attrs: noinline optnone uwtable
define void @_Z13RebuildGridMTi(i32) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.Cell*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.Cell*, align 8
  store i32 %0, i32* %2, align 4
  %17 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Grid, %struct.Grid* %17, i64 %19
  %21 = getelementptr inbounds %struct.Grid, %struct.Grid* %20, i32 0, i32 0
  %22 = bitcast %union.anon* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %352, %1
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.Grid, %struct.Grid* %27, i64 %29
  %31 = getelementptr inbounds %struct.Grid, %struct.Grid* %30, i32 0, i32 0
  %32 = bitcast %union.anon* %31 to %struct.anon*
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %26, %34
  br i1 %35, label %36, label %355

; <label>:36:                                     ; preds = %25
  %37 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.Grid, %struct.Grid* %37, i64 %39
  %41 = getelementptr inbounds %struct.Grid, %struct.Grid* %40, i32 0, i32 0
  %42 = bitcast %union.anon* %41 to %struct.anon*
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  br label %45

; <label>:45:                                     ; preds = %348, %36
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.Grid, %struct.Grid* %47, i64 %49
  %51 = getelementptr inbounds %struct.Grid, %struct.Grid* %50, i32 0, i32 0
  %52 = bitcast %union.anon* %51 to %struct.anon*
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %46, %54
  br i1 %55, label %56, label %351

; <label>:56:                                     ; preds = %45
  %57 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.Grid, %struct.Grid* %57, i64 %59
  %61 = getelementptr inbounds %struct.Grid, %struct.Grid* %60, i32 0, i32 0
  %62 = bitcast %union.anon* %61 to %struct.anon*
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  br label %65

; <label>:65:                                     ; preds = %344, %56
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.Grid, %struct.Grid* %67, i64 %69
  %71 = getelementptr inbounds %struct.Grid, %struct.Grid* %70, i32 0, i32 0
  %72 = bitcast %union.anon* %71 to %struct.anon*
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %66, %74
  br i1 %75, label %76, label %347

; <label>:76:                                     ; preds = %65
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @ny, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* @nx, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %6, align 4
  %86 = load %struct.Cell*, %struct.Cell** @cells2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.Cell, %struct.Cell* %86, i64 %88
  store %struct.Cell* %89, %struct.Cell** %7, align 8
  %90 = load i32*, i32** @cnumPars2, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %95

; <label>:95:                                     ; preds = %324, %76
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %327

; <label>:99:                                     ; preds = %95
  %100 = load %struct.Cell*, %struct.Cell** %7, align 8
  %101 = getelementptr inbounds %struct.Cell, %struct.Cell* %100, i32 0, i32 0
  %102 = load i32, i32* %9, align 4
  %103 = srem i32 %102, 16
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %101, i64 0, i64 %104
  %106 = getelementptr inbounds %class.Vec3, %class.Vec3* %105, i32 0, i32 0
  %107 = load float, float* %106, align 4
  %108 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 0), align 4
  %109 = fsub float %107, %108
  %110 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 0), align 4
  %111 = fdiv float %109, %110
  %112 = fptosi float %111 to i32
  store i32 %112, i32* %10, align 4
  %113 = load %struct.Cell*, %struct.Cell** %7, align 8
  %114 = getelementptr inbounds %struct.Cell, %struct.Cell* %113, i32 0, i32 0
  %115 = load i32, i32* %9, align 4
  %116 = srem i32 %115, 16
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %114, i64 0, i64 %117
  %119 = getelementptr inbounds %class.Vec3, %class.Vec3* %118, i32 0, i32 1
  %120 = load float, float* %119, align 4
  %121 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 1), align 4
  %122 = fsub float %120, %121
  %123 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 1), align 4
  %124 = fdiv float %122, %123
  %125 = fptosi float %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load %struct.Cell*, %struct.Cell** %7, align 8
  %127 = getelementptr inbounds %struct.Cell, %struct.Cell* %126, i32 0, i32 0
  %128 = load i32, i32* %9, align 4
  %129 = srem i32 %128, 16
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %127, i64 0, i64 %130
  %132 = getelementptr inbounds %class.Vec3, %class.Vec3* %131, i32 0, i32 2
  %133 = load float, float* %132, align 4
  %134 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 2), align 4
  %135 = fsub float %133, %134
  %136 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @delta, i32 0, i32 2), align 4
  %137 = fdiv float %135, %136
  %138 = fptosi float %137 to i32
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %99
  store i32 0, i32* %10, align 4
  br label %151

; <label>:142:                                    ; preds = %99
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @nx, align 4
  %145 = sub nsw i32 %144, 1
  %146 = icmp sgt i32 %143, %145
  br i1 %146, label %147, label %150

; <label>:147:                                    ; preds = %142
  %148 = load i32, i32* @nx, align 4
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %150

; <label>:150:                                    ; preds = %147, %142
  br label %151

; <label>:151:                                    ; preds = %150, %141
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

; <label>:154:                                    ; preds = %151
  store i32 0, i32* %11, align 4
  br label %164

; <label>:155:                                    ; preds = %151
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @ny, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp sgt i32 %156, %158
  br i1 %159, label %160, label %163

; <label>:160:                                    ; preds = %155
  %161 = load i32, i32* @ny, align 4
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %163

; <label>:163:                                    ; preds = %160, %155
  br label %164

; <label>:164:                                    ; preds = %163, %154
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %164
  store i32 0, i32* %12, align 4
  br label %177

; <label>:168:                                    ; preds = %164
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @nz, align 4
  %171 = sub nsw i32 %170, 1
  %172 = icmp sgt i32 %169, %171
  br i1 %172, label %173, label %176

; <label>:173:                                    ; preds = %168
  %174 = load i32, i32* @nz, align 4
  %175 = sub nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %176

; <label>:176:                                    ; preds = %173, %168
  br label %177

; <label>:177:                                    ; preds = %176, %167
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @ny, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* @nx, align 4
  %184 = mul nsw i32 %182, %183
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %184, %185
  store i32 %186, i32* %13, align 4
  %187 = load i8*, i8** @border, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = trunc i8 %191 to i1
  br i1 %192, label %193, label %201

; <label>:193:                                    ; preds = %177
  %194 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %194, i64 %196
  %198 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %197, align 8
  %199 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %198, i64 0
  %200 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %199) #3
  br label %201

; <label>:201:                                    ; preds = %193, %177
  %202 = load %struct.Cell**, %struct.Cell*** @last_cells, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.Cell*, %struct.Cell** %202, i64 %204
  %206 = load %struct.Cell*, %struct.Cell** %205, align 8
  store %struct.Cell* %206, %struct.Cell** %14, align 8
  %207 = load i32*, i32** @cnumPars, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %15, align 4
  %212 = load i32, i32* %15, align 4
  %213 = srem i32 %212, 16
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %238

; <label>:215:                                    ; preds = %201
  %216 = load i32*, i32** @cnumPars, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %238

; <label>:222:                                    ; preds = %215
  %223 = load %struct.cellpool*, %struct.cellpool** @pools, align 8
  %224 = load i32, i32* %2, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.cellpool, %struct.cellpool* %223, i64 %225
  %227 = call %struct.Cell* @_Z16cellpool_getcellP8cellpool(%struct.cellpool* %226)
  %228 = load %struct.Cell*, %struct.Cell** %14, align 8
  %229 = getelementptr inbounds %struct.Cell, %struct.Cell* %228, i32 0, i32 5
  store %struct.Cell* %227, %struct.Cell** %229, align 8
  %230 = load %struct.Cell*, %struct.Cell** %14, align 8
  %231 = getelementptr inbounds %struct.Cell, %struct.Cell* %230, i32 0, i32 5
  %232 = load %struct.Cell*, %struct.Cell** %231, align 8
  store %struct.Cell* %232, %struct.Cell** %14, align 8
  %233 = load %struct.Cell*, %struct.Cell** %14, align 8
  %234 = load %struct.Cell**, %struct.Cell*** @last_cells, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.Cell*, %struct.Cell** %234, i64 %236
  store %struct.Cell* %233, %struct.Cell** %237, align 8
  br label %238

; <label>:238:                                    ; preds = %222, %215, %201
  %239 = load i32*, i32** @cnumPars, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  %245 = load i8*, i8** @border, align 8
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = trunc i8 %249 to i1
  br i1 %250, label %251, label %259

; <label>:251:                                    ; preds = %238
  %252 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %252, i64 %254
  %256 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %255, align 8
  %257 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %256, i64 0
  %258 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %257) #3
  br label %259

; <label>:259:                                    ; preds = %251, %238
  %260 = load %struct.Cell*, %struct.Cell** %7, align 8
  %261 = getelementptr inbounds %struct.Cell, %struct.Cell* %260, i32 0, i32 0
  %262 = load i32, i32* %9, align 4
  %263 = srem i32 %262, 16
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %261, i64 0, i64 %264
  %266 = load %struct.Cell*, %struct.Cell** %14, align 8
  %267 = getelementptr inbounds %struct.Cell, %struct.Cell* %266, i32 0, i32 0
  %268 = load i32, i32* %15, align 4
  %269 = srem i32 %268, 16
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %267, i64 0, i64 %270
  %272 = bitcast %class.Vec3* %271 to i8*
  %273 = bitcast %class.Vec3* %265 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %272, i8* %273, i64 12, i32 4, i1 false)
  %274 = load %struct.Cell*, %struct.Cell** %7, align 8
  %275 = getelementptr inbounds %struct.Cell, %struct.Cell* %274, i32 0, i32 1
  %276 = load i32, i32* %9, align 4
  %277 = srem i32 %276, 16
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %275, i64 0, i64 %278
  %280 = load %struct.Cell*, %struct.Cell** %14, align 8
  %281 = getelementptr inbounds %struct.Cell, %struct.Cell* %280, i32 0, i32 1
  %282 = load i32, i32* %15, align 4
  %283 = srem i32 %282, 16
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %281, i64 0, i64 %284
  %286 = bitcast %class.Vec3* %285 to i8*
  %287 = bitcast %class.Vec3* %279 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %286, i8* %287, i64 12, i32 4, i1 false)
  %288 = load %struct.Cell*, %struct.Cell** %7, align 8
  %289 = getelementptr inbounds %struct.Cell, %struct.Cell* %288, i32 0, i32 2
  %290 = load i32, i32* %9, align 4
  %291 = srem i32 %290, 16
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %289, i64 0, i64 %292
  %294 = load %struct.Cell*, %struct.Cell** %14, align 8
  %295 = getelementptr inbounds %struct.Cell, %struct.Cell* %294, i32 0, i32 2
  %296 = load i32, i32* %15, align 4
  %297 = srem i32 %296, 16
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %295, i64 0, i64 %298
  %300 = bitcast %class.Vec3* %299 to i8*
  %301 = bitcast %class.Vec3* %293 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %300, i8* %301, i64 12, i32 4, i1 false)
  %302 = load i32, i32* %9, align 4
  %303 = srem i32 %302, 16
  %304 = icmp eq i32 %303, 15
  br i1 %304, label %305, label %323

; <label>:305:                                    ; preds = %259
  %306 = load %struct.Cell*, %struct.Cell** %7, align 8
  store %struct.Cell* %306, %struct.Cell** %16, align 8
  %307 = load %struct.Cell*, %struct.Cell** %7, align 8
  %308 = getelementptr inbounds %struct.Cell, %struct.Cell* %307, i32 0, i32 5
  %309 = load %struct.Cell*, %struct.Cell** %308, align 8
  store %struct.Cell* %309, %struct.Cell** %7, align 8
  %310 = load %struct.Cell*, %struct.Cell** %16, align 8
  %311 = load %struct.Cell*, %struct.Cell** @cells2, align 8
  %312 = load i32, i32* %6, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.Cell, %struct.Cell* %311, i64 %313
  %315 = icmp ne %struct.Cell* %310, %314
  br i1 %315, label %316, label %322

; <label>:316:                                    ; preds = %305
  %317 = load %struct.cellpool*, %struct.cellpool** @pools, align 8
  %318 = load i32, i32* %2, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.cellpool, %struct.cellpool* %317, i64 %319
  %321 = load %struct.Cell*, %struct.Cell** %16, align 8
  call void @_Z19cellpool_returncellP8cellpoolP4Cell(%struct.cellpool* %320, %struct.Cell* %321)
  br label %322

; <label>:322:                                    ; preds = %316, %305
  br label %323

; <label>:323:                                    ; preds = %322, %259
  br label %324

; <label>:324:                                    ; preds = %323
  %325 = load i32, i32* %9, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %9, align 4
  br label %95

; <label>:327:                                    ; preds = %95
  %328 = load %struct.Cell*, %struct.Cell** %7, align 8
  %329 = icmp ne %struct.Cell* %328, null
  br i1 %329, label %330, label %343

; <label>:330:                                    ; preds = %327
  %331 = load %struct.Cell*, %struct.Cell** %7, align 8
  %332 = load %struct.Cell*, %struct.Cell** @cells2, align 8
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.Cell, %struct.Cell* %332, i64 %334
  %336 = icmp ne %struct.Cell* %331, %335
  br i1 %336, label %337, label %343

; <label>:337:                                    ; preds = %330
  %338 = load %struct.cellpool*, %struct.cellpool** @pools, align 8
  %339 = load i32, i32* %2, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.cellpool, %struct.cellpool* %338, i64 %340
  %342 = load %struct.Cell*, %struct.Cell** %7, align 8
  call void @_Z19cellpool_returncellP8cellpoolP4Cell(%struct.cellpool* %341, %struct.Cell* %342)
  br label %343

; <label>:343:                                    ; preds = %337, %330, %327
  br label %344

; <label>:344:                                    ; preds = %343
  %345 = load i32, i32* %5, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %5, align 4
  br label %65

; <label>:347:                                    ; preds = %65
  br label %348

; <label>:348:                                    ; preds = %347
  %349 = load i32, i32* %4, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %4, align 4
  br label %45

; <label>:351:                                    ; preds = %45
  br label %352

; <label>:352:                                    ; preds = %351
  %353 = load i32, i32* %3, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %3, align 4
  br label %25

; <label>:355:                                    ; preds = %25
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z17InitNeighCellListiiiPi(i32, i32, i32, i32*) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ny, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* @nx, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  br label %34

; <label>:34:                                     ; preds = %113, %4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sle i32 %35, 1
  br i1 %36, label %37, label %116

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* %12, align 4
  br label %38

; <label>:38:                                     ; preds = %109, %37
  %39 = load i32, i32* %12, align 4
  %40 = icmp sle i32 %39, 1
  br i1 %40, label %41, label %112

; <label>:41:                                     ; preds = %38
  store i32 -1, i32* %13, align 4
  br label %42

; <label>:42:                                     ; preds = %105, %41
  %43 = load i32, i32* %13, align 4
  %44 = icmp sle i32 %43, 1
  br i1 %44, label %45, label %108

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %104

; <label>:57:                                     ; preds = %45
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @nx, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %104

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %15, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %104

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @ny, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %104

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %16, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %104

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @nz, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %104

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @ny, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @nx, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %103

; <label>:88:                                     ; preds = %75
  %89 = load i32*, i32** @cnumPars, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

; <label>:95:                                     ; preds = %88
  %96 = load i32, i32* %17, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %103

; <label>:103:                                    ; preds = %95, %88, %75
  br label %104

; <label>:104:                                    ; preds = %103, %71, %68, %64, %61, %57, %45
  br label %105

; <label>:105:                                    ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %42

; <label>:108:                                    ; preds = %42
  br label %109

; <label>:109:                                    ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %38

; <label>:112:                                    ; preds = %38
  br label %113

; <label>:113:                                    ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %34

; <label>:116:                                    ; preds = %34
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z24InitDensitiesAndForcesMTi(i32) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.Grid, %struct.Grid* %10, i64 %12
  %14 = getelementptr inbounds %struct.Grid, %struct.Grid* %13, i32 0, i32 0
  %15 = bitcast %union.anon* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %18

; <label>:18:                                     ; preds = %126, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.Grid, %struct.Grid* %20, i64 %22
  %24 = getelementptr inbounds %struct.Grid, %struct.Grid* %23, i32 0, i32 0
  %25 = bitcast %union.anon* %24 to %struct.anon*
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %19, %27
  br i1 %28, label %29, label %129

; <label>:29:                                     ; preds = %18
  %30 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.Grid, %struct.Grid* %30, i64 %32
  %34 = getelementptr inbounds %struct.Grid, %struct.Grid* %33, i32 0, i32 0
  %35 = bitcast %union.anon* %34 to %struct.anon*
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %38

; <label>:38:                                     ; preds = %122, %29
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Grid, %struct.Grid* %40, i64 %42
  %44 = getelementptr inbounds %struct.Grid, %struct.Grid* %43, i32 0, i32 0
  %45 = bitcast %union.anon* %44 to %struct.anon*
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %39, %47
  br i1 %48, label %49, label %125

; <label>:49:                                     ; preds = %38
  %50 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.Grid, %struct.Grid* %50, i64 %52
  %54 = getelementptr inbounds %struct.Grid, %struct.Grid* %53, i32 0, i32 0
  %55 = bitcast %union.anon* %54 to %struct.anon*
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  br label %58

; <label>:58:                                     ; preds = %118, %49
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.Grid, %struct.Grid* %60, i64 %62
  %64 = getelementptr inbounds %struct.Grid, %struct.Grid* %63, i32 0, i32 0
  %65 = bitcast %union.anon* %64 to %struct.anon*
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %59, %67
  br i1 %68, label %69, label %121

; <label>:69:                                     ; preds = %58
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @ny, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @nx, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %6, align 4
  %79 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.Cell, %struct.Cell* %79, i64 %81
  store %struct.Cell* %82, %struct.Cell** %7, align 8
  %83 = load i32*, i32** @cnumPars, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %88

; <label>:88:                                     ; preds = %114, %69
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %117

; <label>:92:                                     ; preds = %88
  %93 = load %struct.Cell*, %struct.Cell** %7, align 8
  %94 = getelementptr inbounds %struct.Cell, %struct.Cell* %93, i32 0, i32 4
  %95 = load i32, i32* %9, align 4
  %96 = srem i32 %95, 16
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [16 x float], [16 x float]* %94, i64 0, i64 %97
  store float 0.000000e+00, float* %98, align 4
  %99 = load %struct.Cell*, %struct.Cell** %7, align 8
  %100 = getelementptr inbounds %struct.Cell, %struct.Cell* %99, i32 0, i32 3
  %101 = load i32, i32* %9, align 4
  %102 = srem i32 %101, 16
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %100, i64 0, i64 %103
  %105 = bitcast %class.Vec3* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* bitcast (%class.Vec3* @_ZL20externalAcceleration to i8*), i64 12, i32 4, i1 false)
  %106 = load i32, i32* %9, align 4
  %107 = srem i32 %106, 16
  %108 = icmp eq i32 %107, 15
  br i1 %108, label %109, label %113

; <label>:109:                                    ; preds = %92
  %110 = load %struct.Cell*, %struct.Cell** %7, align 8
  %111 = getelementptr inbounds %struct.Cell, %struct.Cell* %110, i32 0, i32 5
  %112 = load %struct.Cell*, %struct.Cell** %111, align 8
  store %struct.Cell* %112, %struct.Cell** %7, align 8
  br label %113

; <label>:113:                                    ; preds = %109, %92
  br label %114

; <label>:114:                                    ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %88

; <label>:117:                                    ; preds = %88
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %58

; <label>:121:                                    ; preds = %58
  br label %122

; <label>:122:                                    ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %38

; <label>:125:                                    ; preds = %38
  br label %126

; <label>:126:                                    ; preds = %125
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %18

; <label>:129:                                    ; preds = %18
  ret void
}

; Function Attrs: noinline optnone uwtable
define void @_Z18ComputeDensitiesMTi(i32) #5 {
  %2 = alloca i32, align 4
  %3 = alloca [27 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Cell*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.Cell*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca %class.Vec3, align 4
  %19 = alloca { <2 x float>, float }, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %22 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.Grid, %struct.Grid* %22, i64 %24
  %26 = getelementptr inbounds %struct.Grid, %struct.Grid* %25, i32 0, i32 0
  %27 = bitcast %union.anon* %26 to %struct.anon*
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %30

; <label>:30:                                     ; preds = %311, %1
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Grid, %struct.Grid* %32, i64 %34
  %36 = getelementptr inbounds %struct.Grid, %struct.Grid* %35, i32 0, i32 0
  %37 = bitcast %union.anon* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %31, %39
  br i1 %40, label %41, label %314

; <label>:41:                                     ; preds = %30
  %42 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.Grid, %struct.Grid* %42, i64 %44
  %46 = getelementptr inbounds %struct.Grid, %struct.Grid* %45, i32 0, i32 0
  %47 = bitcast %union.anon* %46 to %struct.anon*
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %5, align 4
  br label %50

; <label>:50:                                     ; preds = %307, %41
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.Grid, %struct.Grid* %52, i64 %54
  %56 = getelementptr inbounds %struct.Grid, %struct.Grid* %55, i32 0, i32 0
  %57 = bitcast %union.anon* %56 to %struct.anon*
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %51, %59
  br i1 %60, label %61, label %310

; <label>:61:                                     ; preds = %50
  %62 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.Grid, %struct.Grid* %62, i64 %64
  %66 = getelementptr inbounds %struct.Grid, %struct.Grid* %65, i32 0, i32 0
  %67 = bitcast %union.anon* %66 to %struct.anon*
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  br label %70

; <label>:70:                                     ; preds = %303, %61
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.Grid, %struct.Grid* %72, i64 %74
  %76 = getelementptr inbounds %struct.Grid, %struct.Grid* %75, i32 0, i32 0
  %77 = bitcast %union.anon* %76 to %struct.anon*
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %71, %79
  br i1 %80, label %81, label %306

; <label>:81:                                     ; preds = %70
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @ny, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @nx, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32*, i32** @cnumPars, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %81
  br label %303

; <label>:99:                                     ; preds = %81
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %4, align 4
  %103 = getelementptr inbounds [27 x i32], [27 x i32]* %3, i32 0, i32 0
  %104 = call i32 @_Z17InitNeighCellListiiiPi(i32 %100, i32 %101, i32 %102, i32* %103)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.Cell, %struct.Cell* %105, i64 %107
  store %struct.Cell* %108, %struct.Cell** %10, align 8
  store i32 0, i32* %11, align 4
  br label %109

; <label>:109:                                    ; preds = %299, %99
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %302

; <label>:113:                                    ; preds = %109
  store i32 0, i32* %12, align 4
  br label %114

; <label>:114:                                    ; preds = %287, %113
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %290

; <label>:118:                                    ; preds = %114
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [27 x i32], [27 x i32]* %3, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %13, align 4
  %123 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.Cell, %struct.Cell* %123, i64 %125
  store %struct.Cell* %126, %struct.Cell** %14, align 8
  %127 = load i32*, i32** @cnumPars, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %132

; <label>:132:                                    ; preds = %283, %118
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %286

; <label>:136:                                    ; preds = %132
  %137 = load %struct.Cell*, %struct.Cell** %14, align 8
  %138 = getelementptr inbounds %struct.Cell, %struct.Cell* %137, i32 0, i32 0
  %139 = load i32, i32* %16, align 4
  %140 = srem i32 %139, 16
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %138, i64 0, i64 %141
  %143 = load %struct.Cell*, %struct.Cell** %10, align 8
  %144 = getelementptr inbounds %struct.Cell, %struct.Cell* %143, i32 0, i32 0
  %145 = load i32, i32* %11, align 4
  %146 = srem i32 %145, 16
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %144, i64 0, i64 %147
  %149 = icmp ult %class.Vec3* %142, %148
  br i1 %149, label %150, label %274

; <label>:150:                                    ; preds = %136
  %151 = load %struct.Cell*, %struct.Cell** %10, align 8
  %152 = getelementptr inbounds %struct.Cell, %struct.Cell* %151, i32 0, i32 0
  %153 = load i32, i32* %11, align 4
  %154 = srem i32 %153, 16
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %152, i64 0, i64 %155
  %157 = load %struct.Cell*, %struct.Cell** %14, align 8
  %158 = getelementptr inbounds %struct.Cell, %struct.Cell* %157, i32 0, i32 0
  %159 = load i32, i32* %16, align 4
  %160 = srem i32 %159, 16
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %158, i64 0, i64 %161
  %163 = call { <2 x float>, float } @_ZNK4Vec3miERKS_(%class.Vec3* %156, %class.Vec3* dereferenceable(12) %162)
  store { <2 x float>, float } %163, { <2 x float>, float }* %19, align 8
  %164 = bitcast { <2 x float>, float }* %19 to i8*
  %165 = bitcast %class.Vec3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %164, i64 12, i32 4, i1 false)
  %166 = call float @_ZNK4Vec311GetLengthSqEv(%class.Vec3* %18)
  store float %166, float* %17, align 4
  %167 = load float, float* %17, align 4
  %168 = load float, float* @hSq, align 4
  %169 = fcmp olt float %167, %168
  br i1 %169, label %170, label %273

; <label>:170:                                    ; preds = %150
  %171 = load float, float* @hSq, align 4
  %172 = load float, float* %17, align 4
  %173 = fsub float %171, %172
  store float %173, float* %20, align 4
  %174 = load float, float* %20, align 4
  %175 = load float, float* %20, align 4
  %176 = fmul float %174, %175
  %177 = load float, float* %20, align 4
  %178 = fmul float %176, %177
  store float %178, float* %21, align 4
  %179 = load i8*, i8** @border, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = trunc i8 %183 to i1
  br i1 %184, label %185, label %215

; <label>:185:                                    ; preds = %170
  %186 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %186, i64 %188
  %190 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = srem i32 %191, 128
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %190, i64 %193
  %195 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %194) #3
  %196 = load float, float* %21, align 4
  %197 = load %struct.Cell*, %struct.Cell** %10, align 8
  %198 = getelementptr inbounds %struct.Cell, %struct.Cell* %197, i32 0, i32 4
  %199 = load i32, i32* %11, align 4
  %200 = srem i32 %199, 16
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [16 x float], [16 x float]* %198, i64 0, i64 %201
  %203 = load float, float* %202, align 4
  %204 = fadd float %203, %196
  store float %204, float* %202, align 4
  %205 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %205, i64 %207
  %209 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = srem i32 %210, 128
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %209, i64 %212
  %214 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %213) #3
  br label %225

; <label>:215:                                    ; preds = %170
  %216 = load float, float* %21, align 4
  %217 = load %struct.Cell*, %struct.Cell** %10, align 8
  %218 = getelementptr inbounds %struct.Cell, %struct.Cell* %217, i32 0, i32 4
  %219 = load i32, i32* %11, align 4
  %220 = srem i32 %219, 16
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [16 x float], [16 x float]* %218, i64 0, i64 %221
  %223 = load float, float* %222, align 4
  %224 = fadd float %223, %216
  store float %224, float* %222, align 4
  br label %225

; <label>:225:                                    ; preds = %215, %185
  %226 = load i8*, i8** @border, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = trunc i8 %230 to i1
  br i1 %231, label %232, label %262

; <label>:232:                                    ; preds = %225
  %233 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %233, i64 %235
  %237 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %236, align 8
  %238 = load i32, i32* %16, align 4
  %239 = srem i32 %238, 128
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %237, i64 %240
  %242 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %241) #3
  %243 = load float, float* %21, align 4
  %244 = load %struct.Cell*, %struct.Cell** %14, align 8
  %245 = getelementptr inbounds %struct.Cell, %struct.Cell* %244, i32 0, i32 4
  %246 = load i32, i32* %16, align 4
  %247 = srem i32 %246, 16
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [16 x float], [16 x float]* %245, i64 0, i64 %248
  %250 = load float, float* %249, align 4
  %251 = fadd float %250, %243
  store float %251, float* %249, align 4
  %252 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %252, i64 %254
  %256 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %255, align 8
  %257 = load i32, i32* %16, align 4
  %258 = srem i32 %257, 128
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %256, i64 %259
  %261 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %260) #3
  br label %272

; <label>:262:                                    ; preds = %225
  %263 = load float, float* %21, align 4
  %264 = load %struct.Cell*, %struct.Cell** %14, align 8
  %265 = getelementptr inbounds %struct.Cell, %struct.Cell* %264, i32 0, i32 4
  %266 = load i32, i32* %16, align 4
  %267 = srem i32 %266, 16
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [16 x float], [16 x float]* %265, i64 0, i64 %268
  %270 = load float, float* %269, align 4
  %271 = fadd float %270, %263
  store float %271, float* %269, align 4
  br label %272

; <label>:272:                                    ; preds = %262, %232
  br label %273

; <label>:273:                                    ; preds = %272, %150
  br label %274

; <label>:274:                                    ; preds = %273, %136
  %275 = load i32, i32* %16, align 4
  %276 = srem i32 %275, 16
  %277 = icmp eq i32 %276, 15
  br i1 %277, label %278, label %282

; <label>:278:                                    ; preds = %274
  %279 = load %struct.Cell*, %struct.Cell** %14, align 8
  %280 = getelementptr inbounds %struct.Cell, %struct.Cell* %279, i32 0, i32 5
  %281 = load %struct.Cell*, %struct.Cell** %280, align 8
  store %struct.Cell* %281, %struct.Cell** %14, align 8
  br label %282

; <label>:282:                                    ; preds = %278, %274
  br label %283

; <label>:283:                                    ; preds = %282
  %284 = load i32, i32* %16, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %16, align 4
  br label %132

; <label>:286:                                    ; preds = %132
  br label %287

; <label>:287:                                    ; preds = %286
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %12, align 4
  br label %114

; <label>:290:                                    ; preds = %114
  %291 = load i32, i32* %11, align 4
  %292 = srem i32 %291, 16
  %293 = icmp eq i32 %292, 15
  br i1 %293, label %294, label %298

; <label>:294:                                    ; preds = %290
  %295 = load %struct.Cell*, %struct.Cell** %10, align 8
  %296 = getelementptr inbounds %struct.Cell, %struct.Cell* %295, i32 0, i32 5
  %297 = load %struct.Cell*, %struct.Cell** %296, align 8
  store %struct.Cell* %297, %struct.Cell** %10, align 8
  br label %298

; <label>:298:                                    ; preds = %294, %290
  br label %299

; <label>:299:                                    ; preds = %298
  %300 = load i32, i32* %11, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %11, align 4
  br label %109

; <label>:302:                                    ; preds = %109
  br label %303

; <label>:303:                                    ; preds = %302, %98
  %304 = load i32, i32* %6, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %6, align 4
  br label %70

; <label>:306:                                    ; preds = %70
  br label %307

; <label>:307:                                    ; preds = %306
  %308 = load i32, i32* %5, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %5, align 4
  br label %50

; <label>:310:                                    ; preds = %50
  br label %311

; <label>:311:                                    ; preds = %310
  %312 = load i32, i32* %4, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %4, align 4
  br label %30

; <label>:314:                                    ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr float @_ZNK4Vec311GetLengthSqEv(%class.Vec3*) #4 comdat align 2 {
  %2 = alloca %class.Vec3*, align 8
  store %class.Vec3* %0, %class.Vec3** %2, align 8
  %3 = load %class.Vec3*, %class.Vec3** %2, align 8
  %4 = getelementptr inbounds %class.Vec3, %class.Vec3* %3, i32 0, i32 0
  %5 = load float, float* %4, align 4
  %6 = getelementptr inbounds %class.Vec3, %class.Vec3* %3, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = fmul float %5, %7
  %9 = getelementptr inbounds %class.Vec3, %class.Vec3* %3, i32 0, i32 1
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds %class.Vec3, %class.Vec3* %3, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = fmul float %10, %12
  %14 = fadd float %8, %13
  %15 = getelementptr inbounds %class.Vec3, %class.Vec3* %3, i32 0, i32 2
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %class.Vec3, %class.Vec3* %3, i32 0, i32 2
  %18 = load float, float* %17, align 4
  %19 = fmul float %16, %18
  %20 = fadd float %14, %19
  ret float %20
}

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z19ComputeDensities2MTi(i32) #4 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Cell*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load float, float* @hSq, align 4
  %12 = load float, float* @hSq, align 4
  %13 = fmul float %11, %12
  %14 = load float, float* @hSq, align 4
  %15 = fmul float %13, %14
  store float %15, float* %3, align 4
  %16 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.Grid, %struct.Grid* %16, i64 %18
  %20 = getelementptr inbounds %struct.Grid, %struct.Grid* %19, i32 0, i32 0
  %21 = bitcast %union.anon* %20 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  br label %24

; <label>:24:                                     ; preds = %137, %1
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.Grid, %struct.Grid* %26, i64 %28
  %30 = getelementptr inbounds %struct.Grid, %struct.Grid* %29, i32 0, i32 0
  %31 = bitcast %union.anon* %30 to %struct.anon*
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %25, %33
  br i1 %34, label %35, label %140

; <label>:35:                                     ; preds = %24
  %36 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.Grid, %struct.Grid* %36, i64 %38
  %40 = getelementptr inbounds %struct.Grid, %struct.Grid* %39, i32 0, i32 0
  %41 = bitcast %union.anon* %40 to %struct.anon*
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %5, align 4
  br label %44

; <label>:44:                                     ; preds = %133, %35
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Grid, %struct.Grid* %46, i64 %48
  %50 = getelementptr inbounds %struct.Grid, %struct.Grid* %49, i32 0, i32 0
  %51 = bitcast %union.anon* %50 to %struct.anon*
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %45, %53
  br i1 %54, label %55, label %136

; <label>:55:                                     ; preds = %44
  %56 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.Grid, %struct.Grid* %56, i64 %58
  %60 = getelementptr inbounds %struct.Grid, %struct.Grid* %59, i32 0, i32 0
  %61 = bitcast %union.anon* %60 to %struct.anon*
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  br label %64

; <label>:64:                                     ; preds = %129, %55
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.Grid, %struct.Grid* %66, i64 %68
  %70 = getelementptr inbounds %struct.Grid, %struct.Grid* %69, i32 0, i32 0
  %71 = bitcast %union.anon* %70 to %struct.anon*
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %65, %73
  br i1 %74, label %75, label %132

; <label>:75:                                     ; preds = %64
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @ny, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @nx, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.Cell, %struct.Cell* %85, i64 %87
  store %struct.Cell* %88, %struct.Cell** %8, align 8
  %89 = load i32*, i32** @cnumPars, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %94

; <label>:94:                                     ; preds = %125, %75
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %128

; <label>:98:                                     ; preds = %94
  %99 = load float, float* %3, align 4
  %100 = load %struct.Cell*, %struct.Cell** %8, align 8
  %101 = getelementptr inbounds %struct.Cell, %struct.Cell* %100, i32 0, i32 4
  %102 = load i32, i32* %10, align 4
  %103 = srem i32 %102, 16
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [16 x float], [16 x float]* %101, i64 0, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fadd float %106, %99
  store float %107, float* %105, align 4
  %108 = load float, float* @densityCoeff, align 4
  %109 = load %struct.Cell*, %struct.Cell** %8, align 8
  %110 = getelementptr inbounds %struct.Cell, %struct.Cell* %109, i32 0, i32 4
  %111 = load i32, i32* %10, align 4
  %112 = srem i32 %111, 16
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [16 x float], [16 x float]* %110, i64 0, i64 %113
  %115 = load float, float* %114, align 4
  %116 = fmul float %115, %108
  store float %116, float* %114, align 4
  %117 = load i32, i32* %10, align 4
  %118 = srem i32 %117, 16
  %119 = icmp eq i32 %118, 15
  br i1 %119, label %120, label %124

; <label>:120:                                    ; preds = %98
  %121 = load %struct.Cell*, %struct.Cell** %8, align 8
  %122 = getelementptr inbounds %struct.Cell, %struct.Cell* %121, i32 0, i32 5
  %123 = load %struct.Cell*, %struct.Cell** %122, align 8
  store %struct.Cell* %123, %struct.Cell** %8, align 8
  br label %124

; <label>:124:                                    ; preds = %120, %98
  br label %125

; <label>:125:                                    ; preds = %124
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %94

; <label>:128:                                    ; preds = %94
  br label %129

; <label>:129:                                    ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %64

; <label>:132:                                    ; preds = %64
  br label %133

; <label>:133:                                    ; preds = %132
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %44

; <label>:136:                                    ; preds = %44
  br label %137

; <label>:137:                                    ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %24

; <label>:140:                                    ; preds = %24
  ret void
}

; Function Attrs: noinline optnone uwtable
define void @_Z15ComputeForcesMTi(i32) #5 {
  %2 = alloca i32, align 4
  %3 = alloca [27 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Cell*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.Cell*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %class.Vec3, align 4
  %18 = alloca { <2 x float>, float }, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca %class.Vec3, align 4
  %24 = alloca %class.Vec3, align 4
  %25 = alloca { <2 x float>, float }, align 8
  %26 = alloca %class.Vec3, align 4
  %27 = alloca { <2 x float>, float }, align 8
  %28 = alloca { <2 x float>, float }, align 8
  %29 = alloca %class.Vec3, align 4
  %30 = alloca %class.Vec3, align 4
  %31 = alloca { <2 x float>, float }, align 8
  %32 = alloca %class.Vec3, align 4
  %33 = alloca { <2 x float>, float }, align 8
  %34 = alloca { <2 x float>, float }, align 8
  store i32 %0, i32* %2, align 4
  %35 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.Grid, %struct.Grid* %35, i64 %37
  %39 = getelementptr inbounds %struct.Grid, %struct.Grid* %38, i32 0, i32 0
  %40 = bitcast %union.anon* %39 to %struct.anon*
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  br label %43

; <label>:43:                                     ; preds = %385, %1
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.Grid, %struct.Grid* %45, i64 %47
  %49 = getelementptr inbounds %struct.Grid, %struct.Grid* %48, i32 0, i32 0
  %50 = bitcast %union.anon* %49 to %struct.anon*
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %44, %52
  br i1 %53, label %54, label %388

; <label>:54:                                     ; preds = %43
  %55 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.Grid, %struct.Grid* %55, i64 %57
  %59 = getelementptr inbounds %struct.Grid, %struct.Grid* %58, i32 0, i32 0
  %60 = bitcast %union.anon* %59 to %struct.anon*
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  br label %63

; <label>:63:                                     ; preds = %381, %54
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.Grid, %struct.Grid* %65, i64 %67
  %69 = getelementptr inbounds %struct.Grid, %struct.Grid* %68, i32 0, i32 0
  %70 = bitcast %union.anon* %69 to %struct.anon*
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %64, %72
  br i1 %73, label %74, label %384

; <label>:74:                                     ; preds = %63
  %75 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.Grid, %struct.Grid* %75, i64 %77
  %79 = getelementptr inbounds %struct.Grid, %struct.Grid* %78, i32 0, i32 0
  %80 = bitcast %union.anon* %79 to %struct.anon*
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %6, align 4
  br label %83

; <label>:83:                                     ; preds = %377, %74
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.Grid, %struct.Grid* %85, i64 %87
  %89 = getelementptr inbounds %struct.Grid, %struct.Grid* %88, i32 0, i32 0
  %90 = bitcast %union.anon* %89 to %struct.anon*
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %84, %92
  br i1 %93, label %94, label %380

; <label>:94:                                     ; preds = %83
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @ny, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* @nx, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %7, align 4
  %104 = load i32*, i32** @cnumPars, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %94
  br label %377

; <label>:112:                                    ; preds = %94
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %4, align 4
  %116 = getelementptr inbounds [27 x i32], [27 x i32]* %3, i32 0, i32 0
  %117 = call i32 @_Z17InitNeighCellListiiiPi(i32 %113, i32 %114, i32 %115, i32* %116)
  store i32 %117, i32* %9, align 4
  %118 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.Cell, %struct.Cell* %118, i64 %120
  store %struct.Cell* %121, %struct.Cell** %10, align 8
  store i32 0, i32* %11, align 4
  br label %122

; <label>:122:                                    ; preds = %373, %112
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %376

; <label>:126:                                    ; preds = %122
  store i32 0, i32* %12, align 4
  br label %127

; <label>:127:                                    ; preds = %361, %126
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %364

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [27 x i32], [27 x i32]* %3, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %13, align 4
  %136 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.Cell, %struct.Cell* %136, i64 %138
  store %struct.Cell* %139, %struct.Cell** %14, align 8
  %140 = load i32*, i32** @cnumPars, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %145

; <label>:145:                                    ; preds = %357, %131
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %360

; <label>:149:                                    ; preds = %145
  %150 = load %struct.Cell*, %struct.Cell** %14, align 8
  %151 = getelementptr inbounds %struct.Cell, %struct.Cell* %150, i32 0, i32 0
  %152 = load i32, i32* %16, align 4
  %153 = srem i32 %152, 16
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %151, i64 0, i64 %154
  %156 = load %struct.Cell*, %struct.Cell** %10, align 8
  %157 = getelementptr inbounds %struct.Cell, %struct.Cell* %156, i32 0, i32 0
  %158 = load i32, i32* %11, align 4
  %159 = srem i32 %158, 16
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %157, i64 0, i64 %160
  %162 = icmp ult %class.Vec3* %155, %161
  br i1 %162, label %163, label %348

; <label>:163:                                    ; preds = %149
  %164 = load %struct.Cell*, %struct.Cell** %10, align 8
  %165 = getelementptr inbounds %struct.Cell, %struct.Cell* %164, i32 0, i32 0
  %166 = load i32, i32* %11, align 4
  %167 = srem i32 %166, 16
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %165, i64 0, i64 %168
  %170 = load %struct.Cell*, %struct.Cell** %14, align 8
  %171 = getelementptr inbounds %struct.Cell, %struct.Cell* %170, i32 0, i32 0
  %172 = load i32, i32* %16, align 4
  %173 = srem i32 %172, 16
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %171, i64 0, i64 %174
  %176 = call { <2 x float>, float } @_ZNK4Vec3miERKS_(%class.Vec3* %169, %class.Vec3* dereferenceable(12) %175)
  store { <2 x float>, float } %176, { <2 x float>, float }* %18, align 8
  %177 = bitcast { <2 x float>, float }* %18 to i8*
  %178 = bitcast %class.Vec3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %177, i64 12, i32 4, i1 false)
  %179 = call float @_ZNK4Vec311GetLengthSqEv(%class.Vec3* %17)
  store float %179, float* %19, align 4
  %180 = load float, float* %19, align 4
  %181 = load float, float* @hSq, align 4
  %182 = fcmp olt float %180, %181
  br i1 %182, label %183, label %347

; <label>:183:                                    ; preds = %163
  store float 0x3D71979980000000, float* %21, align 4
  %184 = call dereferenceable(4) float* @_ZSt3maxIfERKT_S2_S2_(float* dereferenceable(4) %19, float* dereferenceable(4) %21)
  %185 = load float, float* %184, align 4
  %186 = call float @sqrtf(float %185) #3
  store float %186, float* %20, align 4
  %187 = load float, float* @h, align 4
  %188 = load float, float* %20, align 4
  %189 = fsub float %187, %188
  store float %189, float* %22, align 4
  %190 = load float, float* @pressureCoeff, align 4
  %191 = call { <2 x float>, float } @_ZNK4Vec3mlEf(%class.Vec3* %17, float %190)
  store { <2 x float>, float } %191, { <2 x float>, float }* %25, align 8
  %192 = bitcast { <2 x float>, float }* %25 to i8*
  %193 = bitcast %class.Vec3* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* %192, i64 12, i32 4, i1 false)
  %194 = load float, float* %22, align 4
  %195 = load float, float* %22, align 4
  %196 = fmul float %194, %195
  %197 = load float, float* %20, align 4
  %198 = fdiv float %196, %197
  %199 = call { <2 x float>, float } @_ZNK4Vec3mlEf(%class.Vec3* %24, float %198)
  store { <2 x float>, float } %199, { <2 x float>, float }* %27, align 8
  %200 = bitcast { <2 x float>, float }* %27 to i8*
  %201 = bitcast %class.Vec3* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* %200, i64 12, i32 4, i1 false)
  %202 = load %struct.Cell*, %struct.Cell** %10, align 8
  %203 = getelementptr inbounds %struct.Cell, %struct.Cell* %202, i32 0, i32 4
  %204 = load i32, i32* %11, align 4
  %205 = srem i32 %204, 16
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [16 x float], [16 x float]* %203, i64 0, i64 %206
  %208 = load float, float* %207, align 4
  %209 = load %struct.Cell*, %struct.Cell** %14, align 8
  %210 = getelementptr inbounds %struct.Cell, %struct.Cell* %209, i32 0, i32 4
  %211 = load i32, i32* %16, align 4
  %212 = srem i32 %211, 16
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [16 x float], [16 x float]* %210, i64 0, i64 %213
  %215 = load float, float* %214, align 4
  %216 = fadd float %208, %215
  %217 = fsub float %216, 2.000000e+03
  %218 = call { <2 x float>, float } @_ZNK4Vec3mlEf(%class.Vec3* %26, float %217)
  store { <2 x float>, float } %218, { <2 x float>, float }* %28, align 8
  %219 = bitcast { <2 x float>, float }* %28 to i8*
  %220 = bitcast %class.Vec3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %219, i64 12, i32 4, i1 false)
  %221 = load %struct.Cell*, %struct.Cell** %14, align 8
  %222 = getelementptr inbounds %struct.Cell, %struct.Cell* %221, i32 0, i32 2
  %223 = load i32, i32* %16, align 4
  %224 = srem i32 %223, 16
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %222, i64 0, i64 %225
  %227 = load %struct.Cell*, %struct.Cell** %10, align 8
  %228 = getelementptr inbounds %struct.Cell, %struct.Cell* %227, i32 0, i32 2
  %229 = load i32, i32* %11, align 4
  %230 = srem i32 %229, 16
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %228, i64 0, i64 %231
  %233 = call { <2 x float>, float } @_ZNK4Vec3miERKS_(%class.Vec3* %226, %class.Vec3* dereferenceable(12) %232)
  store { <2 x float>, float } %233, { <2 x float>, float }* %31, align 8
  %234 = bitcast { <2 x float>, float }* %31 to i8*
  %235 = bitcast %class.Vec3* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %235, i8* %234, i64 12, i32 4, i1 false)
  %236 = load float, float* @viscosityCoeff, align 4
  %237 = call { <2 x float>, float } @_ZNK4Vec3mlEf(%class.Vec3* %30, float %236)
  store { <2 x float>, float } %237, { <2 x float>, float }* %33, align 8
  %238 = bitcast { <2 x float>, float }* %33 to i8*
  %239 = bitcast %class.Vec3* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %239, i8* %238, i64 12, i32 4, i1 false)
  %240 = load float, float* %22, align 4
  %241 = call { <2 x float>, float } @_ZNK4Vec3mlEf(%class.Vec3* %32, float %240)
  store { <2 x float>, float } %241, { <2 x float>, float }* %34, align 8
  %242 = bitcast { <2 x float>, float }* %34 to i8*
  %243 = bitcast %class.Vec3* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %243, i8* %242, i64 12, i32 4, i1 false)
  %244 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3pLERKS_(%class.Vec3* %23, %class.Vec3* dereferenceable(12) %29)
  %245 = load %struct.Cell*, %struct.Cell** %10, align 8
  %246 = getelementptr inbounds %struct.Cell, %struct.Cell* %245, i32 0, i32 4
  %247 = load i32, i32* %11, align 4
  %248 = srem i32 %247, 16
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [16 x float], [16 x float]* %246, i64 0, i64 %249
  %251 = load float, float* %250, align 4
  %252 = load %struct.Cell*, %struct.Cell** %14, align 8
  %253 = getelementptr inbounds %struct.Cell, %struct.Cell* %252, i32 0, i32 4
  %254 = load i32, i32* %16, align 4
  %255 = srem i32 %254, 16
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [16 x float], [16 x float]* %253, i64 0, i64 %256
  %258 = load float, float* %257, align 4
  %259 = fmul float %251, %258
  %260 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3dVEf(%class.Vec3* %23, float %259)
  %261 = load i8*, i8** @border, align 8
  %262 = load i32, i32* %7, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = trunc i8 %265 to i1
  br i1 %266, label %267, label %295

; <label>:267:                                    ; preds = %183
  %268 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %268, i64 %270
  %272 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = srem i32 %273, 128
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %272, i64 %275
  %277 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %276) #3
  %278 = load %struct.Cell*, %struct.Cell** %10, align 8
  %279 = getelementptr inbounds %struct.Cell, %struct.Cell* %278, i32 0, i32 3
  %280 = load i32, i32* %11, align 4
  %281 = srem i32 %280, 16
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %279, i64 0, i64 %282
  %284 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3pLERKS_(%class.Vec3* %283, %class.Vec3* dereferenceable(12) %23)
  %285 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %285, i64 %287
  %289 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %288, align 8
  %290 = load i32, i32* %11, align 4
  %291 = srem i32 %290, 128
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %289, i64 %292
  %294 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %293) #3
  br label %303

; <label>:295:                                    ; preds = %183
  %296 = load %struct.Cell*, %struct.Cell** %10, align 8
  %297 = getelementptr inbounds %struct.Cell, %struct.Cell* %296, i32 0, i32 3
  %298 = load i32, i32* %11, align 4
  %299 = srem i32 %298, 16
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %297, i64 0, i64 %300
  %302 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3pLERKS_(%class.Vec3* %301, %class.Vec3* dereferenceable(12) %23)
  br label %303

; <label>:303:                                    ; preds = %295, %267
  %304 = load i8*, i8** @border, align 8
  %305 = load i32, i32* %13, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = trunc i8 %308 to i1
  br i1 %309, label %310, label %338

; <label>:310:                                    ; preds = %303
  %311 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %312 = load i32, i32* %13, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %311, i64 %313
  %315 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %314, align 8
  %316 = load i32, i32* %16, align 4
  %317 = srem i32 %316, 128
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %315, i64 %318
  %320 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %319) #3
  %321 = load %struct.Cell*, %struct.Cell** %14, align 8
  %322 = getelementptr inbounds %struct.Cell, %struct.Cell* %321, i32 0, i32 3
  %323 = load i32, i32* %16, align 4
  %324 = srem i32 %323, 16
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %322, i64 0, i64 %325
  %327 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3mIERKS_(%class.Vec3* %326, %class.Vec3* dereferenceable(12) %23)
  %328 = load %union.pthread_mutex_t**, %union.pthread_mutex_t*** @mutex, align 8
  %329 = load i32, i32* %13, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %union.pthread_mutex_t*, %union.pthread_mutex_t** %328, i64 %330
  %332 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %331, align 8
  %333 = load i32, i32* %16, align 4
  %334 = srem i32 %333, 128
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %332, i64 %335
  %337 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %336) #3
  br label %346

; <label>:338:                                    ; preds = %303
  %339 = load %struct.Cell*, %struct.Cell** %14, align 8
  %340 = getelementptr inbounds %struct.Cell, %struct.Cell* %339, i32 0, i32 3
  %341 = load i32, i32* %16, align 4
  %342 = srem i32 %341, 16
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %340, i64 0, i64 %343
  %345 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3mIERKS_(%class.Vec3* %344, %class.Vec3* dereferenceable(12) %23)
  br label %346

; <label>:346:                                    ; preds = %338, %310
  br label %347

; <label>:347:                                    ; preds = %346, %163
  br label %348

; <label>:348:                                    ; preds = %347, %149
  %349 = load i32, i32* %16, align 4
  %350 = srem i32 %349, 16
  %351 = icmp eq i32 %350, 15
  br i1 %351, label %352, label %356

; <label>:352:                                    ; preds = %348
  %353 = load %struct.Cell*, %struct.Cell** %14, align 8
  %354 = getelementptr inbounds %struct.Cell, %struct.Cell* %353, i32 0, i32 5
  %355 = load %struct.Cell*, %struct.Cell** %354, align 8
  store %struct.Cell* %355, %struct.Cell** %14, align 8
  br label %356

; <label>:356:                                    ; preds = %352, %348
  br label %357

; <label>:357:                                    ; preds = %356
  %358 = load i32, i32* %16, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %16, align 4
  br label %145

; <label>:360:                                    ; preds = %145
  br label %361

; <label>:361:                                    ; preds = %360
  %362 = load i32, i32* %12, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %12, align 4
  br label %127

; <label>:364:                                    ; preds = %127
  %365 = load i32, i32* %11, align 4
  %366 = srem i32 %365, 16
  %367 = icmp eq i32 %366, 15
  br i1 %367, label %368, label %372

; <label>:368:                                    ; preds = %364
  %369 = load %struct.Cell*, %struct.Cell** %10, align 8
  %370 = getelementptr inbounds %struct.Cell, %struct.Cell* %369, i32 0, i32 5
  %371 = load %struct.Cell*, %struct.Cell** %370, align 8
  store %struct.Cell* %371, %struct.Cell** %10, align 8
  br label %372

; <label>:372:                                    ; preds = %368, %364
  br label %373

; <label>:373:                                    ; preds = %372
  %374 = load i32, i32* %11, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %11, align 4
  br label %122

; <label>:376:                                    ; preds = %122
  br label %377

; <label>:377:                                    ; preds = %376, %111
  %378 = load i32, i32* %6, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %6, align 4
  br label %83

; <label>:380:                                    ; preds = %83
  br label %381

; <label>:381:                                    ; preds = %380
  %382 = load i32, i32* %5, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %5, align 4
  br label %63

; <label>:384:                                    ; preds = %63
  br label %385

; <label>:385:                                    ; preds = %384
  %386 = load i32, i32* %4, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %4, align 4
  br label %43

; <label>:388:                                    ; preds = %43
  ret void
}

; Function Attrs: nounwind
declare float @sqrtf(float) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(4) float* @_ZSt3maxIfERKT_S2_S2_(float* dereferenceable(4), float* dereferenceable(4)) #4 comdat {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  %6 = load float*, float** %4, align 8
  %7 = load float, float* %6, align 4
  %8 = load float*, float** %5, align 8
  %9 = load float, float* %8, align 4
  %10 = fcmp olt float %7, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load float*, float** %5, align 8
  store float* %12, float** %3, align 8
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = load float*, float** %4, align 8
  store float* %14, float** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load float*, float** %3, align 8
  ret float* %16
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3mlEf(%class.Vec3*, float) #5 comdat align 2 {
  %3 = alloca %class.Vec3, align 4
  %4 = alloca %class.Vec3*, align 8
  %5 = alloca float, align 4
  %6 = alloca { <2 x float>, float }, align 8
  store %class.Vec3* %0, %class.Vec3** %4, align 8
  store float %1, float* %5, align 4
  %7 = load %class.Vec3*, %class.Vec3** %4, align 8
  %8 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = load float, float* %5, align 4
  %11 = fmul float %9, %10
  %12 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 1
  %13 = load float, float* %12, align 4
  %14 = load float, float* %5, align 4
  %15 = fmul float %13, %14
  %16 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 2
  %17 = load float, float* %16, align 4
  %18 = load float, float* %5, align 4
  %19 = fmul float %17, %18
  call void @_ZN4Vec3C2Efff(%class.Vec3* %3, float %11, float %15, float %19)
  %20 = bitcast { <2 x float>, float }* %6 to i8*
  %21 = bitcast %class.Vec3* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 12, i32 4, i1 false)
  %22 = load { <2 x float>, float }, { <2 x float>, float }* %6, align 8
  ret { <2 x float>, float } %22
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(12) %class.Vec3* @_ZN4Vec3pLERKS_(%class.Vec3*, %class.Vec3* dereferenceable(12)) #4 comdat align 2 {
  %3 = alloca %class.Vec3*, align 8
  %4 = alloca %class.Vec3*, align 8
  store %class.Vec3* %0, %class.Vec3** %3, align 8
  store %class.Vec3* %1, %class.Vec3** %4, align 8
  %5 = load %class.Vec3*, %class.Vec3** %3, align 8
  %6 = load %class.Vec3*, %class.Vec3** %4, align 8
  %7 = getelementptr inbounds %class.Vec3, %class.Vec3* %6, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds %class.Vec3, %class.Vec3* %5, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = fadd float %10, %8
  store float %11, float* %9, align 4
  %12 = load %class.Vec3*, %class.Vec3** %4, align 8
  %13 = getelementptr inbounds %class.Vec3, %class.Vec3* %12, i32 0, i32 1
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds %class.Vec3, %class.Vec3* %5, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fadd float %16, %14
  store float %17, float* %15, align 4
  %18 = load %class.Vec3*, %class.Vec3** %4, align 8
  %19 = getelementptr inbounds %class.Vec3, %class.Vec3* %18, i32 0, i32 2
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds %class.Vec3, %class.Vec3* %5, i32 0, i32 2
  %22 = load float, float* %21, align 4
  %23 = fadd float %22, %20
  store float %23, float* %21, align 4
  ret %class.Vec3* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(12) %class.Vec3* @_ZN4Vec3dVEf(%class.Vec3*, float) #4 comdat align 2 {
  %3 = alloca %class.Vec3*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store %class.Vec3* %0, %class.Vec3** %3, align 8
  store float %1, float* %4, align 4
  %6 = load %class.Vec3*, %class.Vec3** %3, align 8
  %7 = load float, float* %4, align 4
  %8 = fdiv float 1.000000e+00, %7
  store float %8, float* %5, align 4
  %9 = load float, float* %5, align 4
  %10 = getelementptr inbounds %class.Vec3, %class.Vec3* %6, i32 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = fmul float %11, %9
  store float %12, float* %10, align 4
  %13 = load float, float* %5, align 4
  %14 = getelementptr inbounds %class.Vec3, %class.Vec3* %6, i32 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = fmul float %15, %13
  store float %16, float* %14, align 4
  %17 = load float, float* %5, align 4
  %18 = getelementptr inbounds %class.Vec3, %class.Vec3* %6, i32 0, i32 2
  %19 = load float, float* %18, align 4
  %20 = fmul float %19, %17
  store float %20, float* %18, align 4
  ret %class.Vec3* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(12) %class.Vec3* @_ZN4Vec3mIERKS_(%class.Vec3*, %class.Vec3* dereferenceable(12)) #4 comdat align 2 {
  %3 = alloca %class.Vec3*, align 8
  %4 = alloca %class.Vec3*, align 8
  store %class.Vec3* %0, %class.Vec3** %3, align 8
  store %class.Vec3* %1, %class.Vec3** %4, align 8
  %5 = load %class.Vec3*, %class.Vec3** %3, align 8
  %6 = load %class.Vec3*, %class.Vec3** %4, align 8
  %7 = getelementptr inbounds %class.Vec3, %class.Vec3* %6, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds %class.Vec3, %class.Vec3* %5, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = fsub float %10, %8
  store float %11, float* %9, align 4
  %12 = load %class.Vec3*, %class.Vec3** %4, align 8
  %13 = getelementptr inbounds %class.Vec3, %class.Vec3* %12, i32 0, i32 1
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds %class.Vec3, %class.Vec3* %5, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fsub float %16, %14
  store float %17, float* %15, align 4
  %18 = load %class.Vec3*, %class.Vec3** %4, align 8
  %19 = getelementptr inbounds %class.Vec3, %class.Vec3* %18, i32 0, i32 2
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds %class.Vec3, %class.Vec3* %5, i32 0, i32 2
  %22 = load float, float* %21, align 4
  %23 = fsub float %22, %20
  store float %23, float* %21, align 4
  ret %class.Vec3* %5
}

; Function Attrs: noinline optnone uwtable
define void @_Z19ProcessCollisionsMTi(i32) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %class.Vec3, align 4
  %12 = alloca %class.Vec3, align 4
  %13 = alloca { <2 x float>, float }, align 8
  %14 = alloca { <2 x float>, float }, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %21 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.Grid, %struct.Grid* %21, i64 %23
  %25 = getelementptr inbounds %struct.Grid, %struct.Grid* %24, i32 0, i32 0
  %26 = bitcast %union.anon* %25 to %struct.anon*
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %367, %1
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.Grid, %struct.Grid* %31, i64 %33
  %35 = getelementptr inbounds %struct.Grid, %struct.Grid* %34, i32 0, i32 0
  %36 = bitcast %union.anon* %35 to %struct.anon*
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %30, %38
  br i1 %39, label %40, label %370

; <label>:40:                                     ; preds = %29
  %41 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.Grid, %struct.Grid* %41, i64 %43
  %45 = getelementptr inbounds %struct.Grid, %struct.Grid* %44, i32 0, i32 0
  %46 = bitcast %union.anon* %45 to %struct.anon*
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  br label %49

; <label>:49:                                     ; preds = %363, %40
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.Grid, %struct.Grid* %51, i64 %53
  %55 = getelementptr inbounds %struct.Grid, %struct.Grid* %54, i32 0, i32 0
  %56 = bitcast %union.anon* %55 to %struct.anon*
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %50, %58
  br i1 %59, label %60, label %366

; <label>:60:                                     ; preds = %49
  %61 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.Grid, %struct.Grid* %61, i64 %63
  %65 = getelementptr inbounds %struct.Grid, %struct.Grid* %64, i32 0, i32 0
  %66 = bitcast %union.anon* %65 to %struct.anon*
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  br label %69

; <label>:69:                                     ; preds = %359, %60
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.Grid, %struct.Grid* %71, i64 %73
  %75 = getelementptr inbounds %struct.Grid, %struct.Grid* %74, i32 0, i32 0
  %76 = bitcast %union.anon* %75 to %struct.anon*
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %70, %78
  br i1 %79, label %80, label %362

; <label>:80:                                     ; preds = %69
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %107, label %83

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %107, label %86

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %3, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %107, label %89

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @nx, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %107, label %94

; <label>:94:                                     ; preds = %89
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @ny, align 4
  %97 = sub nsw i32 %96, 1
  %98 = icmp eq i32 %95, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @nz, align 4
  %102 = sub nsw i32 %101, 1
  %103 = icmp eq i32 %100, %102
  %104 = zext i1 %103 to i32
  %105 = icmp eq i32 %99, %104
  br i1 %105, label %107, label %106

; <label>:106:                                    ; preds = %94
  br label %359

; <label>:107:                                    ; preds = %94, %89, %86, %83, %80
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @ny, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* @nx, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %6, align 4
  %117 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.Cell, %struct.Cell* %117, i64 %119
  store %struct.Cell* %120, %struct.Cell** %7, align 8
  %121 = load i32*, i32** @cnumPars, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %126

; <label>:126:                                    ; preds = %355, %107
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %358

; <label>:130:                                    ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = srem i32 %131, 16
  store i32 %132, i32* %10, align 4
  %133 = load %struct.Cell*, %struct.Cell** %7, align 8
  %134 = getelementptr inbounds %struct.Cell, %struct.Cell* %133, i32 0, i32 0
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %134, i64 0, i64 %136
  %138 = load %struct.Cell*, %struct.Cell** %7, align 8
  %139 = getelementptr inbounds %struct.Cell, %struct.Cell* %138, i32 0, i32 1
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %139, i64 0, i64 %141
  %143 = load float, float* @_ZL8timeStep, align 4
  %144 = call { <2 x float>, float } @_ZNK4Vec3mlEf(%class.Vec3* %142, float %143)
  store { <2 x float>, float } %144, { <2 x float>, float }* %13, align 8
  %145 = bitcast { <2 x float>, float }* %13 to i8*
  %146 = bitcast %class.Vec3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %146, i8* %145, i64 12, i32 4, i1 false)
  %147 = call { <2 x float>, float } @_ZNK4Vec3plERKS_(%class.Vec3* %137, %class.Vec3* dereferenceable(12) %12)
  store { <2 x float>, float } %147, { <2 x float>, float }* %14, align 8
  %148 = bitcast { <2 x float>, float }* %14 to i8*
  %149 = bitcast %class.Vec3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* %148, i64 12, i32 4, i1 false)
  %150 = load i32, i32* %5, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %181

; <label>:152:                                    ; preds = %130
  %153 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 0
  %154 = load float, float* %153, align 4
  %155 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 0), align 4
  %156 = fsub float %154, %155
  %157 = fsub float 0x3F2A36E2E0000000, %156
  store float %157, float* %15, align 4
  %158 = load float, float* %15, align 4
  %159 = fcmp ogt float %158, 0x3DDB7CDFE0000000
  br i1 %159, label %160, label %180

; <label>:160:                                    ; preds = %152
  %161 = load float, float* %15, align 4
  %162 = fmul float 3.000000e+04, %161
  %163 = load %struct.Cell*, %struct.Cell** %7, align 8
  %164 = getelementptr inbounds %struct.Cell, %struct.Cell* %163, i32 0, i32 2
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %164, i64 0, i64 %166
  %168 = getelementptr inbounds %class.Vec3, %class.Vec3* %167, i32 0, i32 0
  %169 = load float, float* %168, align 4
  %170 = fmul float 1.280000e+02, %169
  %171 = fsub float %162, %170
  %172 = load %struct.Cell*, %struct.Cell** %7, align 8
  %173 = getelementptr inbounds %struct.Cell, %struct.Cell* %172, i32 0, i32 3
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %173, i64 0, i64 %175
  %177 = getelementptr inbounds %class.Vec3, %class.Vec3* %176, i32 0, i32 0
  %178 = load float, float* %177, align 4
  %179 = fadd float %178, %171
  store float %179, float* %177, align 4
  br label %180

; <label>:180:                                    ; preds = %160, %152
  br label %181

; <label>:181:                                    ; preds = %180, %130
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @nx, align 4
  %184 = sub nsw i32 %183, 1
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %215

; <label>:186:                                    ; preds = %181
  %187 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMax, i32 0, i32 0), align 4
  %188 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 0
  %189 = load float, float* %188, align 4
  %190 = fsub float %187, %189
  %191 = fsub float 0x3F2A36E2E0000000, %190
  store float %191, float* %16, align 4
  %192 = load float, float* %16, align 4
  %193 = fcmp ogt float %192, 0x3DDB7CDFE0000000
  br i1 %193, label %194, label %214

; <label>:194:                                    ; preds = %186
  %195 = load float, float* %16, align 4
  %196 = fmul float 3.000000e+04, %195
  %197 = load %struct.Cell*, %struct.Cell** %7, align 8
  %198 = getelementptr inbounds %struct.Cell, %struct.Cell* %197, i32 0, i32 2
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %198, i64 0, i64 %200
  %202 = getelementptr inbounds %class.Vec3, %class.Vec3* %201, i32 0, i32 0
  %203 = load float, float* %202, align 4
  %204 = fmul float 1.280000e+02, %203
  %205 = fadd float %196, %204
  %206 = load %struct.Cell*, %struct.Cell** %7, align 8
  %207 = getelementptr inbounds %struct.Cell, %struct.Cell* %206, i32 0, i32 3
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %207, i64 0, i64 %209
  %211 = getelementptr inbounds %class.Vec3, %class.Vec3* %210, i32 0, i32 0
  %212 = load float, float* %211, align 4
  %213 = fsub float %212, %205
  store float %213, float* %211, align 4
  br label %214

; <label>:214:                                    ; preds = %194, %186
  br label %215

; <label>:215:                                    ; preds = %214, %181
  %216 = load i32, i32* %4, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %247

; <label>:218:                                    ; preds = %215
  %219 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 1
  %220 = load float, float* %219, align 4
  %221 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 1), align 4
  %222 = fsub float %220, %221
  %223 = fsub float 0x3F2A36E2E0000000, %222
  store float %223, float* %17, align 4
  %224 = load float, float* %17, align 4
  %225 = fcmp ogt float %224, 0x3DDB7CDFE0000000
  br i1 %225, label %226, label %246

; <label>:226:                                    ; preds = %218
  %227 = load float, float* %17, align 4
  %228 = fmul float 3.000000e+04, %227
  %229 = load %struct.Cell*, %struct.Cell** %7, align 8
  %230 = getelementptr inbounds %struct.Cell, %struct.Cell* %229, i32 0, i32 2
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %230, i64 0, i64 %232
  %234 = getelementptr inbounds %class.Vec3, %class.Vec3* %233, i32 0, i32 1
  %235 = load float, float* %234, align 4
  %236 = fmul float 1.280000e+02, %235
  %237 = fsub float %228, %236
  %238 = load %struct.Cell*, %struct.Cell** %7, align 8
  %239 = getelementptr inbounds %struct.Cell, %struct.Cell* %238, i32 0, i32 3
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %239, i64 0, i64 %241
  %243 = getelementptr inbounds %class.Vec3, %class.Vec3* %242, i32 0, i32 1
  %244 = load float, float* %243, align 4
  %245 = fadd float %244, %237
  store float %245, float* %243, align 4
  br label %246

; <label>:246:                                    ; preds = %226, %218
  br label %247

; <label>:247:                                    ; preds = %246, %215
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* @ny, align 4
  %250 = sub nsw i32 %249, 1
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %252, label %281

; <label>:252:                                    ; preds = %247
  %253 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMax, i32 0, i32 1), align 4
  %254 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 1
  %255 = load float, float* %254, align 4
  %256 = fsub float %253, %255
  %257 = fsub float 0x3F2A36E2E0000000, %256
  store float %257, float* %18, align 4
  %258 = load float, float* %18, align 4
  %259 = fcmp ogt float %258, 0x3DDB7CDFE0000000
  br i1 %259, label %260, label %280

; <label>:260:                                    ; preds = %252
  %261 = load float, float* %18, align 4
  %262 = fmul float 3.000000e+04, %261
  %263 = load %struct.Cell*, %struct.Cell** %7, align 8
  %264 = getelementptr inbounds %struct.Cell, %struct.Cell* %263, i32 0, i32 2
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %264, i64 0, i64 %266
  %268 = getelementptr inbounds %class.Vec3, %class.Vec3* %267, i32 0, i32 1
  %269 = load float, float* %268, align 4
  %270 = fmul float 1.280000e+02, %269
  %271 = fadd float %262, %270
  %272 = load %struct.Cell*, %struct.Cell** %7, align 8
  %273 = getelementptr inbounds %struct.Cell, %struct.Cell* %272, i32 0, i32 3
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %273, i64 0, i64 %275
  %277 = getelementptr inbounds %class.Vec3, %class.Vec3* %276, i32 0, i32 1
  %278 = load float, float* %277, align 4
  %279 = fsub float %278, %271
  store float %279, float* %277, align 4
  br label %280

; <label>:280:                                    ; preds = %260, %252
  br label %281

; <label>:281:                                    ; preds = %280, %247
  %282 = load i32, i32* %3, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %313

; <label>:284:                                    ; preds = %281
  %285 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 2
  %286 = load float, float* %285, align 4
  %287 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 2), align 4
  %288 = fsub float %286, %287
  %289 = fsub float 0x3F2A36E2E0000000, %288
  store float %289, float* %19, align 4
  %290 = load float, float* %19, align 4
  %291 = fcmp ogt float %290, 0x3DDB7CDFE0000000
  br i1 %291, label %292, label %312

; <label>:292:                                    ; preds = %284
  %293 = load float, float* %19, align 4
  %294 = fmul float 3.000000e+04, %293
  %295 = load %struct.Cell*, %struct.Cell** %7, align 8
  %296 = getelementptr inbounds %struct.Cell, %struct.Cell* %295, i32 0, i32 2
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %296, i64 0, i64 %298
  %300 = getelementptr inbounds %class.Vec3, %class.Vec3* %299, i32 0, i32 2
  %301 = load float, float* %300, align 4
  %302 = fmul float 1.280000e+02, %301
  %303 = fsub float %294, %302
  %304 = load %struct.Cell*, %struct.Cell** %7, align 8
  %305 = getelementptr inbounds %struct.Cell, %struct.Cell* %304, i32 0, i32 3
  %306 = load i32, i32* %10, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %305, i64 0, i64 %307
  %309 = getelementptr inbounds %class.Vec3, %class.Vec3* %308, i32 0, i32 2
  %310 = load float, float* %309, align 4
  %311 = fadd float %310, %303
  store float %311, float* %309, align 4
  br label %312

; <label>:312:                                    ; preds = %292, %284
  br label %313

; <label>:313:                                    ; preds = %312, %281
  %314 = load i32, i32* %3, align 4
  %315 = load i32, i32* @nz, align 4
  %316 = sub nsw i32 %315, 1
  %317 = icmp eq i32 %314, %316
  br i1 %317, label %318, label %347

; <label>:318:                                    ; preds = %313
  %319 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMax, i32 0, i32 2), align 4
  %320 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 2
  %321 = load float, float* %320, align 4
  %322 = fsub float %319, %321
  %323 = fsub float 0x3F2A36E2E0000000, %322
  store float %323, float* %20, align 4
  %324 = load float, float* %20, align 4
  %325 = fcmp ogt float %324, 0x3DDB7CDFE0000000
  br i1 %325, label %326, label %346

; <label>:326:                                    ; preds = %318
  %327 = load float, float* %20, align 4
  %328 = fmul float 3.000000e+04, %327
  %329 = load %struct.Cell*, %struct.Cell** %7, align 8
  %330 = getelementptr inbounds %struct.Cell, %struct.Cell* %329, i32 0, i32 2
  %331 = load i32, i32* %10, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %330, i64 0, i64 %332
  %334 = getelementptr inbounds %class.Vec3, %class.Vec3* %333, i32 0, i32 2
  %335 = load float, float* %334, align 4
  %336 = fmul float 1.280000e+02, %335
  %337 = fadd float %328, %336
  %338 = load %struct.Cell*, %struct.Cell** %7, align 8
  %339 = getelementptr inbounds %struct.Cell, %struct.Cell* %338, i32 0, i32 3
  %340 = load i32, i32* %10, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %339, i64 0, i64 %341
  %343 = getelementptr inbounds %class.Vec3, %class.Vec3* %342, i32 0, i32 2
  %344 = load float, float* %343, align 4
  %345 = fsub float %344, %337
  store float %345, float* %343, align 4
  br label %346

; <label>:346:                                    ; preds = %326, %318
  br label %347

; <label>:347:                                    ; preds = %346, %313
  %348 = load i32, i32* %10, align 4
  %349 = icmp eq i32 %348, 15
  br i1 %349, label %350, label %354

; <label>:350:                                    ; preds = %347
  %351 = load %struct.Cell*, %struct.Cell** %7, align 8
  %352 = getelementptr inbounds %struct.Cell, %struct.Cell* %351, i32 0, i32 5
  %353 = load %struct.Cell*, %struct.Cell** %352, align 8
  store %struct.Cell* %353, %struct.Cell** %7, align 8
  br label %354

; <label>:354:                                    ; preds = %350, %347
  br label %355

; <label>:355:                                    ; preds = %354
  %356 = load i32, i32* %9, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %9, align 4
  br label %126

; <label>:358:                                    ; preds = %126
  br label %359

; <label>:359:                                    ; preds = %358, %106
  %360 = load i32, i32* %5, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %5, align 4
  br label %69

; <label>:362:                                    ; preds = %69
  br label %363

; <label>:363:                                    ; preds = %362
  %364 = load i32, i32* %4, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %4, align 4
  br label %49

; <label>:366:                                    ; preds = %49
  br label %367

; <label>:367:                                    ; preds = %366
  %368 = load i32, i32* %3, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %3, align 4
  br label %29

; <label>:370:                                    ; preds = %29
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3plERKS_(%class.Vec3*, %class.Vec3* dereferenceable(12)) #5 comdat align 2 {
  %3 = alloca %class.Vec3, align 4
  %4 = alloca %class.Vec3*, align 8
  %5 = alloca %class.Vec3*, align 8
  %6 = alloca { <2 x float>, float }, align 8
  store %class.Vec3* %0, %class.Vec3** %4, align 8
  store %class.Vec3* %1, %class.Vec3** %5, align 8
  %7 = load %class.Vec3*, %class.Vec3** %4, align 8
  %8 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = load %class.Vec3*, %class.Vec3** %5, align 8
  %11 = getelementptr inbounds %class.Vec3, %class.Vec3* %10, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = fadd float %9, %12
  %14 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = load %class.Vec3*, %class.Vec3** %5, align 8
  %17 = getelementptr inbounds %class.Vec3, %class.Vec3* %16, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = fadd float %15, %18
  %20 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 2
  %21 = load float, float* %20, align 4
  %22 = load %class.Vec3*, %class.Vec3** %5, align 8
  %23 = getelementptr inbounds %class.Vec3, %class.Vec3* %22, i32 0, i32 2
  %24 = load float, float* %23, align 4
  %25 = fadd float %21, %24
  call void @_ZN4Vec3C2Efff(%class.Vec3* %3, float %13, float %19, float %25)
  %26 = bitcast { <2 x float>, float }* %6 to i8*
  %27 = bitcast %class.Vec3* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 12, i32 4, i1 false)
  %28 = load { <2 x float>, float }, { <2 x float>, float }* %6, align 8
  ret { <2 x float>, float } %28
}

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z20ProcessCollisions2MTi(i32) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %class.Vec3, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %18 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Grid, %struct.Grid* %18, i64 %20
  %22 = getelementptr inbounds %struct.Grid, %struct.Grid* %21, i32 0, i32 0
  %23 = bitcast %union.anon* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %26

; <label>:26:                                     ; preds = %429, %1
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Grid, %struct.Grid* %28, i64 %30
  %32 = getelementptr inbounds %struct.Grid, %struct.Grid* %31, i32 0, i32 0
  %33 = bitcast %union.anon* %32 to %struct.anon*
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %27, %35
  br i1 %36, label %37, label %432

; <label>:37:                                     ; preds = %26
  %38 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.Grid, %struct.Grid* %38, i64 %40
  %42 = getelementptr inbounds %struct.Grid, %struct.Grid* %41, i32 0, i32 0
  %43 = bitcast %union.anon* %42 to %struct.anon*
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %46

; <label>:46:                                     ; preds = %425, %37
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.Grid, %struct.Grid* %48, i64 %50
  %52 = getelementptr inbounds %struct.Grid, %struct.Grid* %51, i32 0, i32 0
  %53 = bitcast %union.anon* %52 to %struct.anon*
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %47, %55
  br i1 %56, label %57, label %428

; <label>:57:                                     ; preds = %46
  %58 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Grid, %struct.Grid* %58, i64 %60
  %62 = getelementptr inbounds %struct.Grid, %struct.Grid* %61, i32 0, i32 0
  %63 = bitcast %union.anon* %62 to %struct.anon*
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %66

; <label>:66:                                     ; preds = %421, %57
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.Grid, %struct.Grid* %68, i64 %70
  %72 = getelementptr inbounds %struct.Grid, %struct.Grid* %71, i32 0, i32 0
  %73 = bitcast %union.anon* %72 to %struct.anon*
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %67, %75
  br i1 %76, label %77, label %424

; <label>:77:                                     ; preds = %66
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @ny, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* @nx, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %6, align 4
  %87 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.Cell, %struct.Cell* %87, i64 %89
  store %struct.Cell* %90, %struct.Cell** %7, align 8
  %91 = load i32*, i32** @cnumPars, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %96

; <label>:96:                                     ; preds = %417, %77
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %420

; <label>:100:                                    ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = srem i32 %101, 16
  store i32 %102, i32* %10, align 4
  %103 = load %struct.Cell*, %struct.Cell** %7, align 8
  %104 = getelementptr inbounds %struct.Cell, %struct.Cell* %103, i32 0, i32 0
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %104, i64 0, i64 %106
  %108 = bitcast %class.Vec3* %11 to i8*
  %109 = bitcast %class.Vec3* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 12, i32 4, i1 false)
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %158

; <label>:112:                                    ; preds = %100
  %113 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 0
  %114 = load float, float* %113, align 4
  %115 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 0), align 4
  %116 = fsub float %114, %115
  store float %116, float* %12, align 4
  %117 = load float, float* %12, align 4
  %118 = fcmp olt float %117, 0.000000e+00
  br i1 %118, label %119, label %157

; <label>:119:                                    ; preds = %112
  %120 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 0), align 4
  %121 = load float, float* %12, align 4
  %122 = fsub float %120, %121
  %123 = load %struct.Cell*, %struct.Cell** %7, align 8
  %124 = getelementptr inbounds %struct.Cell, %struct.Cell* %123, i32 0, i32 0
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %124, i64 0, i64 %126
  %128 = getelementptr inbounds %class.Vec3, %class.Vec3* %127, i32 0, i32 0
  store float %122, float* %128, align 4
  %129 = load %struct.Cell*, %struct.Cell** %7, align 8
  %130 = getelementptr inbounds %struct.Cell, %struct.Cell* %129, i32 0, i32 2
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %130, i64 0, i64 %132
  %134 = getelementptr inbounds %class.Vec3, %class.Vec3* %133, i32 0, i32 0
  %135 = load float, float* %134, align 4
  %136 = fsub float -0.000000e+00, %135
  %137 = load %struct.Cell*, %struct.Cell** %7, align 8
  %138 = getelementptr inbounds %struct.Cell, %struct.Cell* %137, i32 0, i32 2
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %138, i64 0, i64 %140
  %142 = getelementptr inbounds %class.Vec3, %class.Vec3* %141, i32 0, i32 0
  store float %136, float* %142, align 4
  %143 = load %struct.Cell*, %struct.Cell** %7, align 8
  %144 = getelementptr inbounds %struct.Cell, %struct.Cell* %143, i32 0, i32 1
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %144, i64 0, i64 %146
  %148 = getelementptr inbounds %class.Vec3, %class.Vec3* %147, i32 0, i32 0
  %149 = load float, float* %148, align 4
  %150 = fsub float -0.000000e+00, %149
  %151 = load %struct.Cell*, %struct.Cell** %7, align 8
  %152 = getelementptr inbounds %struct.Cell, %struct.Cell* %151, i32 0, i32 1
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %152, i64 0, i64 %154
  %156 = getelementptr inbounds %class.Vec3, %class.Vec3* %155, i32 0, i32 0
  store float %150, float* %156, align 4
  br label %157

; <label>:157:                                    ; preds = %119, %112
  br label %158

; <label>:158:                                    ; preds = %157, %100
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @nx, align 4
  %161 = sub nsw i32 %160, 1
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %209

; <label>:163:                                    ; preds = %158
  %164 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMax, i32 0, i32 0), align 4
  %165 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 0
  %166 = load float, float* %165, align 4
  %167 = fsub float %164, %166
  store float %167, float* %13, align 4
  %168 = load float, float* %13, align 4
  %169 = fcmp olt float %168, 0.000000e+00
  br i1 %169, label %170, label %208

; <label>:170:                                    ; preds = %163
  %171 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMax, i32 0, i32 0), align 4
  %172 = load float, float* %13, align 4
  %173 = fadd float %171, %172
  %174 = load %struct.Cell*, %struct.Cell** %7, align 8
  %175 = getelementptr inbounds %struct.Cell, %struct.Cell* %174, i32 0, i32 0
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %175, i64 0, i64 %177
  %179 = getelementptr inbounds %class.Vec3, %class.Vec3* %178, i32 0, i32 0
  store float %173, float* %179, align 4
  %180 = load %struct.Cell*, %struct.Cell** %7, align 8
  %181 = getelementptr inbounds %struct.Cell, %struct.Cell* %180, i32 0, i32 2
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %181, i64 0, i64 %183
  %185 = getelementptr inbounds %class.Vec3, %class.Vec3* %184, i32 0, i32 0
  %186 = load float, float* %185, align 4
  %187 = fsub float -0.000000e+00, %186
  %188 = load %struct.Cell*, %struct.Cell** %7, align 8
  %189 = getelementptr inbounds %struct.Cell, %struct.Cell* %188, i32 0, i32 2
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %189, i64 0, i64 %191
  %193 = getelementptr inbounds %class.Vec3, %class.Vec3* %192, i32 0, i32 0
  store float %187, float* %193, align 4
  %194 = load %struct.Cell*, %struct.Cell** %7, align 8
  %195 = getelementptr inbounds %struct.Cell, %struct.Cell* %194, i32 0, i32 1
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %195, i64 0, i64 %197
  %199 = getelementptr inbounds %class.Vec3, %class.Vec3* %198, i32 0, i32 0
  %200 = load float, float* %199, align 4
  %201 = fsub float -0.000000e+00, %200
  %202 = load %struct.Cell*, %struct.Cell** %7, align 8
  %203 = getelementptr inbounds %struct.Cell, %struct.Cell* %202, i32 0, i32 1
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %203, i64 0, i64 %205
  %207 = getelementptr inbounds %class.Vec3, %class.Vec3* %206, i32 0, i32 0
  store float %201, float* %207, align 4
  br label %208

; <label>:208:                                    ; preds = %170, %163
  br label %209

; <label>:209:                                    ; preds = %208, %158
  %210 = load i32, i32* %4, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %258

; <label>:212:                                    ; preds = %209
  %213 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 1
  %214 = load float, float* %213, align 4
  %215 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 1), align 4
  %216 = fsub float %214, %215
  store float %216, float* %14, align 4
  %217 = load float, float* %14, align 4
  %218 = fcmp olt float %217, 0.000000e+00
  br i1 %218, label %219, label %257

; <label>:219:                                    ; preds = %212
  %220 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 1), align 4
  %221 = load float, float* %14, align 4
  %222 = fsub float %220, %221
  %223 = load %struct.Cell*, %struct.Cell** %7, align 8
  %224 = getelementptr inbounds %struct.Cell, %struct.Cell* %223, i32 0, i32 0
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %224, i64 0, i64 %226
  %228 = getelementptr inbounds %class.Vec3, %class.Vec3* %227, i32 0, i32 1
  store float %222, float* %228, align 4
  %229 = load %struct.Cell*, %struct.Cell** %7, align 8
  %230 = getelementptr inbounds %struct.Cell, %struct.Cell* %229, i32 0, i32 2
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %230, i64 0, i64 %232
  %234 = getelementptr inbounds %class.Vec3, %class.Vec3* %233, i32 0, i32 1
  %235 = load float, float* %234, align 4
  %236 = fsub float -0.000000e+00, %235
  %237 = load %struct.Cell*, %struct.Cell** %7, align 8
  %238 = getelementptr inbounds %struct.Cell, %struct.Cell* %237, i32 0, i32 2
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %238, i64 0, i64 %240
  %242 = getelementptr inbounds %class.Vec3, %class.Vec3* %241, i32 0, i32 1
  store float %236, float* %242, align 4
  %243 = load %struct.Cell*, %struct.Cell** %7, align 8
  %244 = getelementptr inbounds %struct.Cell, %struct.Cell* %243, i32 0, i32 1
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %244, i64 0, i64 %246
  %248 = getelementptr inbounds %class.Vec3, %class.Vec3* %247, i32 0, i32 1
  %249 = load float, float* %248, align 4
  %250 = fsub float -0.000000e+00, %249
  %251 = load %struct.Cell*, %struct.Cell** %7, align 8
  %252 = getelementptr inbounds %struct.Cell, %struct.Cell* %251, i32 0, i32 1
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %252, i64 0, i64 %254
  %256 = getelementptr inbounds %class.Vec3, %class.Vec3* %255, i32 0, i32 1
  store float %250, float* %256, align 4
  br label %257

; <label>:257:                                    ; preds = %219, %212
  br label %258

; <label>:258:                                    ; preds = %257, %209
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @ny, align 4
  %261 = sub nsw i32 %260, 1
  %262 = icmp eq i32 %259, %261
  br i1 %262, label %263, label %309

; <label>:263:                                    ; preds = %258
  %264 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMax, i32 0, i32 1), align 4
  %265 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 1
  %266 = load float, float* %265, align 4
  %267 = fsub float %264, %266
  store float %267, float* %15, align 4
  %268 = load float, float* %15, align 4
  %269 = fcmp olt float %268, 0.000000e+00
  br i1 %269, label %270, label %308

; <label>:270:                                    ; preds = %263
  %271 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMax, i32 0, i32 1), align 4
  %272 = load float, float* %15, align 4
  %273 = fadd float %271, %272
  %274 = load %struct.Cell*, %struct.Cell** %7, align 8
  %275 = getelementptr inbounds %struct.Cell, %struct.Cell* %274, i32 0, i32 0
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %275, i64 0, i64 %277
  %279 = getelementptr inbounds %class.Vec3, %class.Vec3* %278, i32 0, i32 1
  store float %273, float* %279, align 4
  %280 = load %struct.Cell*, %struct.Cell** %7, align 8
  %281 = getelementptr inbounds %struct.Cell, %struct.Cell* %280, i32 0, i32 2
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %281, i64 0, i64 %283
  %285 = getelementptr inbounds %class.Vec3, %class.Vec3* %284, i32 0, i32 1
  %286 = load float, float* %285, align 4
  %287 = fsub float -0.000000e+00, %286
  %288 = load %struct.Cell*, %struct.Cell** %7, align 8
  %289 = getelementptr inbounds %struct.Cell, %struct.Cell* %288, i32 0, i32 2
  %290 = load i32, i32* %10, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %289, i64 0, i64 %291
  %293 = getelementptr inbounds %class.Vec3, %class.Vec3* %292, i32 0, i32 1
  store float %287, float* %293, align 4
  %294 = load %struct.Cell*, %struct.Cell** %7, align 8
  %295 = getelementptr inbounds %struct.Cell, %struct.Cell* %294, i32 0, i32 1
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %295, i64 0, i64 %297
  %299 = getelementptr inbounds %class.Vec3, %class.Vec3* %298, i32 0, i32 1
  %300 = load float, float* %299, align 4
  %301 = fsub float -0.000000e+00, %300
  %302 = load %struct.Cell*, %struct.Cell** %7, align 8
  %303 = getelementptr inbounds %struct.Cell, %struct.Cell* %302, i32 0, i32 1
  %304 = load i32, i32* %10, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %303, i64 0, i64 %305
  %307 = getelementptr inbounds %class.Vec3, %class.Vec3* %306, i32 0, i32 1
  store float %301, float* %307, align 4
  br label %308

; <label>:308:                                    ; preds = %270, %263
  br label %309

; <label>:309:                                    ; preds = %308, %258
  %310 = load i32, i32* %3, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %358

; <label>:312:                                    ; preds = %309
  %313 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 2
  %314 = load float, float* %313, align 4
  %315 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 2), align 4
  %316 = fsub float %314, %315
  store float %316, float* %16, align 4
  %317 = load float, float* %16, align 4
  %318 = fcmp olt float %317, 0.000000e+00
  br i1 %318, label %319, label %357

; <label>:319:                                    ; preds = %312
  %320 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMin, i32 0, i32 2), align 4
  %321 = load float, float* %16, align 4
  %322 = fsub float %320, %321
  %323 = load %struct.Cell*, %struct.Cell** %7, align 8
  %324 = getelementptr inbounds %struct.Cell, %struct.Cell* %323, i32 0, i32 0
  %325 = load i32, i32* %10, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %324, i64 0, i64 %326
  %328 = getelementptr inbounds %class.Vec3, %class.Vec3* %327, i32 0, i32 2
  store float %322, float* %328, align 4
  %329 = load %struct.Cell*, %struct.Cell** %7, align 8
  %330 = getelementptr inbounds %struct.Cell, %struct.Cell* %329, i32 0, i32 2
  %331 = load i32, i32* %10, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %330, i64 0, i64 %332
  %334 = getelementptr inbounds %class.Vec3, %class.Vec3* %333, i32 0, i32 2
  %335 = load float, float* %334, align 4
  %336 = fsub float -0.000000e+00, %335
  %337 = load %struct.Cell*, %struct.Cell** %7, align 8
  %338 = getelementptr inbounds %struct.Cell, %struct.Cell* %337, i32 0, i32 2
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %338, i64 0, i64 %340
  %342 = getelementptr inbounds %class.Vec3, %class.Vec3* %341, i32 0, i32 2
  store float %336, float* %342, align 4
  %343 = load %struct.Cell*, %struct.Cell** %7, align 8
  %344 = getelementptr inbounds %struct.Cell, %struct.Cell* %343, i32 0, i32 1
  %345 = load i32, i32* %10, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %344, i64 0, i64 %346
  %348 = getelementptr inbounds %class.Vec3, %class.Vec3* %347, i32 0, i32 2
  %349 = load float, float* %348, align 4
  %350 = fsub float -0.000000e+00, %349
  %351 = load %struct.Cell*, %struct.Cell** %7, align 8
  %352 = getelementptr inbounds %struct.Cell, %struct.Cell* %351, i32 0, i32 1
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %352, i64 0, i64 %354
  %356 = getelementptr inbounds %class.Vec3, %class.Vec3* %355, i32 0, i32 2
  store float %350, float* %356, align 4
  br label %357

; <label>:357:                                    ; preds = %319, %312
  br label %358

; <label>:358:                                    ; preds = %357, %309
  %359 = load i32, i32* %3, align 4
  %360 = load i32, i32* @nz, align 4
  %361 = sub nsw i32 %360, 1
  %362 = icmp eq i32 %359, %361
  br i1 %362, label %363, label %409

; <label>:363:                                    ; preds = %358
  %364 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMax, i32 0, i32 2), align 4
  %365 = getelementptr inbounds %class.Vec3, %class.Vec3* %11, i32 0, i32 2
  %366 = load float, float* %365, align 4
  %367 = fsub float %364, %366
  store float %367, float* %17, align 4
  %368 = load float, float* %17, align 4
  %369 = fcmp olt float %368, 0.000000e+00
  br i1 %369, label %370, label %408

; <label>:370:                                    ; preds = %363
  %371 = load float, float* getelementptr inbounds (%class.Vec3, %class.Vec3* @_ZL9domainMax, i32 0, i32 2), align 4
  %372 = load float, float* %17, align 4
  %373 = fadd float %371, %372
  %374 = load %struct.Cell*, %struct.Cell** %7, align 8
  %375 = getelementptr inbounds %struct.Cell, %struct.Cell* %374, i32 0, i32 0
  %376 = load i32, i32* %10, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %375, i64 0, i64 %377
  %379 = getelementptr inbounds %class.Vec3, %class.Vec3* %378, i32 0, i32 2
  store float %373, float* %379, align 4
  %380 = load %struct.Cell*, %struct.Cell** %7, align 8
  %381 = getelementptr inbounds %struct.Cell, %struct.Cell* %380, i32 0, i32 2
  %382 = load i32, i32* %10, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %381, i64 0, i64 %383
  %385 = getelementptr inbounds %class.Vec3, %class.Vec3* %384, i32 0, i32 2
  %386 = load float, float* %385, align 4
  %387 = fsub float -0.000000e+00, %386
  %388 = load %struct.Cell*, %struct.Cell** %7, align 8
  %389 = getelementptr inbounds %struct.Cell, %struct.Cell* %388, i32 0, i32 2
  %390 = load i32, i32* %10, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %389, i64 0, i64 %391
  %393 = getelementptr inbounds %class.Vec3, %class.Vec3* %392, i32 0, i32 2
  store float %387, float* %393, align 4
  %394 = load %struct.Cell*, %struct.Cell** %7, align 8
  %395 = getelementptr inbounds %struct.Cell, %struct.Cell* %394, i32 0, i32 1
  %396 = load i32, i32* %10, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %395, i64 0, i64 %397
  %399 = getelementptr inbounds %class.Vec3, %class.Vec3* %398, i32 0, i32 2
  %400 = load float, float* %399, align 4
  %401 = fsub float -0.000000e+00, %400
  %402 = load %struct.Cell*, %struct.Cell** %7, align 8
  %403 = getelementptr inbounds %struct.Cell, %struct.Cell* %402, i32 0, i32 1
  %404 = load i32, i32* %10, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %403, i64 0, i64 %405
  %407 = getelementptr inbounds %class.Vec3, %class.Vec3* %406, i32 0, i32 2
  store float %401, float* %407, align 4
  br label %408

; <label>:408:                                    ; preds = %370, %363
  br label %409

; <label>:409:                                    ; preds = %408, %358
  %410 = load i32, i32* %10, align 4
  %411 = icmp eq i32 %410, 15
  br i1 %411, label %412, label %416

; <label>:412:                                    ; preds = %409
  %413 = load %struct.Cell*, %struct.Cell** %7, align 8
  %414 = getelementptr inbounds %struct.Cell, %struct.Cell* %413, i32 0, i32 5
  %415 = load %struct.Cell*, %struct.Cell** %414, align 8
  store %struct.Cell* %415, %struct.Cell** %7, align 8
  br label %416

; <label>:416:                                    ; preds = %412, %409
  br label %417

; <label>:417:                                    ; preds = %416
  %418 = load i32, i32* %9, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %9, align 4
  br label %96

; <label>:420:                                    ; preds = %96
  br label %421

; <label>:421:                                    ; preds = %420
  %422 = load i32, i32* %5, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %5, align 4
  br label %66

; <label>:424:                                    ; preds = %66
  br label %425

; <label>:425:                                    ; preds = %424
  %426 = load i32, i32* %4, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %4, align 4
  br label %46

; <label>:428:                                    ; preds = %46
  br label %429

; <label>:429:                                    ; preds = %428
  %430 = load i32, i32* %3, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %3, align 4
  br label %26

; <label>:432:                                    ; preds = %26
  ret void
}

; Function Attrs: noinline optnone uwtable
define void @_Z18AdvanceParticlesMTi(i32) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %class.Vec3, align 4
  %11 = alloca %class.Vec3, align 4
  %12 = alloca { <2 x float>, float }, align 8
  %13 = alloca { <2 x float>, float }, align 8
  %14 = alloca %class.Vec3, align 4
  %15 = alloca { <2 x float>, float }, align 8
  %16 = alloca %class.Vec3, align 4
  %17 = alloca { <2 x float>, float }, align 8
  store i32 %0, i32* %2, align 4
  %18 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Grid, %struct.Grid* %18, i64 %20
  %22 = getelementptr inbounds %struct.Grid, %struct.Grid* %21, i32 0, i32 0
  %23 = bitcast %union.anon* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %26

; <label>:26:                                     ; preds = %183, %1
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Grid, %struct.Grid* %28, i64 %30
  %32 = getelementptr inbounds %struct.Grid, %struct.Grid* %31, i32 0, i32 0
  %33 = bitcast %union.anon* %32 to %struct.anon*
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %27, %35
  br i1 %36, label %37, label %186

; <label>:37:                                     ; preds = %26
  %38 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.Grid, %struct.Grid* %38, i64 %40
  %42 = getelementptr inbounds %struct.Grid, %struct.Grid* %41, i32 0, i32 0
  %43 = bitcast %union.anon* %42 to %struct.anon*
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %46

; <label>:46:                                     ; preds = %179, %37
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.Grid, %struct.Grid* %48, i64 %50
  %52 = getelementptr inbounds %struct.Grid, %struct.Grid* %51, i32 0, i32 0
  %53 = bitcast %union.anon* %52 to %struct.anon*
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %47, %55
  br i1 %56, label %57, label %182

; <label>:57:                                     ; preds = %46
  %58 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Grid, %struct.Grid* %58, i64 %60
  %62 = getelementptr inbounds %struct.Grid, %struct.Grid* %61, i32 0, i32 0
  %63 = bitcast %union.anon* %62 to %struct.anon*
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %66

; <label>:66:                                     ; preds = %175, %57
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.Grid*, %struct.Grid** @grids, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.Grid, %struct.Grid* %68, i64 %70
  %72 = getelementptr inbounds %struct.Grid, %struct.Grid* %71, i32 0, i32 0
  %73 = bitcast %union.anon* %72 to %struct.anon*
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %67, %75
  br i1 %76, label %77, label %178

; <label>:77:                                     ; preds = %66
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @ny, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* @nx, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %6, align 4
  %87 = load %struct.Cell*, %struct.Cell** @cells, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.Cell, %struct.Cell* %87, i64 %89
  store %struct.Cell* %90, %struct.Cell** %7, align 8
  %91 = load i32*, i32** @cnumPars, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %96

; <label>:96:                                     ; preds = %171, %77
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %174

; <label>:100:                                    ; preds = %96
  %101 = load %struct.Cell*, %struct.Cell** %7, align 8
  %102 = getelementptr inbounds %struct.Cell, %struct.Cell* %101, i32 0, i32 1
  %103 = load i32, i32* %9, align 4
  %104 = srem i32 %103, 16
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %102, i64 0, i64 %105
  %107 = load %struct.Cell*, %struct.Cell** %7, align 8
  %108 = getelementptr inbounds %struct.Cell, %struct.Cell* %107, i32 0, i32 3
  %109 = load i32, i32* %9, align 4
  %110 = srem i32 %109, 16
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %108, i64 0, i64 %111
  %113 = load float, float* @_ZL8timeStep, align 4
  %114 = call { <2 x float>, float } @_ZNK4Vec3mlEf(%class.Vec3* %112, float %113)
  store { <2 x float>, float } %114, { <2 x float>, float }* %12, align 8
  %115 = bitcast { <2 x float>, float }* %12 to i8*
  %116 = bitcast %class.Vec3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %115, i64 12, i32 4, i1 false)
  %117 = call { <2 x float>, float } @_ZNK4Vec3plERKS_(%class.Vec3* %106, %class.Vec3* dereferenceable(12) %11)
  store { <2 x float>, float } %117, { <2 x float>, float }* %13, align 8
  %118 = bitcast { <2 x float>, float }* %13 to i8*
  %119 = bitcast %class.Vec3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %118, i64 12, i32 4, i1 false)
  %120 = load float, float* @_ZL8timeStep, align 4
  %121 = call { <2 x float>, float } @_ZNK4Vec3mlEf(%class.Vec3* %10, float %120)
  store { <2 x float>, float } %121, { <2 x float>, float }* %15, align 8
  %122 = bitcast { <2 x float>, float }* %15 to i8*
  %123 = bitcast %class.Vec3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %122, i64 12, i32 4, i1 false)
  %124 = load %struct.Cell*, %struct.Cell** %7, align 8
  %125 = getelementptr inbounds %struct.Cell, %struct.Cell* %124, i32 0, i32 0
  %126 = load i32, i32* %9, align 4
  %127 = srem i32 %126, 16
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %125, i64 0, i64 %128
  %130 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3pLERKS_(%class.Vec3* %129, %class.Vec3* dereferenceable(12) %14)
  %131 = load %struct.Cell*, %struct.Cell** %7, align 8
  %132 = getelementptr inbounds %struct.Cell, %struct.Cell* %131, i32 0, i32 1
  %133 = load i32, i32* %9, align 4
  %134 = srem i32 %133, 16
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %132, i64 0, i64 %135
  %137 = call { <2 x float>, float } @_ZNK4Vec3plERKS_(%class.Vec3* %136, %class.Vec3* dereferenceable(12) %10)
  store { <2 x float>, float } %137, { <2 x float>, float }* %17, align 8
  %138 = bitcast { <2 x float>, float }* %17 to i8*
  %139 = bitcast %class.Vec3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %138, i64 12, i32 4, i1 false)
  %140 = load %struct.Cell*, %struct.Cell** %7, align 8
  %141 = getelementptr inbounds %struct.Cell, %struct.Cell* %140, i32 0, i32 2
  %142 = load i32, i32* %9, align 4
  %143 = srem i32 %142, 16
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %141, i64 0, i64 %144
  %146 = bitcast %class.Vec3* %145 to i8*
  %147 = bitcast %class.Vec3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %146, i8* %147, i64 12, i32 4, i1 false)
  %148 = load %struct.Cell*, %struct.Cell** %7, align 8
  %149 = getelementptr inbounds %struct.Cell, %struct.Cell* %148, i32 0, i32 2
  %150 = load i32, i32* %9, align 4
  %151 = srem i32 %150, 16
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %149, i64 0, i64 %152
  %154 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3mLEf(%class.Vec3* %153, float 5.000000e-01)
  %155 = load %struct.Cell*, %struct.Cell** %7, align 8
  %156 = getelementptr inbounds %struct.Cell, %struct.Cell* %155, i32 0, i32 1
  %157 = load i32, i32* %9, align 4
  %158 = srem i32 %157, 16
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [16 x %class.Vec3], [16 x %class.Vec3]* %156, i64 0, i64 %159
  %161 = bitcast %class.Vec3* %160 to i8*
  %162 = bitcast %class.Vec3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* %162, i64 12, i32 4, i1 false)
  %163 = load i32, i32* %9, align 4
  %164 = srem i32 %163, 16
  %165 = icmp eq i32 %164, 15
  br i1 %165, label %166, label %170

; <label>:166:                                    ; preds = %100
  %167 = load %struct.Cell*, %struct.Cell** %7, align 8
  %168 = getelementptr inbounds %struct.Cell, %struct.Cell* %167, i32 0, i32 5
  %169 = load %struct.Cell*, %struct.Cell** %168, align 8
  store %struct.Cell* %169, %struct.Cell** %7, align 8
  br label %170

; <label>:170:                                    ; preds = %166, %100
  br label %171

; <label>:171:                                    ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %96

; <label>:174:                                    ; preds = %96
  br label %175

; <label>:175:                                    ; preds = %174
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %66

; <label>:178:                                    ; preds = %66
  br label %179

; <label>:179:                                    ; preds = %178
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  br label %46

; <label>:182:                                    ; preds = %46
  br label %183

; <label>:183:                                    ; preds = %182
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %26

; <label>:186:                                    ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(12) %class.Vec3* @_ZN4Vec3mLEf(%class.Vec3*, float) #4 comdat align 2 {
  %3 = alloca %class.Vec3*, align 8
  %4 = alloca float, align 4
  store %class.Vec3* %0, %class.Vec3** %3, align 8
  store float %1, float* %4, align 4
  %5 = load %class.Vec3*, %class.Vec3** %3, align 8
  %6 = load float, float* %4, align 4
  %7 = getelementptr inbounds %class.Vec3, %class.Vec3* %5, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = fmul float %8, %6
  store float %9, float* %7, align 4
  %10 = load float, float* %4, align 4
  %11 = getelementptr inbounds %class.Vec3, %class.Vec3* %5, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = fmul float %12, %10
  store float %13, float* %11, align 4
  %14 = load float, float* %4, align 4
  %15 = getelementptr inbounds %class.Vec3, %class.Vec3* %5, i32 0, i32 2
  %16 = load float, float* %15, align 4
  %17 = fmul float %16, %14
  store float %17, float* %15, align 4
  ret %class.Vec3* %5
}

; Function Attrs: noinline optnone uwtable
define void @_Z14AdvanceFrameMTi(i32) #5 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  call void @_ZSt4swapIP4CellEvRT_S3_(%struct.Cell** dereferenceable(8) @cells, %struct.Cell** dereferenceable(8) @cells2) #3
  call void @_ZSt4swapIPiEvRT_S2_(i32** dereferenceable(8) @cnumPars, i32** dereferenceable(8) @cnumPars2) #3
  br label %6

; <label>:6:                                      ; preds = %5, %1
  %7 = call i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  %8 = load i32, i32* %2, align 4
  call void @_Z16ClearParticlesMTi(i32 %8)
  %9 = call i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  %10 = load i32, i32* %2, align 4
  call void @_Z13RebuildGridMTi(i32 %10)
  %11 = call i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  %12 = load i32, i32* %2, align 4
  call void @_Z24InitDensitiesAndForcesMTi(i32 %12)
  %13 = call i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  %14 = load i32, i32* %2, align 4
  call void @_Z18ComputeDensitiesMTi(i32 %14)
  %15 = call i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  %16 = load i32, i32* %2, align 4
  call void @_Z19ComputeDensities2MTi(i32 %16)
  %17 = call i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  %18 = load i32, i32* %2, align 4
  call void @_Z15ComputeForcesMTi(i32 %18)
  %19 = call i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  %20 = load i32, i32* %2, align 4
  call void @_Z19ProcessCollisionsMTi(i32 %20)
  %21 = call i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  %22 = load i32, i32* %2, align 4
  call void @_Z18AdvanceParticlesMTi(i32 %22)
  %23 = call i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  %24 = load i32, i32* %2, align 4
  call void @_Z20ProcessCollisions2MTi(i32 %24)
  %25 = call i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t* @barrier)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZSt4swapIP4CellEvRT_S3_(%struct.Cell** dereferenceable(8), %struct.Cell** dereferenceable(8)) #4 comdat {
  %3 = alloca %struct.Cell**, align 8
  %4 = alloca %struct.Cell**, align 8
  %5 = alloca %struct.Cell*, align 8
  store %struct.Cell** %0, %struct.Cell*** %3, align 8
  store %struct.Cell** %1, %struct.Cell*** %4, align 8
  %6 = load %struct.Cell**, %struct.Cell*** %3, align 8
  %7 = call dereferenceable(8) %struct.Cell** @_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_(%struct.Cell** dereferenceable(8) %6) #3
  %8 = load %struct.Cell*, %struct.Cell** %7, align 8
  store %struct.Cell* %8, %struct.Cell** %5, align 8
  %9 = load %struct.Cell**, %struct.Cell*** %4, align 8
  %10 = call dereferenceable(8) %struct.Cell** @_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_(%struct.Cell** dereferenceable(8) %9) #3
  %11 = load %struct.Cell*, %struct.Cell** %10, align 8
  %12 = load %struct.Cell**, %struct.Cell*** %3, align 8
  store %struct.Cell* %11, %struct.Cell** %12, align 8
  %13 = call dereferenceable(8) %struct.Cell** @_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_(%struct.Cell** dereferenceable(8) %5) #3
  %14 = load %struct.Cell*, %struct.Cell** %13, align 8
  %15 = load %struct.Cell**, %struct.Cell*** %4, align 8
  store %struct.Cell* %14, %struct.Cell** %15, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZSt4swapIPiEvRT_S2_(i32** dereferenceable(8), i32** dereferenceable(8)) #4 comdat {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32** %1, i32*** %4, align 8
  %6 = load i32**, i32*** %3, align 8
  %7 = call dereferenceable(8) i32** @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(i32** dereferenceable(8) %6) #3
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = call dereferenceable(8) i32** @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(i32** dereferenceable(8) %9) #3
  %11 = load i32*, i32** %10, align 8
  %12 = load i32**, i32*** %3, align 8
  store i32* %11, i32** %12, align 8
  %13 = call dereferenceable(8) i32** @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(i32** dereferenceable(8) %5) #3
  %14 = load i32*, i32** %13, align 8
  %15 = load i32**, i32*** %4, align 8
  store i32* %14, i32** %15, align 8
  ret void
}

declare i32 @_Z19parsec_barrier_waitP16parsec_barrier_t(%struct.parsec_barrier_t*) #1

; Function Attrs: noinline optnone uwtable
define i8* @_Z15AdvanceFramesMTPv(i8*) #5 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.__thread_args*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.__thread_args*
  store %struct.__thread_args* %6, %struct.__thread_args** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

; <label>:7:                                      ; preds = %17, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.__thread_args*, %struct.__thread_args** %3, align 8
  %10 = getelementptr inbounds %struct.__thread_args, %struct.__thread_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %7
  %14 = load %struct.__thread_args*, %struct.__thread_args** %3, align 8
  %15 = getelementptr inbounds %struct.__thread_args, %struct.__thread_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  call void @_Z14AdvanceFrameMTi(i32 %16)
  br label %17

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %7

; <label>:20:                                     ; preds = %7
  ret i8* null
}

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main(i32, i8**) #11 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0))
  %12 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %11, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %13 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %12, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 6
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %16, %2
  %20 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0))
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %20, i8* %23)
  %25 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %24, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i32 0, i32 0))
  %26 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %25, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 -1, i32* %3, align 4
  br label %107

; <label>:27:                                     ; preds = %16
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* %30) #16
  store i32 %31, i32* %6, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @atoi(i8* %34) #16
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %27
  %39 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0))
  %40 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %39, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 -1, i32* %3, align 4
  br label %107

; <label>:41:                                     ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %41
  %45 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0))
  %46 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %45, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 -1, i32* %3, align 4
  br label %107

; <label>:47:                                     ; preds = %41
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 3
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %6, align 4
  call void @_Z7InitSimPKcj(i8* %50, i32 %51)
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %8, align 8
  %55 = alloca %struct.__thread_args, i64 %53, align 16
  store i32 0, i32* %9, align 4
  br label %56

; <label>:56:                                     ; preds = %80, %47
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %83

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.__thread_args, %struct.__thread_args* %55, i64 %63
  %65 = getelementptr inbounds %struct.__thread_args, %struct.__thread_args* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.__thread_args, %struct.__thread_args* %55, i64 %68
  %70 = getelementptr inbounds %struct.__thread_args, %struct.__thread_args* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load i64*, i64** @thread, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.__thread_args, %struct.__thread_args* %55, i64 %76
  %78 = bitcast %struct.__thread_args* %77 to i8*
  %79 = call i32 @pthread_create(i64* %74, %union.pthread_attr_t* @attr, i8* (i8*)* @_Z15AdvanceFramesMTPv, i8* %78) #3
  br label %80

; <label>:80:                                     ; preds = %60
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %56

; <label>:83:                                     ; preds = %56
  store i32 0, i32* %10, align 4
  br label %84

; <label>:84:                                     ; preds = %95, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %98

; <label>:88:                                     ; preds = %84
  %89 = load i64*, i64** @thread, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @pthread_join(i64 %93, i8** null)
  br label %95

; <label>:95:                                     ; preds = %88
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %84

; <label>:98:                                     ; preds = %84
  %99 = load i32, i32* %4, align 4
  %100 = icmp sgt i32 %99, 4
  br i1 %100, label %101, label %105

; <label>:101:                                    ; preds = %98
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 4
  %104 = load i8*, i8** %103, align 8
  call void @_Z8SaveFilePKc(i8* %104)
  br label %105

; <label>:105:                                    ; preds = %101, %98
  call void @_Z10CleanUpSimv()
  store i32 0, i32* %3, align 4
  %106 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %106)
  br label %107

; <label>:107:                                    ; preds = %105, %44, %38, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #12

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare i32 @pthread_join(i64, i8**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %struct.Cell** @_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_(%struct.Cell** dereferenceable(8)) #4 comdat {
  %2 = alloca %struct.Cell**, align 8
  store %struct.Cell** %0, %struct.Cell*** %2, align 8
  %3 = load %struct.Cell**, %struct.Cell*** %2, align 8
  ret %struct.Cell** %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) i32** @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(i32** dereferenceable(8)) #4 comdat {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  %3 = load i32**, i32*** %2, align 8
  ret i32** %3
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_pthreads.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  call void @__cxx_global_var_init.3()
  call void @__cxx_global_var_init.4()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
