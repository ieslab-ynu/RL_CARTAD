; ModuleID = 'x264.c'
source_filename = "x264.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], void (i8*, i32, i8*, %struct.__va_list_tag*)*, i8*, i32, i32, i8*, %struct.anon.0, %struct.anon.1, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, i32, i32, float, float, float, i32, float, i32, i8*, i32, i8*, float, float, float, %struct.x264_zone_t*, i32, i8* }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, %struct.x264_param_t* }
%struct.x264_picture_t = type { i32, i32, i64, %struct.x264_image_t }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x i8*] }
%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cli_opt_t = type { i32, i32, i8*, i8*, %struct._IO_FILE* }
%struct.x264_t = type { %struct.x264_param_t, [128 x %struct.x264_t*], i32, i32, i32, %struct.anon.2, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], %struct.x264_sps_t*, [1 x %struct.x264_pps_t], %struct.x264_pps_t*, i32, [4 x [4 x [4 x i32]]*], [2 x [8 x [8 x i32]]*], [4 x [16 x i32]*], [2 x [64 x i32]*], [4 x [16 x i16]*], [2 x [64 x i16]*], [4 x [16 x i16]*], [2 x [64 x i16]*], i8*, [8 x i8], [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], %struct.x264_slice_header_t, [8 x i8], %struct.x264_cabac_t, %struct.anon.6, %struct.x264_frame_t*, %struct.x264_frame_t*, i32, [19 x %struct.x264_frame_t*], i32, [19 x %struct.x264_frame_t*], [2 x i32], %struct.anon.7, %struct.anon.8, %struct.x264_ratecontrol_t*, %struct.anon.11, [7 x void (i8*)*], [7 x void (i8*)*], [12 x void (i8*, i8*)*], [12 x void (i8*)*], %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t }
%struct.anon.2 = type { i32, [8 x %struct.x264_nal_t], i32, i8*, %struct.bs_s, i32 }
%struct.x264_nal_t = type { i32, i32, i32, i8* }
%struct.bs_s = type { i8*, i8*, i8*, i64, i32, i32 }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.3, i32, %struct.anon.4, i32 }
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8*] }
%struct.x264_slice_header_t = type { %struct.x264_sps_t*, %struct.x264_pps_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.5]], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.5 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, i8*, i8*, i8*, [8 x i8], i32, [460 x i8] }
%struct.anon.6 = type { [67 x %struct.x264_frame_t*], [67 x %struct.x264_frame_t*], [340 x %struct.x264_frame_t*], %struct.x264_frame_t*, [18 x %struct.x264_frame_t*], i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_frame_t = type { i32, i32, i32, i64, i32, i32, i32, float, float, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x i8*], [4 x i8*], [4 x i8*], i16*, [4 x i8*], [4 x i8*], i8*, [2 x [2 x i16]*], [2 x [17 x [2 x i16]*]], [2 x [17 x i32*]], [2 x i8*], [2 x i32], [2 x [16 x i32]], [16 x i32], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x i32*]], i32*, i32*, i32*, float*, i32, i16*, i16*, i32, i32, i32, i32 }
%struct.anon.7 = type { [16 x i16], [2 x [4 x i16]], [4 x [64 x i16]], [24 x [16 x i16]] }
%struct.anon.8 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, i8*, i8*, i16*, [8 x i8]*, [24 x i8]*, i8*, [2 x [2 x i16]*], [2 x [2 x i16]*], [2 x i8*], [2 x [32 x [2 x i16]*]], i8*, i8*, [2 x [3 x i8*]], [16 x i8]*, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.anon.9, %struct.anon.10, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [2 x i16]], [32 x [4 x i16]], [2 x i8], [16 x i8], [14 x i8] }
%struct.anon.9 = type { [384 x i8], [864 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x [64 x i16]], [16 x [16 x i16]], [4 x [4 x i32]], i32, [2 x [2 x i32]], i32, [3 x i8*], [3 x i8*], [3 x i8*], [2 x i32], [2 x [32 x [6 x i8*]]], [2 x [16 x i16*]], [3 x i32], [12 x i8] }
%struct.anon.10 = type { [48 x i8], [48 x i8], [2 x [48 x i8]], [2 x [48 x [2 x i16]]], [2 x [48 x [2 x i16]]], [48 x i8], [2 x [48 x [2 x i16]]], [2 x [48 x i8]], [2 x i16], i32, i32, [4 x i8] }
%struct.x264_ratecontrol_t = type opaque
%struct.anon.11 = type { %struct.anon.12, [5 x i32], [5 x i64], [5 x double], [17 x i32], [5 x i64], [5 x double], [5 x double], [5 x double], [5 x double], [5 x double], [5 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [2 x i32], [2 x i32] }
%struct.anon.12 = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], i32, i32, i32, [2 x i32], [3 x i64], double }
%struct.x264_pixel_function_t = type { [7 x i32 (i8*, i32, i8*, i32)*], [7 x i32 (i8*, i32, i8*, i32)*], [7 x i32 (i8*, i32, i8*, i32)*], [7 x i32 (i8*, i32, i8*, i32)*], [4 x i32 (i8*, i32, i8*, i32)*], [7 x i32 (i8*, i32, i8*, i32)*], [7 x i32 (i8*, i32, i8*, i32)*], [7 x i32 (i8*, i32, i8*, i32)*], [7 x void (i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*], [7 x i32 (i8*, i32, i8*, i32)*], [4 x i32 (i8*, i32, i32*)*], [4 x i64 (i8*, i32)*], void (i8*, i32, i8*, i32, [4 x i32]*)*, float ([4 x i32]*, [4 x i32]*, i32)*, [7 x void (i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*], [7 x i32 (i32*, i16*, i32, i16*, i16*, i32, i32)*], void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)* }
%struct.x264_mc_functions_t = type { void (i8*, i32, i8**, i32, i32, i32, i32, i32)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32, i32, i32)*, [10 x void (i8*, i32, i8*, i32, i8*, i32, i32)*], [7 x void (i8*, i32, i8*, i32, i32)*], void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32)*, void (i8*, i8*, i8*, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i32)*, i8* (i8*, i8*, i64)*, void (i8*, i32)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32)* }
%struct.x264_dct_function_t = type { void ([4 x i16]*, i8*, i8*)*, void (i8*, [4 x i16]*)*, void ([4 x [4 x i16]]*, i8*, i8*)*, void (i8*, [4 x [4 x i16]]*)*, void ([4 x [4 x i16]]*, i8*, i8*)*, void (i8*, [4 x [4 x i16]]*)*, void ([8 x i16]*, i8*, i8*)*, void (i8*, [8 x i16]*)*, void ([8 x [8 x i16]]*, i8*, i8*)*, void (i8*, [8 x [8 x i16]]*)*, void ([4 x i16]*)*, void ([4 x i16]*)* }
%struct.x264_zigzag_function_t = type { void (i16*, [8 x i16]*)*, void (i16*, [4 x i16]*)*, void (i16*, i8*, i8*)*, void (i16*, i8*, i8*)*, void (i16*, i16*)* }
%struct.x264_quant_function_t = type { void ([8 x i16]*, i16*, i16*)*, void ([4 x i16]*, i16*, i16*)*, void ([4 x i16]*, i32, i32)*, void ([2 x i16]*, i32, i32)*, void ([8 x i16]*, [8 x [8 x i32]]*, i32)*, void ([4 x i16]*, [4 x [4 x i32]]*, i32)*, void ([4 x i16]*, [4 x [4 x i32]]*, i32)*, void (i16*, i32*, i16*, i32)*, i32 (i16*)*, i32 (i16*)*, i32 (i16*)*, [6 x i32 (i16*)*] }
%struct.x264_deblock_function_t = type { void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)* }

@mux_buffer = global i8* null, align 8
@mux_buffer_size = global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PARSEC Benchmark Suite\0A\00", align 1
@p_open_infile = common global i32 (i8*, i8**, %struct.x264_param_t*)* null, align 8
@p_get_frame_total = common global i32 (i8*)* null, align 8
@p_read_frame = common global i32 (%struct.x264_picture_t*, i8*, i32)* null, align 8
@p_close_infile = common global i32 (i8*)* null, align 8
@b_exit_on_ctrl_c = internal global i32 0, align 4
@b_ctrl_c = internal global i32 0, align 4
@p_open_outfile = internal global i32 (i8*, i8**)* null, align 8
@p_set_outfile_param = internal global i32 (i8*, %struct.x264_param_t*)* null, align 8
@p_write_nalu = internal global i32 (i8*, i8*, i32)* null, align 8
@p_set_eop = internal global i32 (i8*, %struct.x264_picture_t*)* null, align 8
@p_close_outfile = internal global i32 (i8*)* null, align 8
@Parse.long_options = internal global [101 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* null, i32 263 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 1, i32* null, i32 66 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 1, i32* null, i32 73 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i32 1, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 1, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 1, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 56 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i32 1, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 1, i32* null, i32 258 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 259 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 260 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i32 0, i32* null, i32 261 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 0, i32* null, i32 262 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"longhelp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"no-b-adapt\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"pre-scenecut\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"no-deblock\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"no-cabac\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"no-asm\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"direct-8x8\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"merange\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"subme\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"no-chroma-me\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"no-fast-pskip\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"no-dct-decimate\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"zones\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"qpfile\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"thread-input\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"non-deterministic\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"no-psnr\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"no-ssim\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"visualize\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"8A:B:b:f:hI:i:m:o:p:q:r:t:Vvw\00", align 1
@.str.102 = private unnamed_addr constant [25 x i8] c"x264 0.65.1047M f773bf0\0A\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"built on Apr 12 2020, \00", align 1
@.str.104 = private unnamed_addr constant [60 x i8] c"gcc: 4.2.1 Compatible Clang 6.0.1 (tags/RELEASE_601/final)\0A\00", align 1
@optarg = external global i8*, align 8
@.str.105 = private unnamed_addr constant [5 x i8] c".mp4\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.106 = private unnamed_addr constant [52 x i8] c"x264 [error]: not compiled with MP4 output support\0A\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c".mkv\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.109 = private unnamed_addr constant [43 x i8] c"x264 [error]: can't open output file `%s'\0A\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.111 = private unnamed_addr constant [31 x i8] c"x264 [error]: can't open `%s'\0A\00", align 1
@.str.112 = private unnamed_addr constant [57 x i8] c"x264 [warning]: not compiled with visualization support\0A\00", align 1
@optind = external global i32, align 4
@.str.113 = private unnamed_addr constant [41 x i8] c"x264 [error]: invalid argument: %s = %s\0A\00", align 1
@.str.114 = private unnamed_addr constant [66 x i8] c"x264 [error]: No %s file. Run x264 --help for a list of options.\0A\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c".avi\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c".avs\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c".y4m\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"%ux%u\00", align 1
@.str.120 = private unnamed_addr constant [36 x i8] c"x264 [info]: file name gives %dx%d\0A\00", align 1
@.str.121 = private unnamed_addr constant [51 x i8] c"x264 [error]: Rawyuv input requires a resolution.\0A\00", align 1
@.str.122 = private unnamed_addr constant [52 x i8] c"x264 [error]: not compiled with AVIS input support\0A\00", align 1
@.str.123 = private unnamed_addr constant [46 x i8] c"x264 [error]: could not open input file '%s'\0A\00", align 1
@.str.124 = private unnamed_addr constant [480 x i8] c"x264 core:%d%s\0ASyntax: x264 [options] -o outfile infile [widthxheight]\0A\0AInfile can be raw YUV 4:2:0 (in which case resolution is required),\0A  or YUV4MPEG 4:2:0 (*.y4m),\0A  or AVI or Avisynth if compiled with AVIS support (%s).\0AOutfile type is selected by filename:\0A .264 -> Raw bytestream\0A .mkv -> Matroska\0A .mp4 -> MP4 if compiled with GPAC support (%s)\0A\0AOptions:\0A\0A  -h, --help                  List the more commonly used options\0A      --longhelp              List all options\0A\0A\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c" r1047M f773bf0\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"Frame-type options:\0A\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.129 = private unnamed_addr constant [53 x i8] c"  -I, --keyint <integer>      Maximum GOP size [%d]\0A\00", align 1
@.str.130 = private unnamed_addr constant [53 x i8] c"  -i, --min-keyint <integer>  Minimum GOP size [%d]\0A\00", align 1
@.str.131 = private unnamed_addr constant [78 x i8] c"      --scenecut <integer>    How aggressively to insert extra I-frames [%d]\0A\00", align 1
@.str.132 = private unnamed_addr constant [147 x i8] c"      --pre-scenecut          Faster, less precise scenecut detection.\0A                                  Required and implied by multi-threading.\0A\00", align 1
@.str.133 = private unnamed_addr constant [71 x i8] c"  -b, --bframes <integer>     Number of B-frames between I and P [%d]\0A\00", align 1
@.str.134 = private unnamed_addr constant [315 x i8] c"      --b-adapt               Adaptive B-frame decision method [%d]\0A                                  Higher values may lower threading efficiency.\0A                                  - 0: Disabled\0A                                  - 1: Fast\0A                                  - 2: Optimal (slow with high --bframes)\0A\00", align 1
@.str.135 = private unnamed_addr constant [75 x i8] c"      --b-bias <integer>      Influences how often B-frames are used [%d]\0A\00", align 1
@.str.136 = private unnamed_addr constant [64 x i8] c"      --b-pyramid             Keep some B-frames as references\0A\00", align 1
@.str.137 = private unnamed_addr constant [45 x i8] c"      --no-cabac              Disable CABAC\0A\00", align 1
@.str.138 = private unnamed_addr constant [63 x i8] c"  -r, --ref <integer>         Number of reference frames [%d]\0A\00", align 1
@.str.139 = private unnamed_addr constant [51 x i8] c"      --no-deblock            Disable loop filter\0A\00", align 1
@.str.140 = private unnamed_addr constant [79 x i8] c"  -f, --deblock <alpha:beta>  Loop filter AlphaC0 and Beta parameters [%d:%d]\0A\00", align 1
@.str.141 = private unnamed_addr constant [59 x i8] c"      --interlaced            Enable pure-interlaced mode\0A\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"Ratecontrol:\0A\00", align 1
@.str.143 = private unnamed_addr constant [56 x i8] c"  -q, --qp <integer>          Set QP (0=lossless) [%d]\0A\00", align 1
@.str.144 = private unnamed_addr constant [52 x i8] c"  -B, --bitrate <integer>     Set bitrate (kbit/s)\0A\00", align 1
@.str.145 = private unnamed_addr constant [62 x i8] c"      --crf <float>           Quality-based VBR (nominal QP)\0A\00", align 1
@.str.146 = private unnamed_addr constant [63 x i8] c"      --vbv-maxrate <integer> Max local bitrate (kbit/s) [%d]\0A\00", align 1
@.str.147 = private unnamed_addr constant [85 x i8] c"      --vbv-bufsize <integer> Enable CBR and set size of the VBV buffer (kbit) [%d]\0A\00", align 1
@.str.148 = private unnamed_addr constant [67 x i8] c"      --vbv-init <float>      Initial VBV buffer occupancy [%.1f]\0A\00", align 1
@.str.149 = private unnamed_addr constant [47 x i8] c"      --qpmin <integer>       Set min QP [%d]\0A\00", align 1
@.str.150 = private unnamed_addr constant [47 x i8] c"      --qpmax <integer>       Set max QP [%d]\0A\00", align 1
@.str.151 = private unnamed_addr constant [52 x i8] c"      --qpstep <integer>      Set max QP step [%d]\0A\00", align 1
@.str.152 = private unnamed_addr constant [74 x i8] c"      --ratetol <float>       Allowed variance of average bitrate [%.1f]\0A\00", align 1
@.str.153 = private unnamed_addr constant [64 x i8] c"      --ipratio <float>       QP factor between I and P [%.2f]\0A\00", align 1
@.str.154 = private unnamed_addr constant [64 x i8] c"      --pbratio <float>       QP factor between P and B [%.2f]\0A\00", align 1
@.str.155 = private unnamed_addr constant [80 x i8] c"      --chroma-qp-offset <integer>  QP difference between chroma and luma [%d]\0A\00", align 1
@.str.156 = private unnamed_addr constant [163 x i8] c"      --aq-mode <integer>     AQ method [%d]\0A                                  - 0: Disabled\0A                                  - 1: Variance AQ (complexity mask)\0A\00", align 1
@.str.157 = private unnamed_addr constant [226 x i8] c"      --aq-strength <float>   Reduces blocking and blurring in flat and\0A                              textured areas. [%.1f]\0A                                  - 0.5: weak AQ\0A                                  - 1.5: strong AQ\0A\00", align 1
@.str.158 = private unnamed_addr constant [281 x i8] c"  -p, --pass <1|2|3>          Enable multipass ratecontrol\0A                                  - 1: First pass, creates stats file\0A                                  - 2: Last pass, does not overwrite stats file\0A                                  - 3: Nth pass, overwrites stats file\0A\00", align 1
@.str.159 = private unnamed_addr constant [64 x i8] c"      --stats <string>        Filename for 2 pass stats [\22%s\22]\0A\00", align 1
@.str.160 = private unnamed_addr constant [83 x i8] c"      --qcomp <float>         QP curve compression: 0.0 => CBR, 1.0 => CQP [%.2f]\0A\00", align 1
@.str.161 = private unnamed_addr constant [91 x i8] c"      --cplxblur <float>      Reduce fluctuations in QP (before curve compression) [%.1f]\0A\00", align 1
@.str.162 = private unnamed_addr constant [90 x i8] c"      --qblur <float>         Reduce fluctuations in QP (after curve compression) [%.1f]\0A\00", align 1
@.str.163 = private unnamed_addr constant [83 x i8] c"      --zones <zone0>/<zone1>/...  Tweak the bitrate of some regions of the video\0A\00", align 1
@.str.164 = private unnamed_addr constant [314 x i8] c"                              Each zone is of the form\0A                                  <start frame>,<end frame>,<option>\0A                                  where <option> is either\0A                                      q=<integer> (force QP)\0A                                  or  b=<float> (bitrate multiplier)\0A\00", align 1
@.str.165 = private unnamed_addr constant [56 x i8] c"      --qpfile <string>       Force frametypes and QPs\0A\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"Analysis:\0A\00", align 1
@.str.167 = private unnamed_addr constant [269 x i8] c"  -A, --partitions <string>   Partitions to consider [\22p8x8,b8x8,i8x8,i4x4\22]\0A                                  - p8x8, p4x4, b8x8, i8x8, i4x4\0A                                  - none, all\0A                                  (p4x4 requires p8x8. i8x8 requires --8x8dct.)\0A\00", align 1
@.str.168 = private unnamed_addr constant [130 x i8] c"      --direct <string>       Direct MV prediction mode [\22%s\22]\0A                                  - none, spatial, temporal, auto\0A\00", align 1
@x264_direct_pred_names = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.233, i32 0, i32 0), i8* null], align 16
@.str.169 = private unnamed_addr constant [224 x i8] c"      --direct-8x8 <-1|0|1>   Direct prediction size [%d]\0A                                  -  0: 4x4\0A                                  -  1: 8x8\0A                                  - -1: smallest possible according to level\0A\00", align 1
@.str.170 = private unnamed_addr constant [64 x i8] c"  -w, --weightb               Weighted prediction for B-frames\0A\00", align 1
@.str.171 = private unnamed_addr constant [77 x i8] c"      --me <string>           Integer pixel motion estimation method [\22%s\22]\0A\00", align 1
@x264_motion_est_names = internal constant [6 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.238, i32 0, i32 0), i8* null], align 16
@.str.172 = private unnamed_addr constant [346 x i8] c"                                  - dia: diamond search, radius 1 (fast)\0A                                  - hex: hexagonal search, radius 2\0A                                  - umh: uneven multi-hexagon search\0A                                  - esa: exhaustive search\0A                                  - tesa: hadamard exhaustive search (slow)\0A\00", align 1
@.str.173 = private unnamed_addr constant [51 x i8] c"                                  - dia, hex, umh\0A\00", align 1
@.str.174 = private unnamed_addr constant [71 x i8] c"      --merange <integer>     Maximum motion vector search range [%d]\0A\00", align 1
@.str.175 = private unnamed_addr constant [72 x i8] c"      --mvrange <integer>     Maximum motion vector length [-1 (auto)]\0A\00", align 1
@.str.176 = private unnamed_addr constant [74 x i8] c"      --mvrange-thread <int>  Minimum buffer between threads [-1 (auto)]\0A\00", align 1
@.str.177 = private unnamed_addr constant [81 x i8] c"  -m, --subme <integer>       Subpixel motion estimation and mode decision [%d]\0A\00", align 1
@.str.178 = private unnamed_addr constant [549 x i8] c"                                  - 0: fullpel only (not recommended)\0A                                  - 1: SAD mode decision, one qpel iteration\0A                                  - 2: SATD mode decision\0A                                  - 3-5: Progressively more qpel\0A                                  - 6: RD mode decision for I/P-frames\0A                                  - 7: RD mode decision for all frames\0A                                  - 8: RD refinement for I/P-frames\0A                                  - 9: RD refinement for all frames\0A\00", align 1
@.str.179 = private unnamed_addr constant [69 x i8] c"                                  decision quality: 1=fast, 9=best.\0A\00", align 1
@.str.180 = private unnamed_addr constant [223 x i8] c"      --psy-rd                Strength of psychovisual optimization [\22%.1f:%.1f\22]\0A                                  #1: RD (requires subme>=6)\0A                                  #2: Trellis (requires trellis, experimental)\0A\00", align 1
@.str.181 = private unnamed_addr constant [74 x i8] c"      --mixed-refs            Decide references on a per partition basis\0A\00", align 1
@.str.182 = private unnamed_addr constant [66 x i8] c"      --no-chroma-me          Ignore chroma in motion estimation\0A\00", align 1
@.str.183 = private unnamed_addr constant [63 x i8] c"  -8, --8x8dct                Adaptive spatial transform size\0A\00", align 1
@.str.184 = private unnamed_addr constant [274 x i8] c"  -t, --trellis <integer>     Trellis RD quantization. Requires CABAC. [%d]\0A                                  - 0: disabled\0A                                  - 1: enabled only on the final encode of a MB\0A                                  - 2: enabled on all mode decisions\0A\00", align 1
@.str.185 = private unnamed_addr constant [73 x i8] c"      --no-fast-pskip         Disables early SKIP detection on P-frames\0A\00", align 1
@.str.186 = private unnamed_addr constant [77 x i8] c"      --no-dct-decimate       Disables coefficient thresholding on P-frames\0A\00", align 1
@.str.187 = private unnamed_addr constant [52 x i8] c"      --nr <integer>          Noise reduction [%d]\0A\00", align 1
@.str.188 = private unnamed_addr constant [89 x i8] c"      --deadzone-inter <int>  Set the size of the inter luma quantization deadzone [%d]\0A\00", align 1
@.str.189 = private unnamed_addr constant [89 x i8] c"      --deadzone-intra <int>  Set the size of the intra luma quantization deadzone [%d]\0A\00", align 1
@.str.190 = private unnamed_addr constant [76 x i8] c"                                  Deadzones should be in the range 0 - 32.\0A\00", align 1
@.str.191 = private unnamed_addr constant [108 x i8] c"      --cqm <string>          Preset quant matrices [\22flat\22]\0A                                  - jvt, flat\0A\00", align 1
@.str.192 = private unnamed_addr constant [84 x i8] c"      --cqmfile <string>      Read custom quant matrices from a JM-compatible file\0A\00", align 1
@.str.193 = private unnamed_addr constant [71 x i8] c"                                  Overrides any other --cqm* options.\0A\00", align 1
@.str.194 = private unnamed_addr constant [137 x i8] c"      --cqm4 <list>           Set all 4x4 quant matrices\0A                                  Takes a comma-separated list of 16 integers.\0A\00", align 1
@.str.195 = private unnamed_addr constant [137 x i8] c"      --cqm8 <list>           Set all 8x8 quant matrices\0A                                  Takes a comma-separated list of 64 integers.\0A\00", align 1
@.str.196 = private unnamed_addr constant [112 x i8] c"      --cqm4i, --cqm4p, --cqm8i, --cqm8p\0A                              Set both luma and chroma quant matrices\0A\00", align 1
@.str.197 = private unnamed_addr constant [106 x i8] c"      --cqm4iy, --cqm4ic, --cqm4py, --cqm4pc\0A                              Set individual quant matrices\0A\00", align 1
@.str.198 = private unnamed_addr constant [33 x i8] c"Video Usability Info (Annex E):\0A\00", align 1
@.str.199 = private unnamed_addr constant [76 x i8] c"The VUI settings are not used by the encoder but are merely suggestions to\0A\00", align 1
@.str.200 = private unnamed_addr constant [76 x i8] c"the playback equipment. See doc/vui.txt for details. Use at your own risk.\0A\00", align 1
@.str.201 = private unnamed_addr constant [122 x i8] c"      --overscan <string>     Specify crop overscan setting [\22%s\22]\0A                                  - undef, show, crop\0A\00", align 1
@x264_overscan_names = internal constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.241, i32 0, i32 0), i8* null], align 16
@.str.202 = private unnamed_addr constant [135 x i8] c"      --videoformat <string>  Specify video format [\22%s\22]\0A                                  - component, pal, ntsc, secam, mac, undef\0A\00", align 1
@x264_vidformat_names = internal constant [7 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i32 0, i32 0), i8* null], align 16
@.str.203 = private unnamed_addr constant [117 x i8] c"      --fullrange <string>    Specify full range samples setting [\22%s\22]\0A                                  - off, on\0A\00", align 1
@x264_fullrange_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.248, i32 0, i32 0), i8* null], align 16
@.str.204 = private unnamed_addr constant [191 x i8] c"      --colorprim <string>    Specify color primaries [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg\0A                                    smpte170m, smpte240m, film\0A\00", align 1
@x264_colorprim_names = internal constant [10 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.255, i32 0, i32 0), i8* null], align 16
@.str.205 = private unnamed_addr constant [219 x i8] c"      --transfer <string>     Specify transfer characteristics [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg, linear,\0A                                    log100, log316, smpte170m, smpte240m\0A\00", align 1
@x264_transfer_names = internal constant [12 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.258, i32 0, i32 0), i8* null], align 16
@.str.206 = private unnamed_addr constant [199 x i8] c"      --colormatrix <string>  Specify color matrix setting [\22%s\22]\0A                                  - undef, bt709, fcc, bt470bg\0A                                    smpte170m, smpte240m, GBR, YCgCo\0A\00", align 1
@x264_colmatrix_names = internal constant [10 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.261, i32 0, i32 0), i8* null], align 16
@.str.207 = private unnamed_addr constant [76 x i8] c"      --chromaloc <integer>   Specify chroma sample location (0 to 5) [%d]\0A\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"Input/Output:\0A\00", align 1
@.str.209 = private unnamed_addr constant [51 x i8] c"  -o, --output                Specify output file\0A\00", align 1
@.str.210 = private unnamed_addr constant [59 x i8] c"      --sar width:height      Specify Sample Aspect Ratio\0A\00", align 1
@.str.211 = private unnamed_addr constant [49 x i8] c"      --fps <float|rational>  Specify framerate\0A\00", align 1
@.str.212 = private unnamed_addr constant [53 x i8] c"      --seek <integer>        First frame to encode\0A\00", align 1
@.str.213 = private unnamed_addr constant [66 x i8] c"      --frames <integer>      Maximum number of frames to encode\0A\00", align 1
@.str.214 = private unnamed_addr constant [69 x i8] c"      --level <string>        Specify level (as defined by Annex A)\0A\00", align 1
@.str.215 = private unnamed_addr constant [58 x i8] c"  -v, --verbose               Print stats for each frame\0A\00", align 1
@.str.216 = private unnamed_addr constant [72 x i8] c"      --progress              Show a progress indicator while encoding\0A\00", align 1
@.str.217 = private unnamed_addr constant [42 x i8] c"      --quiet                 Quiet Mode\0A\00", align 1
@.str.218 = private unnamed_addr constant [56 x i8] c"      --no-psnr               Disable PSNR computation\0A\00", align 1
@.str.219 = private unnamed_addr constant [56 x i8] c"      --no-ssim               Disable SSIM computation\0A\00", align 1
@.str.220 = private unnamed_addr constant [49 x i8] c"      --threads <integer>     Parallel encoding\0A\00", align 1
@.str.221 = private unnamed_addr constant [62 x i8] c"      --thread-input          Run Avisynth in its own thread\0A\00", align 1
@.str.222 = private unnamed_addr constant [93 x i8] c"      --non-deterministic     Slightly improve quality of SMP, at the cost of repeatability\0A\00", align 1
@.str.223 = private unnamed_addr constant [54 x i8] c"      --asm <integer>         Override CPU detection\0A\00", align 1
@.str.224 = private unnamed_addr constant [61 x i8] c"      --no-asm                Disable all CPU optimizations\0A\00", align 1
@.str.225 = private unnamed_addr constant [76 x i8] c"      --visualize             Show MB types overlayed on the encoded video\0A\00", align 1
@.str.226 = private unnamed_addr constant [57 x i8] c"      --dump-yuv <string>     Save reconstructed frames\0A\00", align 1
@.str.227 = private unnamed_addr constant [63 x i8] c"      --sps-id <integer>      Set SPS and PPS id numbers [%d]\0A\00", align 1
@.str.228 = private unnamed_addr constant [58 x i8] c"      --aud                   Use access unit delimiters\0A\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.231 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.234 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.235 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.236 = private unnamed_addr constant [4 x i8] c"umh\00", align 1
@.str.237 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.246 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.248 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.249 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.250 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1
@.str.252 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1
@.str.253 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@.str.254 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@.str.255 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.256 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"log100\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"log316\00", align 1
@.str.259 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@.str.260 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@.str.261 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1
@.str.262 = private unnamed_addr constant [40 x i8] c"x264 [error]: x264_encoder_open failed\0A\00", align 1
@.str.263 = private unnamed_addr constant [39 x i8] c"x264 [error]: can't set outfile param\0A\00", align 1
@.str.264 = private unnamed_addr constant [66 x i8] c"x264 [%.1f%%] %d/%d frames, %.2f fps, %.2f kb/s, eta %d:%02d:%02d\00", align 1
@.str.265 = private unnamed_addr constant [36 x i8] c"x264 %d frames: %.2f fps, %.2f kb/s\00", align 1
@.str.266 = private unnamed_addr constant [6 x i8] c"%s  \0D\00", align 1
@.str.267 = private unnamed_addr constant [81 x i8] c"                                                                               \0D\00", align 1
@.str.268 = private unnamed_addr constant [27 x i8] c"aborted at input frame %d\0A\00", align 1
@.str.269 = private unnamed_addr constant [40 x i8] c"encoded %d frames, %.2f fps, %.2f kb/s\0A\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"%d %c %d\0A\00", align 1
@.str.271 = private unnamed_addr constant [47 x i8] c"x264 [error]: can't parse qpfile for frame %d\0A\00", align 1
@.str.272 = private unnamed_addr constant [42 x i8] c"x264 [error]: x264_encoder_encode failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.x264_param_t, align 8
  %7 = alloca %struct.cli_opt_t, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %10 = call i32 @fflush(%struct._IO_FILE* null)
  call void @x264_param_default(%struct.x264_param_t* %6)
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @Parse(i32 %11, i8** %12, %struct.x264_param_t* %6, %struct.cli_opt_t* %7)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

; <label>:16:                                     ; preds = %2
  %17 = call void (i32)* @signal(i32 2, void (i32)* @SigIntHandler) #6
  %18 = call i32 @Encode(%struct.x264_param_t* %6, %struct.cli_opt_t* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %16, %15
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @x264_param_default(%struct.x264_param_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Parse(i32, i8**, %struct.x264_param_t*, %struct.cli_opt_t*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.x264_param_t*, align 8
  %9 = alloca %struct.cli_opt_t*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.x264_param_t, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store %struct.x264_param_t* %2, %struct.x264_param_t** %8, align 8
  store %struct.cli_opt_t* %3, %struct.cli_opt_t** %9, align 8
  store i8* null, i8** %10, align 8
  %21 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %22 = bitcast %struct.x264_param_t* %11 to i8*
  %23 = bitcast %struct.x264_param_t* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 616, i32 8, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.cli_opt_t*, %struct.cli_opt_t** %9, align 8
  %25 = bitcast %struct.cli_opt_t* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 32, i32 8, i1 false)
  store i32 (i8*, i8**, %struct.x264_param_t*)* @open_file_yuv, i32 (i8*, i8**, %struct.x264_param_t*)** @p_open_infile, align 8
  store i32 (i8*)* @get_frame_total_yuv, i32 (i8*)** @p_get_frame_total, align 8
  store i32 (%struct.x264_picture_t*, i8*, i32)* @read_frame_yuv, i32 (%struct.x264_picture_t*, i8*, i32)** @p_read_frame, align 8
  store i32 (i8*)* @close_file_yuv, i32 (i8*)** @p_close_infile, align 8
  store i32 (i8*, i8**)* @open_file_bsf, i32 (i8*, i8**)** @p_open_outfile, align 8
  store i32 (i8*, %struct.x264_param_t*)* @set_param_bsf, i32 (i8*, %struct.x264_param_t*)** @p_set_outfile_param, align 8
  store i32 (i8*, i8*, i32)* @write_nalu_bsf, i32 (i8*, i8*, i32)** @p_write_nalu, align 8
  store i32 (i8*, %struct.x264_picture_t*)* @set_eop_bsf, i32 (i8*, %struct.x264_picture_t*)** @p_set_eop, align 8
  store i32 (i8*)* @close_file_bsf, i32 (i8*)** @p_close_outfile, align 8
  br label %26

; <label>:26:                                     ; preds = %191, %4
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i8**, i8*** %7, align 8
  %29 = call i32 @getopt_long(i32 %27, i8** %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.101, i32 0, i32 0), %struct.option* getelementptr inbounds ([101 x %struct.option], [101 x %struct.option]* @Parse.long_options, i32 0, i32 0), i32* %17) #6
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %26
  br label %192

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %18, align 4
  switch i32 %34, label %125 [
    i32 104, label %35
    i32 263, label %36
    i32 86, label %37
    i32 256, label %41
    i32 257, label %46
    i32 111, label %51
    i32 258, label %94
    i32 259, label %112
    i32 260, label %113
    i32 118, label %116
    i32 261, label %119
    i32 262, label %122
  ]

; <label>:35:                                     ; preds = %33
  call void @Help(%struct.x264_param_t* %11, i32 0)
  call void @exit(i32 0) #7
  unreachable

; <label>:36:                                     ; preds = %33
  call void @Help(%struct.x264_param_t* %11, i32 1)
  call void @exit(i32 0) #7
  unreachable

; <label>:37:                                     ; preds = %33
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.102, i32 0, i32 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.103, i32 0, i32 0))
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.104, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

; <label>:41:                                     ; preds = %33
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i32 @atoi(i8* %42) #8
  %44 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %45 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  br label %166

; <label>:46:                                     ; preds = %33
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @atoi(i8* %47) #8
  %49 = load %struct.cli_opt_t*, %struct.cli_opt_t** %9, align 8
  %50 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %166

; <label>:51:                                     ; preds = %33
  %52 = load i8*, i8** @optarg, align 8
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i64 @strlen(i8* %53) #8
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 -4
  %57 = call i32 @strncasecmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i64 4) #8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

; <label>:59:                                     ; preds = %51
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.106, i32 0, i32 0))
  store i32 -1, i32* %5, align 4
  br label %361

; <label>:62:                                     ; preds = %51
  %63 = load i8*, i8** @optarg, align 8
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i64 @strlen(i8* %64) #8
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = getelementptr inbounds i8, i8* %66, i64 -4
  %68 = call i32 @strncasecmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i64 4) #8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

; <label>:70:                                     ; preds = %62
  store i32 (i8*, i8**)* @open_file_mkv, i32 (i8*, i8**)** @p_open_outfile, align 8
  store i32 (i8*, i8*, i32)* @write_nalu_mkv, i32 (i8*, i8*, i32)** @p_write_nalu, align 8
  store i32 (i8*, %struct.x264_param_t*)* @set_param_mkv, i32 (i8*, %struct.x264_param_t*)** @p_set_outfile_param, align 8
  store i32 (i8*, %struct.x264_picture_t*)* @set_eop_mkv, i32 (i8*, %struct.x264_picture_t*)** @p_set_eop, align 8
  store i32 (i8*)* @close_file_mkv, i32 (i8*)** @p_close_outfile, align 8
  br label %71

; <label>:71:                                     ; preds = %70, %62
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i8*, i8** @optarg, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0)) #8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

; <label>:76:                                     ; preds = %72
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %78 = bitcast %struct._IO_FILE* %77 to i8*
  %79 = load %struct.cli_opt_t*, %struct.cli_opt_t** %9, align 8
  %80 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  br label %93

; <label>:81:                                     ; preds = %72
  %82 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** @p_open_outfile, align 8
  %83 = load i8*, i8** @optarg, align 8
  %84 = load %struct.cli_opt_t*, %struct.cli_opt_t** %9, align 8
  %85 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %84, i32 0, i32 3
  %86 = call i32 %82(i8* %83, i8** %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

; <label>:88:                                     ; preds = %81
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = load i8*, i8** @optarg, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.109, i32 0, i32 0), i8* %90)
  store i32 -1, i32* %5, align 4
  br label %361

; <label>:92:                                     ; preds = %81
  br label %93

; <label>:93:                                     ; preds = %92, %76
  br label %166

; <label>:94:                                     ; preds = %33
  %95 = load i8*, i8** @optarg, align 8
  %96 = call %struct._IO_FILE* @fopen(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0))
  %97 = load %struct.cli_opt_t*, %struct.cli_opt_t** %9, align 8
  %98 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %97, i32 0, i32 4
  store %struct._IO_FILE* %96, %struct._IO_FILE** %98, align 8
  %99 = load %struct.cli_opt_t*, %struct.cli_opt_t** %9, align 8
  %100 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %99, i32 0, i32 4
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %100, align 8
  %102 = icmp ne %struct._IO_FILE* %101, null
  br i1 %102, label %107, label %103

; <label>:103:                                    ; preds = %94
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %105 = load i8*, i8** @optarg, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.111, i32 0, i32 0), i8* %105)
  store i32 -1, i32* %5, align 4
  br label %361

; <label>:107:                                    ; preds = %94
  %108 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %109 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %108, i32 0, i32 14
  store i32 -1, i32* %109, align 8
  %110 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %111 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %110, i32 0, i32 17
  store i32 0, i32* %111, align 4
  br label %166

; <label>:112:                                    ; preds = %33
  store i32 1, i32* %15, align 4
  br label %166

; <label>:113:                                    ; preds = %33
  %114 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %115 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %114, i32 0, i32 36
  store i32 -1, i32* %115, align 8
  br label %166

; <label>:116:                                    ; preds = %33
  %117 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %118 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %117, i32 0, i32 36
  store i32 3, i32* %118, align 8
  br label %166

; <label>:119:                                    ; preds = %33
  %120 = load %struct.cli_opt_t*, %struct.cli_opt_t** %9, align 8
  %121 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  br label %166

; <label>:122:                                    ; preds = %33
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.112, i32 0, i32 0))
  br label %166

; <label>:125:                                    ; preds = %33
  %126 = load i32, i32* %17, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %155

; <label>:128:                                    ; preds = %125
  store i32 0, i32* %19, align 4
  br label %129

; <label>:129:                                    ; preds = %147, %128
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [101 x %struct.option], [101 x %struct.option]* @Parse.long_options, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.option, %struct.option* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 16
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %150

; <label>:136:                                    ; preds = %129
  %137 = load i32, i32* %19, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [101 x %struct.option], [101 x %struct.option]* @Parse.long_options, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.option, %struct.option* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %18, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146

; <label>:144:                                    ; preds = %136
  %145 = load i32, i32* %19, align 4
  store i32 %145, i32* %17, align 4
  br label %150

; <label>:146:                                    ; preds = %136
  br label %147

; <label>:147:                                    ; preds = %146
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  br label %129

; <label>:150:                                    ; preds = %144, %129
  %151 = load i32, i32* %17, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

; <label>:153:                                    ; preds = %150
  store i32 -1, i32* %5, align 4
  br label %361

; <label>:154:                                    ; preds = %150
  br label %155

; <label>:155:                                    ; preds = %154, %125
  %156 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [101 x %struct.option], [101 x %struct.option]* @Parse.long_options, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.option, %struct.option* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 16
  %162 = load i8*, i8** @optarg, align 8
  %163 = call i32 @x264_param_parse(%struct.x264_param_t* %156, i8* %161, i8* %162)
  %164 = load i32, i32* %16, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %16, align 4
  br label %166

; <label>:166:                                    ; preds = %155, %122, %119, %116, %113, %112, %107, %93, %46, %41
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %191

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %17, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %178

; <label>:172:                                    ; preds = %169
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [101 x %struct.option], [101 x %struct.option]* @Parse.long_options, i64 0, i64 %174
  %176 = getelementptr inbounds %struct.option, %struct.option* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 16
  br label %185

; <label>:178:                                    ; preds = %169
  %179 = load i8**, i8*** %7, align 8
  %180 = load i32, i32* @optind, align 4
  %181 = sub nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %179, i64 %182
  %184 = load i8*, i8** %183, align 8
  br label %185

; <label>:185:                                    ; preds = %178, %172
  %186 = phi i8* [ %177, %172 ], [ %184, %178 ]
  store i8* %186, i8** %20, align 8
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %188 = load i8*, i8** %20, align 8
  %189 = load i8*, i8** @optarg, align 8
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %187, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i32 0, i32 0), i8* %188, i8* %189)
  store i32 -1, i32* %5, align 4
  br label %361

; <label>:191:                                    ; preds = %166
  br label %26

; <label>:192:                                    ; preds = %32
  %193 = load i32, i32* @optind, align 4
  %194 = load i32, i32* %6, align 4
  %195 = sub nsw i32 %194, 1
  %196 = icmp sgt i32 %193, %195
  br i1 %196, label %202, label %197

; <label>:197:                                    ; preds = %192
  %198 = load %struct.cli_opt_t*, %struct.cli_opt_t** %9, align 8
  %199 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %211, label %202

; <label>:202:                                    ; preds = %197, %192
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %204 = load i32, i32* @optind, align 4
  %205 = load i32, i32* %6, align 4
  %206 = sub nsw i32 %205, 1
  %207 = icmp sgt i32 %204, %206
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)
  %210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.114, i32 0, i32 0), i8* %209)
  store i32 -1, i32* %5, align 4
  br label %361

; <label>:211:                                    ; preds = %197
  %212 = load i8**, i8*** %7, align 8
  %213 = load i32, i32* @optind, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* @optind, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8*, i8** %212, i64 %215
  %217 = load i8*, i8** %216, align 8
  store i8* %217, i8** %10, align 8
  %218 = load i8*, i8** %10, align 8
  %219 = load i8*, i8** %10, align 8
  %220 = call i64 @strlen(i8* %219) #8
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = getelementptr inbounds i8, i8* %221, i64 -1
  store i8* %222, i8** %12, align 8
  br label %223

; <label>:223:                                    ; preds = %234, %211
  %224 = load i8*, i8** %12, align 8
  %225 = load i8*, i8** %10, align 8
  %226 = icmp ugt i8* %224, %225
  br i1 %226, label %227, label %232

; <label>:227:                                    ; preds = %223
  %228 = load i8*, i8** %12, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 46
  br label %232

; <label>:232:                                    ; preds = %227, %223
  %233 = phi i1 [ false, %223 ], [ %231, %227 ]
  br i1 %233, label %234, label %237

; <label>:234:                                    ; preds = %232
  %235 = load i8*, i8** %12, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 -1
  store i8* %236, i8** %12, align 8
  br label %223

; <label>:237:                                    ; preds = %232
  %238 = load i8*, i8** %12, align 8
  %239 = call i32 @strncasecmp(i8* %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), i64 4) #8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

; <label>:241:                                    ; preds = %237
  %242 = load i8*, i8** %12, align 8
  %243 = call i32 @strncasecmp(i8* %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i64 4) #8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

; <label>:245:                                    ; preds = %241, %237
  store i32 1, i32* %13, align 4
  br label %246

; <label>:246:                                    ; preds = %245, %241
  %247 = load i8*, i8** %12, align 8
  %248 = call i32 @strncasecmp(i8* %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), i64 4) #8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

; <label>:250:                                    ; preds = %246
  store i32 1, i32* %14, align 4
  br label %251

; <label>:251:                                    ; preds = %250, %246
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %319, label %254

; <label>:254:                                    ; preds = %251
  %255 = load i32, i32* %14, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %319, label %257

; <label>:257:                                    ; preds = %254
  %258 = load i32, i32* @optind, align 4
  %259 = load i32, i32* %6, align 4
  %260 = sub nsw i32 %259, 1
  %261 = icmp sgt i32 %258, %260
  br i1 %261, label %262, label %306

; <label>:262:                                    ; preds = %257
  %263 = load i8*, i8** %10, align 8
  store i8* %263, i8** %12, align 8
  br label %264

; <label>:264:                                    ; preds = %302, %262
  %265 = load i8*, i8** %12, align 8
  %266 = load i8, i8* %265, align 1
  %267 = icmp ne i8 %266, 0
  br i1 %267, label %268, label %305

; <label>:268:                                    ; preds = %264
  %269 = load i8*, i8** %12, align 8
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp sge i32 %271, 48
  br i1 %272, label %273, label %301

; <label>:273:                                    ; preds = %268
  %274 = load i8*, i8** %12, align 8
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp sle i32 %276, 57
  br i1 %277, label %278, label %301

; <label>:278:                                    ; preds = %273
  %279 = load i8*, i8** %12, align 8
  %280 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %281 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %280, i32 0, i32 3
  %282 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %283 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %282, i32 0, i32 4
  %284 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0), i32* %281, i32* %283) #6
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %301

; <label>:286:                                    ; preds = %278
  %287 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %288 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %287, i32 0, i32 36
  %289 = load i32, i32* %288, align 8
  %290 = icmp sge i32 %289, 2
  br i1 %290, label %291, label %300

; <label>:291:                                    ; preds = %286
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %293 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %294 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %297 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %292, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.120, i32 0, i32 0), i32 %295, i32 %298)
  br label %300

; <label>:300:                                    ; preds = %291, %286
  br label %305

; <label>:301:                                    ; preds = %278, %273, %268
  br label %302

; <label>:302:                                    ; preds = %301
  %303 = load i8*, i8** %12, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %12, align 8
  br label %264

; <label>:305:                                    ; preds = %300, %264
  br label %318

; <label>:306:                                    ; preds = %257
  %307 = load i8**, i8*** %7, align 8
  %308 = load i32, i32* @optind, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* @optind, align 4
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i8*, i8** %307, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %314 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %313, i32 0, i32 3
  %315 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %316 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %315, i32 0, i32 4
  %317 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %312, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0), i32* %314, i32* %316) #6
  br label %318

; <label>:318:                                    ; preds = %306, %305
  br label %319

; <label>:319:                                    ; preds = %318, %254, %251
  %320 = load i32, i32* %13, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %338, label %322

; <label>:322:                                    ; preds = %319
  %323 = load i32, i32* %14, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %338, label %325

; <label>:325:                                    ; preds = %322
  %326 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %327 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

; <label>:330:                                    ; preds = %325
  %331 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %332 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %338, label %335

; <label>:335:                                    ; preds = %330, %325
  %336 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %337 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %336, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.121, i32 0, i32 0))
  store i32 -1, i32* %5, align 4
  br label %361

; <label>:338:                                    ; preds = %330, %322, %319
  %339 = load i32, i32* %13, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

; <label>:341:                                    ; preds = %338
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %342, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.122, i32 0, i32 0))
  store i32 -1, i32* %5, align 4
  br label %361

; <label>:344:                                    ; preds = %338
  %345 = load i32, i32* %14, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

; <label>:347:                                    ; preds = %344
  store i32 (i8*, i8**, %struct.x264_param_t*)* @open_file_y4m, i32 (i8*, i8**, %struct.x264_param_t*)** @p_open_infile, align 8
  store i32 (i8*)* @get_frame_total_y4m, i32 (i8*)** @p_get_frame_total, align 8
  store i32 (%struct.x264_picture_t*, i8*, i32)* @read_frame_y4m, i32 (%struct.x264_picture_t*, i8*, i32)** @p_read_frame, align 8
  store i32 (i8*)* @close_file_y4m, i32 (i8*)** @p_close_infile, align 8
  br label %348

; <label>:348:                                    ; preds = %347, %344
  %349 = load i32 (i8*, i8**, %struct.x264_param_t*)*, i32 (i8*, i8**, %struct.x264_param_t*)** @p_open_infile, align 8
  %350 = load i8*, i8** %10, align 8
  %351 = load %struct.cli_opt_t*, %struct.cli_opt_t** %9, align 8
  %352 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %351, i32 0, i32 2
  %353 = load %struct.x264_param_t*, %struct.x264_param_t** %8, align 8
  %354 = call i32 %349(i8* %350, i8** %352, %struct.x264_param_t* %353)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %360

; <label>:356:                                    ; preds = %348
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %358 = load i8*, i8** %10, align 8
  %359 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %357, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.123, i32 0, i32 0), i8* %358)
  store i32 -1, i32* %5, align 4
  br label %361

; <label>:360:                                    ; preds = %348
  store i32 0, i32* %5, align 4
  br label %361

; <label>:361:                                    ; preds = %360, %356, %341, %335, %202, %185, %153, %103, %88, %59
  %362 = load i32, i32* %5, align 4
  ret i32 %362
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SigIntHandler(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @b_exit_on_ctrl_c, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  call void @exit(i32 0) #7
  unreachable

; <label>:6:                                      ; preds = %1
  store i32 1, i32* @b_ctrl_c, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Encode(%struct.x264_param_t*, %struct.cli_opt_t*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x264_param_t*, align 8
  %5 = alloca %struct.cli_opt_t*, align 8
  %6 = alloca %struct.x264_t*, align 8
  %7 = alloca %struct.x264_picture_t, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [200 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  store %struct.x264_param_t* %0, %struct.x264_param_t** %4, align 8
  store %struct.cli_opt_t* %1, %struct.cli_opt_t** %5, align 8
  %21 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %22 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %21, i32 0, i32 36
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 3
  %25 = zext i1 %24 to i32
  %26 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %27 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32 (i8*)*, i32 (i8*)** @p_get_frame_total, align 8
  %31 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %32 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 %30(i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %36 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

; <label>:42:                                     ; preds = %2
  %43 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %44 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %57

; <label>:48:                                     ; preds = %42, %2
  %49 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %50 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %48
  %54 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %55 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  br label %57

; <label>:57:                                     ; preds = %53, %48, %42
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %60 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

; <label>:63:                                     ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = sdiv i32 %64, 1000
  %66 = call i32 @x264_clip3(i32 %65, i32 1, i32 10)
  br label %68

; <label>:67:                                     ; preds = %57
  br label %68

; <label>:68:                                     ; preds = %67, %63
  %69 = phi i32 [ %66, %63 ], [ 10, %67 ]
  store i32 %69, i32* %14, align 4
  %70 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %71 = call %struct.x264_t* @x264_encoder_open(%struct.x264_param_t* %70)
  store %struct.x264_t* %71, %struct.x264_t** %6, align 8
  %72 = icmp eq %struct.x264_t* %71, null
  br i1 %72, label %73, label %81

; <label>:73:                                     ; preds = %68
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.262, i32 0, i32 0))
  %76 = load i32 (i8*)*, i32 (i8*)** @p_close_infile, align 8
  %77 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %78 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 %76(i8* %79)
  store i32 -1, i32* %3, align 4
  br label %341

; <label>:81:                                     ; preds = %68
  %82 = load i32 (i8*, %struct.x264_param_t*)*, i32 (i8*, %struct.x264_param_t*)** @p_set_outfile_param, align 8
  %83 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %84 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %87 = call i32 %82(i8* %85, %struct.x264_param_t* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

; <label>:89:                                     ; preds = %81
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.263, i32 0, i32 0))
  %92 = load i32 (i8*)*, i32 (i8*)** @p_close_infile, align 8
  %93 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %94 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 %92(i8* %95)
  %97 = load i32 (i8*)*, i32 (i8*)** @p_close_outfile, align 8
  %98 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %99 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 %97(i8* %100)
  store i32 -1, i32* %3, align 4
  br label %341

; <label>:102:                                    ; preds = %81
  %103 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %104 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %107 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  call void @x264_picture_alloc(%struct.x264_picture_t* %7, i32 1, i32 %105, i32 %108)
  %109 = call i64 @x264_mdate()
  store i64 %109, i64* %10, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %12, align 8
  br label %110

; <label>:110:                                    ; preds = %259, %102
  %111 = load i32, i32* @b_ctrl_c, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %122

; <label>:113:                                    ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %120, label %117

; <label>:117:                                    ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  br label %120

; <label>:120:                                    ; preds = %117, %113
  %121 = phi i1 [ true, %113 ], [ %119, %117 ]
  br label %122

; <label>:122:                                    ; preds = %120, %110
  %123 = phi i1 [ false, %110 ], [ %121, %120 ]
  br i1 %123, label %124, label %260

; <label>:124:                                    ; preds = %122
  %125 = load i32 (%struct.x264_picture_t*, i8*, i32)*, i32 (%struct.x264_picture_t*, i8*, i32)** @p_read_frame, align 8
  %126 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %127 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %131 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %129, %132
  %134 = call i32 %125(%struct.x264_picture_t* %7, i8* %128, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

; <label>:136:                                    ; preds = %124
  br label %260

; <label>:137:                                    ; preds = %124
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %141 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %139, %143
  %145 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %7, i32 0, i32 2
  store i64 %144, i64* %145, align 8
  %146 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %147 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %146, i32 0, i32 4
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %147, align 8
  %149 = icmp ne %struct._IO_FILE* %148, null
  br i1 %149, label %150, label %157

; <label>:150:                                    ; preds = %137
  %151 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %154 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %152, %155
  call void @parse_qpfile(%struct.cli_opt_t* %151, %struct.x264_picture_t* %7, i32 %156)
  br label %160

; <label>:157:                                    ; preds = %137
  %158 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %7, i32 0, i32 0
  store i32 0, i32* %158, align 8
  %159 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %7, i32 0, i32 1
  store i32 0, i32* %159, align 4
  br label %160

; <label>:160:                                    ; preds = %157, %150
  %161 = load %struct.x264_t*, %struct.x264_t** %6, align 8
  %162 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %163 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @Encode_frame(%struct.x264_t* %161, i8* %164, %struct.x264_picture_t* %7)
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %12, align 8
  %168 = add nsw i64 %167, %166
  store i64 %168, i64* %12, align 8
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  %171 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %172 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %259

; <label>:175:                                    ; preds = %160
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %14, align 4
  %178 = srem i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %259

; <label>:180:                                    ; preds = %175
  %181 = call i64 @x264_mdate()
  %182 = load i64, i64* %10, align 8
  %183 = sub nsw i64 %181, %182
  store i64 %183, i64* %16, align 8
  %184 = load i64, i64* %16, align 8
  %185 = icmp sgt i64 %184, 0
  br i1 %185, label %186, label %193

; <label>:186:                                    ; preds = %180
  %187 = load i32, i32* %8, align 4
  %188 = sitofp i32 %187 to double
  %189 = fmul double %188, 1.000000e+06
  %190 = load i64, i64* %16, align 8
  %191 = sitofp i64 %190 to double
  %192 = fdiv double %189, %191
  br label %194

; <label>:193:                                    ; preds = %180
  br label %194

; <label>:194:                                    ; preds = %193, %186
  %195 = phi double [ %192, %186 ], [ 0.000000e+00, %193 ]
  store double %195, double* %17, align 8
  %196 = load i64, i64* %12, align 8
  %197 = sitofp i64 %196 to double
  %198 = fmul double %197, 8.000000e+00
  %199 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %200 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %199, i32 0, i32 9
  %201 = load i32, i32* %200, align 4
  %202 = sitofp i32 %201 to double
  %203 = fmul double %198, %202
  %204 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %205 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %204, i32 0, i32 10
  %206 = load i32, i32* %205, align 8
  %207 = sitofp i32 %206 to double
  %208 = load i32, i32* %8, align 4
  %209 = sitofp i32 %208 to double
  %210 = fmul double %207, %209
  %211 = fmul double %210, 1.000000e+03
  %212 = fdiv double %203, %211
  store double %212, double* %18, align 8
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %246

; <label>:215:                                    ; preds = %194
  %216 = load i64, i64* %16, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %8, align 4
  %219 = sub nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = mul nsw i64 %216, %220
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = mul nsw i64 %223, 1000000
  %225 = sdiv i64 %221, %224
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %19, align 4
  %227 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i32 0, i32 0
  %228 = load i32, i32* %8, align 4
  %229 = sitofp i32 %228 to double
  %230 = fmul double 1.000000e+02, %229
  %231 = load i32, i32* %9, align 4
  %232 = sitofp i32 %231 to double
  %233 = fdiv double %230, %232
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load double, double* %17, align 8
  %237 = load double, double* %18, align 8
  %238 = load i32, i32* %19, align 4
  %239 = sdiv i32 %238, 3600
  %240 = load i32, i32* %19, align 4
  %241 = sdiv i32 %240, 60
  %242 = srem i32 %241, 60
  %243 = load i32, i32* %19, align 4
  %244 = srem i32 %243, 60
  %245 = call i32 (i8*, i8*, ...) @sprintf(i8* %227, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.264, i32 0, i32 0), double %233, i32 %234, i32 %235, double %236, double %237, i32 %239, i32 %242, i32 %244) #6
  br label %252

; <label>:246:                                    ; preds = %194
  %247 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i32 0, i32 0
  %248 = load i32, i32* %8, align 4
  %249 = load double, double* %17, align 8
  %250 = load double, double* %18, align 8
  %251 = call i32 (i8*, i8*, ...) @sprintf(i8* %247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.265, i32 0, i32 0), i32 %248, double %249, double %250) #6
  br label %252

; <label>:252:                                    ; preds = %246, %215
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %254 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i32 0, i32 0
  %255 = getelementptr inbounds i8, i8* %254, i64 5
  %256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.266, i32 0, i32 0), i8* %255)
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %258 = call i32 @fflush(%struct._IO_FILE* %257)
  br label %259

; <label>:259:                                    ; preds = %252, %175, %160
  br label %110

; <label>:260:                                    ; preds = %136, %122
  br label %261

; <label>:261:                                    ; preds = %270, %260
  %262 = load %struct.x264_t*, %struct.x264_t** %6, align 8
  %263 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %264 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %263, i32 0, i32 3
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @Encode_frame(%struct.x264_t* %262, i8* %265, %struct.x264_picture_t* null)
  store i32 %266, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* %12, align 8
  %269 = add nsw i64 %268, %267
  store i64 %269, i64* %12, align 8
  br label %270

; <label>:270:                                    ; preds = %261
  %271 = load i32, i32* %13, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %261, label %273

; <label>:273:                                    ; preds = %270
  %274 = call i64 @x264_mdate()
  store i64 %274, i64* %11, align 8
  call void @x264_picture_clean(%struct.x264_picture_t* %7)
  %275 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %276 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

; <label>:279:                                    ; preds = %273
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.267, i32 0, i32 0))
  br label %282

; <label>:282:                                    ; preds = %279, %273
  %283 = load %struct.x264_t*, %struct.x264_t** %6, align 8
  call void @x264_encoder_close(%struct.x264_t* %283)
  %284 = load i8*, i8** @mux_buffer, align 8
  call void @x264_free(i8* %284)
  %285 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %286 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  %287 = load i32, i32* @b_ctrl_c, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %297

; <label>:289:                                    ; preds = %282
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %291 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %292 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %293, %294
  %296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %290, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.268, i32 0, i32 0), i32 %295)
  br label %297

; <label>:297:                                    ; preds = %289, %282
  %298 = load i32 (i8*)*, i32 (i8*)** @p_close_infile, align 8
  %299 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %300 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %299, i32 0, i32 2
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 %298(i8* %301)
  %303 = load i32 (i8*)*, i32 (i8*)** @p_close_outfile, align 8
  %304 = load %struct.cli_opt_t*, %struct.cli_opt_t** %5, align 8
  %305 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %304, i32 0, i32 3
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 %303(i8* %306)
  %308 = load i32, i32* %8, align 4
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %310, label %340

; <label>:310:                                    ; preds = %297
  %311 = load i32, i32* %8, align 4
  %312 = sitofp i32 %311 to double
  %313 = fmul double %312, 1.000000e+06
  %314 = load i64, i64* %11, align 8
  %315 = load i64, i64* %10, align 8
  %316 = sub nsw i64 %314, %315
  %317 = sitofp i64 %316 to double
  %318 = fdiv double %313, %317
  store double %318, double* %20, align 8
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %320 = load i32, i32* %8, align 4
  %321 = load double, double* %20, align 8
  %322 = load i64, i64* %12, align 8
  %323 = sitofp i64 %322 to double
  %324 = fmul double %323, 8.000000e+00
  %325 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %326 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %325, i32 0, i32 9
  %327 = load i32, i32* %326, align 4
  %328 = sitofp i32 %327 to double
  %329 = fmul double %324, %328
  %330 = load %struct.x264_param_t*, %struct.x264_param_t** %4, align 8
  %331 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %330, i32 0, i32 10
  %332 = load i32, i32* %331, align 8
  %333 = sitofp i32 %332 to double
  %334 = load i32, i32* %8, align 4
  %335 = sitofp i32 %334 to double
  %336 = fmul double %333, %335
  %337 = fmul double %336, 1.000000e+03
  %338 = fdiv double %329, %337
  %339 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.269, i32 0, i32 0), i32 %320, double %321, double %338)
  br label %340

; <label>:340:                                    ; preds = %310, %297
  store i32 0, i32* %3, align 4
  br label %341

; <label>:341:                                    ; preds = %340, %89, %73
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i32 @open_file_yuv(i8*, i8**, %struct.x264_param_t*) #1

declare i32 @get_frame_total_yuv(i8*) #1

declare i32 @read_frame_yuv(%struct.x264_picture_t*, i8*, i32) #1

declare i32 @close_file_yuv(i8*) #1

declare i32 @open_file_bsf(i8*, i8**) #1

declare i32 @set_param_bsf(i8*, %struct.x264_param_t*) #1

declare i32 @write_nalu_bsf(i8*, i8*, i32) #1

declare i32 @set_eop_bsf(i8*, %struct.x264_picture_t*) #1

declare i32 @close_file_bsf(i8*) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Help(%struct.x264_param_t*, i32) #0 {
  %3 = alloca %struct.x264_param_t*, align 8
  %4 = alloca i32, align 4
  store %struct.x264_param_t* %0, %struct.x264_param_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([480 x i8], [480 x i8]* @.str.124, i32 0, i32 0), i32 65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.127, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  %8 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %9 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %8, i32 0, i32 12
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.129, i32 0, i32 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %2
  %15 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %16 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.130, i32 0, i32 0), i32 %17)
  br label %19

; <label>:19:                                     ; preds = %14, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %19
  %23 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %24 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.131, i32 0, i32 0), i32 %25)
  br label %27

; <label>:27:                                     ; preds = %22, %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %27
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.132, i32 0, i32 0))
  br label %32

; <label>:32:                                     ; preds = %30, %27
  %33 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %34 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.133, i32 0, i32 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

; <label>:39:                                     ; preds = %32
  %40 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %41 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([315 x i8], [315 x i8]* @.str.134, i32 0, i32 0), i32 %42)
  br label %44

; <label>:44:                                     ; preds = %39, %32
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %44
  %48 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %49 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %48, i32 0, i32 18
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.135, i32 0, i32 0), i32 %50)
  br label %52

; <label>:52:                                     ; preds = %47, %44
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.136, i32 0, i32 0))
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.137, i32 0, i32 0))
  %55 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %56 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.138, i32 0, i32 0), i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %52
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.139, i32 0, i32 0))
  br label %63

; <label>:63:                                     ; preds = %61, %52
  %64 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %65 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %64, i32 0, i32 21
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %68 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %67, i32 0, i32 22
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.140, i32 0, i32 0), i32 %66, i32 %69)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.141, i32 0, i32 0))
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.142, i32 0, i32 0))
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  %75 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %76 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %75, i32 0, i32 40
  %77 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.143, i32 0, i32 0), i32 %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.144, i32 0, i32 0))
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.145, i32 0, i32 0))
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

; <label>:84:                                     ; preds = %63
  %85 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %86 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %85, i32 0, i32 40
  %87 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.146, i32 0, i32 0), i32 %88)
  br label %90

; <label>:90:                                     ; preds = %84, %63
  %91 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %92 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %91, i32 0, i32 40
  %93 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.147, i32 0, i32 0), i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

; <label>:98:                                     ; preds = %90
  %99 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %100 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %99, i32 0, i32 40
  %101 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %100, i32 0, i32 10
  %102 = load float, float* %101, align 8
  %103 = fpext float %102 to double
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.148, i32 0, i32 0), double %103)
  br label %105

; <label>:105:                                    ; preds = %98, %90
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

; <label>:108:                                    ; preds = %105
  %109 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %110 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %109, i32 0, i32 40
  %111 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.149, i32 0, i32 0), i32 %112)
  br label %114

; <label>:114:                                    ; preds = %108, %105
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

; <label>:117:                                    ; preds = %114
  %118 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %119 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %118, i32 0, i32 40
  %120 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.150, i32 0, i32 0), i32 %121)
  br label %123

; <label>:123:                                    ; preds = %117, %114
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

; <label>:126:                                    ; preds = %123
  %127 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %128 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %127, i32 0, i32 40
  %129 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.151, i32 0, i32 0), i32 %130)
  br label %132

; <label>:132:                                    ; preds = %126, %123
  %133 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %134 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %133, i32 0, i32 40
  %135 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %134, i32 0, i32 7
  %136 = load float, float* %135, align 4
  %137 = fpext float %136 to double
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.152, i32 0, i32 0), double %137)
  %139 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %140 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %139, i32 0, i32 40
  %141 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %140, i32 0, i32 11
  %142 = load float, float* %141, align 4
  %143 = fpext float %142 to double
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.153, i32 0, i32 0), double %143)
  %145 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %146 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %145, i32 0, i32 40
  %147 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %146, i32 0, i32 12
  %148 = load float, float* %147, align 8
  %149 = fpext float %148 to double
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.154, i32 0, i32 0), double %149)
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

; <label>:153:                                    ; preds = %132
  %154 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %155 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %154, i32 0, i32 39
  %156 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.155, i32 0, i32 0), i32 %157)
  br label %159

; <label>:159:                                    ; preds = %153, %132
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

; <label>:162:                                    ; preds = %159
  %163 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %164 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %163, i32 0, i32 40
  %165 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %164, i32 0, i32 13
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.156, i32 0, i32 0), i32 %166)
  br label %168

; <label>:168:                                    ; preds = %162, %159
  %169 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %170 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %169, i32 0, i32 40
  %171 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %170, i32 0, i32 14
  %172 = load float, float* %171, align 8
  %173 = fpext float %172 to double
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([226 x i8], [226 x i8]* @.str.157, i32 0, i32 0), double %173)
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([281 x i8], [281 x i8]* @.str.158, i32 0, i32 0))
  %177 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %178 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %177, i32 0, i32 40
  %179 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %178, i32 0, i32 16
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.159, i32 0, i32 0), i8* %180)
  %182 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %183 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %182, i32 0, i32 40
  %184 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %183, i32 0, i32 19
  %185 = load float, float* %184, align 8
  %186 = fpext float %185 to double
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.160, i32 0, i32 0), double %186)
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

; <label>:190:                                    ; preds = %168
  %191 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %192 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %191, i32 0, i32 40
  %193 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %192, i32 0, i32 21
  %194 = load float, float* %193, align 8
  %195 = fpext float %194 to double
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.161, i32 0, i32 0), double %195)
  br label %197

; <label>:197:                                    ; preds = %190, %168
  %198 = load i32, i32* %4, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

; <label>:200:                                    ; preds = %197
  %201 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %202 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %201, i32 0, i32 40
  %203 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %202, i32 0, i32 20
  %204 = load float, float* %203, align 4
  %205 = fpext float %204 to double
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.162, i32 0, i32 0), double %205)
  br label %207

; <label>:207:                                    ; preds = %200, %197
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.163, i32 0, i32 0))
  %209 = load i32, i32* %4, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

; <label>:211:                                    ; preds = %207
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str.164, i32 0, i32 0))
  br label %213

; <label>:213:                                    ; preds = %211, %207
  %214 = load i32, i32* %4, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

; <label>:216:                                    ; preds = %213
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.165, i32 0, i32 0))
  br label %218

; <label>:218:                                    ; preds = %216, %213
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.166, i32 0, i32 0))
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([269 x i8], [269 x i8]* @.str.167, i32 0, i32 0))
  %223 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %224 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %223, i32 0, i32 39
  %225 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = call i8* @strtable_lookup(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @x264_direct_pred_names, i32 0, i32 0), i32 %226)
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.168, i32 0, i32 0), i8* %227)
  %229 = load i32, i32* %4, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

; <label>:231:                                    ; preds = %218
  %232 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %233 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %232, i32 0, i32 39
  %234 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([224 x i8], [224 x i8]* @.str.169, i32 0, i32 0), i32 %235)
  br label %237

; <label>:237:                                    ; preds = %231, %218
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.170, i32 0, i32 0))
  %239 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %240 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %239, i32 0, i32 39
  %241 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @strtable_lookup(i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @x264_motion_est_names, i32 0, i32 0), i32 %242)
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.171, i32 0, i32 0), i8* %243)
  %245 = load i32, i32* %4, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

; <label>:247:                                    ; preds = %237
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([346 x i8], [346 x i8]* @.str.172, i32 0, i32 0))
  br label %251

; <label>:249:                                    ; preds = %237
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.173, i32 0, i32 0))
  br label %251

; <label>:251:                                    ; preds = %249, %247
  %252 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %253 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %252, i32 0, i32 39
  %254 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %253, i32 0, i32 8
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.174, i32 0, i32 0), i32 %255)
  %257 = load i32, i32* %4, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

; <label>:259:                                    ; preds = %251
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.175, i32 0, i32 0))
  br label %261

; <label>:261:                                    ; preds = %259, %251
  %262 = load i32, i32* %4, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

; <label>:264:                                    ; preds = %261
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.176, i32 0, i32 0))
  br label %266

; <label>:266:                                    ; preds = %264, %261
  %267 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %268 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %267, i32 0, i32 39
  %269 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %268, i32 0, i32 11
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.177, i32 0, i32 0), i32 %270)
  %272 = load i32, i32* %4, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

; <label>:274:                                    ; preds = %266
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([549 x i8], [549 x i8]* @.str.178, i32 0, i32 0))
  br label %278

; <label>:276:                                    ; preds = %266
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.179, i32 0, i32 0))
  br label %278

; <label>:278:                                    ; preds = %276, %274
  %279 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %280 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %279, i32 0, i32 39
  %281 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %280, i32 0, i32 18
  %282 = load float, float* %281, align 8
  %283 = fpext float %282 to double
  %284 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %285 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %284, i32 0, i32 39
  %286 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %285, i32 0, i32 19
  %287 = load float, float* %286, align 4
  %288 = fpext float %287 to double
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.180, i32 0, i32 0), double %283, double %288)
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.181, i32 0, i32 0))
  %291 = load i32, i32* %4, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

; <label>:293:                                    ; preds = %278
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.182, i32 0, i32 0))
  br label %295

; <label>:295:                                    ; preds = %293, %278
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.183, i32 0, i32 0))
  %297 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %298 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %297, i32 0, i32 39
  %299 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %298, i32 0, i32 14
  %300 = load i32, i32* %299, align 8
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.184, i32 0, i32 0), i32 %300)
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.185, i32 0, i32 0))
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.186, i32 0, i32 0))
  %304 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %305 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %304, i32 0, i32 39
  %306 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %305, i32 0, i32 17
  %307 = load i32, i32* %306, align 4
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.187, i32 0, i32 0), i32 %307)
  %309 = load i32, i32* %4, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

; <label>:311:                                    ; preds = %295
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  br label %313

; <label>:313:                                    ; preds = %311, %295
  %314 = load i32, i32* %4, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %323

; <label>:316:                                    ; preds = %313
  %317 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %318 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %317, i32 0, i32 39
  %319 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %318, i32 0, i32 20
  %320 = getelementptr inbounds [2 x i32], [2 x i32]* %319, i64 0, i64 0
  %321 = load i32, i32* %320, align 8
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.188, i32 0, i32 0), i32 %321)
  br label %323

; <label>:323:                                    ; preds = %316, %313
  %324 = load i32, i32* %4, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %333

; <label>:326:                                    ; preds = %323
  %327 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %328 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %327, i32 0, i32 39
  %329 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %328, i32 0, i32 20
  %330 = getelementptr inbounds [2 x i32], [2 x i32]* %329, i64 0, i64 1
  %331 = load i32, i32* %330, align 4
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.189, i32 0, i32 0), i32 %331)
  br label %333

; <label>:333:                                    ; preds = %326, %323
  %334 = load i32, i32* %4, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

; <label>:336:                                    ; preds = %333
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.190, i32 0, i32 0))
  br label %338

; <label>:338:                                    ; preds = %336, %333
  %339 = load i32, i32* %4, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

; <label>:341:                                    ; preds = %338
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.191, i32 0, i32 0))
  br label %343

; <label>:343:                                    ; preds = %341, %338
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.192, i32 0, i32 0))
  %345 = load i32, i32* %4, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

; <label>:347:                                    ; preds = %343
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.193, i32 0, i32 0))
  br label %349

; <label>:349:                                    ; preds = %347, %343
  %350 = load i32, i32* %4, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %354

; <label>:352:                                    ; preds = %349
  %353 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.194, i32 0, i32 0))
  br label %354

; <label>:354:                                    ; preds = %352, %349
  %355 = load i32, i32* %4, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %359

; <label>:357:                                    ; preds = %354
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.195, i32 0, i32 0))
  br label %359

; <label>:359:                                    ; preds = %357, %354
  %360 = load i32, i32* %4, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %364

; <label>:362:                                    ; preds = %359
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.196, i32 0, i32 0))
  br label %364

; <label>:364:                                    ; preds = %362, %359
  %365 = load i32, i32* %4, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %369

; <label>:367:                                    ; preds = %364
  %368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.197, i32 0, i32 0))
  br label %369

; <label>:369:                                    ; preds = %367, %364
  %370 = load i32, i32* %4, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %374

; <label>:372:                                    ; preds = %369
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  br label %374

; <label>:374:                                    ; preds = %372, %369
  %375 = load i32, i32* %4, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %379

; <label>:377:                                    ; preds = %374
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.198, i32 0, i32 0))
  br label %379

; <label>:379:                                    ; preds = %377, %374
  %380 = load i32, i32* %4, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %384

; <label>:382:                                    ; preds = %379
  %383 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.199, i32 0, i32 0))
  br label %384

; <label>:384:                                    ; preds = %382, %379
  %385 = load i32, i32* %4, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %389

; <label>:387:                                    ; preds = %384
  %388 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.200, i32 0, i32 0))
  br label %389

; <label>:389:                                    ; preds = %387, %384
  %390 = load i32, i32* %4, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %394

; <label>:392:                                    ; preds = %389
  %393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  br label %394

; <label>:394:                                    ; preds = %392, %389
  %395 = load i32, i32* %4, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %404

; <label>:397:                                    ; preds = %394
  %398 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %399 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %398, i32 0, i32 8
  %400 = getelementptr inbounds %struct.anon, %struct.anon* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = call i8* @strtable_lookup(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @x264_overscan_names, i32 0, i32 0), i32 %401)
  %403 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.201, i32 0, i32 0), i8* %402)
  br label %404

; <label>:404:                                    ; preds = %397, %394
  %405 = load i32, i32* %4, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %414

; <label>:407:                                    ; preds = %404
  %408 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %409 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %408, i32 0, i32 8
  %410 = getelementptr inbounds %struct.anon, %struct.anon* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 4
  %412 = call i8* @strtable_lookup(i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @x264_vidformat_names, i32 0, i32 0), i32 %411)
  %413 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.202, i32 0, i32 0), i8* %412)
  br label %414

; <label>:414:                                    ; preds = %407, %404
  %415 = load i32, i32* %4, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %424

; <label>:417:                                    ; preds = %414
  %418 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %419 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %418, i32 0, i32 8
  %420 = getelementptr inbounds %struct.anon, %struct.anon* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 8
  %422 = call i8* @strtable_lookup(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @x264_fullrange_names, i32 0, i32 0), i32 %421)
  %423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.203, i32 0, i32 0), i8* %422)
  br label %424

; <label>:424:                                    ; preds = %417, %414
  %425 = load i32, i32* %4, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %434

; <label>:427:                                    ; preds = %424
  %428 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %429 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %428, i32 0, i32 8
  %430 = getelementptr inbounds %struct.anon, %struct.anon* %429, i32 0, i32 5
  %431 = load i32, i32* %430, align 4
  %432 = call i8* @strtable_lookup(i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @x264_colorprim_names, i32 0, i32 0), i32 %431)
  %433 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.204, i32 0, i32 0), i8* %432)
  br label %434

; <label>:434:                                    ; preds = %427, %424
  %435 = load i32, i32* %4, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %444

; <label>:437:                                    ; preds = %434
  %438 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %439 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %438, i32 0, i32 8
  %440 = getelementptr inbounds %struct.anon, %struct.anon* %439, i32 0, i32 6
  %441 = load i32, i32* %440, align 8
  %442 = call i8* @strtable_lookup(i8** getelementptr inbounds ([12 x i8*], [12 x i8*]* @x264_transfer_names, i32 0, i32 0), i32 %441)
  %443 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.205, i32 0, i32 0), i8* %442)
  br label %444

; <label>:444:                                    ; preds = %437, %434
  %445 = load i32, i32* %4, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %454

; <label>:447:                                    ; preds = %444
  %448 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %449 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %448, i32 0, i32 8
  %450 = getelementptr inbounds %struct.anon, %struct.anon* %449, i32 0, i32 7
  %451 = load i32, i32* %450, align 4
  %452 = call i8* @strtable_lookup(i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @x264_colmatrix_names, i32 0, i32 0), i32 %451)
  %453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.206, i32 0, i32 0), i8* %452)
  br label %454

; <label>:454:                                    ; preds = %447, %444
  %455 = load i32, i32* %4, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %463

; <label>:457:                                    ; preds = %454
  %458 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %459 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %458, i32 0, i32 8
  %460 = getelementptr inbounds %struct.anon, %struct.anon* %459, i32 0, i32 8
  %461 = load i32, i32* %460, align 8
  %462 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.207, i32 0, i32 0), i32 %461)
  br label %463

; <label>:463:                                    ; preds = %457, %454
  %464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  %465 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.208, i32 0, i32 0))
  %466 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  %467 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.209, i32 0, i32 0))
  %468 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.210, i32 0, i32 0))
  %469 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.211, i32 0, i32 0))
  %470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.212, i32 0, i32 0))
  %471 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.213, i32 0, i32 0))
  %472 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.214, i32 0, i32 0))
  %473 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  %474 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.215, i32 0, i32 0))
  %475 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.216, i32 0, i32 0))
  %476 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.217, i32 0, i32 0))
  %477 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.218, i32 0, i32 0))
  %478 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.219, i32 0, i32 0))
  %479 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.220, i32 0, i32 0))
  %480 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.221, i32 0, i32 0))
  %481 = load i32, i32* %4, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %485

; <label>:483:                                    ; preds = %463
  %484 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.222, i32 0, i32 0))
  br label %485

; <label>:485:                                    ; preds = %483, %463
  %486 = load i32, i32* %4, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %490

; <label>:488:                                    ; preds = %485
  %489 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.223, i32 0, i32 0))
  br label %490

; <label>:490:                                    ; preds = %488, %485
  %491 = load i32, i32* %4, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %495

; <label>:493:                                    ; preds = %490
  %494 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.224, i32 0, i32 0))
  br label %495

; <label>:495:                                    ; preds = %493, %490
  %496 = load i32, i32* %4, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %500

; <label>:498:                                    ; preds = %495
  %499 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.225, i32 0, i32 0))
  br label %500

; <label>:500:                                    ; preds = %498, %495
  %501 = load i32, i32* %4, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %505

; <label>:503:                                    ; preds = %500
  %504 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.226, i32 0, i32 0))
  br label %505

; <label>:505:                                    ; preds = %503, %500
  %506 = load i32, i32* %4, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %513

; <label>:508:                                    ; preds = %505
  %509 = load %struct.x264_param_t*, %struct.x264_param_t** %3, align 8
  %510 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %509, i32 0, i32 43
  %511 = load i32, i32* %510, align 8
  %512 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.227, i32 0, i32 0), i32 %511)
  br label %513

; <label>:513:                                    ; preds = %508, %505
  %514 = load i32, i32* %4, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %518

; <label>:516:                                    ; preds = %513
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.228, i32 0, i32 0))
  br label %518

; <label>:518:                                    ; preds = %516, %513
  %519 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @open_file_mkv(i8*, i8**) #1

declare i32 @write_nalu_mkv(i8*, i8*, i32) #1

declare i32 @set_param_mkv(i8*, %struct.x264_param_t*) #1

declare i32 @set_eop_mkv(i8*, %struct.x264_picture_t*) #1

declare i32 @close_file_mkv(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @x264_param_parse(%struct.x264_param_t*, i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare i32 @open_file_y4m(i8*, i8**, %struct.x264_param_t*) #1

declare i32 @get_frame_total_y4m(i8*) #1

declare i32 @read_frame_y4m(%struct.x264_picture_t*, i8*, i32) #1

declare i32 @close_file_y4m(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strtable_lookup(i8**, i32) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %13, %2
  %7 = load i8**, i8*** %3, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8*, i8** %7, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %6
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %6

; <label>:16:                                     ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %29

; <label>:23:                                     ; preds = %19
  %24 = load i8**, i8*** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  br label %30

; <label>:29:                                     ; preds = %19, %16
  br label %30

; <label>:30:                                     ; preds = %29, %23
  %31 = phi i8* [ %28, %23 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.229, i32 0, i32 0), %29 ]
  ret i8* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x264_clip3(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %5, align 4
  br label %22

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %6, align 4
  br label %20

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* %4, align 4
  br label %20

; <label>:20:                                     ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  br label %22

; <label>:22:                                     ; preds = %20, %10
  %23 = phi i32 [ %11, %10 ], [ %21, %20 ]
  ret i32 %23
}

declare %struct.x264_t* @x264_encoder_open(%struct.x264_param_t*) #1

declare void @x264_picture_alloc(%struct.x264_picture_t*, i32, i32, i32) #1

declare i64 @x264_mdate() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_qpfile(%struct.cli_opt_t*, %struct.x264_picture_t*, i32) #0 {
  %4 = alloca %struct.cli_opt_t*, align 8
  %5 = alloca %struct.x264_picture_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  store %struct.cli_opt_t* %0, %struct.cli_opt_t** %4, align 8
  store %struct.x264_picture_t* %1, %struct.x264_picture_t** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %113, %45, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %114

; <label>:16:                                     ; preds = %12
  %17 = load %struct.cli_opt_t*, %struct.cli_opt_t** %4, align 8
  %18 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %17, i32 0, i32 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %20 = call i64 @ftello(%struct._IO_FILE* %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.cli_opt_t*, %struct.cli_opt_t** %4, align 8
  %22 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %21, i32 0, i32 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.270, i32 0, i32 0), i32* %7, i8* %10, i32* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %16
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %41

; <label>:31:                                     ; preds = %28, %16
  %32 = load %struct.x264_picture_t*, %struct.x264_picture_t** %5, align 8
  %33 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.x264_picture_t*, %struct.x264_picture_t** %5, align 8
  %35 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.cli_opt_t*, %struct.cli_opt_t** %4, align 8
  %37 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %36, i32 0, i32 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @fseeko(%struct._IO_FILE* %38, i64 %39, i32 0)
  br label %114

; <label>:41:                                     ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %41
  br label %12

; <label>:46:                                     ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.x264_picture_t*, %struct.x264_picture_t** %5, align 8
  %50 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i8, i8* %10, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 73
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %46
  %55 = load %struct.x264_picture_t*, %struct.x264_picture_t** %5, align 8
  %56 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %90

; <label>:57:                                     ; preds = %46
  %58 = load i8, i8* %10, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 105
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %57
  %62 = load %struct.x264_picture_t*, %struct.x264_picture_t** %5, align 8
  %63 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %62, i32 0, i32 0
  store i32 2, i32* %63, align 8
  br label %89

; <label>:64:                                     ; preds = %57
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 80
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %64
  %69 = load %struct.x264_picture_t*, %struct.x264_picture_t** %5, align 8
  %70 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %69, i32 0, i32 0
  store i32 3, i32* %70, align 8
  br label %88

; <label>:71:                                     ; preds = %64
  %72 = load i8, i8* %10, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 66
  br i1 %74, label %75, label %78

; <label>:75:                                     ; preds = %71
  %76 = load %struct.x264_picture_t*, %struct.x264_picture_t** %5, align 8
  %77 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %76, i32 0, i32 0
  store i32 4, i32* %77, align 8
  br label %87

; <label>:78:                                     ; preds = %71
  %79 = load i8, i8* %10, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 98
  br i1 %81, label %82, label %85

; <label>:82:                                     ; preds = %78
  %83 = load %struct.x264_picture_t*, %struct.x264_picture_t** %5, align 8
  %84 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %83, i32 0, i32 0
  store i32 5, i32* %84, align 8
  br label %86

; <label>:85:                                     ; preds = %78
  store i32 0, i32* %9, align 4
  br label %86

; <label>:86:                                     ; preds = %85, %82
  br label %87

; <label>:87:                                     ; preds = %86, %75
  br label %88

; <label>:88:                                     ; preds = %87, %68
  br label %89

; <label>:89:                                     ; preds = %88, %61
  br label %90

; <label>:90:                                     ; preds = %89, %54
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 3
  br i1 %92, label %99, label %93

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, -1
  br i1 %95, label %99, label %96

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp sgt i32 %97, 51
  br i1 %98, label %99, label %113

; <label>:99:                                     ; preds = %96, %93, %90
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.271, i32 0, i32 0), i32 %101)
  %103 = load %struct.cli_opt_t*, %struct.cli_opt_t** %4, align 8
  %104 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %103, i32 0, i32 4
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %104, align 8
  %106 = call i32 @fclose(%struct._IO_FILE* %105)
  %107 = load %struct.cli_opt_t*, %struct.cli_opt_t** %4, align 8
  %108 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %107, i32 0, i32 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %108, align 8
  %109 = load %struct.x264_picture_t*, %struct.x264_picture_t** %5, align 8
  %110 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = load %struct.x264_picture_t*, %struct.x264_picture_t** %5, align 8
  %112 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  br label %114

; <label>:113:                                    ; preds = %96
  br label %12

; <label>:114:                                    ; preds = %99, %31, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Encode_frame(%struct.x264_t*, i8*, %struct.x264_picture_t*) #0 {
  %4 = alloca %struct.x264_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.x264_picture_t*, align 8
  %7 = alloca %struct.x264_picture_t, align 8
  %8 = alloca %struct.x264_nal_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.x264_t* %0, %struct.x264_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.x264_picture_t* %2, %struct.x264_picture_t** %6, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.x264_t*, %struct.x264_t** %4, align 8
  %14 = load %struct.x264_picture_t*, %struct.x264_picture_t** %6, align 8
  %15 = call i32 @x264_encoder_encode(%struct.x264_t* %13, %struct.x264_nal_t** %8, i32* %9, %struct.x264_picture_t* %14, %struct.x264_picture_t* %7)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.272, i32 0, i32 0))
  br label %20

; <label>:20:                                     ; preds = %17, %3
  store i32 0, i32* %10, align 4
  br label %21

; <label>:21:                                     ; preds = %64, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %67

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* @mux_buffer_size, align 4
  %27 = load %struct.x264_nal_t*, %struct.x264_nal_t** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %27, i64 %29
  %31 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 3
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 %34, 4
  %36 = icmp slt i32 %26, %35
  br i1 %36, label %37, label %49

; <label>:37:                                     ; preds = %25
  %38 = load %struct.x264_nal_t*, %struct.x264_nal_t** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %38, i64 %40
  %42 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %43, 2
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* @mux_buffer_size, align 4
  %46 = load i8*, i8** @mux_buffer, align 8
  call void @x264_free(i8* %46)
  %47 = load i32, i32* @mux_buffer_size, align 4
  %48 = call i8* @x264_malloc(i32 %47)
  store i8* %48, i8** @mux_buffer, align 8
  br label %49

; <label>:49:                                     ; preds = %37, %25
  %50 = load i32, i32* @mux_buffer_size, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i8*, i8** @mux_buffer, align 8
  %52 = load %struct.x264_nal_t*, %struct.x264_nal_t** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %52, i64 %54
  %56 = call i32 @x264_nal_encode(i8* %51, i32* %12, i32 1, %struct.x264_nal_t* %55)
  %57 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** @p_write_nalu, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** @mux_buffer, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 %57(i8* %58, i8* %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

; <label>:64:                                     ; preds = %49
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %21

; <label>:67:                                     ; preds = %21
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %67
  %71 = load i32 (i8*, %struct.x264_picture_t*)*, i32 (i8*, %struct.x264_picture_t*)** @p_set_eop, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 %71(i8* %72, %struct.x264_picture_t* %7)
  br label %74

; <label>:74:                                     ; preds = %70, %67
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @x264_picture_clean(%struct.x264_picture_t*) #1

declare void @x264_encoder_close(%struct.x264_t*) #1

declare void @x264_free(i8*) #1

declare i64 @ftello(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fseeko(%struct._IO_FILE*, i64, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @x264_encoder_encode(%struct.x264_t*, %struct.x264_nal_t**, i32*, %struct.x264_picture_t*, %struct.x264_picture_t*) #1

declare i8* @x264_malloc(i32) #1

declare i32 @x264_nal_encode(i8*, i32*, i32, %struct.x264_nal_t*) #1

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
