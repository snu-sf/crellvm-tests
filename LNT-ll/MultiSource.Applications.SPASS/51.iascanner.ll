; ModuleID = './MultiSource.Applications.SPASS/51.iascanner.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%union.yystype = type { i8* }

@ia_in = global %struct._IO_FILE* null, align 8
@ia_out = global %struct._IO_FILE* null, align 8
@yy_init = internal global i32 1, align 4
@yy_start = internal global i32 0, align 4
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@yy_current_buffer = internal global %struct.yy_buffer_state* null, align 8
@yy_c_buf_p = internal global i8* null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_ec = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 4, i32 4, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 4, i32 1, i32 4, i32 1, i32 6, i32 1, i32 7, i32 6, i32 6, i32 8, i32 9, i32 10, i32 6, i32 6, i32 11, i32 6, i32 6, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 6, i32 23, i32 6, i32 6, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_nxt = internal constant [60 x [24 x i16]] [[24 x i16] zeroinitializer, [24 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 9, i16 11, i16 12, i16 13, i16 9, i16 9, i16 14, i16 15, i16 16, i16 9, i16 9, i16 9, i16 17, i16 9, i16 9, i16 9], [24 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 9, i16 11, i16 12, i16 13, i16 9, i16 9, i16 14, i16 15, i16 16, i16 9, i16 9, i16 9, i16 17, i16 9, i16 9, i16 9], [24 x i16] [i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3], [24 x i16] [i16 3, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4], [24 x i16] [i16 3, i16 -5, i16 18, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5], [24 x i16] [i16 3, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6], [24 x i16] [i16 3, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7], [24 x i16] [i16 3, i16 -8, i16 -8, i16 -8, i16 -8, i16 19, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -9, i16 -9, i16 -9, i16 -9, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -10, i16 -10, i16 -10, i16 -10, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 21, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -11, i16 -11, i16 -11, i16 -11, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 22, i16 20, i16 20, i16 20, i16 20, i16 20, i16 23], [24 x i16] [i16 3, i16 -12, i16 -12, i16 -12, i16 -12, i16 20, i16 20, i16 24, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 25, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -13, i16 -13, i16 -13, i16 -13, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 26, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -14, i16 -14, i16 -14, i16 -14, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 27, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -15, i16 -15, i16 -15, i16 -15, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 28, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -16, i16 -16, i16 -16, i16 -16, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 29, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -17, i16 -17, i16 -17, i16 -17, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 30, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -18, i16 18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18], [24 x i16] [i16 3, i16 -19, i16 -19, i16 -19, i16 -19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -20, i16 -20, i16 -20, i16 -20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -21, i16 -21, i16 -21, i16 -21, i16 20, i16 20, i16 20, i16 31, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -22, i16 -22, i16 -22, i16 -22, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 32, i16 20, i16 20], [24 x i16] [i16 3, i16 -23, i16 -23, i16 -23, i16 -23, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 33, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -24, i16 -24, i16 -24, i16 -24, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 34, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -25, i16 -25, i16 -25, i16 -25, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 35, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -26, i16 -26, i16 -26, i16 -26, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 36, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -27, i16 -27, i16 -27, i16 -27, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 37, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -28, i16 -28, i16 -28, i16 -28, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -29, i16 -29, i16 -29, i16 -29, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 38, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -30, i16 -30, i16 -30, i16 -30, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 39, i16 20, i16 20], [24 x i16] [i16 3, i16 -31, i16 -31, i16 -31, i16 -31, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -32, i16 -32, i16 -32, i16 -32, i16 20, i16 20, i16 40, i16 20, i16 20, i16 20, i16 41, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -33, i16 -33, i16 -33, i16 -33, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 42, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -34, i16 -34, i16 -34, i16 -34, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 43, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -35, i16 -35, i16 -35, i16 -35, i16 20, i16 20, i16 44, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -36, i16 -36, i16 -36, i16 -36, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 45, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -37, i16 -37, i16 -37, i16 -37, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -38, i16 -38, i16 -38, i16 -38, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 46, i16 20], [24 x i16] [i16 3, i16 -39, i16 -39, i16 -39, i16 -39, i16 20, i16 20, i16 20, i16 20, i16 47, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -40, i16 -40, i16 -40, i16 -40, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 48, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -41, i16 -41, i16 -41, i16 -41, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 49, i16 20], [24 x i16] [i16 3, i16 -42, i16 -42, i16 -42, i16 -42, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 50, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -43, i16 -43, i16 -43, i16 -43, i16 20, i16 20, i16 20, i16 20, i16 51, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -44, i16 -44, i16 -44, i16 -44, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 52, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -45, i16 -45, i16 -45, i16 -45, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 53, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -46, i16 -46, i16 -46, i16 -46, i16 20, i16 20, i16 20, i16 20, i16 54, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -47, i16 -47, i16 -47, i16 -47, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -48, i16 -48, i16 -48, i16 -48, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -49, i16 -49, i16 -49, i16 -49, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -50, i16 -50, i16 -50, i16 -50, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 55, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -51, i16 -51, i16 -51, i16 -51, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -52, i16 -52, i16 -52, i16 -52, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 56, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -53, i16 -53, i16 -53, i16 -53, i16 20, i16 20, i16 20, i16 20, i16 57, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -54, i16 -54, i16 -54, i16 -54, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -55, i16 -55, i16 -55, i16 -55, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -56, i16 -56, i16 -56, i16 -56, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -57, i16 -57, i16 -57, i16 -57, i16 20, i16 20, i16 20, i16 58, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 59, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -58, i16 -58, i16 -58, i16 -58, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -59, i16 -59, i16 -59, i16 -59, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20]], align 16
@yy_accept = internal constant [60 x i16] [i16 0, i16 0, i16 0, i16 20, i16 18, i16 15, i16 16, i16 17, i16 13, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 13, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 10, i16 14, i16 14, i16 1, i16 14, i16 14, i16 14, i16 14, i16 14, i16 9, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 11, i16 2, i16 3, i16 14, i16 5, i16 14, i16 14, i16 12, i16 4, i16 6, i16 14, i16 7, i16 8], align 16
@ia_text = common global i8* null, align 8
@ia_leng = common global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"\0A Number too big in line %d.\0A\00", align 1
@dfg_LINENUMBER = external global i32, align 4
@ia_lval = external global %union.yystype, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"\0A Illegal character '\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\5Cx%x\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"' in line %d.\0A\00", align 1
@yy_n_chars = internal global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"out of dynamic memory in yy_scan_buffer()\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"out of dynamic memory in yy_scan_bytes()\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"bad buffer in yy_scan_bytes()\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ia_lex() #0 {
entry:
  %retval = alloca i32, align 4
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_bp = alloca i8*, align 8
  %yy_act = alloca i32, align 4
  %n = alloca i64, align 8
  %yy_amount_of_matched_text = alloca i32, align 4
  %yy_next_state = alloca i32, align 4
  %0 = load i32, i32* @yy_init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  store i32 0, i32* @yy_init, align 4
  %1 = load i32, i32* @yy_start, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* @yy_start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** @ia_in, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_out, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @ia_out, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %tobool9 = icmp ne %struct.yy_buffer_state* %6, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %call = call %struct.yy_buffer_state* @ia__create_buffer(%struct._IO_FILE* %7, i32 16384)
  store %struct.yy_buffer_state* %call, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  call void @ia__load_buffer_state()
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  br label %while.body

while.body:                                       ; preds = %if.end.12, %sw.epilog.117
  %8 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %8, i8** %yy_cp, align 8
  %9 = load i8, i8* @yy_hold_char, align 1
  %10 = load i8*, i8** %yy_cp, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i8*, i8** %yy_cp, align 8
  store i8* %11, i8** %yy_bp, align 8
  %12 = load i32, i32* @yy_start, align 4
  store i32 %12, i32* %yy_current_state, align 4
  br label %yy_match

yy_match:                                         ; preds = %sw.bb.105, %if.then.95, %while.body
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.20, %yy_match
  %13 = load i8*, i8** %yy_cp, align 8
  %14 = load i8, i8* %13, align 1
  %conv = zext i8 %14 to i32
  %idxprom = zext i32 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @yy_ec, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i32, i32* %yy_current_state, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [60 x [24 x i16]], [60 x [24 x i16]]* @yy_nxt, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [24 x i16], [24 x i16]* %arrayidx16, i32 0, i64 %idxprom14
  %17 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %17 to i32
  store i32 %conv18, i32* %yy_current_state, align 4
  %cmp = icmp sgt i32 %conv18, 0
  br i1 %cmp, label %while.body.20, label %while.end

while.body.20:                                    ; preds = %while.cond.13
  %18 = load i8*, i8** %yy_cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %yy_cp, align 8
  br label %while.cond.13

while.end:                                        ; preds = %while.cond.13
  %19 = load i32, i32* %yy_current_state, align 4
  %sub = sub nsw i32 0, %19
  store i32 %sub, i32* %yy_current_state, align 4
  br label %yy_find_action

yy_find_action:                                   ; preds = %sw.bb.110, %if.else.97, %while.end
  %20 = load i32, i32* %yy_current_state, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [60 x i16], [60 x i16]* @yy_accept, i32 0, i64 %idxprom21
  %21 = load i16, i16* %arrayidx22, align 2
  %conv23 = sext i16 %21 to i32
  store i32 %conv23, i32* %yy_act, align 4
  %22 = load i8*, i8** %yy_bp, align 8
  store i8* %22, i8** @ia_text, align 8
  %23 = load i8*, i8** %yy_cp, align 8
  %24 = load i8*, i8** %yy_bp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv24 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv24, i32* @ia_leng, align 4
  %25 = load i8*, i8** %yy_cp, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* @yy_hold_char, align 1
  %27 = load i8*, i8** %yy_cp, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %yy_cp, align 8
  store i8* %28, i8** @yy_c_buf_p, align 8
  br label %do_action

do_action:                                        ; preds = %sw.bb.100, %yy_find_action
  %29 = load i32, i32* %yy_act, align 4
  switch i32 %29, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.26
    i32 4, label %sw.bb.27
    i32 5, label %sw.bb.28
    i32 6, label %sw.bb.29
    i32 7, label %sw.bb.30
    i32 8, label %sw.bb.31
    i32 9, label %sw.bb.32
    i32 10, label %sw.bb.33
    i32 11, label %sw.bb.34
    i32 12, label %sw.bb.35
    i32 13, label %sw.bb.36
    i32 14, label %sw.bb.48
    i32 15, label %sw.bb.51
    i32 16, label %sw.bb.52
    i32 17, label %sw.bb.53
    i32 18, label %sw.bb.56
    i32 19, label %sw.bb.71
    i32 21, label %sw.bb.74
    i32 20, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %do_action
  store i32 258, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %do_action
  store i32 259, i32* %retval
  br label %return

sw.bb.26:                                         ; preds = %do_action
  store i32 260, i32* %retval
  br label %return

sw.bb.27:                                         ; preds = %do_action
  store i32 261, i32* %retval
  br label %return

sw.bb.28:                                         ; preds = %do_action
  store i32 262, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %do_action
  store i32 263, i32* %retval
  br label %return

sw.bb.30:                                         ; preds = %do_action
  store i32 264, i32* %retval
  br label %return

sw.bb.31:                                         ; preds = %do_action
  store i32 265, i32* %retval
  br label %return

sw.bb.32:                                         ; preds = %do_action
  store i32 266, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %do_action
  store i32 267, i32* %retval
  br label %return

sw.bb.34:                                         ; preds = %do_action
  store i32 269, i32* %retval
  br label %return

sw.bb.35:                                         ; preds = %do_action
  store i32 268, i32* %retval
  br label %return

sw.bb.36:                                         ; preds = %do_action
  %call37 = call i32* @__errno_location() #6
  store i32 0, i32* %call37, align 4
  %30 = load i8*, i8** @ia_text, align 8
  %call38 = call i64 @strtoul(i8* %30, i8** null, i32 10) #7
  store i64 %call38, i64* %n, align 8
  %call39 = call i32* @__errno_location() #6
  %31 = load i32, i32* %call39, align 4
  %cmp40 = icmp ne i32 %31, 0
  br i1 %cmp40, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.36
  %32 = load i64, i64* %n, align 8
  %cmp42 = icmp ugt i64 %32, 2147483647
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %lor.lhs.false, %sw.bb.36
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call45 = call i32 @fflush(%struct._IO_FILE* %33)
  %34 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 %34)
  call void @misc_Error()
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %lor.lhs.false
  %35 = load i64, i64* %n, align 8
  %conv47 = trunc i64 %35 to i32
  store i32 %conv47, i32* bitcast (%union.yystype* @ia_lval to i32*), align 4
  store i32 270, i32* %retval
  br label %return

sw.bb.48:                                         ; preds = %do_action
  %36 = load i32, i32* @ia_leng, align 4
  %add = add nsw i32 %36, 1
  %call49 = call i8* @memory_Malloc(i32 %add)
  store i8* %call49, i8** getelementptr inbounds (%union.yystype, %union.yystype* @ia_lval, i32 0, i32 0), align 8
  %37 = load i8*, i8** getelementptr inbounds (%union.yystype, %union.yystype* @ia_lval, i32 0, i32 0), align 8
  %38 = load i8*, i8** @ia_text, align 8
  %call50 = call i8* @strcpy(i8* %37, i8* %38) #7
  store i32 271, i32* %retval
  br label %return

sw.bb.51:                                         ; preds = %do_action
  br label %sw.epilog.117

sw.bb.52:                                         ; preds = %do_action
  %39 = load i32, i32* @dfg_LINENUMBER, align 4
  %inc = add i32 %39, 1
  store i32 %inc, i32* @dfg_LINENUMBER, align 4
  br label %sw.epilog.117

sw.bb.53:                                         ; preds = %do_action
  %40 = load i8*, i8** @ia_text, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %41 to i32
  store i32 %conv55, i32* %retval
  br label %return

sw.bb.56:                                         ; preds = %do_action
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @fflush(%struct._IO_FILE* %42)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  %43 = load i8*, i8** @ia_text, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %44 to i32
  %idxprom60 = sext i32 %conv59 to i64
  %call61 = call i16** @__ctype_b_loc() #6
  %45 = load i16*, i16** %call61, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %45, i64 %idxprom60
  %46 = load i16, i16* %arrayidx62, align 2
  %conv63 = zext i16 %46 to i32
  %and = and i32 %conv63, 16384
  %tobool64 = icmp ne i32 %and, 0
  br i1 %tobool64, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %sw.bb.56
  %47 = load i8*, i8** @ia_text, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %48 to i32
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %conv67)
  br label %if.end.70

if.else:                                          ; preds = %sw.bb.56
  %49 = load i8*, i8** @ia_text, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %50 to i32
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %conv69)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else, %if.then.65
  %51 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %51)
  call void @misc_Error()
  br label %sw.epilog.117

sw.bb.71:                                         ; preds = %do_action
  %52 = load i8*, i8** @ia_text, align 8
  %53 = load i32, i32* @ia_leng, align 4
  %conv72 = sext i32 %53 to i64
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_out, align 8
  %call73 = call i64 @fwrite(i8* %52, i64 %conv72, i64 1, %struct._IO_FILE* %54)
  br label %sw.epilog.117

sw.bb.74:                                         ; preds = %do_action
  store i32 0, i32* %retval
  br label %return

sw.bb.75:                                         ; preds = %do_action
  %55 = load i8*, i8** %yy_cp, align 8
  %56 = load i8*, i8** @ia_text, align 8
  %sub.ptr.lhs.cast76 = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast77 = ptrtoint i8* %56 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %conv79 = trunc i64 %sub.ptr.sub78 to i32
  %sub80 = sub nsw i32 %conv79, 1
  store i32 %sub80, i32* %yy_amount_of_matched_text, align 4
  %57 = load i8, i8* @yy_hold_char, align 1
  %58 = load i8*, i8** %yy_cp, align 8
  store i8 %57, i8* %58, align 1
  %59 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %59, i32 0, i32 9
  %60 = load i32, i32* %yy_buffer_status, align 4
  %cmp81 = icmp eq i32 %60, 0
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %sw.bb.75
  %61 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %61, i32 0, i32 4
  %62 = load i32, i32* %yy_n_chars, align 4
  store i32 %62, i32* @yy_n_chars, align 4
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %64 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %64, i32 0, i32 0
  store %struct._IO_FILE* %63, %struct._IO_FILE** %yy_input_file, align 8
  %65 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buffer_status84 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %65, i32 0, i32 9
  store i32 1, i32* %yy_buffer_status84, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %sw.bb.75
  %66 = load i8*, i8** @yy_c_buf_p, align 8
  %67 = load i32, i32* @yy_n_chars, align 4
  %idxprom86 = sext i32 %67 to i64
  %68 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %68, i32 0, i32 1
  %69 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %69, i64 %idxprom86
  %cmp88 = icmp ule i8* %66, %arrayidx87
  br i1 %cmp88, label %if.then.90, label %if.else.98

if.then.90:                                       ; preds = %if.end.85
  %70 = load i8*, i8** @ia_text, align 8
  %71 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext = sext i32 %71 to i64
  %add.ptr = getelementptr inbounds i8, i8* %70, i64 %idx.ext
  store i8* %add.ptr, i8** @yy_c_buf_p, align 8
  %call91 = call i32 @yy_get_previous_state()
  store i32 %call91, i32* %yy_current_state, align 4
  %72 = load i32, i32* %yy_current_state, align 4
  %call92 = call i32 @yy_try_NUL_trans(i32 %72)
  store i32 %call92, i32* %yy_next_state, align 4
  %73 = load i8*, i8** @ia_text, align 8
  %add.ptr93 = getelementptr inbounds i8, i8* %73, i64 0
  store i8* %add.ptr93, i8** %yy_bp, align 8
  %74 = load i32, i32* %yy_next_state, align 4
  %tobool94 = icmp ne i32 %74, 0
  br i1 %tobool94, label %if.then.95, label %if.else.97

if.then.95:                                       ; preds = %if.then.90
  %75 = load i8*, i8** @yy_c_buf_p, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr96, i8** @yy_c_buf_p, align 8
  store i8* %incdec.ptr96, i8** %yy_cp, align 8
  %76 = load i32, i32* %yy_next_state, align 4
  store i32 %76, i32* %yy_current_state, align 4
  br label %yy_match

if.else.97:                                       ; preds = %if.then.90
  %77 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %77, i8** %yy_cp, align 8
  br label %yy_find_action

if.else.98:                                       ; preds = %if.end.85
  %call99 = call i32 @yy_get_next_buffer()
  switch i32 %call99, label %sw.epilog [
    i32 1, label %sw.bb.100
    i32 0, label %sw.bb.105
    i32 2, label %sw.bb.110
  ]

sw.bb.100:                                        ; preds = %if.else.98
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %78 = load i8*, i8** @ia_text, align 8
  %add.ptr101 = getelementptr inbounds i8, i8* %78, i64 0
  store i8* %add.ptr101, i8** @yy_c_buf_p, align 8
  %79 = load i32, i32* @yy_start, align 4
  %sub102 = sub nsw i32 %79, 1
  %div = sdiv i32 %sub102, 2
  %add103 = add nsw i32 20, %div
  %add104 = add nsw i32 %add103, 1
  store i32 %add104, i32* %yy_act, align 4
  br label %do_action

sw.bb.105:                                        ; preds = %if.else.98
  %80 = load i8*, i8** @ia_text, align 8
  %81 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext106 = sext i32 %81 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %80, i64 %idx.ext106
  store i8* %add.ptr107, i8** @yy_c_buf_p, align 8
  %call108 = call i32 @yy_get_previous_state()
  store i32 %call108, i32* %yy_current_state, align 4
  %82 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %82, i8** %yy_cp, align 8
  %83 = load i8*, i8** @ia_text, align 8
  %add.ptr109 = getelementptr inbounds i8, i8* %83, i64 0
  store i8* %add.ptr109, i8** %yy_bp, align 8
  br label %yy_match

sw.bb.110:                                        ; preds = %if.else.98
  %84 = load i32, i32* @yy_n_chars, align 4
  %idxprom111 = sext i32 %84 to i64
  %85 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf112 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %85, i32 0, i32 1
  %86 = load i8*, i8** %yy_ch_buf112, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %86, i64 %idxprom111
  store i8* %arrayidx113, i8** @yy_c_buf_p, align 8
  %call114 = call i32 @yy_get_previous_state()
  store i32 %call114, i32* %yy_current_state, align 4
  %87 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %87, i8** %yy_cp, align 8
  %88 = load i8*, i8** @ia_text, align 8
  %add.ptr115 = getelementptr inbounds i8, i8* %88, i64 0
  store i8* %add.ptr115, i8** %yy_bp, align 8
  br label %yy_find_action

sw.epilog:                                        ; preds = %if.else.98
  br label %if.end.116

if.end.116:                                       ; preds = %sw.epilog
  br label %sw.epilog.117

sw.default:                                       ; preds = %do_action
  call void @yy_fatal_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog.117

sw.epilog.117:                                    ; preds = %sw.default, %if.end.116, %sw.bb.71, %if.end.70, %sw.bb.52, %sw.bb.51
  br label %while.body

return:                                           ; preds = %sw.bb.74, %sw.bb.53, %sw.bb.48, %if.end.46, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ia__create_buffer(%struct._IO_FILE* %file, i32 %size) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %size.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i8* @yy_flex_alloc(i32 56)
  %0 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %b, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %size.addr, align 4
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %3, i32 0, i32 3
  store i32 %2, i32* %yy_buf_size, align 4
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size1 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 3
  %5 = load i32, i32* %yy_buf_size1, align 4
  %add = add i32 %5, 2
  %call2 = call i8* @yy_flex_alloc(i32 %add)
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 1
  store i8* %call2, i8** %yy_ch_buf, align 8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 1
  %8 = load i8*, i8** %yy_ch_buf3, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @ia__init_buffer(%struct.yy_buffer_state* %10, %struct._IO_FILE* %11)
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %12
}

; Function Attrs: nounwind uwtable
define void @ia__load_buffer_state() #0 {
entry:
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i32 0, i32 4
  %1 = load i32, i32* %yy_n_chars, align 4
  store i32 %1, i32* @yy_n_chars, align 4
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 2
  %3 = load i8*, i8** %yy_buf_pos, align 8
  store i8* %3, i8** @yy_c_buf_p, align 8
  store i8* %3, i8** @ia_text, align 8
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %yy_input_file, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @ia_in, align 8
  %6 = load i8*, i8** @yy_c_buf_p, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* @yy_hold_char, align 1
  ret void
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

declare i32 @fflush(%struct._IO_FILE*) #3

declare void @misc_UserErrorReport(i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #4 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i8* @memory_Malloc(i32) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
entry:
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %0 = load i32, i32* @yy_start, align 4
  store i32 %0, i32* %yy_current_state, align 4
  %1 = load i8*, i8** @ia_text, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 0
  store i8* %add.ptr, i8** %yy_cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %yy_cp, align 8
  %3 = load i8*, i8** @yy_c_buf_p, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %yy_cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load i8*, i8** %yy_cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv1 = zext i8 %7 to i32
  %idxprom = zext i32 %conv1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @yy_ec, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ 1, %cond.false ]
  %idxprom2 = sext i32 %cond to i64
  %9 = load i32, i32* %yy_current_state, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [60 x [24 x i16]], [60 x [24 x i16]]* @yy_nxt, i32 0, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [24 x i16], [24 x i16]* %arrayidx4, i32 0, i64 %idxprom2
  %10 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %10 to i32
  store i32 %conv6, i32* %yy_current_state, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %11 = load i8*, i8** %yy_cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %yy_cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %yy_current_state, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_try_NUL_trans(i32 %yy_current_state) #0 {
entry:
  %yy_current_state.addr = alloca i32, align 4
  %yy_is_jam = alloca i32, align 4
  store i32 %yy_current_state, i32* %yy_current_state.addr, align 4
  %0 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [60 x [24 x i16]], [60 x [24 x i16]]* @yy_nxt, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [24 x i16], [24 x i16]* %arrayidx, i32 0, i64 1
  %1 = load i16, i16* %arrayidx1, align 2
  %conv = sext i16 %1 to i32
  store i32 %conv, i32* %yy_current_state.addr, align 4
  %2 = load i32, i32* %yy_current_state.addr, align 4
  %cmp = icmp sle i32 %2, 0
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %yy_is_jam, align 4
  %3 = load i32, i32* %yy_is_jam, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %yy_current_state.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %4, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_next_buffer() #0 {
entry:
  %retval = alloca i32, align 4
  %dest = alloca i8*, align 8
  %source = alloca i8*, align 8
  %number_to_move = alloca i32, align 4
  %i = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %num_to_read = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  %yy_c_buf_p_offset = alloca i32, align 4
  %new_size = alloca i32, align 4
  %c = alloca i32, align 4
  %n = alloca i32, align 4
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i32 0, i32 1
  %1 = load i8*, i8** %yy_ch_buf, align 8
  store i8* %1, i8** %dest, align 8
  %2 = load i8*, i8** @ia_text, align 8
  store i8* %2, i8** %source, align 8
  %3 = load i8*, i8** @yy_c_buf_p, align 8
  %4 = load i32, i32* @yy_n_chars, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %5 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf1 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %5, i32 0, i32 1
  %6 = load i8*, i8** %yy_ch_buf1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %cmp = icmp ugt i8* %3, %arrayidx
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_fill_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 8
  %8 = load i32, i32* %yy_fill_buffer, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %9 = load i8*, i8** @yy_c_buf_p, align 8
  %10 = load i8*, i8** @ia_text, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 0
  %cmp4 = icmp eq i64 %sub, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.3
  store i32 2, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load i8*, i8** @yy_c_buf_p, align 8
  %12 = load i8*, i8** @ia_text, align 8
  %sub.ptr.lhs.cast7 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i8* %12 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %conv = trunc i64 %sub.ptr.sub9 to i32
  %sub10 = sub nsw i32 %conv, 1
  store i32 %sub10, i32* %number_to_move, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %number_to_move, align 4
  %cmp11 = icmp slt i32 %13, %14
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %source, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %source, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** %dest, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr13, i8** %dest, align 8
  store i8 %16, i8* %17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %19, i32 0, i32 9
  %20 = load i32, i32* %yy_buffer_status, align 4
  %cmp14 = icmp eq i32 %20, 2
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %for.end
  store i32 0, i32* @yy_n_chars, align 4
  %21 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %21, i32 0, i32 4
  store i32 0, i32* %yy_n_chars, align 4
  br label %if.end.114

if.else.17:                                       ; preds = %for.end
  %22 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %22, i32 0, i32 3
  %23 = load i32, i32* %yy_buf_size, align 4
  %24 = load i32, i32* %number_to_move, align 4
  %sub18 = sub i32 %23, %24
  %sub19 = sub i32 %sub18, 1
  store i32 %sub19, i32* %num_to_read, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.else.17
  %25 = load i32, i32* %num_to_read, align 4
  %cmp20 = icmp sle i32 %25, 0
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  store %struct.yy_buffer_state* %26, %struct.yy_buffer_state** %b, align 8
  %27 = load i8*, i8** @yy_c_buf_p, align 8
  %28 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf22 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %28, i32 0, i32 1
  %29 = load i8*, i8** %yy_ch_buf22, align 8
  %sub.ptr.lhs.cast23 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %29 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %conv26 = trunc i64 %sub.ptr.sub25 to i32
  store i32 %conv26, i32* %yy_c_buf_p_offset, align 4
  %30 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %30, i32 0, i32 5
  %31 = load i32, i32* %yy_is_our_buffer, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then.27, label %if.else.43

if.then.27:                                       ; preds = %while.body
  %32 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size28 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %32, i32 0, i32 3
  %33 = load i32, i32* %yy_buf_size28, align 4
  %mul = mul i32 %33, 2
  store i32 %mul, i32* %new_size, align 4
  %34 = load i32, i32* %new_size, align 4
  %cmp29 = icmp sle i32 %34, 0
  br i1 %cmp29, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %if.then.27
  %35 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size32 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %35, i32 0, i32 3
  %36 = load i32, i32* %yy_buf_size32, align 4
  %div = udiv i32 %36, 8
  %37 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size33 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %37, i32 0, i32 3
  %38 = load i32, i32* %yy_buf_size33, align 4
  %add34 = add i32 %38, %div
  store i32 %add34, i32* %yy_buf_size33, align 4
  br label %if.end.38

if.else.35:                                       ; preds = %if.then.27
  %39 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size36 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %39, i32 0, i32 3
  %40 = load i32, i32* %yy_buf_size36, align 4
  %mul37 = mul i32 %40, 2
  store i32 %mul37, i32* %yy_buf_size36, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.31
  %41 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf39 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %41, i32 0, i32 1
  %42 = load i8*, i8** %yy_ch_buf39, align 8
  %43 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size40 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %43, i32 0, i32 3
  %44 = load i32, i32* %yy_buf_size40, align 4
  %add41 = add i32 %44, 2
  %call = call i8* @yy_flex_realloc(i8* %42, i32 %add41)
  %45 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf42 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i32 0, i32 1
  store i8* %call, i8** %yy_ch_buf42, align 8
  br label %if.end.45

if.else.43:                                       ; preds = %while.body
  %46 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf44 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %46, i32 0, i32 1
  store i8* null, i8** %yy_ch_buf44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.end.38
  %47 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf46 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %47, i32 0, i32 1
  %48 = load i8*, i8** %yy_ch_buf46, align 8
  %tobool47 = icmp ne i8* %48, null
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.45
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.45
  %49 = load i32, i32* %yy_c_buf_p_offset, align 4
  %idxprom50 = sext i32 %49 to i64
  %50 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf51 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %50, i32 0, i32 1
  %51 = load i8*, i8** %yy_ch_buf51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %51, i64 %idxprom50
  store i8* %arrayidx52, i8** @yy_c_buf_p, align 8
  %52 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buf_size53 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %52, i32 0, i32 3
  %53 = load i32, i32* %yy_buf_size53, align 4
  %54 = load i32, i32* %number_to_move, align 4
  %sub54 = sub i32 %53, %54
  %sub55 = sub i32 %sub54, 1
  store i32 %sub55, i32* %num_to_read, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load i32, i32* %num_to_read, align 4
  %cmp56 = icmp sgt i32 %55, 8192
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %while.end
  store i32 8192, i32* %num_to_read, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %while.end
  %56 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_is_interactive = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %56, i32 0, i32 6
  %57 = load i32, i32* %yy_is_interactive, align 4
  %tobool60 = icmp ne i32 %57, 0
  br i1 %tobool60, label %if.then.61, label %if.else.98

if.then.61:                                       ; preds = %if.end.59
  store i32 42, i32* %c, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.77, %if.then.61
  %58 = load i32, i32* %n, align 4
  %59 = load i32, i32* %num_to_read, align 4
  %cmp63 = icmp slt i32 %58, %59
  br i1 %cmp63, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.62
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %call65 = call i32 @_IO_getc(%struct._IO_FILE* %60)
  store i32 %call65, i32* %c, align 4
  %cmp66 = icmp ne i32 %call65, -1
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %61 = load i32, i32* %c, align 4
  %cmp68 = icmp ne i32 %61, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond.62
  %62 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.62 ], [ %cmp68, %land.rhs ]
  br i1 %62, label %for.body.70, label %for.end.79

for.body.70:                                      ; preds = %land.end
  %63 = load i32, i32* %c, align 4
  %conv71 = trunc i32 %63 to i8
  %64 = load i32, i32* %n, align 4
  %idxprom72 = sext i32 %64 to i64
  %65 = load i32, i32* %number_to_move, align 4
  %idxprom73 = sext i32 %65 to i64
  %66 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf74 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %66, i32 0, i32 1
  %67 = load i8*, i8** %yy_ch_buf74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %67, i64 %idxprom73
  %arrayidx76 = getelementptr inbounds i8, i8* %arrayidx75, i64 %idxprom72
  store i8 %conv71, i8* %arrayidx76, align 1
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.70
  %68 = load i32, i32* %n, align 4
  %inc78 = add nsw i32 %68, 1
  store i32 %inc78, i32* %n, align 4
  br label %for.cond.62

for.end.79:                                       ; preds = %land.end
  %69 = load i32, i32* %c, align 4
  %cmp80 = icmp eq i32 %69, 10
  br i1 %cmp80, label %if.then.82, label %if.end.90

if.then.82:                                       ; preds = %for.end.79
  %70 = load i32, i32* %c, align 4
  %conv83 = trunc i32 %70 to i8
  %71 = load i32, i32* %n, align 4
  %inc84 = add nsw i32 %71, 1
  store i32 %inc84, i32* %n, align 4
  %idxprom85 = sext i32 %71 to i64
  %72 = load i32, i32* %number_to_move, align 4
  %idxprom86 = sext i32 %72 to i64
  %73 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf87 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %73, i32 0, i32 1
  %74 = load i8*, i8** %yy_ch_buf87, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %74, i64 %idxprom86
  %arrayidx89 = getelementptr inbounds i8, i8* %arrayidx88, i64 %idxprom85
  store i8 %conv83, i8* %arrayidx89, align 1
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.82, %for.end.79
  %75 = load i32, i32* %c, align 4
  %cmp91 = icmp eq i32 %75, -1
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.97

land.lhs.true.93:                                 ; preds = %if.end.90
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %call94 = call i32 @ferror(%struct._IO_FILE* %76) #7
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %land.lhs.true.93
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %land.lhs.true.93, %if.end.90
  %77 = load i32, i32* %n, align 4
  store i32 %77, i32* @yy_n_chars, align 4
  br label %if.end.112

if.else.98:                                       ; preds = %if.end.59
  %78 = load i32, i32* %number_to_move, align 4
  %idxprom99 = sext i32 %78 to i64
  %79 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf100 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %79, i32 0, i32 1
  %80 = load i8*, i8** %yy_ch_buf100, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %80, i64 %idxprom99
  %81 = load i32, i32* %num_to_read, align 4
  %conv102 = sext i32 %81 to i64
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %call103 = call i64 @fread(i8* %arrayidx101, i64 1, i64 %conv102, %struct._IO_FILE* %82)
  %conv104 = trunc i64 %call103 to i32
  store i32 %conv104, i32* @yy_n_chars, align 4
  %cmp105 = icmp eq i32 %conv104, 0
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.111

land.lhs.true.107:                                ; preds = %if.else.98
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %call108 = call i32 @ferror(%struct._IO_FILE* %83) #7
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %land.lhs.true.107
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %land.lhs.true.107, %if.else.98
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.97
  %84 = load i32, i32* @yy_n_chars, align 4
  %85 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_n_chars113 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %85, i32 0, i32 4
  store i32 %84, i32* %yy_n_chars113, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.112, %if.then.16
  %86 = load i32, i32* @yy_n_chars, align 4
  %cmp115 = icmp eq i32 %86, 0
  br i1 %cmp115, label %if.then.117, label %if.else.124

if.then.117:                                      ; preds = %if.end.114
  %87 = load i32, i32* %number_to_move, align 4
  %cmp118 = icmp eq i32 %87, 0
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %if.then.117
  store i32 1, i32* %ret_val, align 4
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  call void @ia_restart(%struct._IO_FILE* %88)
  br label %if.end.123

if.else.121:                                      ; preds = %if.then.117
  store i32 2, i32* %ret_val, align 4
  %89 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buffer_status122 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %89, i32 0, i32 9
  store i32 2, i32* %yy_buffer_status122, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.121, %if.then.120
  br label %if.end.125

if.else.124:                                      ; preds = %if.end.114
  store i32 0, i32* %ret_val, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.124, %if.end.123
  %90 = load i32, i32* %number_to_move, align 4
  %91 = load i32, i32* @yy_n_chars, align 4
  %add126 = add nsw i32 %91, %90
  store i32 %add126, i32* @yy_n_chars, align 4
  %92 = load i32, i32* @yy_n_chars, align 4
  %idxprom127 = sext i32 %92 to i64
  %93 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf128 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %93, i32 0, i32 1
  %94 = load i8*, i8** %yy_ch_buf128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %94, i64 %idxprom127
  store i8 0, i8* %arrayidx129, align 1
  %95 = load i32, i32* @yy_n_chars, align 4
  %add130 = add nsw i32 %95, 1
  %idxprom131 = sext i32 %add130 to i64
  %96 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf132 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %96, i32 0, i32 1
  %97 = load i8*, i8** %yy_ch_buf132, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %97, i64 %idxprom131
  store i8 0, i8* %arrayidx133, align 1
  %98 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf134 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %98, i32 0, i32 1
  %99 = load i8*, i8** %yy_ch_buf134, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %99, i64 0
  store i8* %arrayidx135, i8** @ia_text, align 8
  %100 = load i32, i32* %ret_val, align 4
  store i32 %100, i32* %retval
  br label %return

return:                                           ; preds = %if.end.125, %if.else, %if.then.5
  %101 = load i32, i32* %retval
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal void @yy_fatal_error(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* %1)
  call void @exit(i32 2) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @ia_restart(%struct._IO_FILE* %input_file) #0 {
entry:
  %input_file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %input_file, %struct._IO_FILE** %input_file.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %call = call %struct.yy_buffer_state* @ia__create_buffer(%struct._IO_FILE* %1, i32 16384)
  store %struct.yy_buffer_state* %call, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file.addr, align 8
  call void @ia__init_buffer(%struct.yy_buffer_state* %2, %struct._IO_FILE* %3)
  call void @ia__load_buffer_state()
  ret void
}

; Function Attrs: nounwind uwtable
define void @ia__init_buffer(%struct.yy_buffer_state* %b, %struct._IO_FILE* %file) #0 {
entry:
  %b.addr = alloca %struct.yy_buffer_state*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.yy_buffer_state* %b, %struct.yy_buffer_state** %b.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  call void @ia__flush_buffer(%struct.yy_buffer_state* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 0
  store %struct._IO_FILE* %1, %struct._IO_FILE** %yy_input_file, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_fill_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %3, i32 0, i32 8
  store i32 1, i32* %yy_fill_buffer, align 4
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_is_interactive = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 6
  store i32 1, i32* %yy_is_interactive, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ia__switch_to_buffer(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load i8, i8* @yy_hold_char, align 1
  %4 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 %3, i8* %4, align 1
  %5 = load i8*, i8** @yy_c_buf_p, align 8
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 2
  store i8* %5, i8** %yy_buf_pos, align 8
  %7 = load i32, i32* @yy_n_chars, align 4
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i32 0, i32 4
  store i32 %7, i32* %yy_n_chars, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  store %struct.yy_buffer_state* %9, %struct.yy_buffer_state** @yy_current_buffer, align 8
  call void @ia__load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @yy_flex_alloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #7
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @ia__delete_buffer(%struct.yy_buffer_state* %b) #0 {
entry:
  %b.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %b, %struct.yy_buffer_state** %b.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %1, %2
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %3, i32 0, i32 5
  %4 = load i32, i32* %yy_is_our_buffer, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %5 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %5, i32 0, i32 1
  %6 = load i8*, i8** %yy_ch_buf, align 8
  call void @yy_flex_free(i8* %6)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %8 = bitcast %struct.yy_buffer_state* %7 to i8*
  call void @yy_flex_free(i8* %8)
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yy_flex_free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @ia__flush_buffer(%struct.yy_buffer_state* %b) #0 {
entry:
  %b.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %b, %struct.yy_buffer_state** %b.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.6

if.end:                                           ; preds = %entry
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i32 0, i32 4
  store i32 0, i32* %yy_n_chars, align 4
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 1
  %3 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf1 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 1
  %5 = load i8*, i8** %yy_ch_buf1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 0, i8* %arrayidx2, align 1
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 1
  %7 = load i8*, i8** %yy_ch_buf3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i32 0, i32 2
  store i8* %arrayidx4, i8** %yy_buf_pos, align 8
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_at_bol = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 7
  store i32 1, i32* %yy_at_bol, align 4
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 9
  store i32 0, i32* %yy_buffer_status, align 4
  %11 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %11, %12
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @ia__load_buffer_state()
  br label %if.end.6

if.end.6:                                         ; preds = %if.then, %if.then.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ia__scan_buffer(i8* %base, i32 %size) #0 {
entry:
  %retval = alloca %struct.yy_buffer_state*, align 8
  %base.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %sub = sub i32 %1, 2
  %idxprom = zext i32 %sub to i64
  %2 = load i8*, i8** %base.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %size.addr, align 4
  %sub4 = sub i32 %4, 1
  %idxprom5 = zext i32 %sub4 to i64
  %5 = load i8*, i8** %base.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 %idxprom5
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %call = call i8* @yy_flex_alloc(i32 56)
  %7 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %7, %struct.yy_buffer_state** %b, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %9 = load i32, i32* %size.addr, align 4
  %sub12 = sub i32 %9, 2
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 3
  store i32 %sub12, i32* %yy_buf_size, align 4
  %11 = load i8*, i8** %base.addr, align 8
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %12, i32 0, i32 1
  store i8* %11, i8** %yy_ch_buf, align 8
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i32 0, i32 2
  store i8* %11, i8** %yy_buf_pos, align 8
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %14, i32 0, i32 5
  store i32 0, i32* %yy_is_our_buffer, align 4
  %15 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %15, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %yy_input_file, align 8
  %16 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size13 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %16, i32 0, i32 3
  %17 = load i32, i32* %yy_buf_size13, align 4
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 4
  store i32 %17, i32* %yy_n_chars, align 4
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_interactive = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %19, i32 0, i32 6
  store i32 0, i32* %yy_is_interactive, align 4
  %20 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_at_bol = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %20, i32 0, i32 7
  store i32 1, i32* %yy_at_bol, align 4
  %21 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_fill_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %21, i32 0, i32 8
  store i32 0, i32* %yy_fill_buffer, align 4
  %22 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %22, i32 0, i32 9
  store i32 0, i32* %yy_buffer_status, align 4
  %23 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  call void @ia__switch_to_buffer(%struct.yy_buffer_state* %23)
  %24 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  store %struct.yy_buffer_state* %24, %struct.yy_buffer_state** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %25 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %retval
  ret %struct.yy_buffer_state* %25
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ia__scan_string(i8* %yy_str) #0 {
entry:
  %yy_str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %yy_str, i8** %yy_str.addr, align 8
  store i32 0, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %len, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %yy_str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %len, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %len, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i8*, i8** %yy_str.addr, align 8
  %5 = load i32, i32* %len, align 4
  %call = call %struct.yy_buffer_state* @ia__scan_bytes(i8* %4, i32 %5)
  ret %struct.yy_buffer_state* %call
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ia__scan_bytes(i8* %bytes, i32 %len) #0 {
entry:
  %bytes.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  %buf = alloca i8*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %call = call i8* @yy_flex_alloc(i32 %1)
  store i8* %call, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %bytes.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i8*, i8** %buf, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 %idxprom1
  store i8 %7, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %len.addr, align 4
  %add3 = add nsw i32 %11, 1
  %idxprom4 = sext i32 %add3 to i64
  %12 = load i8*, i8** %buf, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  store i8 0, i8* %arrayidx5, align 1
  %13 = load i32, i32* %len.addr, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i8*, i8** %buf, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 %idxprom6
  store i8 0, i8* %arrayidx7, align 1
  %15 = load i8*, i8** %buf, align 8
  %16 = load i32, i32* %n, align 4
  %call8 = call %struct.yy_buffer_state* @ia__scan_buffer(i8* %15, i32 %16)
  store %struct.yy_buffer_state* %call8, %struct.yy_buffer_state** %b, align 8
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool9 = icmp ne %struct.yy_buffer_state* %17, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %for.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %19
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal i8* @yy_flex_realloc(i8* %ptr, i32 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %1 to i64
  %call = call i8* @realloc(i8* %0, i64 %conv) #7
  ret i8* %call
}

declare i32 @_IO_getc(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
