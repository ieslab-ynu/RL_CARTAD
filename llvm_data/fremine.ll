; ModuleID = 'fpmax.cpp'
source_filename = "fpmax.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.stack = type { i32, i32*, i32* }
%class.memory = type { i32, i64, i64, i32, i8**, i32, i8**, i32*, i32*, i8*, i32, i32 }
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
%class.FP_tree = type <{ i32, [4 x i8], i32*, i32*, %class.Fnode*, i32*, i32**, i32*, i32*, i32, i32, i8*, i32*, i32*, i8**, i32, [4 x i8] }>
%class.Fnode = type { %class.Fnode*, %class.Fnode*, i32, i32 }
%class.Data = type { i64, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%class.FSout = type { %struct._IO_FILE* }

$_ZN4Data5closeEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@ITlen = global i32** null, align 8
@bran = global i32** null, align 8
@prefix = global i32** null, align 8
@order_item = global i32* null, align 8
@item_order = global i32* null, align 8
@compact = global i32** null, align 8
@supp = global i32** null, align 8
@list = global %class.stack** null, align 8
@TRANSACTION_NO = global i32 0, align 4
@ITEM_NO = global i32 100, align 4
@THRESHOLD = global i32 0, align 4
@fp_buf = global %class.memory** null, align 8
@fp_node_sub_buf = global %class.memory* null, align 8
@fp_tree_buf = global %class.memory** null, align 8
@database_buf = global %class.memory* null, align 8
@new_data_num = global i32** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"PARSEC Benchmark Suite\0A\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"usage: \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" <infile> <MINSUP> [<outfile>]\0A\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [22 x i8] c" could not be opened!\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"the data preparation cost %f seconds, the FPgrowth cost %f seconds\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_fpmax.cpp, i8* null }]

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

; Function Attrs: noinline optnone uwtable
define void @_Z8printLenv() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @_ZL19omp_get_max_threadsv()
  store i32 %4, i32* %3, align 4
  store i32 1, i32* %2, align 4
  br label %5

; <label>:5:                                      ; preds = %36, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %39

; <label>:9:                                      ; preds = %5
  store i32 0, i32* %1, align 4
  br label %10

; <label>:10:                                     ; preds = %32, %9
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @ITEM_NO, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

; <label>:14:                                     ; preds = %10
  %15 = load i32**, i32*** @ITlen, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32**, i32*** @ITlen, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %23
  store i32 %31, i32* %29, align 4
  br label %32

; <label>:32:                                     ; preds = %14
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %10

; <label>:35:                                     ; preds = %10
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %5

; <label>:39:                                     ; preds = %5
  %40 = load i32, i32* @ITEM_NO, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %42

; <label>:42:                                     ; preds = %57, %39
  %43 = load i32, i32* %1, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %54

; <label>:45:                                     ; preds = %42
  %46 = load i32**, i32*** @ITlen, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br label %54

; <label>:54:                                     ; preds = %45, %42
  %55 = phi i1 [ false, %42 ], [ %53, %45 ]
  br i1 %55, label %56, label %60

; <label>:56:                                     ; preds = %54
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %1, align 4
  br label %42

; <label>:60:                                     ; preds = %54
  store i32 0, i32* %2, align 4
  br label %61

; <label>:61:                                     ; preds = %74, %60
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %1, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %77

; <label>:65:                                     ; preds = %61
  %66 = load i32**, i32*** @ITlen, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %72)
  br label %74

; <label>:74:                                     ; preds = %65
  %75 = load i32, i32* %2, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %2, align 4
  br label %61

; <label>:77:                                     ; preds = %61
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ZL19omp_get_max_threadsv() #5 {
  ret i32 1
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main(i32, i8**) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %class.FP_tree*, align 8
  %12 = alloca %class.Data*, align 8
  %13 = alloca i8*
  %14 = alloca i32
  %15 = alloca %class.FSout*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = call i32 @_ZL19omp_get_max_threadsv()
  store i32 %16, i32* %9, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  %18 = call i32 @fflush(%struct._IO_FILE* null)
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %2
  %22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %22, i8* %25)
  %27 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #12
  unreachable

; <label>:28:                                     ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @atoi(i8* %31) #13
  store i32 %32, i32* @THRESHOLD, align 4
  %33 = call i8* @_Znwm(i64 16) #14
  %34 = bitcast i8* %33 to %class.Data*
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  invoke void @_ZN4DataC1EPc(%class.Data* %34, i8* %37)
          to label %38 unwind label %49

; <label>:38:                                     ; preds = %28
  store %class.Data* %34, %class.Data** %12, align 8
  %39 = load %class.Data*, %class.Data** %12, align 8
  %40 = call i32 @_ZN4Data6isOpenEv(%class.Data* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

; <label>:42:                                     ; preds = %38
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* %45)
  %47 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  %48 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %47, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @exit(i32 2) #12
  unreachable

; <label>:49:                                     ; preds = %28
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  store i8* %51, i8** %13, align 8
  %52 = extractvalue { i8*, i32 } %50, 1
  store i32 %52, i32* %14, align 4
  call void @_ZdlPv(i8* %33) #15
  br label %206

; <label>:53:                                     ; preds = %38
  call void @_Z5wtimePd(double* %6)
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %55, i64 8)
  %57 = extractvalue { i64, i1 } %56, 1
  %58 = extractvalue { i64, i1 } %56, 0
  %59 = select i1 %57, i64 -1, i64 %58
  %60 = call i8* @_Znam(i64 %59) #14
  %61 = bitcast i8* %60 to %class.memory**
  store %class.memory** %61, %class.memory*** @fp_buf, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %63, i64 8)
  %65 = extractvalue { i64, i1 } %64, 1
  %66 = extractvalue { i64, i1 } %64, 0
  %67 = select i1 %65, i64 -1, i64 %66
  %68 = call i8* @_Znam(i64 %67) #14
  %69 = bitcast i8* %68 to %class.memory**
  store %class.memory** %69, %class.memory*** @fp_tree_buf, align 8
  store i32 0, i32* %10, align 4
  br label %70

; <label>:70:                                     ; preds = %89, %53
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %100

; <label>:74:                                     ; preds = %70
  %75 = call i8* @_Znwm(i64 88) #14
  %76 = bitcast i8* %75 to %class.memory*
  invoke void @_ZN6memoryC1Eilli(%class.memory* %76, i32 60, i64 10485760, i64 20971520, i32 2)
          to label %77 unwind label %92

; <label>:77:                                     ; preds = %74
  %78 = load %class.memory**, %class.memory*** @fp_buf, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %class.memory*, %class.memory** %78, i64 %80
  store %class.memory* %76, %class.memory** %81, align 8
  %82 = call i8* @_Znwm(i64 88) #14
  %83 = bitcast i8* %82 to %class.memory*
  invoke void @_ZN6memoryC1Eilli(%class.memory* %83, i32 80, i64 10485760, i64 20971520, i32 2)
          to label %84 unwind label %96

; <label>:84:                                     ; preds = %77
  %85 = load %class.memory**, %class.memory*** @fp_tree_buf, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %class.memory*, %class.memory** %85, i64 %87
  store %class.memory* %83, %class.memory** %88, align 8
  br label %89

; <label>:89:                                     ; preds = %84
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %70

; <label>:92:                                     ; preds = %74
  %93 = landingpad { i8*, i32 }
          cleanup
  %94 = extractvalue { i8*, i32 } %93, 0
  store i8* %94, i8** %13, align 8
  %95 = extractvalue { i8*, i32 } %93, 1
  store i32 %95, i32* %14, align 4
  call void @_ZdlPv(i8* %75) #15
  br label %206

; <label>:96:                                     ; preds = %77
  %97 = landingpad { i8*, i32 }
          cleanup
  %98 = extractvalue { i8*, i32 } %97, 0
  store i8* %98, i8** %13, align 8
  %99 = extractvalue { i8*, i32 } %97, 1
  store i32 %99, i32* %14, align 4
  call void @_ZdlPv(i8* %82) #15
  br label %206

; <label>:100:                                    ; preds = %70
  %101 = call i8* @_Znwm(i64 88) #14
  %102 = bitcast i8* %101 to %class.memory*
  invoke void @_ZN6memoryC1Eilli(%class.memory* %102, i32 60, i64 4194304, i64 4194304, i32 2)
          to label %103 unwind label %120

; <label>:103:                                    ; preds = %100
  store %class.memory* %102, %class.memory** @database_buf, align 8
  %104 = load %class.memory**, %class.memory*** @fp_buf, align 8
  %105 = getelementptr inbounds %class.memory*, %class.memory** %104, i64 0
  %106 = load %class.memory*, %class.memory** %105, align 8
  %107 = call i8* @_ZN6memory6newbufEjj(%class.memory* %106, i32 1, i32 112)
  %108 = bitcast i8* %107 to %class.FP_tree*
  store %class.FP_tree* %108, %class.FP_tree** %11, align 8
  %109 = load %class.FP_tree*, %class.FP_tree** %11, align 8
  call void @_ZN7FP_tree4initEiii(%class.FP_tree* %109, i32 -1, i32 0, i32 0)
  %110 = load %class.FP_tree*, %class.FP_tree** %11, align 8
  %111 = load %class.Data*, %class.Data** %12, align 8
  call void @_ZN7FP_tree8scan1_DBEP4Data(%class.FP_tree* %110, %class.Data* %111)
  call void @_Z5wtimePd(double* %7)
  %112 = load %class.FP_tree*, %class.FP_tree** %11, align 8
  %113 = load i32, i32* %9, align 4
  call void @_ZN7FP_tree8scan2_DBEi(%class.FP_tree* %112, i32 %113)
  %114 = load %class.Data*, %class.Data** %12, align 8
  call void @_ZN4Data5closeEv(%class.Data* %114)
  %115 = load %class.FP_tree*, %class.FP_tree** %11, align 8
  %116 = getelementptr inbounds %class.FP_tree, %class.FP_tree* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %124

; <label>:119:                                    ; preds = %103
  store i32 0, i32* %3, align 4
  br label %204

; <label>:120:                                    ; preds = %100
  %121 = landingpad { i8*, i32 }
          cleanup
  %122 = extractvalue { i8*, i32 } %121, 0
  store i8* %122, i8** %13, align 8
  %123 = extractvalue { i8*, i32 } %121, 1
  store i32 %123, i32* %14, align 4
  call void @_ZdlPv(i8* %101) #15
  br label %206

; <label>:124:                                    ; preds = %103
  %125 = load i32, i32* %4, align 4
  %126 = icmp eq i32 %125, 4
  br i1 %126, label %127, label %140

; <label>:127:                                    ; preds = %124
  %128 = call i8* @_Znwm(i64 8) #14
  %129 = bitcast i8* %128 to %class.FSout*
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 3
  %132 = load i8*, i8** %131, align 8
  invoke void @_ZN5FSoutC1EPc(%class.FSout* %129, i8* %132)
          to label %133 unwind label %136

; <label>:133:                                    ; preds = %127
  store %class.FSout* %129, %class.FSout** %15, align 8
  %134 = load %class.FSout*, %class.FSout** %15, align 8
  %135 = load i32, i32* @TRANSACTION_NO, align 4
  call void @_ZN5FSout8printSetEiPii(%class.FSout* %134, i32 0, i32* null, i32 %135)
  br label %141

; <label>:136:                                    ; preds = %127
  %137 = landingpad { i8*, i32 }
          cleanup
  %138 = extractvalue { i8*, i32 } %137, 0
  store i8* %138, i8** %13, align 8
  %139 = extractvalue { i8*, i32 } %137, 1
  store i32 %139, i32* %14, align 4
  call void @_ZdlPv(i8* %128) #15
  br label %206

; <label>:140:                                    ; preds = %124
  store %class.FSout* null, %class.FSout** %15, align 8
  br label %141

; <label>:141:                                    ; preds = %140, %133
  %142 = load %class.FP_tree*, %class.FP_tree** %11, align 8
  %143 = load %class.FSout*, %class.FSout** %15, align 8
  %144 = call i32 @_ZN7FP_tree15FP_growth_firstEP5FSout(%class.FP_tree* %142, %class.FSout* %143)
  call void @_Z8printLenv()
  %145 = load %class.FSout*, %class.FSout** %15, align 8
  %146 = icmp ne %class.FSout* %145, null
  br i1 %146, label %147, label %149

; <label>:147:                                    ; preds = %141
  %148 = load %class.FSout*, %class.FSout** %15, align 8
  call void @_ZN5FSout5closeEv(%class.FSout* %148)
  br label %149

; <label>:149:                                    ; preds = %147, %141
  store i32 0, i32* %10, align 4
  br label %150

; <label>:150:                                    ; preds = %173, %149
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %176

; <label>:154:                                    ; preds = %150
  %155 = load %class.memory**, %class.memory*** @fp_buf, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %class.memory*, %class.memory** %155, i64 %157
  %159 = load %class.memory*, %class.memory** %158, align 8
  %160 = icmp eq %class.memory* %159, null
  br i1 %160, label %163, label %161

; <label>:161:                                    ; preds = %154
  call void @_ZN6memoryD1Ev(%class.memory* %159) #3
  %162 = bitcast %class.memory* %159 to i8*
  call void @_ZdlPv(i8* %162) #15
  br label %163

; <label>:163:                                    ; preds = %161, %154
  %164 = load %class.memory**, %class.memory*** @fp_tree_buf, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %class.memory*, %class.memory** %164, i64 %166
  %168 = load %class.memory*, %class.memory** %167, align 8
  %169 = icmp eq %class.memory* %168, null
  br i1 %169, label %172, label %170

; <label>:170:                                    ; preds = %163
  call void @_ZN6memoryD1Ev(%class.memory* %168) #3
  %171 = bitcast %class.memory* %168 to i8*
  call void @_ZdlPv(i8* %171) #15
  br label %172

; <label>:172:                                    ; preds = %170, %163
  br label %173

; <label>:173:                                    ; preds = %172
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %150

; <label>:176:                                    ; preds = %150
  %177 = load %class.memory**, %class.memory*** @fp_buf, align 8
  %178 = icmp eq %class.memory** %177, null
  br i1 %178, label %181, label %179

; <label>:179:                                    ; preds = %176
  %180 = bitcast %class.memory** %177 to i8*
  call void @_ZdaPv(i8* %180) #15
  br label %181

; <label>:181:                                    ; preds = %179, %176
  %182 = load %class.memory**, %class.memory*** @fp_tree_buf, align 8
  %183 = icmp eq %class.memory** %182, null
  br i1 %183, label %186, label %184

; <label>:184:                                    ; preds = %181
  %185 = bitcast %class.memory** %182 to i8*
  call void @_ZdaPv(i8* %185) #15
  br label %186

; <label>:186:                                    ; preds = %184, %181
  %187 = load i32*, i32** @order_item, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %191, label %189

; <label>:189:                                    ; preds = %186
  %190 = bitcast i32* %187 to i8*
  call void @_ZdaPv(i8* %190) #15
  br label %191

; <label>:191:                                    ; preds = %189, %186
  %192 = load i32*, i32** @item_order, align 8
  %193 = icmp eq i32* %192, null
  br i1 %193, label %196, label %194

; <label>:194:                                    ; preds = %191
  %195 = bitcast i32* %192 to i8*
  call void @_ZdaPv(i8* %195) #15
  br label %196

; <label>:196:                                    ; preds = %194, %191
  call void @_Z5wtimePd(double* %8)
  %197 = load double, double* %7, align 8
  %198 = load double, double* %6, align 8
  %199 = fsub double %197, %198
  %200 = load double, double* %8, align 8
  %201 = load double, double* %7, align 8
  %202 = fsub double %200, %201
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0), double %199, double %202)
  store i32 0, i32* %3, align 4
  br label %204

; <label>:204:                                    ; preds = %196, %119
  %205 = load i32, i32* %3, align 4
  ret i32 %205

; <label>:206:                                    ; preds = %136, %120, %96, %92, %49
  %207 = load i8*, i8** %13, align 8
  %208 = load i32, i32* %14, align 4
  %209 = insertvalue { i8*, i32 } undef, i8* %207, 0
  %210 = insertvalue { i8*, i32 } %209, i32 %208, 1
  resume { i8*, i32 } %210
}

declare i32 @fflush(%struct._IO_FILE*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #8

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #9

declare void @_ZN4DataC1EPc(%class.Data*, i8*) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #10

declare i32 @_ZN4Data6isOpenEv(%class.Data*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

declare void @_Z5wtimePd(double*) #1

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #9

declare void @_ZN6memoryC1Eilli(%class.memory*, i32, i64, i64, i32) unnamed_addr #1

declare i8* @_ZN6memory6newbufEjj(%class.memory*, i32, i32) #1

declare void @_ZN7FP_tree4initEiii(%class.FP_tree*, i32, i32, i32) #1

declare void @_ZN7FP_tree8scan1_DBEP4Data(%class.FP_tree*, %class.Data*) #1

declare void @_ZN7FP_tree8scan2_DBEi(%class.FP_tree*, i32) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN4Data5closeEv(%class.Data*) #4 comdat align 2 {
  %2 = alloca %class.Data*, align 8
  store %class.Data* %0, %class.Data** %2, align 8
  %3 = load %class.Data*, %class.Data** %2, align 8
  %4 = getelementptr inbounds %class.Data, %class.Data* %3, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %class.Data, %class.Data* %3, i32 0, i32 1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %10 = call i32 @fclose(%struct._IO_FILE* %9)
  br label %11

; <label>:11:                                     ; preds = %7, %1
  ret void
}

declare void @_ZN5FSoutC1EPc(%class.FSout*, i8*) unnamed_addr #1

declare void @_ZN5FSout8printSetEiPii(%class.FSout*, i32, i32*, i32) #1

declare i32 @_ZN7FP_tree15FP_growth_firstEP5FSout(%class.FP_tree*, %class.FSout*) #1

declare void @_ZN5FSout5closeEv(%class.FSout*) #1

; Function Attrs: nounwind
declare void @_ZN6memoryD1Ev(%class.memory*) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #10

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_fpmax.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone speculatable }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { builtin }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
