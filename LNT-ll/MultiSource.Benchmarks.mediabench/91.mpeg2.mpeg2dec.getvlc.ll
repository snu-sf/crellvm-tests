; ModuleID = './MultiSource.Benchmarks.mediabench/91.mpeg2.mpeg2dec.getvlc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DCTtab = type { i8, i8, i8 }
%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct.VLCtab = type { i8, i8 }

@DCTtabfirst = global [12 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 2, i8 4 }, %struct.DCTtab { i8 2, i8 1, i8 4 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }], align 16
@DCTtabnext = global [12 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 2, i8 4 }, %struct.DCTtab { i8 2, i8 1, i8 4 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }], align 16
@DCTtab0 = global [60 x %struct.DCTtab] [%struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 0, i8 4, i8 7 }, %struct.DCTtab { i8 0, i8 4, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 13, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 6, i8 8 }, %struct.DCTtab { i8 12, i8 1, i8 8 }, %struct.DCTtab { i8 11, i8 1, i8 8 }, %struct.DCTtab { i8 3, i8 2, i8 8 }, %struct.DCTtab { i8 1, i8 3, i8 8 }, %struct.DCTtab { i8 0, i8 5, i8 8 }, %struct.DCTtab { i8 10, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }], align 16
@DCTtab0a = global [252 x %struct.DCTtab] [%struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 7 }, %struct.DCTtab { i8 7, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 6, i8 1, i8 7 }, %struct.DCTtab { i8 6, i8 1, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 1, i8 5, i8 8 }, %struct.DCTtab { i8 11, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 11, i8 8 }, %struct.DCTtab { i8 0, i8 10, i8 8 }, %struct.DCTtab { i8 13, i8 1, i8 8 }, %struct.DCTtab { i8 12, i8 1, i8 8 }, %struct.DCTtab { i8 3, i8 2, i8 8 }, %struct.DCTtab { i8 1, i8 4, i8 8 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 1, i8 3, i8 7 }, %struct.DCTtab { i8 1, i8 3, i8 7 }, %struct.DCTtab { i8 10, i8 1, i8 7 }, %struct.DCTtab { i8 10, i8 1, i8 7 }, %struct.DCTtab { i8 0, i8 8, i8 7 }, %struct.DCTtab { i8 0, i8 8, i8 7 }, %struct.DCTtab { i8 0, i8 9, i8 7 }, %struct.DCTtab { i8 0, i8 9, i8 7 }, %struct.DCTtab { i8 0, i8 12, i8 8 }, %struct.DCTtab { i8 0, i8 13, i8 8 }, %struct.DCTtab { i8 2, i8 3, i8 8 }, %struct.DCTtab { i8 4, i8 2, i8 8 }, %struct.DCTtab { i8 0, i8 14, i8 8 }, %struct.DCTtab { i8 0, i8 15, i8 8 }], align 16
@DCTtab1 = global [8 x %struct.DCTtab] [%struct.DCTtab { i8 16, i8 1, i8 10 }, %struct.DCTtab { i8 5, i8 2, i8 10 }, %struct.DCTtab { i8 0, i8 7, i8 10 }, %struct.DCTtab { i8 2, i8 3, i8 10 }, %struct.DCTtab { i8 1, i8 4, i8 10 }, %struct.DCTtab { i8 15, i8 1, i8 10 }, %struct.DCTtab { i8 14, i8 1, i8 10 }, %struct.DCTtab { i8 4, i8 2, i8 10 }], align 16
@DCTtab1a = global [8 x %struct.DCTtab] [%struct.DCTtab { i8 5, i8 2, i8 9 }, %struct.DCTtab { i8 5, i8 2, i8 9 }, %struct.DCTtab { i8 14, i8 1, i8 9 }, %struct.DCTtab { i8 14, i8 1, i8 9 }, %struct.DCTtab { i8 2, i8 4, i8 10 }, %struct.DCTtab { i8 16, i8 1, i8 10 }, %struct.DCTtab { i8 15, i8 1, i8 9 }, %struct.DCTtab { i8 15, i8 1, i8 9 }], align 16
@DCTtab2 = global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 11, i8 12 }, %struct.DCTtab { i8 8, i8 2, i8 12 }, %struct.DCTtab { i8 4, i8 3, i8 12 }, %struct.DCTtab { i8 0, i8 10, i8 12 }, %struct.DCTtab { i8 2, i8 4, i8 12 }, %struct.DCTtab { i8 7, i8 2, i8 12 }, %struct.DCTtab { i8 21, i8 1, i8 12 }, %struct.DCTtab { i8 20, i8 1, i8 12 }, %struct.DCTtab { i8 0, i8 9, i8 12 }, %struct.DCTtab { i8 19, i8 1, i8 12 }, %struct.DCTtab { i8 18, i8 1, i8 12 }, %struct.DCTtab { i8 1, i8 5, i8 12 }, %struct.DCTtab { i8 3, i8 3, i8 12 }, %struct.DCTtab { i8 0, i8 8, i8 12 }, %struct.DCTtab { i8 6, i8 2, i8 12 }, %struct.DCTtab { i8 17, i8 1, i8 12 }], align 16
@DCTtab3 = global [16 x %struct.DCTtab] [%struct.DCTtab { i8 10, i8 2, i8 13 }, %struct.DCTtab { i8 9, i8 2, i8 13 }, %struct.DCTtab { i8 5, i8 3, i8 13 }, %struct.DCTtab { i8 3, i8 4, i8 13 }, %struct.DCTtab { i8 2, i8 5, i8 13 }, %struct.DCTtab { i8 1, i8 7, i8 13 }, %struct.DCTtab { i8 1, i8 6, i8 13 }, %struct.DCTtab { i8 0, i8 15, i8 13 }, %struct.DCTtab { i8 0, i8 14, i8 13 }, %struct.DCTtab { i8 0, i8 13, i8 13 }, %struct.DCTtab { i8 0, i8 12, i8 13 }, %struct.DCTtab { i8 26, i8 1, i8 13 }, %struct.DCTtab { i8 25, i8 1, i8 13 }, %struct.DCTtab { i8 24, i8 1, i8 13 }, %struct.DCTtab { i8 23, i8 1, i8 13 }, %struct.DCTtab { i8 22, i8 1, i8 13 }], align 16
@DCTtab4 = global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 31, i8 14 }, %struct.DCTtab { i8 0, i8 30, i8 14 }, %struct.DCTtab { i8 0, i8 29, i8 14 }, %struct.DCTtab { i8 0, i8 28, i8 14 }, %struct.DCTtab { i8 0, i8 27, i8 14 }, %struct.DCTtab { i8 0, i8 26, i8 14 }, %struct.DCTtab { i8 0, i8 25, i8 14 }, %struct.DCTtab { i8 0, i8 24, i8 14 }, %struct.DCTtab { i8 0, i8 23, i8 14 }, %struct.DCTtab { i8 0, i8 22, i8 14 }, %struct.DCTtab { i8 0, i8 21, i8 14 }, %struct.DCTtab { i8 0, i8 20, i8 14 }, %struct.DCTtab { i8 0, i8 19, i8 14 }, %struct.DCTtab { i8 0, i8 18, i8 14 }, %struct.DCTtab { i8 0, i8 17, i8 14 }, %struct.DCTtab { i8 0, i8 16, i8 14 }], align 16
@DCTtab5 = global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 40, i8 15 }, %struct.DCTtab { i8 0, i8 39, i8 15 }, %struct.DCTtab { i8 0, i8 38, i8 15 }, %struct.DCTtab { i8 0, i8 37, i8 15 }, %struct.DCTtab { i8 0, i8 36, i8 15 }, %struct.DCTtab { i8 0, i8 35, i8 15 }, %struct.DCTtab { i8 0, i8 34, i8 15 }, %struct.DCTtab { i8 0, i8 33, i8 15 }, %struct.DCTtab { i8 0, i8 32, i8 15 }, %struct.DCTtab { i8 1, i8 14, i8 15 }, %struct.DCTtab { i8 1, i8 13, i8 15 }, %struct.DCTtab { i8 1, i8 12, i8 15 }, %struct.DCTtab { i8 1, i8 11, i8 15 }, %struct.DCTtab { i8 1, i8 10, i8 15 }, %struct.DCTtab { i8 1, i8 9, i8 15 }, %struct.DCTtab { i8 1, i8 8, i8 15 }], align 16
@DCTtab6 = global [16 x %struct.DCTtab] [%struct.DCTtab { i8 1, i8 18, i8 16 }, %struct.DCTtab { i8 1, i8 17, i8 16 }, %struct.DCTtab { i8 1, i8 16, i8 16 }, %struct.DCTtab { i8 1, i8 15, i8 16 }, %struct.DCTtab { i8 6, i8 3, i8 16 }, %struct.DCTtab { i8 16, i8 2, i8 16 }, %struct.DCTtab { i8 15, i8 2, i8 16 }, %struct.DCTtab { i8 14, i8 2, i8 16 }, %struct.DCTtab { i8 13, i8 2, i8 16 }, %struct.DCTtab { i8 12, i8 2, i8 16 }, %struct.DCTtab { i8 11, i8 2, i8 16 }, %struct.DCTtab { i8 31, i8 1, i8 16 }, %struct.DCTtab { i8 30, i8 1, i8 16 }, %struct.DCTtab { i8 29, i8 1, i8 16 }, %struct.DCTtab { i8 28, i8 1, i8 16 }, %struct.DCTtab { i8 27, i8 1, i8 16 }], align 16
@ld = external global %struct.layer_data*, align 8
@picture_coding_type = external global i32, align 4
@.str = private unnamed_addr constant [57 x i8] c"Get_macroblock_type(): unrecognized picture coding type\0A\00", align 1
@MVtab0 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }], align 16
@MVtab1 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 5, i8 6 }, %struct.VLCtab { i8 4, i8 5 }, %struct.VLCtab { i8 4, i8 5 }], align 16
@Quiet_Flag = external global i32, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid motion_vector code (MBA %d, pic %d)\0A\00", align 1
@global_MBA = external global i32, align 4
@global_pic = external global i32, align 4
@Fault_Flag = external global i32, align 4
@MVtab2 = internal global [12 x %struct.VLCtab] [%struct.VLCtab { i8 16, i8 9 }, %struct.VLCtab { i8 15, i8 9 }, %struct.VLCtab { i8 14, i8 9 }, %struct.VLCtab { i8 13, i8 9 }, %struct.VLCtab { i8 12, i8 9 }, %struct.VLCtab { i8 11, i8 9 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }], align 16
@CBPtab0 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 62, i8 5 }, %struct.VLCtab { i8 2, i8 5 }, %struct.VLCtab { i8 61, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 56, i8 5 }, %struct.VLCtab { i8 52, i8 5 }, %struct.VLCtab { i8 44, i8 5 }, %struct.VLCtab { i8 28, i8 5 }, %struct.VLCtab { i8 40, i8 5 }, %struct.VLCtab { i8 20, i8 5 }, %struct.VLCtab { i8 48, i8 5 }, %struct.VLCtab { i8 12, i8 5 }, %struct.VLCtab { i8 32, i8 4 }, %struct.VLCtab { i8 32, i8 4 }, %struct.VLCtab { i8 16, i8 4 }, %struct.VLCtab { i8 16, i8 4 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }], align 16
@CBPtab1 = internal global [64 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 54, i8 8 }, %struct.VLCtab { i8 46, i8 8 }, %struct.VLCtab { i8 30, i8 8 }, %struct.VLCtab { i8 57, i8 8 }, %struct.VLCtab { i8 53, i8 8 }, %struct.VLCtab { i8 45, i8 8 }, %struct.VLCtab { i8 29, i8 8 }, %struct.VLCtab { i8 38, i8 8 }, %struct.VLCtab { i8 26, i8 8 }, %struct.VLCtab { i8 37, i8 8 }, %struct.VLCtab { i8 25, i8 8 }, %struct.VLCtab { i8 43, i8 8 }, %struct.VLCtab { i8 23, i8 8 }, %struct.VLCtab { i8 51, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 42, i8 8 }, %struct.VLCtab { i8 22, i8 8 }, %struct.VLCtab { i8 50, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 41, i8 8 }, %struct.VLCtab { i8 21, i8 8 }, %struct.VLCtab { i8 49, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 35, i8 8 }, %struct.VLCtab { i8 19, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 7, i8 8 }, %struct.VLCtab { i8 34, i8 7 }, %struct.VLCtab { i8 34, i8 7 }, %struct.VLCtab { i8 18, i8 7 }, %struct.VLCtab { i8 18, i8 7 }, %struct.VLCtab { i8 10, i8 7 }, %struct.VLCtab { i8 10, i8 7 }, %struct.VLCtab { i8 6, i8 7 }, %struct.VLCtab { i8 6, i8 7 }, %struct.VLCtab { i8 33, i8 7 }, %struct.VLCtab { i8 33, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 5, i8 7 }, %struct.VLCtab { i8 5, i8 7 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }], align 16
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid coded_block_pattern code\0A\00", align 1
@CBPtab2 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 0, i8 9 }, %struct.VLCtab { i8 39, i8 9 }, %struct.VLCtab { i8 27, i8 9 }, %struct.VLCtab { i8 59, i8 9 }, %struct.VLCtab { i8 55, i8 9 }, %struct.VLCtab { i8 47, i8 9 }, %struct.VLCtab { i8 31, i8 9 }], align 16
@.str.3 = private unnamed_addr constant [43 x i8] c"Invalid macroblock_address_increment code\0A\00", align 1
@MBAtab1 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 7, i8 5 }, %struct.VLCtab { i8 6, i8 5 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }], align 16
@MBAtab2 = internal global [104 x %struct.VLCtab] [%struct.VLCtab { i8 33, i8 11 }, %struct.VLCtab { i8 32, i8 11 }, %struct.VLCtab { i8 31, i8 11 }, %struct.VLCtab { i8 30, i8 11 }, %struct.VLCtab { i8 29, i8 11 }, %struct.VLCtab { i8 28, i8 11 }, %struct.VLCtab { i8 27, i8 11 }, %struct.VLCtab { i8 26, i8 11 }, %struct.VLCtab { i8 25, i8 11 }, %struct.VLCtab { i8 24, i8 11 }, %struct.VLCtab { i8 23, i8 11 }, %struct.VLCtab { i8 22, i8 11 }, %struct.VLCtab { i8 21, i8 10 }, %struct.VLCtab { i8 21, i8 10 }, %struct.VLCtab { i8 20, i8 10 }, %struct.VLCtab { i8 20, i8 10 }, %struct.VLCtab { i8 19, i8 10 }, %struct.VLCtab { i8 19, i8 10 }, %struct.VLCtab { i8 18, i8 10 }, %struct.VLCtab { i8 18, i8 10 }, %struct.VLCtab { i8 17, i8 10 }, %struct.VLCtab { i8 17, i8 10 }, %struct.VLCtab { i8 16, i8 10 }, %struct.VLCtab { i8 16, i8 10 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }], align 16
@DClumtab0 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 6, i8 5 }, %struct.VLCtab { i8 -1, i8 0 }], align 16
@DClumtab1 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 10, i8 9 }, %struct.VLCtab { i8 11, i8 9 }], align 16
@DCchromtab0 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 5, i8 5 }, %struct.VLCtab { i8 -1, i8 0 }], align 16
@DCchromtab1 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 9, i8 9 }, %struct.VLCtab { i8 9, i8 9 }, %struct.VLCtab { i8 10, i8 10 }, %struct.VLCtab { i8 11, i8 10 }], align 16
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid macroblock_type code\0A\00", align 1
@PMBtab0 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 3 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }], align 16
@PMBtab1 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 17, i8 6 }, %struct.VLCtab { i8 18, i8 5 }, %struct.VLCtab { i8 18, i8 5 }, %struct.VLCtab { i8 26, i8 5 }, %struct.VLCtab { i8 26, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 1, i8 5 }], align 16
@BMBtab0 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 10, i8 4 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }], align 16
@BMBtab1 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 17, i8 6 }, %struct.VLCtab { i8 22, i8 6 }, %struct.VLCtab { i8 26, i8 6 }, %struct.VLCtab { i8 30, i8 5 }, %struct.VLCtab { i8 30, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 1, i8 5 }], align 16
@spIMBtab = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 64, i8 4 }, %struct.VLCtab { i8 17, i8 4 }, %struct.VLCtab { i8 1, i8 4 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }], align 16
@spPMBtab0 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 40, i8 4 }, %struct.VLCtab { i8 26, i8 3 }, %struct.VLCtab { i8 26, i8 3 }, %struct.VLCtab { i8 42, i8 3 }, %struct.VLCtab { i8 42, i8 3 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }], align 16
@spPMBtab1 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 82, i8 7 }, %struct.VLCtab { i8 64, i8 7 }, %struct.VLCtab { i8 2, i8 7 }, %struct.VLCtab { i8 66, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 1, i8 7 }, %struct.VLCtab { i8 18, i8 6 }, %struct.VLCtab { i8 18, i8 6 }, %struct.VLCtab { i8 50, i8 6 }, %struct.VLCtab { i8 50, i8 6 }, %struct.VLCtab { i8 32, i8 6 }, %struct.VLCtab { i8 32, i8 6 }, %struct.VLCtab { i8 34, i8 6 }, %struct.VLCtab { i8 34, i8 6 }], align 16
@spBMBtab0 = internal global [14 x %struct.VLCtab] [%struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 10, i8 4 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }], align 16
@spBMBtab1 = internal global [12 x %struct.VLCtab] [%struct.VLCtab { i8 26, i8 7 }, %struct.VLCtab { i8 22, i8 7 }, %struct.VLCtab { i8 1, i8 7 }, %struct.VLCtab { i8 30, i8 7 }, %struct.VLCtab { i8 40, i8 6 }, %struct.VLCtab { i8 40, i8 6 }, %struct.VLCtab { i8 42, i8 6 }, %struct.VLCtab { i8 42, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 38, i8 6 }, %struct.VLCtab { i8 38, i8 6 }], align 16
@spBMBtab2 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 17, i8 8 }, %struct.VLCtab { i8 17, i8 8 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 54, i8 9 }, %struct.VLCtab { i8 82, i8 9 }, %struct.VLCtab { i8 64, i8 9 }, %struct.VLCtab { i8 66, i8 9 }], align 16
@SNRMBtab = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 18, i8 2 }, %struct.VLCtab { i8 18, i8 2 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }], align 16

; Function Attrs: nounwind uwtable
define i32 @Get_macroblock_type() #0 {
entry:
  %macroblock_type = alloca i32, align 4
  store i32 0, i32* %macroblock_type, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %scalable_mode = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 17
  %1 = load i32, i32* %scalable_mode, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @Get_SNR_macroblock_type()
  store i32 %call, i32* %macroblock_type, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @picture_coding_type, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.else
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %pict_scal = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 20
  %4 = load i32, i32* %pict_scal, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %call1 = call i32 @Get_I_Spatial_macroblock_type()
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %call2 = call i32 @Get_I_macroblock_type()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, i32* %macroblock_type, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.else
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %pict_scal4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 20
  %6 = load i32, i32* %pict_scal4, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %sw.bb.3
  %call7 = call i32 @Get_P_Spatial_macroblock_type()
  br label %cond.end.10

cond.false.8:                                     ; preds = %sw.bb.3
  %call9 = call i32 @Get_P_macroblock_type()
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.6
  %cond11 = phi i32 [ %call7, %cond.true.6 ], [ %call9, %cond.false.8 ]
  store i32 %cond11, i32* %macroblock_type, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.else
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %pict_scal13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 20
  %8 = load i32, i32* %pict_scal13, align 4
  %tobool14 = icmp ne i32 %8, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %sw.bb.12
  %call16 = call i32 @Get_B_Spatial_macroblock_type()
  br label %cond.end.19

cond.false.17:                                    ; preds = %sw.bb.12
  %call18 = call i32 @Get_B_macroblock_type()
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.15
  %cond20 = phi i32 [ %call16, %cond.true.15 ], [ %call18, %cond.false.17 ]
  store i32 %cond20, i32* %macroblock_type, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.else
  %call22 = call i32 @Get_D_macroblock_type()
  store i32 %call22, i32* %macroblock_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %cond.end.19, %cond.end.10, %cond.end
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %9 = load i32, i32* %macroblock_type, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @Get_SNR_macroblock_type() #0 {
entry:
  %retval = alloca i32, align 4
  %code = alloca i32, align 4
  %call = call i32 @Show_Bits(i32 3)
  store i32 %call, i32* %code, align 4
  %0 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @SNRMBtab, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx, i32 0, i32 1
  %3 = load i8, i8* %len, align 1
  %conv = sext i8 %3 to i32
  call void @Flush_Buffer(i32 %conv)
  %4 = load i32, i32* %code, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @SNRMBtab, i32 0, i64 %idxprom4
  %val = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx5, i32 0, i32 0
  %5 = load i8, i8* %val, align 1
  %conv6 = sext i8 %5 to i32
  store i32 %conv6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.end
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @Get_I_Spatial_macroblock_type() #0 {
entry:
  %retval = alloca i32, align 4
  %code = alloca i32, align 4
  %call = call i32 @Show_Bits(i32 4)
  store i32 %call, i32* %code, align 4
  %0 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spIMBtab, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx, i32 0, i32 1
  %3 = load i8, i8* %len, align 1
  %conv = sext i8 %3 to i32
  call void @Flush_Buffer(i32 %conv)
  %4 = load i32, i32* %code, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spIMBtab, i32 0, i64 %idxprom4
  %val = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx5, i32 0, i32 0
  %5 = load i8, i8* %val, align 1
  %conv6 = sext i8 %5 to i32
  store i32 %conv6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.end
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @Get_I_macroblock_type() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @Get_Bits1()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @Get_Bits1()
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %0 = load i32, i32* @Quiet_Flag, align 4
  %tobool4 = icmp ne i32 %0, 0
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.3
  store i32 1, i32* @Fault_Flag, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  store i32 17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @Get_P_Spatial_macroblock_type() #0 {
entry:
  %retval = alloca i32, align 4
  %code = alloca i32, align 4
  %call = call i32 @Show_Bits(i32 7)
  store i32 %call, i32* %code, align 4
  %0 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %2 = load i32, i32* %code, align 4
  %cmp4 = icmp sge i32 %2, 16
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end.3
  %3 = load i32, i32* %code, align 4
  %shr = ashr i32 %3, 3
  store i32 %shr, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab0, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx, i32 0, i32 1
  %5 = load i8, i8* %len, align 1
  %conv = sext i8 %5 to i32
  call void @Flush_Buffer(i32 %conv)
  %6 = load i32, i32* %code, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab0, i32 0, i64 %idxprom6
  %val = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx7, i32 0, i32 0
  %7 = load i8, i8* %val, align 1
  %conv8 = sext i8 %7 to i32
  store i32 %conv8, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.3
  %8 = load i32, i32* %code, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab1, i32 0, i64 %idxprom10
  %len12 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx11, i32 0, i32 1
  %9 = load i8, i8* %len12, align 1
  %conv13 = sext i8 %9 to i32
  call void @Flush_Buffer(i32 %conv13)
  %10 = load i32, i32* %code, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab1, i32 0, i64 %idxprom14
  %val16 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx15, i32 0, i32 0
  %11 = load i8, i8* %val16, align 1
  %conv17 = sext i8 %11 to i32
  store i32 %conv17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.5, %if.end
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @Get_P_macroblock_type() #0 {
entry:
  %retval = alloca i32, align 4
  %code = alloca i32, align 4
  %call = call i32 @Show_Bits(i32 6)
  store i32 %call, i32* %code, align 4
  %cmp = icmp sge i32 %call, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %code, align 4
  %shr = ashr i32 %0, 3
  store i32 %shr, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab0, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx, i32 0, i32 1
  %2 = load i8, i8* %len, align 1
  %conv = sext i8 %2 to i32
  call void @Flush_Buffer(i32 %conv)
  %3 = load i32, i32* %code, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab0, i32 0, i64 %idxprom1
  %val = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx2, i32 0, i32 0
  %4 = load i8, i8* %val, align 1
  %conv3 = sext i8 %4 to i32
  store i32 %conv3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %code, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %6 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.then.6
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.6
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %7 = load i32, i32* %code, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab1, i32 0, i64 %idxprom11
  %len13 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx12, i32 0, i32 1
  %8 = load i8, i8* %len13, align 1
  %conv14 = sext i8 %8 to i32
  call void @Flush_Buffer(i32 %conv14)
  %9 = load i32, i32* %code, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab1, i32 0, i64 %idxprom15
  %val17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx16, i32 0, i32 0
  %10 = load i8, i8* %val17, align 1
  %conv18 = sext i8 %10 to i32
  store i32 %conv18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end.9, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @Get_B_Spatial_macroblock_type() #0 {
entry:
  %retval = alloca i32, align 4
  %code = alloca i32, align 4
  %p = alloca %struct.VLCtab*, align 8
  %call = call i32 @Show_Bits(i32 9)
  store i32 %call, i32* %code, align 4
  %0 = load i32, i32* %code, align 4
  %cmp = icmp sge i32 %0, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %code, align 4
  %shr = ashr i32 %1, 5
  %sub = sub nsw i32 %shr, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [14 x %struct.VLCtab], [14 x %struct.VLCtab]* @spBMBtab0, i32 0, i64 %idxprom
  store %struct.VLCtab* %arrayidx, %struct.VLCtab** %p, align 8
  br label %if.end.18

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  %cmp1 = icmp sge i32 %2, 16
  br i1 %cmp1, label %if.then.2, label %if.else.7

if.then.2:                                        ; preds = %if.else
  %3 = load i32, i32* %code, align 4
  %shr3 = ashr i32 %3, 2
  %sub4 = sub nsw i32 %shr3, 4
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @spBMBtab1, i32 0, i64 %idxprom5
  store %struct.VLCtab* %arrayidx6, %struct.VLCtab** %p, align 8
  br label %if.end.17

if.else.7:                                        ; preds = %if.else
  %4 = load i32, i32* %code, align 4
  %cmp8 = icmp sge i32 %4, 8
  br i1 %cmp8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else.7
  %5 = load i32, i32* %code, align 4
  %sub10 = sub nsw i32 %5, 8
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @spBMBtab2, i32 0, i64 %idxprom11
  store %struct.VLCtab* %arrayidx12, %struct.VLCtab** %p, align 8
  br label %if.end.16

if.else.13:                                       ; preds = %if.else.7
  %6 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then.14

if.then.14:                                       ; preds = %if.else.13
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.else.13
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.2
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %7 = load %struct.VLCtab*, %struct.VLCtab** %p, align 8
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %7, i32 0, i32 1
  %8 = load i8, i8* %len, align 1
  %conv = sext i8 %8 to i32
  call void @Flush_Buffer(i32 %conv)
  %9 = load %struct.VLCtab*, %struct.VLCtab** %p, align 8
  %val = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %9, i32 0, i32 0
  %10 = load i8, i8* %val, align 1
  %conv19 = sext i8 %10 to i32
  store i32 %conv19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.end
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @Get_B_macroblock_type() #0 {
entry:
  %retval = alloca i32, align 4
  %code = alloca i32, align 4
  %call = call i32 @Show_Bits(i32 6)
  store i32 %call, i32* %code, align 4
  %cmp = icmp sge i32 %call, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %code, align 4
  %shr = ashr i32 %0, 2
  store i32 %shr, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @BMBtab0, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx, i32 0, i32 1
  %2 = load i8, i8* %len, align 1
  %conv = sext i8 %2 to i32
  call void @Flush_Buffer(i32 %conv)
  %3 = load i32, i32* %code, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @BMBtab0, i32 0, i64 %idxprom1
  %val = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx2, i32 0, i32 0
  %4 = load i8, i8* %val, align 1
  %conv3 = sext i8 %4 to i32
  store i32 %conv3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %code, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %6 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.then.6
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.6
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %7 = load i32, i32* %code, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @BMBtab1, i32 0, i64 %idxprom11
  %len13 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx12, i32 0, i32 1
  %8 = load i8, i8* %len13, align 1
  %conv14 = sext i8 %8 to i32
  call void @Flush_Buffer(i32 %conv14)
  %9 = load i32, i32* %code, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @BMBtab1, i32 0, i64 %idxprom15
  %val17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx16, i32 0, i32 0
  %10 = load i8, i8* %val17, align 1
  %conv18 = sext i8 %10 to i32
  store i32 %conv18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end.9, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @Get_D_macroblock_type() #0 {
entry:
  %call = call i32 @Get_Bits1()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @Quiet_Flag, align 4
  %tobool1 = icmp ne i32 %0, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 1, i32* @Fault_Flag, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret i32 1
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @Get_motion_code() #0 {
entry:
  %retval = alloca i32, align 4
  %code = alloca i32, align 4
  %call = call i32 @Get_Bits1()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @Show_Bits(i32 9)
  store i32 %call1, i32* %code, align 4
  %cmp = icmp sge i32 %call1, 64
  br i1 %cmp, label %if.then.2, label %if.end.12

if.then.2:                                        ; preds = %if.end
  %0 = load i32, i32* %code, align 4
  %shr = ashr i32 %0, 6
  store i32 %shr, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx, i32 0, i32 1
  %2 = load i8, i8* %len, align 1
  %conv = sext i8 %2 to i32
  call void @Flush_Buffer(i32 %conv)
  %call3 = call i32 @Get_Bits1()
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %3 = load i32, i32* %code, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i32 0, i64 %idxprom5
  %val = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx6, i32 0, i32 0
  %4 = load i8, i8* %val, align 1
  %conv7 = sext i8 %4 to i32
  %sub = sub nsw i32 0, %conv7
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %5 = load i32, i32* %code, align 4
  %idxprom8 = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i32 0, i64 %idxprom8
  %val10 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx9, i32 0, i32 0
  %6 = load i8, i8* %val10, align 1
  %conv11 = sext i8 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv11, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %7 = load i32, i32* %code, align 4
  %cmp13 = icmp sge i32 %7, 24
  br i1 %cmp13, label %if.then.15, label %if.end.36

if.then.15:                                       ; preds = %if.end.12
  %8 = load i32, i32* %code, align 4
  %shr16 = ashr i32 %8, 3
  store i32 %shr16, i32* %code, align 4
  %9 = load i32, i32* %code, align 4
  %idxprom17 = sext i32 %9 to i64
  %arrayidx18 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i32 0, i64 %idxprom17
  %len19 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx18, i32 0, i32 1
  %10 = load i8, i8* %len19, align 1
  %conv20 = sext i8 %10 to i32
  call void @Flush_Buffer(i32 %conv20)
  %call21 = call i32 @Get_Bits1()
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.29

cond.true.23:                                     ; preds = %if.then.15
  %11 = load i32, i32* %code, align 4
  %idxprom24 = sext i32 %11 to i64
  %arrayidx25 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i32 0, i64 %idxprom24
  %val26 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx25, i32 0, i32 0
  %12 = load i8, i8* %val26, align 1
  %conv27 = sext i8 %12 to i32
  %sub28 = sub nsw i32 0, %conv27
  br label %cond.end.34

cond.false.29:                                    ; preds = %if.then.15
  %13 = load i32, i32* %code, align 4
  %idxprom30 = sext i32 %13 to i64
  %arrayidx31 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i32 0, i64 %idxprom30
  %val32 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx31, i32 0, i32 0
  %14 = load i8, i8* %val32, align 1
  %conv33 = sext i8 %14 to i32
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.29, %cond.true.23
  %cond35 = phi i32 [ %sub28, %cond.true.23 ], [ %conv33, %cond.false.29 ]
  store i32 %cond35, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.12
  %15 = load i32, i32* %code, align 4
  %sub37 = sub nsw i32 %15, 12
  store i32 %sub37, i32* %code, align 4
  %cmp38 = icmp slt i32 %sub37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.end.36
  %16 = load i32, i32* @Quiet_Flag, align 4
  %tobool41 = icmp ne i32 %16, 0
  br i1 %tobool41, label %if.end.44, label %if.then.42

if.then.42:                                       ; preds = %if.then.40
  %17 = load i32, i32* @global_MBA, align 4
  %18 = load i32, i32* @global_pic, align 4
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 %17, i32 %18)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.then.40
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.36
  %19 = load i32, i32* %code, align 4
  %idxprom46 = sext i32 %19 to i64
  %arrayidx47 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i32 0, i64 %idxprom46
  %len48 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx47, i32 0, i32 1
  %20 = load i8, i8* %len48, align 1
  %conv49 = sext i8 %20 to i32
  call void @Flush_Buffer(i32 %conv49)
  %call50 = call i32 @Get_Bits1()
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %cond.true.52, label %cond.false.58

cond.true.52:                                     ; preds = %if.end.45
  %21 = load i32, i32* %code, align 4
  %idxprom53 = sext i32 %21 to i64
  %arrayidx54 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i32 0, i64 %idxprom53
  %val55 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx54, i32 0, i32 0
  %22 = load i8, i8* %val55, align 1
  %conv56 = sext i8 %22 to i32
  %sub57 = sub nsw i32 0, %conv56
  br label %cond.end.63

cond.false.58:                                    ; preds = %if.end.45
  %23 = load i32, i32* %code, align 4
  %idxprom59 = sext i32 %23 to i64
  %arrayidx60 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i32 0, i64 %idxprom59
  %val61 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx60, i32 0, i32 0
  %24 = load i8, i8* %val61, align 1
  %conv62 = sext i8 %24 to i32
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.58, %cond.true.52
  %cond64 = phi i32 [ %sub57, %cond.true.52 ], [ %conv62, %cond.false.58 ]
  store i32 %cond64, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.63, %if.end.44, %cond.end.34, %cond.end, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @Get_Bits1() #1

declare i32 @Show_Bits(i32) #1

declare void @Flush_Buffer(i32) #1

; Function Attrs: nounwind uwtable
define i32 @Get_dmvector() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @Get_Bits(i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @Get_Bits(i32 1)
  %tobool2 = icmp ne i32 %call1, 0
  %cond = select i1 %tobool2, i32 -1, i32 1
  store i32 %cond, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, i32* %retval
  ret i32 %0
}

declare i32 @Get_Bits(i32) #1

; Function Attrs: nounwind uwtable
define i32 @Get_coded_block_pattern() #0 {
entry:
  %retval = alloca i32, align 4
  %code = alloca i32, align 4
  %call = call i32 @Show_Bits(i32 9)
  store i32 %call, i32* %code, align 4
  %cmp = icmp sge i32 %call, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %code, align 4
  %shr = ashr i32 %0, 4
  store i32 %shr, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @CBPtab0, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx, i32 0, i32 1
  %2 = load i8, i8* %len, align 1
  %conv = sext i8 %2 to i32
  call void @Flush_Buffer(i32 %conv)
  %3 = load i32, i32* %code, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @CBPtab0, i32 0, i64 %idxprom1
  %val = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx2, i32 0, i32 0
  %4 = load i8, i8* %val, align 1
  %conv3 = sext i8 %4 to i32
  store i32 %conv3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %code, align 4
  %cmp4 = icmp sge i32 %5, 8
  br i1 %cmp4, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.end
  %6 = load i32, i32* %code, align 4
  %shr7 = ashr i32 %6, 1
  store i32 %shr7, i32* %code, align 4
  %7 = load i32, i32* %code, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [64 x %struct.VLCtab], [64 x %struct.VLCtab]* @CBPtab1, i32 0, i64 %idxprom8
  %len10 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx9, i32 0, i32 1
  %8 = load i8, i8* %len10, align 1
  %conv11 = sext i8 %8 to i32
  call void @Flush_Buffer(i32 %conv11)
  %9 = load i32, i32* %code, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [64 x %struct.VLCtab], [64 x %struct.VLCtab]* @CBPtab1, i32 0, i64 %idxprom12
  %val14 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx13, i32 0, i32 0
  %10 = load i8, i8* %val14, align 1
  %conv15 = sext i8 %10 to i32
  store i32 %conv15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4
  %cmp17 = icmp slt i32 %11, 1
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.16
  %12 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %if.then.19
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.19
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.16
  %13 = load i32, i32* %code, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @CBPtab2, i32 0, i64 %idxprom24
  %len26 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx25, i32 0, i32 1
  %14 = load i8, i8* %len26, align 1
  %conv27 = sext i8 %14 to i32
  call void @Flush_Buffer(i32 %conv27)
  %15 = load i32, i32* %code, align 4
  %idxprom28 = sext i32 %15 to i64
  %arrayidx29 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @CBPtab2, i32 0, i64 %idxprom28
  %val30 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx29, i32 0, i32 0
  %16 = load i8, i8* %val30, align 1
  %conv31 = sext i8 %16 to i32
  store i32 %conv31, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.end.22, %if.then.6, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @Get_macroblock_address_increment() #0 {
entry:
  %retval = alloca i32, align 4
  %code = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 0, i32* %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %entry
  %call = call i32 @Show_Bits(i32 11)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 24
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %code, align 4
  %cmp1 = icmp ne i32 %0, 15
  br i1 %cmp1, label %if.then, label %if.else.7

if.then:                                          ; preds = %while.body
  %1 = load i32, i32* %code, align 4
  %cmp2 = icmp eq i32 %1, 8
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %2 = load i32, i32* %val, align 4
  %add = add nsw i32 %2, 33
  store i32 %add, i32* %val, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.then
  %3 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  store i32 1, i32* @Fault_Flag, align 4
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.3
  br label %if.end.8

if.else.7:                                        ; preds = %while.body
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.end.6
  call void @Flush_Buffer(i32 11)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %code, align 4
  %cmp9 = icmp sge i32 %4, 1024
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %while.end
  call void @Flush_Buffer(i32 1)
  %5 = load i32, i32* %val, align 4
  %add11 = add nsw i32 %5, 1
  store i32 %add11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %while.end
  %6 = load i32, i32* %code, align 4
  %cmp13 = icmp sge i32 %6, 128
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.12
  %7 = load i32, i32* %code, align 4
  %shr = ashr i32 %7, 6
  store i32 %shr, i32* %code, align 4
  %8 = load i32, i32* %code, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @MBAtab1, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx, i32 0, i32 1
  %9 = load i8, i8* %len, align 1
  %conv = sext i8 %9 to i32
  call void @Flush_Buffer(i32 %conv)
  %10 = load i32, i32* %val, align 4
  %11 = load i32, i32* %code, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @MBAtab1, i32 0, i64 %idxprom15
  %val17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx16, i32 0, i32 0
  %12 = load i8, i8* %val17, align 1
  %conv18 = sext i8 %12 to i32
  %add19 = add nsw i32 %10, %conv18
  store i32 %add19, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.12
  %13 = load i32, i32* %code, align 4
  %sub = sub nsw i32 %13, 24
  store i32 %sub, i32* %code, align 4
  %14 = load i32, i32* %code, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [104 x %struct.VLCtab], [104 x %struct.VLCtab]* @MBAtab2, i32 0, i64 %idxprom21
  %len23 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx22, i32 0, i32 1
  %15 = load i8, i8* %len23, align 1
  %conv24 = sext i8 %15 to i32
  call void @Flush_Buffer(i32 %conv24)
  %16 = load i32, i32* %val, align 4
  %17 = load i32, i32* %code, align 4
  %idxprom25 = sext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds [104 x %struct.VLCtab], [104 x %struct.VLCtab]* @MBAtab2, i32 0, i64 %idxprom25
  %val27 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx26, i32 0, i32 0
  %18 = load i8, i8* %val27, align 1
  %conv28 = sext i8 %18 to i32
  %add29 = add nsw i32 %16, %conv28
  store i32 %add29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.14, %if.then.10, %if.end
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @Get_Luma_DC_dct_diff() #0 {
entry:
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  %dct_diff = alloca i32, align 4
  %call = call i32 @Show_Bits(i32 5)
  store i32 %call, i32* %code, align 4
  %0 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %0, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %code, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DClumtab0, i32 0, i64 %idxprom
  %val = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx, i32 0, i32 0
  %2 = load i8, i8* %val, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %size, align 4
  %3 = load i32, i32* %code, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DClumtab0, i32 0, i64 %idxprom1
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx2, i32 0, i32 1
  %4 = load i8, i8* %len, align 1
  %conv3 = sext i8 %4 to i32
  call void @Flush_Buffer(i32 %conv3)
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call i32 @Show_Bits(i32 9)
  %sub = sub i32 %call4, 496
  store i32 %sub, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @DClumtab1, i32 0, i64 %idxprom5
  %val7 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx6, i32 0, i32 0
  %6 = load i8, i8* %val7, align 1
  %conv8 = sext i8 %6 to i32
  store i32 %conv8, i32* %size, align 4
  %7 = load i32, i32* %code, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @DClumtab1, i32 0, i64 %idxprom9
  %len11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx10, i32 0, i32 1
  %8 = load i8, i8* %len11, align 1
  %conv12 = sext i8 %8 to i32
  call void @Flush_Buffer(i32 %conv12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %size, align 4
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end
  store i32 0, i32* %dct_diff, align 4
  br label %if.end.26

if.else.16:                                       ; preds = %if.end
  %10 = load i32, i32* %size, align 4
  %call17 = call i32 @Get_Bits(i32 %10)
  store i32 %call17, i32* %dct_diff, align 4
  %11 = load i32, i32* %dct_diff, align 4
  %12 = load i32, i32* %size, align 4
  %sub18 = sub nsw i32 %12, 1
  %shl = shl i32 1, %sub18
  %and = and i32 %11, %shl
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.else.16
  %13 = load i32, i32* %size, align 4
  %shl22 = shl i32 1, %13
  %sub23 = sub nsw i32 %shl22, 1
  %14 = load i32, i32* %dct_diff, align 4
  %sub24 = sub nsw i32 %14, %sub23
  store i32 %sub24, i32* %dct_diff, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.else.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.15
  %15 = load i32, i32* %dct_diff, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @Get_Chroma_DC_dct_diff() #0 {
entry:
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  %dct_diff = alloca i32, align 4
  %call = call i32 @Show_Bits(i32 5)
  store i32 %call, i32* %code, align 4
  %0 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %0, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %code, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab0, i32 0, i64 %idxprom
  %val = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx, i32 0, i32 0
  %2 = load i8, i8* %val, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %size, align 4
  %3 = load i32, i32* %code, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab0, i32 0, i64 %idxprom1
  %len = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx2, i32 0, i32 1
  %4 = load i8, i8* %len, align 1
  %conv3 = sext i8 %4 to i32
  call void @Flush_Buffer(i32 %conv3)
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call i32 @Show_Bits(i32 10)
  %sub = sub i32 %call4, 992
  store i32 %sub, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab1, i32 0, i64 %idxprom5
  %val7 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx6, i32 0, i32 0
  %6 = load i8, i8* %val7, align 1
  %conv8 = sext i8 %6 to i32
  store i32 %conv8, i32* %size, align 4
  %7 = load i32, i32* %code, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab1, i32 0, i64 %idxprom9
  %len11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %arrayidx10, i32 0, i32 1
  %8 = load i8, i8* %len11, align 1
  %conv12 = sext i8 %8 to i32
  call void @Flush_Buffer(i32 %conv12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %size, align 4
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end
  store i32 0, i32* %dct_diff, align 4
  br label %if.end.26

if.else.16:                                       ; preds = %if.end
  %10 = load i32, i32* %size, align 4
  %call17 = call i32 @Get_Bits(i32 %10)
  store i32 %call17, i32* %dct_diff, align 4
  %11 = load i32, i32* %dct_diff, align 4
  %12 = load i32, i32* %size, align 4
  %sub18 = sub nsw i32 %12, 1
  %shl = shl i32 1, %sub18
  %and = and i32 %11, %shl
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.else.16
  %13 = load i32, i32* %size, align 4
  %shl22 = shl i32 1, %13
  %sub23 = sub nsw i32 %shl22, 1
  %14 = load i32, i32* %dct_diff, align 4
  %sub24 = sub nsw i32 %14, %sub23
  store i32 %sub24, i32* %dct_diff, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.else.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.15
  %15 = load i32, i32* %dct_diff, align 4
  ret i32 %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
