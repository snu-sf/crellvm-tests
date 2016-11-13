; ModuleID = './jbig2_mmr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmr_table_node = type { i16, i16 }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct.Jbig2GenericRegionParams = type { i32, i32, i32, i32, [8 x i8] }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct.Jbig2MmrCtx = type { i32, i32, i8*, i64, i32, i32, i32 }

@jbig2_mmr_white_decode = constant [304 x %struct.mmr_table_node] [%struct.mmr_table_node { i16 256, i16 12 }, %struct.mmr_table_node { i16 272, i16 12 }, %struct.mmr_table_node { i16 29, i16 8 }, %struct.mmr_table_node { i16 30, i16 8 }, %struct.mmr_table_node { i16 45, i16 8 }, %struct.mmr_table_node { i16 46, i16 8 }, %struct.mmr_table_node { i16 22, i16 7 }, %struct.mmr_table_node { i16 22, i16 7 }, %struct.mmr_table_node { i16 23, i16 7 }, %struct.mmr_table_node { i16 23, i16 7 }, %struct.mmr_table_node { i16 47, i16 8 }, %struct.mmr_table_node { i16 48, i16 8 }, %struct.mmr_table_node { i16 13, i16 6 }, %struct.mmr_table_node { i16 13, i16 6 }, %struct.mmr_table_node { i16 13, i16 6 }, %struct.mmr_table_node { i16 13, i16 6 }, %struct.mmr_table_node { i16 20, i16 7 }, %struct.mmr_table_node { i16 20, i16 7 }, %struct.mmr_table_node { i16 33, i16 8 }, %struct.mmr_table_node { i16 34, i16 8 }, %struct.mmr_table_node { i16 35, i16 8 }, %struct.mmr_table_node { i16 36, i16 8 }, %struct.mmr_table_node { i16 37, i16 8 }, %struct.mmr_table_node { i16 38, i16 8 }, %struct.mmr_table_node { i16 19, i16 7 }, %struct.mmr_table_node { i16 19, i16 7 }, %struct.mmr_table_node { i16 31, i16 8 }, %struct.mmr_table_node { i16 32, i16 8 }, %struct.mmr_table_node { i16 1, i16 6 }, %struct.mmr_table_node { i16 1, i16 6 }, %struct.mmr_table_node { i16 1, i16 6 }, %struct.mmr_table_node { i16 1, i16 6 }, %struct.mmr_table_node { i16 12, i16 6 }, %struct.mmr_table_node { i16 12, i16 6 }, %struct.mmr_table_node { i16 12, i16 6 }, %struct.mmr_table_node { i16 12, i16 6 }, %struct.mmr_table_node { i16 53, i16 8 }, %struct.mmr_table_node { i16 54, i16 8 }, %struct.mmr_table_node { i16 26, i16 7 }, %struct.mmr_table_node { i16 26, i16 7 }, %struct.mmr_table_node { i16 39, i16 8 }, %struct.mmr_table_node { i16 40, i16 8 }, %struct.mmr_table_node { i16 41, i16 8 }, %struct.mmr_table_node { i16 42, i16 8 }, %struct.mmr_table_node { i16 43, i16 8 }, %struct.mmr_table_node { i16 44, i16 8 }, %struct.mmr_table_node { i16 21, i16 7 }, %struct.mmr_table_node { i16 21, i16 7 }, %struct.mmr_table_node { i16 28, i16 7 }, %struct.mmr_table_node { i16 28, i16 7 }, %struct.mmr_table_node { i16 61, i16 8 }, %struct.mmr_table_node { i16 62, i16 8 }, %struct.mmr_table_node { i16 63, i16 8 }, %struct.mmr_table_node { i16 0, i16 8 }, %struct.mmr_table_node { i16 320, i16 8 }, %struct.mmr_table_node { i16 384, i16 8 }, %struct.mmr_table_node { i16 10, i16 5 }, %struct.mmr_table_node { i16 10, i16 5 }, %struct.mmr_table_node { i16 10, i16 5 }, %struct.mmr_table_node { i16 10, i16 5 }, %struct.mmr_table_node { i16 10, i16 5 }, %struct.mmr_table_node { i16 10, i16 5 }, %struct.mmr_table_node { i16 10, i16 5 }, %struct.mmr_table_node { i16 10, i16 5 }, %struct.mmr_table_node { i16 11, i16 5 }, %struct.mmr_table_node { i16 11, i16 5 }, %struct.mmr_table_node { i16 11, i16 5 }, %struct.mmr_table_node { i16 11, i16 5 }, %struct.mmr_table_node { i16 11, i16 5 }, %struct.mmr_table_node { i16 11, i16 5 }, %struct.mmr_table_node { i16 11, i16 5 }, %struct.mmr_table_node { i16 11, i16 5 }, %struct.mmr_table_node { i16 27, i16 7 }, %struct.mmr_table_node { i16 27, i16 7 }, %struct.mmr_table_node { i16 59, i16 8 }, %struct.mmr_table_node { i16 60, i16 8 }, %struct.mmr_table_node { i16 288, i16 9 }, %struct.mmr_table_node { i16 290, i16 9 }, %struct.mmr_table_node { i16 18, i16 7 }, %struct.mmr_table_node { i16 18, i16 7 }, %struct.mmr_table_node { i16 24, i16 7 }, %struct.mmr_table_node { i16 24, i16 7 }, %struct.mmr_table_node { i16 49, i16 8 }, %struct.mmr_table_node { i16 50, i16 8 }, %struct.mmr_table_node { i16 51, i16 8 }, %struct.mmr_table_node { i16 52, i16 8 }, %struct.mmr_table_node { i16 25, i16 7 }, %struct.mmr_table_node { i16 25, i16 7 }, %struct.mmr_table_node { i16 55, i16 8 }, %struct.mmr_table_node { i16 56, i16 8 }, %struct.mmr_table_node { i16 57, i16 8 }, %struct.mmr_table_node { i16 58, i16 8 }, %struct.mmr_table_node { i16 192, i16 6 }, %struct.mmr_table_node { i16 192, i16 6 }, %struct.mmr_table_node { i16 192, i16 6 }, %struct.mmr_table_node { i16 192, i16 6 }, %struct.mmr_table_node { i16 1664, i16 6 }, %struct.mmr_table_node { i16 1664, i16 6 }, %struct.mmr_table_node { i16 1664, i16 6 }, %struct.mmr_table_node { i16 1664, i16 6 }, %struct.mmr_table_node { i16 448, i16 8 }, %struct.mmr_table_node { i16 512, i16 8 }, %struct.mmr_table_node { i16 292, i16 9 }, %struct.mmr_table_node { i16 640, i16 8 }, %struct.mmr_table_node { i16 576, i16 8 }, %struct.mmr_table_node { i16 294, i16 9 }, %struct.mmr_table_node { i16 296, i16 9 }, %struct.mmr_table_node { i16 298, i16 9 }, %struct.mmr_table_node { i16 300, i16 9 }, %struct.mmr_table_node { i16 302, i16 9 }, %struct.mmr_table_node { i16 256, i16 7 }, %struct.mmr_table_node { i16 256, i16 7 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 2, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 3, i16 4 }, %struct.mmr_table_node { i16 128, i16 5 }, %struct.mmr_table_node { i16 128, i16 5 }, %struct.mmr_table_node { i16 128, i16 5 }, %struct.mmr_table_node { i16 128, i16 5 }, %struct.mmr_table_node { i16 128, i16 5 }, %struct.mmr_table_node { i16 128, i16 5 }, %struct.mmr_table_node { i16 128, i16 5 }, %struct.mmr_table_node { i16 128, i16 5 }, %struct.mmr_table_node { i16 8, i16 5 }, %struct.mmr_table_node { i16 8, i16 5 }, %struct.mmr_table_node { i16 8, i16 5 }, %struct.mmr_table_node { i16 8, i16 5 }, %struct.mmr_table_node { i16 8, i16 5 }, %struct.mmr_table_node { i16 8, i16 5 }, %struct.mmr_table_node { i16 8, i16 5 }, %struct.mmr_table_node { i16 8, i16 5 }, %struct.mmr_table_node { i16 9, i16 5 }, %struct.mmr_table_node { i16 9, i16 5 }, %struct.mmr_table_node { i16 9, i16 5 }, %struct.mmr_table_node { i16 9, i16 5 }, %struct.mmr_table_node { i16 9, i16 5 }, %struct.mmr_table_node { i16 9, i16 5 }, %struct.mmr_table_node { i16 9, i16 5 }, %struct.mmr_table_node { i16 9, i16 5 }, %struct.mmr_table_node { i16 16, i16 6 }, %struct.mmr_table_node { i16 16, i16 6 }, %struct.mmr_table_node { i16 16, i16 6 }, %struct.mmr_table_node { i16 16, i16 6 }, %struct.mmr_table_node { i16 17, i16 6 }, %struct.mmr_table_node { i16 17, i16 6 }, %struct.mmr_table_node { i16 17, i16 6 }, %struct.mmr_table_node { i16 17, i16 6 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 4, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 14, i16 6 }, %struct.mmr_table_node { i16 14, i16 6 }, %struct.mmr_table_node { i16 14, i16 6 }, %struct.mmr_table_node { i16 14, i16 6 }, %struct.mmr_table_node { i16 15, i16 6 }, %struct.mmr_table_node { i16 15, i16 6 }, %struct.mmr_table_node { i16 15, i16 6 }, %struct.mmr_table_node { i16 15, i16 6 }, %struct.mmr_table_node { i16 64, i16 5 }, %struct.mmr_table_node { i16 64, i16 5 }, %struct.mmr_table_node { i16 64, i16 5 }, %struct.mmr_table_node { i16 64, i16 5 }, %struct.mmr_table_node { i16 64, i16 5 }, %struct.mmr_table_node { i16 64, i16 5 }, %struct.mmr_table_node { i16 64, i16 5 }, %struct.mmr_table_node { i16 64, i16 5 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 7, i16 4 }, %struct.mmr_table_node { i16 -2, i16 3 }, %struct.mmr_table_node { i16 -2, i16 3 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -3, i16 4 }, %struct.mmr_table_node { i16 1792, i16 3 }, %struct.mmr_table_node { i16 1792, i16 3 }, %struct.mmr_table_node { i16 1984, i16 4 }, %struct.mmr_table_node { i16 2048, i16 4 }, %struct.mmr_table_node { i16 2112, i16 4 }, %struct.mmr_table_node { i16 2176, i16 4 }, %struct.mmr_table_node { i16 2240, i16 4 }, %struct.mmr_table_node { i16 2304, i16 4 }, %struct.mmr_table_node { i16 1856, i16 3 }, %struct.mmr_table_node { i16 1856, i16 3 }, %struct.mmr_table_node { i16 1920, i16 3 }, %struct.mmr_table_node { i16 1920, i16 3 }, %struct.mmr_table_node { i16 2368, i16 4 }, %struct.mmr_table_node { i16 2432, i16 4 }, %struct.mmr_table_node { i16 2496, i16 4 }, %struct.mmr_table_node { i16 2560, i16 4 }, %struct.mmr_table_node { i16 1472, i16 1 }, %struct.mmr_table_node { i16 1536, i16 1 }, %struct.mmr_table_node { i16 1600, i16 1 }, %struct.mmr_table_node { i16 1728, i16 1 }, %struct.mmr_table_node { i16 704, i16 1 }, %struct.mmr_table_node { i16 768, i16 1 }, %struct.mmr_table_node { i16 832, i16 1 }, %struct.mmr_table_node { i16 896, i16 1 }, %struct.mmr_table_node { i16 960, i16 1 }, %struct.mmr_table_node { i16 1024, i16 1 }, %struct.mmr_table_node { i16 1088, i16 1 }, %struct.mmr_table_node { i16 1152, i16 1 }, %struct.mmr_table_node { i16 1216, i16 1 }, %struct.mmr_table_node { i16 1280, i16 1 }, %struct.mmr_table_node { i16 1344, i16 1 }, %struct.mmr_table_node { i16 1408, i16 1 }], align 16
@jbig2_mmr_black_decode = constant [320 x %struct.mmr_table_node] [%struct.mmr_table_node { i16 128, i16 12 }, %struct.mmr_table_node { i16 160, i16 13 }, %struct.mmr_table_node { i16 224, i16 12 }, %struct.mmr_table_node { i16 256, i16 12 }, %struct.mmr_table_node { i16 10, i16 7 }, %struct.mmr_table_node { i16 11, i16 7 }, %struct.mmr_table_node { i16 288, i16 12 }, %struct.mmr_table_node { i16 12, i16 7 }, %struct.mmr_table_node { i16 9, i16 6 }, %struct.mmr_table_node { i16 9, i16 6 }, %struct.mmr_table_node { i16 8, i16 6 }, %struct.mmr_table_node { i16 8, i16 6 }, %struct.mmr_table_node { i16 7, i16 5 }, %struct.mmr_table_node { i16 7, i16 5 }, %struct.mmr_table_node { i16 7, i16 5 }, %struct.mmr_table_node { i16 7, i16 5 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 6, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 5, i16 4 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 1, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 4, i16 3 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 3, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 2, i16 2 }, %struct.mmr_table_node { i16 -2, i16 4 }, %struct.mmr_table_node { i16 -2, i16 4 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -1, i16 0 }, %struct.mmr_table_node { i16 -3, i16 5 }, %struct.mmr_table_node { i16 1792, i16 4 }, %struct.mmr_table_node { i16 1792, i16 4 }, %struct.mmr_table_node { i16 1984, i16 5 }, %struct.mmr_table_node { i16 2048, i16 5 }, %struct.mmr_table_node { i16 2112, i16 5 }, %struct.mmr_table_node { i16 2176, i16 5 }, %struct.mmr_table_node { i16 2240, i16 5 }, %struct.mmr_table_node { i16 2304, i16 5 }, %struct.mmr_table_node { i16 1856, i16 4 }, %struct.mmr_table_node { i16 1856, i16 4 }, %struct.mmr_table_node { i16 1920, i16 4 }, %struct.mmr_table_node { i16 1920, i16 4 }, %struct.mmr_table_node { i16 2368, i16 5 }, %struct.mmr_table_node { i16 2432, i16 5 }, %struct.mmr_table_node { i16 2496, i16 5 }, %struct.mmr_table_node { i16 2560, i16 5 }, %struct.mmr_table_node { i16 18, i16 3 }, %struct.mmr_table_node { i16 18, i16 3 }, %struct.mmr_table_node { i16 18, i16 3 }, %struct.mmr_table_node { i16 18, i16 3 }, %struct.mmr_table_node { i16 18, i16 3 }, %struct.mmr_table_node { i16 18, i16 3 }, %struct.mmr_table_node { i16 18, i16 3 }, %struct.mmr_table_node { i16 18, i16 3 }, %struct.mmr_table_node { i16 52, i16 5 }, %struct.mmr_table_node { i16 52, i16 5 }, %struct.mmr_table_node { i16 640, i16 6 }, %struct.mmr_table_node { i16 704, i16 6 }, %struct.mmr_table_node { i16 768, i16 6 }, %struct.mmr_table_node { i16 832, i16 6 }, %struct.mmr_table_node { i16 55, i16 5 }, %struct.mmr_table_node { i16 55, i16 5 }, %struct.mmr_table_node { i16 56, i16 5 }, %struct.mmr_table_node { i16 56, i16 5 }, %struct.mmr_table_node { i16 1280, i16 6 }, %struct.mmr_table_node { i16 1344, i16 6 }, %struct.mmr_table_node { i16 1408, i16 6 }, %struct.mmr_table_node { i16 1472, i16 6 }, %struct.mmr_table_node { i16 59, i16 5 }, %struct.mmr_table_node { i16 59, i16 5 }, %struct.mmr_table_node { i16 60, i16 5 }, %struct.mmr_table_node { i16 60, i16 5 }, %struct.mmr_table_node { i16 1536, i16 6 }, %struct.mmr_table_node { i16 1600, i16 6 }, %struct.mmr_table_node { i16 24, i16 4 }, %struct.mmr_table_node { i16 24, i16 4 }, %struct.mmr_table_node { i16 24, i16 4 }, %struct.mmr_table_node { i16 24, i16 4 }, %struct.mmr_table_node { i16 25, i16 4 }, %struct.mmr_table_node { i16 25, i16 4 }, %struct.mmr_table_node { i16 25, i16 4 }, %struct.mmr_table_node { i16 25, i16 4 }, %struct.mmr_table_node { i16 1664, i16 6 }, %struct.mmr_table_node { i16 1728, i16 6 }, %struct.mmr_table_node { i16 320, i16 5 }, %struct.mmr_table_node { i16 320, i16 5 }, %struct.mmr_table_node { i16 384, i16 5 }, %struct.mmr_table_node { i16 384, i16 5 }, %struct.mmr_table_node { i16 448, i16 5 }, %struct.mmr_table_node { i16 448, i16 5 }, %struct.mmr_table_node { i16 512, i16 6 }, %struct.mmr_table_node { i16 576, i16 6 }, %struct.mmr_table_node { i16 53, i16 5 }, %struct.mmr_table_node { i16 53, i16 5 }, %struct.mmr_table_node { i16 54, i16 5 }, %struct.mmr_table_node { i16 54, i16 5 }, %struct.mmr_table_node { i16 896, i16 6 }, %struct.mmr_table_node { i16 960, i16 6 }, %struct.mmr_table_node { i16 1024, i16 6 }, %struct.mmr_table_node { i16 1088, i16 6 }, %struct.mmr_table_node { i16 1152, i16 6 }, %struct.mmr_table_node { i16 1216, i16 6 }, %struct.mmr_table_node { i16 64, i16 3 }, %struct.mmr_table_node { i16 64, i16 3 }, %struct.mmr_table_node { i16 64, i16 3 }, %struct.mmr_table_node { i16 64, i16 3 }, %struct.mmr_table_node { i16 64, i16 3 }, %struct.mmr_table_node { i16 64, i16 3 }, %struct.mmr_table_node { i16 64, i16 3 }, %struct.mmr_table_node { i16 64, i16 3 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 13, i16 1 }, %struct.mmr_table_node { i16 23, i16 4 }, %struct.mmr_table_node { i16 23, i16 4 }, %struct.mmr_table_node { i16 50, i16 5 }, %struct.mmr_table_node { i16 51, i16 5 }, %struct.mmr_table_node { i16 44, i16 5 }, %struct.mmr_table_node { i16 45, i16 5 }, %struct.mmr_table_node { i16 46, i16 5 }, %struct.mmr_table_node { i16 47, i16 5 }, %struct.mmr_table_node { i16 57, i16 5 }, %struct.mmr_table_node { i16 58, i16 5 }, %struct.mmr_table_node { i16 61, i16 5 }, %struct.mmr_table_node { i16 256, i16 5 }, %struct.mmr_table_node { i16 16, i16 3 }, %struct.mmr_table_node { i16 16, i16 3 }, %struct.mmr_table_node { i16 16, i16 3 }, %struct.mmr_table_node { i16 16, i16 3 }, %struct.mmr_table_node { i16 17, i16 3 }, %struct.mmr_table_node { i16 17, i16 3 }, %struct.mmr_table_node { i16 17, i16 3 }, %struct.mmr_table_node { i16 17, i16 3 }, %struct.mmr_table_node { i16 48, i16 5 }, %struct.mmr_table_node { i16 49, i16 5 }, %struct.mmr_table_node { i16 62, i16 5 }, %struct.mmr_table_node { i16 63, i16 5 }, %struct.mmr_table_node { i16 30, i16 5 }, %struct.mmr_table_node { i16 31, i16 5 }, %struct.mmr_table_node { i16 32, i16 5 }, %struct.mmr_table_node { i16 33, i16 5 }, %struct.mmr_table_node { i16 40, i16 5 }, %struct.mmr_table_node { i16 41, i16 5 }, %struct.mmr_table_node { i16 22, i16 4 }, %struct.mmr_table_node { i16 22, i16 4 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 14, i16 1 }, %struct.mmr_table_node { i16 15, i16 2 }, %struct.mmr_table_node { i16 15, i16 2 }, %struct.mmr_table_node { i16 15, i16 2 }, %struct.mmr_table_node { i16 15, i16 2 }, %struct.mmr_table_node { i16 15, i16 2 }, %struct.mmr_table_node { i16 15, i16 2 }, %struct.mmr_table_node { i16 15, i16 2 }, %struct.mmr_table_node { i16 15, i16 2 }, %struct.mmr_table_node { i16 128, i16 5 }, %struct.mmr_table_node { i16 192, i16 5 }, %struct.mmr_table_node { i16 26, i16 5 }, %struct.mmr_table_node { i16 27, i16 5 }, %struct.mmr_table_node { i16 28, i16 5 }, %struct.mmr_table_node { i16 29, i16 5 }, %struct.mmr_table_node { i16 19, i16 4 }, %struct.mmr_table_node { i16 19, i16 4 }, %struct.mmr_table_node { i16 20, i16 4 }, %struct.mmr_table_node { i16 20, i16 4 }, %struct.mmr_table_node { i16 34, i16 5 }, %struct.mmr_table_node { i16 35, i16 5 }, %struct.mmr_table_node { i16 36, i16 5 }, %struct.mmr_table_node { i16 37, i16 5 }, %struct.mmr_table_node { i16 38, i16 5 }, %struct.mmr_table_node { i16 39, i16 5 }, %struct.mmr_table_node { i16 21, i16 4 }, %struct.mmr_table_node { i16 21, i16 4 }, %struct.mmr_table_node { i16 42, i16 5 }, %struct.mmr_table_node { i16 43, i16 5 }, %struct.mmr_table_node { i16 0, i16 3 }, %struct.mmr_table_node { i16 0, i16 3 }, %struct.mmr_table_node { i16 0, i16 3 }, %struct.mmr_table_node { i16 0, i16 3 }], align 16
@lm = internal constant [8 x i8] c"\FF\7F?\1F\0F\07\03\01", align 1
@rm = internal constant [8 x i8] c"\00\80\C0\E0\F0\F8\FC\FE", align 1

; Function Attrs: nounwind uwtable
define i32 @jbig2_decode_generic_mmr(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, i8* %data, i64 %size, %struct._Jbig2Image* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %mmr = alloca %struct.Jbig2MmrCtx, align 8
  %rowstride = alloca i32, align 4
  %dst = alloca i8*, align 8
  %ref = alloca i8*, align 8
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !5
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Jbig2MmrCtx* %mmr to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %2, i32 0, i32 2
  %3 = load i32, i32* %stride, align 4, !tbaa !7
  store i32 %3, i32* %rowstride, align 4, !tbaa !10
  %4 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %5, i32 0, i32 3
  %6 = load i8*, i8** %data1, align 8, !tbaa !11
  store i8* %6, i8** %dst, align 8, !tbaa !1
  %7 = bitcast i8** %ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8* null, i8** %ref, align 8, !tbaa !1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %code, align 4, !tbaa !10
  %10 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %10, i32 0, i32 0
  %11 = load i32, i32* %width, align 4, !tbaa !12
  %12 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %12, i32 0, i32 1
  %13 = load i32, i32* %height, align 4, !tbaa !13
  %14 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %15 = load i64, i64* %size.addr, align 8, !tbaa !5
  call void @jbig2_decode_mmr_init(%struct.Jbig2MmrCtx* %mmr, i32 %11, i32 %13, i8* %14, i64 %15) #3
  store i32 0, i32* %y, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %y, align 4, !tbaa !10
  %17 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %17, i32 0, i32 1
  %18 = load i32, i32* %height2, align 4, !tbaa !13
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %dst, align 8, !tbaa !1
  %20 = load i32, i32* %rowstride, align 4, !tbaa !10
  %conv = sext i32 %20 to i64
  %call = call i8* @memset(i8* %19, i32 0, i64 %conv) #4
  %21 = load i8*, i8** %ref, align 8, !tbaa !1
  %22 = load i8*, i8** %dst, align 8, !tbaa !1
  %call3 = call i32 @jbig2_decode_mmr_line(%struct.Jbig2MmrCtx* %mmr, i8* %21, i8* %22) #3
  store i32 %call3, i32* %code, align 4, !tbaa !10
  %23 = load i32, i32* %code, align 4, !tbaa !10
  %cmp4 = icmp slt i32 %23, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %24 = load i32, i32* %code, align 4, !tbaa !10
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %25 = load i8*, i8** %dst, align 8, !tbaa !1
  store i8* %25, i8** %ref, align 8, !tbaa !1
  %26 = load i32, i32* %rowstride, align 4, !tbaa !10
  %27 = load i8*, i8** %dst, align 8, !tbaa !1
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %dst, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %y, align 4, !tbaa !10
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %y, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %code, align 4, !tbaa !10
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.Jbig2MmrCtx* %mmr to i8*
  call void @llvm.lifetime.end(i64 40, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @jbig2_decode_mmr_init(%struct.Jbig2MmrCtx* %mmr, i32 %width, i32 %height, i8* %data, i64 %size) #0 {
entry:
  %mmr.addr = alloca %struct.Jbig2MmrCtx*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %word = alloca i32, align 4
  store %struct.Jbig2MmrCtx* %mmr, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !10
  store i32 %height, i32* %height.addr, align 4, !tbaa !10
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %word to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %word, align 4, !tbaa !10
  %2 = load i32, i32* %width.addr, align 4, !tbaa !10
  %3 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %3, i32 0, i32 0
  store i32 %2, i32* %width1, align 4, !tbaa !14
  %4 = load i32, i32* %height.addr, align 4, !tbaa !10
  %5 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %5, i32 0, i32 1
  store i32 %4, i32* %height2, align 4, !tbaa !16
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %7, i32 0, i32 2
  store i8* %6, i8** %data3, align 8, !tbaa !17
  %8 = load i64, i64* %size.addr, align 8, !tbaa !5
  %9 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %size4 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %9, i32 0, i32 3
  store i64 %8, i64* %size4, align 8, !tbaa !18
  %10 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %data_index = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %10, i32 0, i32 4
  store i32 0, i32* %data_index, align 4, !tbaa !19
  %11 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %bit_index = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %11, i32 0, i32 5
  store i32 0, i32* %bit_index, align 4, !tbaa !20
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !10
  %conv = sext i32 %12 to i64
  %13 = load i64, i64* %size.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %conv, %13
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !10
  %cmp6 = icmp slt i32 %14, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom = sext i32 %16 to i64
  %17 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv8 = zext i8 %18 to i32
  %19 = load i32, i32* %i, align 4, !tbaa !10
  %sub = sub nsw i32 3, %19
  %shl = shl i32 %sub, 3
  %shl9 = shl i32 %conv8, %shl
  %20 = load i32, i32* %word, align 4, !tbaa !10
  %or = or i32 %20, %shl9
  store i32 %or, i32* %word, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !10
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i32, i32* %word, align 4, !tbaa !10
  %23 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %word10 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %23, i32 0, i32 6
  store i32 %22, i32* %word10, align 4, !tbaa !22
  %24 = bitcast i32* %word to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_mmr_line(%struct.Jbig2MmrCtx* %mmr, i8* %ref, i8* %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %mmr.addr = alloca %struct.Jbig2MmrCtx*, align 8
  %ref.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %a0 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %c = alloca i32, align 4
  %word = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %white_run = alloca i32, align 4
  %black_run = alloca i32, align 4
  store %struct.Jbig2MmrCtx* %mmr, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  store i8* %ref, i8** %ref.addr, align 8, !tbaa !1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %a0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 -1, i32* %a0, align 4, !tbaa !10
  %1 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %a2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %b1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %b2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %c, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.258, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %6 = bitcast i32* %word to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %word1 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %7, i32 0, i32 6
  %8 = load i32, i32* %word1, align 4, !tbaa !22
  store i32 %8, i32* %word, align 4, !tbaa !10
  %9 = load i32, i32* %a0, align 4, !tbaa !10
  %10 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %10, i32 0, i32 0
  %11 = load i32, i32* %width, align 4, !tbaa !14
  %cmp = icmp sge i32 %9, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end:                                           ; preds = %while.body
  %12 = load i32, i32* %word, align 4, !tbaa !10
  %shr = lshr i32 %12, 29
  %cmp2 = icmp eq i32 %shr, 1
  br i1 %cmp2, label %if.then.3, label %if.else.46

if.then.3:                                        ; preds = %if.end
  %13 = bitcast i32* %white_run to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %black_run to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  call void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %15, i32 3) #3
  %16 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp4 = icmp eq i32 %16, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  store i32 0, i32* %a0, align 4, !tbaa !10
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %17 = load i32, i32* %c, align 4, !tbaa !10
  %cmp7 = icmp eq i32 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %18 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %call = call i32 @jbig2_decode_get_run(%struct.Jbig2MmrCtx* %18, %struct.mmr_table_node* getelementptr inbounds ([304 x %struct.mmr_table_node], [304 x %struct.mmr_table_node]* @jbig2_mmr_white_decode, i32 0, i32 0), i32 8) #3
  store i32 %call, i32* %white_run, align 4, !tbaa !10
  %19 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %call9 = call i32 @jbig2_decode_get_run(%struct.Jbig2MmrCtx* %19, %struct.mmr_table_node* getelementptr inbounds ([320 x %struct.mmr_table_node], [320 x %struct.mmr_table_node]* @jbig2_mmr_black_decode, i32 0, i32 0), i32 7) #3
  store i32 %call9, i32* %black_run, align 4, !tbaa !10
  %20 = load i32, i32* %a0, align 4, !tbaa !10
  %21 = load i32, i32* %white_run, align 4, !tbaa !10
  %add = add nsw i32 %20, %21
  store i32 %add, i32* %a1, align 4, !tbaa !10
  %22 = load i32, i32* %a1, align 4, !tbaa !10
  %23 = load i32, i32* %black_run, align 4, !tbaa !10
  %add10 = add nsw i32 %22, %23
  store i32 %add10, i32* %a2, align 4, !tbaa !10
  %24 = load i32, i32* %a1, align 4, !tbaa !10
  %25 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width11 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %25, i32 0, i32 0
  %26 = load i32, i32* %width11, align 4, !tbaa !14
  %cmp12 = icmp sgt i32 %24, %26
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.8
  %27 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %27, i32 0, i32 0
  %28 = load i32, i32* %width14, align 4, !tbaa !14
  store i32 %28, i32* %a1, align 4, !tbaa !10
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.8
  %29 = load i32, i32* %a2, align 4, !tbaa !10
  %30 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width16 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %30, i32 0, i32 0
  %31 = load i32, i32* %width16, align 4, !tbaa !14
  %cmp17 = icmp sgt i32 %29, %31
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %32 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width19 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %32, i32 0, i32 0
  %33 = load i32, i32* %width19, align 4, !tbaa !14
  store i32 %33, i32* %a2, align 4, !tbaa !10
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %34 = load i32, i32* %a2, align 4, !tbaa !10
  %35 = load i32, i32* %a1, align 4, !tbaa !10
  %cmp21 = icmp slt i32 %34, %35
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %36 = load i32, i32* %a1, align 4, !tbaa !10
  %cmp22 = icmp slt i32 %36, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false
  %37 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %38 = load i32, i32* %a1, align 4, !tbaa !10
  %39 = load i32, i32* %a2, align 4, !tbaa !10
  call void @jbig2_set_bits(i8* %37, i32 %38, i32 %39) #3
  %40 = load i32, i32* %a2, align 4, !tbaa !10
  store i32 %40, i32* %a0, align 4, !tbaa !10
  br label %if.end.44

if.else:                                          ; preds = %if.end.6
  %41 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %call25 = call i32 @jbig2_decode_get_run(%struct.Jbig2MmrCtx* %41, %struct.mmr_table_node* getelementptr inbounds ([320 x %struct.mmr_table_node], [320 x %struct.mmr_table_node]* @jbig2_mmr_black_decode, i32 0, i32 0), i32 7) #3
  store i32 %call25, i32* %black_run, align 4, !tbaa !10
  %42 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %call26 = call i32 @jbig2_decode_get_run(%struct.Jbig2MmrCtx* %42, %struct.mmr_table_node* getelementptr inbounds ([304 x %struct.mmr_table_node], [304 x %struct.mmr_table_node]* @jbig2_mmr_white_decode, i32 0, i32 0), i32 8) #3
  store i32 %call26, i32* %white_run, align 4, !tbaa !10
  %43 = load i32, i32* %a0, align 4, !tbaa !10
  %44 = load i32, i32* %black_run, align 4, !tbaa !10
  %add27 = add nsw i32 %43, %44
  store i32 %add27, i32* %a1, align 4, !tbaa !10
  %45 = load i32, i32* %a1, align 4, !tbaa !10
  %46 = load i32, i32* %white_run, align 4, !tbaa !10
  %add28 = add nsw i32 %45, %46
  store i32 %add28, i32* %a2, align 4, !tbaa !10
  %47 = load i32, i32* %a1, align 4, !tbaa !10
  %48 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width29 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %48, i32 0, i32 0
  %49 = load i32, i32* %width29, align 4, !tbaa !14
  %cmp30 = icmp sgt i32 %47, %49
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.else
  %50 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width32 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %50, i32 0, i32 0
  %51 = load i32, i32* %width32, align 4, !tbaa !14
  store i32 %51, i32* %a1, align 4, !tbaa !10
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.else
  %52 = load i32, i32* %a2, align 4, !tbaa !10
  %53 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width34 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %53, i32 0, i32 0
  %54 = load i32, i32* %width34, align 4, !tbaa !14
  %cmp35 = icmp sgt i32 %52, %54
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.33
  %55 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width37 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %55, i32 0, i32 0
  %56 = load i32, i32* %width37, align 4, !tbaa !14
  store i32 %56, i32* %a2, align 4, !tbaa !10
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.33
  %57 = load i32, i32* %a1, align 4, !tbaa !10
  %58 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp39 = icmp slt i32 %57, %58
  br i1 %cmp39, label %if.then.42, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end.38
  %59 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp41 = icmp slt i32 %59, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false.40, %if.end.38
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %lor.lhs.false.40
  %60 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %61 = load i32, i32* %a0, align 4, !tbaa !10
  %62 = load i32, i32* %a1, align 4, !tbaa !10
  call void @jbig2_set_bits(i8* %60, i32 %61, i32 %62) #3
  %63 = load i32, i32* %a2, align 4, !tbaa !10
  store i32 %63, i32* %a0, align 4, !tbaa !10
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.42, %if.then.23
  %64 = bitcast i32* %black_run to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %white_run to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.256 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.255

if.else.46:                                       ; preds = %if.end
  %66 = load i32, i32* %word, align 4, !tbaa !10
  %shr47 = lshr i32 %66, 28
  %cmp48 = icmp eq i32 %shr47, 1
  br i1 %cmp48, label %if.then.49, label %if.else.62

if.then.49:                                       ; preds = %if.else.46
  %67 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  call void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %67, i32 4) #3
  %68 = load i8*, i8** %ref.addr, align 8, !tbaa !1
  %69 = load i32, i32* %a0, align 4, !tbaa !10
  %70 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width50 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %70, i32 0, i32 0
  %71 = load i32, i32* %width50, align 4, !tbaa !14
  %72 = load i32, i32* %c, align 4, !tbaa !10
  %tobool = icmp ne i32 %72, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %call51 = call i32 @jbig2_find_changing_element_of_color(i8* %68, i32 %69, i32 %71, i32 %lnot.ext) #3
  store i32 %call51, i32* %b1, align 4, !tbaa !10
  %73 = load i8*, i8** %ref.addr, align 8, !tbaa !1
  %74 = load i32, i32* %b1, align 4, !tbaa !10
  %75 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width52 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %75, i32 0, i32 0
  %76 = load i32, i32* %width52, align 4, !tbaa !14
  %call53 = call i32 @jbig2_find_changing_element(i8* %73, i32 %74, i32 %76) #3
  store i32 %call53, i32* %b2, align 4, !tbaa !10
  %77 = load i32, i32* %c, align 4, !tbaa !10
  %tobool54 = icmp ne i32 %77, 0
  br i1 %tobool54, label %if.then.55, label %if.end.61

if.then.55:                                       ; preds = %if.then.49
  %78 = load i32, i32* %b2, align 4, !tbaa !10
  %79 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp56 = icmp slt i32 %78, %79
  br i1 %cmp56, label %if.then.59, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.then.55
  %80 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp58 = icmp slt i32 %80, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false.57, %if.then.55
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.60:                                        ; preds = %lor.lhs.false.57
  %81 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %82 = load i32, i32* %a0, align 4, !tbaa !10
  %83 = load i32, i32* %b2, align 4, !tbaa !10
  call void @jbig2_set_bits(i8* %81, i32 %82, i32 %83) #3
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %84 = load i32, i32* %b2, align 4, !tbaa !10
  store i32 %84, i32* %a0, align 4, !tbaa !10
  br label %if.end.254

if.else.62:                                       ; preds = %if.else.46
  %85 = load i32, i32* %word, align 4, !tbaa !10
  %shr63 = lshr i32 %85, 31
  %cmp64 = icmp eq i32 %shr63, 1
  br i1 %cmp64, label %if.then.65, label %if.else.82

if.then.65:                                       ; preds = %if.else.62
  %86 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  call void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %86, i32 1) #3
  %87 = load i8*, i8** %ref.addr, align 8, !tbaa !1
  %88 = load i32, i32* %a0, align 4, !tbaa !10
  %89 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width66 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %89, i32 0, i32 0
  %90 = load i32, i32* %width66, align 4, !tbaa !14
  %91 = load i32, i32* %c, align 4, !tbaa !10
  %tobool67 = icmp ne i32 %91, 0
  %lnot68 = xor i1 %tobool67, true
  %lnot.ext69 = zext i1 %lnot68 to i32
  %call70 = call i32 @jbig2_find_changing_element_of_color(i8* %87, i32 %88, i32 %90, i32 %lnot.ext69) #3
  store i32 %call70, i32* %b1, align 4, !tbaa !10
  %92 = load i32, i32* %c, align 4, !tbaa !10
  %tobool71 = icmp ne i32 %92, 0
  br i1 %tobool71, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %if.then.65
  %93 = load i32, i32* %b1, align 4, !tbaa !10
  %94 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp73 = icmp slt i32 %93, %94
  br i1 %cmp73, label %if.then.76, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.then.72
  %95 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp75 = icmp slt i32 %95, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %lor.lhs.false.74, %if.then.72
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.77:                                        ; preds = %lor.lhs.false.74
  %96 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %97 = load i32, i32* %a0, align 4, !tbaa !10
  %98 = load i32, i32* %b1, align 4, !tbaa !10
  call void @jbig2_set_bits(i8* %96, i32 %97, i32 %98) #3
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.65
  %99 = load i32, i32* %b1, align 4, !tbaa !10
  store i32 %99, i32* %a0, align 4, !tbaa !10
  %100 = load i32, i32* %c, align 4, !tbaa !10
  %tobool79 = icmp ne i32 %100, 0
  %lnot80 = xor i1 %tobool79, true
  %lnot.ext81 = zext i1 %lnot80 to i32
  store i32 %lnot.ext81, i32* %c, align 4, !tbaa !10
  br label %if.end.253

if.else.82:                                       ; preds = %if.else.62
  %101 = load i32, i32* %word, align 4, !tbaa !10
  %shr83 = lshr i32 %101, 29
  %cmp84 = icmp eq i32 %shr83, 3
  br i1 %cmp84, label %if.then.85, label %if.else.110

if.then.85:                                       ; preds = %if.else.82
  %102 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  call void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %102, i32 3) #3
  %103 = load i8*, i8** %ref.addr, align 8, !tbaa !1
  %104 = load i32, i32* %a0, align 4, !tbaa !10
  %105 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width86 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %105, i32 0, i32 0
  %106 = load i32, i32* %width86, align 4, !tbaa !14
  %107 = load i32, i32* %c, align 4, !tbaa !10
  %tobool87 = icmp ne i32 %107, 0
  %lnot88 = xor i1 %tobool87, true
  %lnot.ext89 = zext i1 %lnot88 to i32
  %call90 = call i32 @jbig2_find_changing_element_of_color(i8* %103, i32 %104, i32 %106, i32 %lnot.ext89) #3
  store i32 %call90, i32* %b1, align 4, !tbaa !10
  %108 = load i32, i32* %b1, align 4, !tbaa !10
  %add91 = add nsw i32 %108, 1
  %109 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width92 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %109, i32 0, i32 0
  %110 = load i32, i32* %width92, align 4, !tbaa !14
  %cmp93 = icmp sgt i32 %add91, %110
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.85
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.95:                                        ; preds = %if.then.85
  %111 = load i32, i32* %c, align 4, !tbaa !10
  %tobool96 = icmp ne i32 %111, 0
  br i1 %tobool96, label %if.then.97, label %if.end.105

if.then.97:                                       ; preds = %if.end.95
  %112 = load i32, i32* %b1, align 4, !tbaa !10
  %add98 = add nsw i32 %112, 1
  %113 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp99 = icmp slt i32 %add98, %113
  br i1 %cmp99, label %if.then.102, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %if.then.97
  %114 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp101 = icmp slt i32 %114, 0
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %lor.lhs.false.100, %if.then.97
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.103:                                       ; preds = %lor.lhs.false.100
  %115 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %116 = load i32, i32* %a0, align 4, !tbaa !10
  %117 = load i32, i32* %b1, align 4, !tbaa !10
  %add104 = add nsw i32 %117, 1
  call void @jbig2_set_bits(i8* %115, i32 %116, i32 %add104) #3
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.103, %if.end.95
  %118 = load i32, i32* %b1, align 4, !tbaa !10
  %add106 = add nsw i32 %118, 1
  store i32 %add106, i32* %a0, align 4, !tbaa !10
  %119 = load i32, i32* %c, align 4, !tbaa !10
  %tobool107 = icmp ne i32 %119, 0
  %lnot108 = xor i1 %tobool107, true
  %lnot.ext109 = zext i1 %lnot108 to i32
  store i32 %lnot.ext109, i32* %c, align 4, !tbaa !10
  br label %if.end.252

if.else.110:                                      ; preds = %if.else.82
  %120 = load i32, i32* %word, align 4, !tbaa !10
  %shr111 = lshr i32 %120, 26
  %cmp112 = icmp eq i32 %shr111, 3
  br i1 %cmp112, label %if.then.113, label %if.else.138

if.then.113:                                      ; preds = %if.else.110
  %121 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  call void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %121, i32 6) #3
  %122 = load i8*, i8** %ref.addr, align 8, !tbaa !1
  %123 = load i32, i32* %a0, align 4, !tbaa !10
  %124 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width114 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %124, i32 0, i32 0
  %125 = load i32, i32* %width114, align 4, !tbaa !14
  %126 = load i32, i32* %c, align 4, !tbaa !10
  %tobool115 = icmp ne i32 %126, 0
  %lnot116 = xor i1 %tobool115, true
  %lnot.ext117 = zext i1 %lnot116 to i32
  %call118 = call i32 @jbig2_find_changing_element_of_color(i8* %122, i32 %123, i32 %125, i32 %lnot.ext117) #3
  store i32 %call118, i32* %b1, align 4, !tbaa !10
  %127 = load i32, i32* %b1, align 4, !tbaa !10
  %add119 = add nsw i32 %127, 2
  %128 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width120 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %128, i32 0, i32 0
  %129 = load i32, i32* %width120, align 4, !tbaa !14
  %cmp121 = icmp sgt i32 %add119, %129
  br i1 %cmp121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.then.113
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.123:                                       ; preds = %if.then.113
  %130 = load i32, i32* %c, align 4, !tbaa !10
  %tobool124 = icmp ne i32 %130, 0
  br i1 %tobool124, label %if.then.125, label %if.end.133

if.then.125:                                      ; preds = %if.end.123
  %131 = load i32, i32* %b1, align 4, !tbaa !10
  %add126 = add nsw i32 %131, 2
  %132 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp127 = icmp slt i32 %add126, %132
  br i1 %cmp127, label %if.then.130, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %if.then.125
  %133 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp129 = icmp slt i32 %133, 0
  br i1 %cmp129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %lor.lhs.false.128, %if.then.125
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.131:                                       ; preds = %lor.lhs.false.128
  %134 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %135 = load i32, i32* %a0, align 4, !tbaa !10
  %136 = load i32, i32* %b1, align 4, !tbaa !10
  %add132 = add nsw i32 %136, 2
  call void @jbig2_set_bits(i8* %134, i32 %135, i32 %add132) #3
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.131, %if.end.123
  %137 = load i32, i32* %b1, align 4, !tbaa !10
  %add134 = add nsw i32 %137, 2
  store i32 %add134, i32* %a0, align 4, !tbaa !10
  %138 = load i32, i32* %c, align 4, !tbaa !10
  %tobool135 = icmp ne i32 %138, 0
  %lnot136 = xor i1 %tobool135, true
  %lnot.ext137 = zext i1 %lnot136 to i32
  store i32 %lnot.ext137, i32* %c, align 4, !tbaa !10
  br label %if.end.251

if.else.138:                                      ; preds = %if.else.110
  %139 = load i32, i32* %word, align 4, !tbaa !10
  %shr139 = lshr i32 %139, 25
  %cmp140 = icmp eq i32 %shr139, 3
  br i1 %cmp140, label %if.then.141, label %if.else.166

if.then.141:                                      ; preds = %if.else.138
  %140 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  call void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %140, i32 7) #3
  %141 = load i8*, i8** %ref.addr, align 8, !tbaa !1
  %142 = load i32, i32* %a0, align 4, !tbaa !10
  %143 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width142 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %143, i32 0, i32 0
  %144 = load i32, i32* %width142, align 4, !tbaa !14
  %145 = load i32, i32* %c, align 4, !tbaa !10
  %tobool143 = icmp ne i32 %145, 0
  %lnot144 = xor i1 %tobool143, true
  %lnot.ext145 = zext i1 %lnot144 to i32
  %call146 = call i32 @jbig2_find_changing_element_of_color(i8* %141, i32 %142, i32 %144, i32 %lnot.ext145) #3
  store i32 %call146, i32* %b1, align 4, !tbaa !10
  %146 = load i32, i32* %b1, align 4, !tbaa !10
  %add147 = add nsw i32 %146, 3
  %147 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width148 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %147, i32 0, i32 0
  %148 = load i32, i32* %width148, align 4, !tbaa !14
  %cmp149 = icmp sgt i32 %add147, %148
  br i1 %cmp149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.141
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.151:                                       ; preds = %if.then.141
  %149 = load i32, i32* %c, align 4, !tbaa !10
  %tobool152 = icmp ne i32 %149, 0
  br i1 %tobool152, label %if.then.153, label %if.end.161

if.then.153:                                      ; preds = %if.end.151
  %150 = load i32, i32* %b1, align 4, !tbaa !10
  %add154 = add nsw i32 %150, 3
  %151 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp155 = icmp slt i32 %add154, %151
  br i1 %cmp155, label %if.then.158, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %if.then.153
  %152 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp157 = icmp slt i32 %152, 0
  br i1 %cmp157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %lor.lhs.false.156, %if.then.153
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.159:                                       ; preds = %lor.lhs.false.156
  %153 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %154 = load i32, i32* %a0, align 4, !tbaa !10
  %155 = load i32, i32* %b1, align 4, !tbaa !10
  %add160 = add nsw i32 %155, 3
  call void @jbig2_set_bits(i8* %153, i32 %154, i32 %add160) #3
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.159, %if.end.151
  %156 = load i32, i32* %b1, align 4, !tbaa !10
  %add162 = add nsw i32 %156, 3
  store i32 %add162, i32* %a0, align 4, !tbaa !10
  %157 = load i32, i32* %c, align 4, !tbaa !10
  %tobool163 = icmp ne i32 %157, 0
  %lnot164 = xor i1 %tobool163, true
  %lnot.ext165 = zext i1 %lnot164 to i32
  store i32 %lnot.ext165, i32* %c, align 4, !tbaa !10
  br label %if.end.250

if.else.166:                                      ; preds = %if.else.138
  %158 = load i32, i32* %word, align 4, !tbaa !10
  %shr167 = lshr i32 %158, 29
  %cmp168 = icmp eq i32 %shr167, 2
  br i1 %cmp168, label %if.then.169, label %if.else.192

if.then.169:                                      ; preds = %if.else.166
  %159 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  call void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %159, i32 3) #3
  %160 = load i8*, i8** %ref.addr, align 8, !tbaa !1
  %161 = load i32, i32* %a0, align 4, !tbaa !10
  %162 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width170 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %162, i32 0, i32 0
  %163 = load i32, i32* %width170, align 4, !tbaa !14
  %164 = load i32, i32* %c, align 4, !tbaa !10
  %tobool171 = icmp ne i32 %164, 0
  %lnot172 = xor i1 %tobool171, true
  %lnot.ext173 = zext i1 %lnot172 to i32
  %call174 = call i32 @jbig2_find_changing_element_of_color(i8* %160, i32 %161, i32 %163, i32 %lnot.ext173) #3
  store i32 %call174, i32* %b1, align 4, !tbaa !10
  %165 = load i32, i32* %b1, align 4, !tbaa !10
  %sub = sub nsw i32 %165, 1
  %cmp175 = icmp slt i32 %sub, 0
  br i1 %cmp175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.then.169
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.177:                                       ; preds = %if.then.169
  %166 = load i32, i32* %c, align 4, !tbaa !10
  %tobool178 = icmp ne i32 %166, 0
  br i1 %tobool178, label %if.then.179, label %if.end.187

if.then.179:                                      ; preds = %if.end.177
  %167 = load i32, i32* %b1, align 4, !tbaa !10
  %sub180 = sub nsw i32 %167, 1
  %168 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp181 = icmp slt i32 %sub180, %168
  br i1 %cmp181, label %if.then.184, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %if.then.179
  %169 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp183 = icmp slt i32 %169, 0
  br i1 %cmp183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %lor.lhs.false.182, %if.then.179
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.185:                                       ; preds = %lor.lhs.false.182
  %170 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %171 = load i32, i32* %a0, align 4, !tbaa !10
  %172 = load i32, i32* %b1, align 4, !tbaa !10
  %sub186 = sub nsw i32 %172, 1
  call void @jbig2_set_bits(i8* %170, i32 %171, i32 %sub186) #3
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.185, %if.end.177
  %173 = load i32, i32* %b1, align 4, !tbaa !10
  %sub188 = sub nsw i32 %173, 1
  store i32 %sub188, i32* %a0, align 4, !tbaa !10
  %174 = load i32, i32* %c, align 4, !tbaa !10
  %tobool189 = icmp ne i32 %174, 0
  %lnot190 = xor i1 %tobool189, true
  %lnot.ext191 = zext i1 %lnot190 to i32
  store i32 %lnot.ext191, i32* %c, align 4, !tbaa !10
  br label %if.end.249

if.else.192:                                      ; preds = %if.else.166
  %175 = load i32, i32* %word, align 4, !tbaa !10
  %shr193 = lshr i32 %175, 26
  %cmp194 = icmp eq i32 %shr193, 2
  br i1 %cmp194, label %if.then.195, label %if.else.219

if.then.195:                                      ; preds = %if.else.192
  %176 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  call void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %176, i32 6) #3
  %177 = load i8*, i8** %ref.addr, align 8, !tbaa !1
  %178 = load i32, i32* %a0, align 4, !tbaa !10
  %179 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width196 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %179, i32 0, i32 0
  %180 = load i32, i32* %width196, align 4, !tbaa !14
  %181 = load i32, i32* %c, align 4, !tbaa !10
  %tobool197 = icmp ne i32 %181, 0
  %lnot198 = xor i1 %tobool197, true
  %lnot.ext199 = zext i1 %lnot198 to i32
  %call200 = call i32 @jbig2_find_changing_element_of_color(i8* %177, i32 %178, i32 %180, i32 %lnot.ext199) #3
  store i32 %call200, i32* %b1, align 4, !tbaa !10
  %182 = load i32, i32* %b1, align 4, !tbaa !10
  %sub201 = sub nsw i32 %182, 2
  %cmp202 = icmp slt i32 %sub201, 0
  br i1 %cmp202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.then.195
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.204:                                       ; preds = %if.then.195
  %183 = load i32, i32* %c, align 4, !tbaa !10
  %tobool205 = icmp ne i32 %183, 0
  br i1 %tobool205, label %if.then.206, label %if.end.214

if.then.206:                                      ; preds = %if.end.204
  %184 = load i32, i32* %b1, align 4, !tbaa !10
  %sub207 = sub nsw i32 %184, 2
  %185 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp208 = icmp slt i32 %sub207, %185
  br i1 %cmp208, label %if.then.211, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %if.then.206
  %186 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp210 = icmp slt i32 %186, 0
  br i1 %cmp210, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %lor.lhs.false.209, %if.then.206
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.212:                                       ; preds = %lor.lhs.false.209
  %187 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %188 = load i32, i32* %a0, align 4, !tbaa !10
  %189 = load i32, i32* %b1, align 4, !tbaa !10
  %sub213 = sub nsw i32 %189, 2
  call void @jbig2_set_bits(i8* %187, i32 %188, i32 %sub213) #3
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.212, %if.end.204
  %190 = load i32, i32* %b1, align 4, !tbaa !10
  %sub215 = sub nsw i32 %190, 2
  store i32 %sub215, i32* %a0, align 4, !tbaa !10
  %191 = load i32, i32* %c, align 4, !tbaa !10
  %tobool216 = icmp ne i32 %191, 0
  %lnot217 = xor i1 %tobool216, true
  %lnot.ext218 = zext i1 %lnot217 to i32
  store i32 %lnot.ext218, i32* %c, align 4, !tbaa !10
  br label %if.end.248

if.else.219:                                      ; preds = %if.else.192
  %192 = load i32, i32* %word, align 4, !tbaa !10
  %shr220 = lshr i32 %192, 25
  %cmp221 = icmp eq i32 %shr220, 2
  br i1 %cmp221, label %if.then.222, label %if.else.246

if.then.222:                                      ; preds = %if.else.219
  %193 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  call void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %193, i32 7) #3
  %194 = load i8*, i8** %ref.addr, align 8, !tbaa !1
  %195 = load i32, i32* %a0, align 4, !tbaa !10
  %196 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %width223 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %196, i32 0, i32 0
  %197 = load i32, i32* %width223, align 4, !tbaa !14
  %198 = load i32, i32* %c, align 4, !tbaa !10
  %tobool224 = icmp ne i32 %198, 0
  %lnot225 = xor i1 %tobool224, true
  %lnot.ext226 = zext i1 %lnot225 to i32
  %call227 = call i32 @jbig2_find_changing_element_of_color(i8* %194, i32 %195, i32 %197, i32 %lnot.ext226) #3
  store i32 %call227, i32* %b1, align 4, !tbaa !10
  %199 = load i32, i32* %b1, align 4, !tbaa !10
  %sub228 = sub nsw i32 %199, 3
  %cmp229 = icmp slt i32 %sub228, 0
  br i1 %cmp229, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.then.222
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.231:                                       ; preds = %if.then.222
  %200 = load i32, i32* %c, align 4, !tbaa !10
  %tobool232 = icmp ne i32 %200, 0
  br i1 %tobool232, label %if.then.233, label %if.end.241

if.then.233:                                      ; preds = %if.end.231
  %201 = load i32, i32* %b1, align 4, !tbaa !10
  %sub234 = sub nsw i32 %201, 3
  %202 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp235 = icmp slt i32 %sub234, %202
  br i1 %cmp235, label %if.then.238, label %lor.lhs.false.236

lor.lhs.false.236:                                ; preds = %if.then.233
  %203 = load i32, i32* %a0, align 4, !tbaa !10
  %cmp237 = icmp slt i32 %203, 0
  br i1 %cmp237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %lor.lhs.false.236, %if.then.233
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.239:                                       ; preds = %lor.lhs.false.236
  %204 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %205 = load i32, i32* %a0, align 4, !tbaa !10
  %206 = load i32, i32* %b1, align 4, !tbaa !10
  %sub240 = sub nsw i32 %206, 3
  call void @jbig2_set_bits(i8* %204, i32 %205, i32 %sub240) #3
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.239, %if.end.231
  %207 = load i32, i32* %b1, align 4, !tbaa !10
  %sub242 = sub nsw i32 %207, 3
  store i32 %sub242, i32* %a0, align 4, !tbaa !10
  %208 = load i32, i32* %c, align 4, !tbaa !10
  %tobool243 = icmp ne i32 %208, 0
  %lnot244 = xor i1 %tobool243, true
  %lnot.ext245 = zext i1 %lnot244 to i32
  store i32 %lnot.ext245, i32* %c, align 4, !tbaa !10
  br label %if.end.247

if.else.246:                                      ; preds = %if.else.219
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.247:                                       ; preds = %if.end.241
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.end.214
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.187
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.end.161
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.133
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.end.105
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.end.78
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %if.end.61
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.256

cleanup.256:                                      ; preds = %if.end.255, %if.else.246, %if.then.238, %if.then.230, %if.then.211, %if.then.203, %if.then.184, %if.then.176, %if.then.158, %if.then.150, %if.then.130, %if.then.122, %if.then.102, %if.then.94, %if.then.76, %if.then.59, %cleanup, %if.then
  %209 = bitcast i32* %word to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %cleanup.dest.257 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.257, label %cleanup.259 [
    i32 0, label %cleanup.cont.258
    i32 3, label %while.end
  ]

cleanup.cont.258:                                 ; preds = %cleanup.256
  br label %while.cond

while.end:                                        ; preds = %cleanup.256
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.259

cleanup.259:                                      ; preds = %while.end, %cleanup.256
  %210 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %b2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %b1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %a2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %a0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = load i32, i32* %retval
  ret i32 %216
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @jbig2_decode_halftone_mmr(%struct._Jbig2Ctx* %ctx, %struct.Jbig2GenericRegionParams* %params, i8* %data, i64 %size, %struct._Jbig2Image* %image, i64* %consumed_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %consumed_bytes.addr = alloca i64*, align 8
  %mmr = alloca %struct.Jbig2MmrCtx, align 8
  %rowstride = alloca i32, align 4
  %dst = alloca i8*, align 8
  %ref = alloca i8*, align 8
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %EOFB = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !5
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i64* %consumed_bytes, i64** %consumed_bytes.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Jbig2MmrCtx* %mmr to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %2, i32 0, i32 2
  %3 = load i32, i32* %stride, align 4, !tbaa !7
  store i32 %3, i32* %rowstride, align 4, !tbaa !10
  %4 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %5, i32 0, i32 3
  %6 = load i8*, i8** %data1, align 8, !tbaa !11
  store i8* %6, i8** %dst, align 8, !tbaa !1
  %7 = bitcast i8** %ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8* null, i8** %ref, align 8, !tbaa !1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %code, align 4, !tbaa !10
  %10 = bitcast i32* %EOFB to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 4097, i32* %EOFB, align 4, !tbaa !10
  %11 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %11, i32 0, i32 0
  %12 = load i32, i32* %width, align 4, !tbaa !12
  %13 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %13, i32 0, i32 1
  %14 = load i32, i32* %height, align 4, !tbaa !13
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %16 = load i64, i64* %size.addr, align 8, !tbaa !5
  call void @jbig2_decode_mmr_init(%struct.Jbig2MmrCtx* %mmr, i32 %12, i32 %14, i8* %15, i64 %16) #3
  store i32 0, i32* %y, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %y, align 4, !tbaa !10
  %18 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %18, i32 0, i32 1
  %19 = load i32, i32* %height2, align 4, !tbaa !13
  %cmp = icmp slt i32 %17, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %dst, align 8, !tbaa !1
  %21 = load i32, i32* %rowstride, align 4, !tbaa !10
  %conv = sext i32 %21 to i64
  %call = call i8* @memset(i8* %20, i32 0, i64 %conv) #4
  %22 = load i8*, i8** %ref, align 8, !tbaa !1
  %23 = load i8*, i8** %dst, align 8, !tbaa !1
  %call3 = call i32 @jbig2_decode_mmr_line(%struct.Jbig2MmrCtx* %mmr, i8* %22, i8* %23) #3
  store i32 %call3, i32* %code, align 4, !tbaa !10
  %24 = load i32, i32* %code, align 4, !tbaa !10
  %cmp4 = icmp slt i32 %24, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %25 = load i32, i32* %code, align 4, !tbaa !10
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %26 = load i8*, i8** %dst, align 8, !tbaa !1
  store i8* %26, i8** %ref, align 8, !tbaa !1
  %27 = load i32, i32* %rowstride, align 4, !tbaa !10
  %28 = load i8*, i8** %dst, align 8, !tbaa !1
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %dst, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %y, align 4, !tbaa !10
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %y, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %word = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %mmr, i32 0, i32 6
  %30 = load i32, i32* %word, align 4, !tbaa !22
  %shr = lshr i32 %30, 8
  %cmp6 = icmp eq i32 %shr, 4097
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  %data_index = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %mmr, i32 0, i32 4
  %31 = load i32, i32* %data_index, align 4, !tbaa !19
  %add = add nsw i32 %31, 3
  store i32 %add, i32* %data_index, align 4, !tbaa !19
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  %data_index10 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %mmr, i32 0, i32 4
  %32 = load i32, i32* %data_index10, align 4, !tbaa !19
  %bit_index = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %mmr, i32 0, i32 5
  %33 = load i32, i32* %bit_index, align 4, !tbaa !20
  %shr11 = ashr i32 %33, 3
  %add12 = add nsw i32 %32, %shr11
  %bit_index13 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %mmr, i32 0, i32 5
  %34 = load i32, i32* %bit_index13, align 4, !tbaa !20
  %cmp14 = icmp sgt i32 %34, 0
  %cond = select i1 %cmp14, i32 1, i32 0
  %add16 = add nsw i32 %add12, %cond
  %conv17 = sext i32 %add16 to i64
  %35 = load i64*, i64** %consumed_bytes.addr, align 8, !tbaa !1
  %36 = load i64, i64* %35, align 8, !tbaa !5
  %add18 = add i64 %36, %conv17
  store i64 %add18, i64* %35, align 8, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !10
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then
  %38 = bitcast i32* %EOFB to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.Jbig2MmrCtx* %mmr to i8*
  call void @llvm.lifetime.end(i64 40, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %mmr, i32 %n_bits) #0 {
entry:
  %mmr.addr = alloca %struct.Jbig2MmrCtx*, align 8
  %n_bits.addr = alloca i32, align 4
  store %struct.Jbig2MmrCtx* %mmr, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  store i32 %n_bits, i32* %n_bits.addr, align 4, !tbaa !10
  %0 = load i32, i32* %n_bits.addr, align 4, !tbaa !10
  %1 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %word = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %1, i32 0, i32 6
  %2 = load i32, i32* %word, align 4, !tbaa !22
  %shl = shl i32 %2, %0
  store i32 %shl, i32* %word, align 4, !tbaa !22
  %3 = load i32, i32* %n_bits.addr, align 4, !tbaa !10
  %4 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %bit_index = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %4, i32 0, i32 5
  %5 = load i32, i32* %bit_index, align 4, !tbaa !20
  %add = add nsw i32 %5, %3
  store i32 %add, i32* %bit_index, align 4, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %bit_index1 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %6, i32 0, i32 5
  %7 = load i32, i32* %bit_index1, align 4, !tbaa !20
  %cmp = icmp sge i32 %7, 8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %bit_index2 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %8, i32 0, i32 5
  %9 = load i32, i32* %bit_index2, align 4, !tbaa !20
  %sub = sub nsw i32 %9, 8
  store i32 %sub, i32* %bit_index2, align 4, !tbaa !20
  %10 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %data_index = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %10, i32 0, i32 4
  %11 = load i32, i32* %data_index, align 4, !tbaa !19
  %add3 = add nsw i32 %11, 4
  %conv = sext i32 %add3 to i64
  %12 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %12, i32 0, i32 3
  %13 = load i64, i64* %size, align 8, !tbaa !18
  %cmp4 = icmp ult i64 %conv, %13
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %data_index6 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %14, i32 0, i32 4
  %15 = load i32, i32* %data_index6, align 4, !tbaa !19
  %add7 = add nsw i32 %15, 4
  %idxprom = sext i32 %add7 to i64
  %16 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %16, i32 0, i32 2
  %17 = load i8*, i8** %data, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv8 = zext i8 %18 to i32
  %19 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %bit_index9 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %19, i32 0, i32 5
  %20 = load i32, i32* %bit_index9, align 4, !tbaa !20
  %shl10 = shl i32 %conv8, %20
  %21 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %word11 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %21, i32 0, i32 6
  %22 = load i32, i32* %word11, align 4, !tbaa !22
  %or = or i32 %22, %shl10
  store i32 %or, i32* %word11, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %23 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %data_index12 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %23, i32 0, i32 4
  %24 = load i32, i32* %data_index12, align 4, !tbaa !19
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %data_index12, align 4, !tbaa !19
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_get_run(%struct.Jbig2MmrCtx* %mmr, %struct.mmr_table_node* %table, i32 %initial_bits) #0 {
entry:
  %mmr.addr = alloca %struct.Jbig2MmrCtx*, align 8
  %table.addr = alloca %struct.mmr_table_node*, align 8
  %initial_bits.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.Jbig2MmrCtx* %mmr, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  store %struct.mmr_table_node* %table, %struct.mmr_table_node** %table.addr, align 8, !tbaa !1
  store i32 %initial_bits, i32* %initial_bits.addr, align 4, !tbaa !10
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %result, align 4, !tbaa !10
  %1 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %3 = load %struct.mmr_table_node*, %struct.mmr_table_node** %table.addr, align 8, !tbaa !1
  %4 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %call = call i32 @jbig2_decode_get_code(%struct.Jbig2MmrCtx* %2, %struct.mmr_table_node* %3, i32 %4) #3
  store i32 %call, i32* %val, align 4, !tbaa !10
  %5 = load i32, i32* %val, align 4, !tbaa !10
  %6 = load i32, i32* %result, align 4, !tbaa !10
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %result, align 4, !tbaa !10
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, i32* %val, align 4, !tbaa !10
  %cmp = icmp sge i32 %7, 64
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %result, align 4, !tbaa !10
  %9 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @jbig2_set_bits(i8* %line, i32 %x0, i32 %x1) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %x0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %a0 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %b0 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %a = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !10
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !10
  %0 = bitcast i32* %a0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %b0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %b1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %x0.addr, align 4, !tbaa !10
  %shr = ashr i32 %5, 3
  store i32 %shr, i32* %a0, align 4, !tbaa !10
  %6 = load i32, i32* %x1.addr, align 4, !tbaa !10
  %shr1 = ashr i32 %6, 3
  store i32 %shr1, i32* %a1, align 4, !tbaa !10
  %7 = load i32, i32* %x0.addr, align 4, !tbaa !10
  %and = and i32 %7, 7
  store i32 %and, i32* %b0, align 4, !tbaa !10
  %8 = load i32, i32* %x1.addr, align 4, !tbaa !10
  %and2 = and i32 %8, 7
  store i32 %and2, i32* %b1, align 4, !tbaa !10
  %9 = load i32, i32* %a0, align 4, !tbaa !10
  %10 = load i32, i32* %a1, align 4, !tbaa !10
  %cmp = icmp eq i32 %9, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %b0, align 4, !tbaa !10
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* @lm, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %b1, align 4, !tbaa !10
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds [8 x i8], [8 x i8]* @rm, i32 0, i64 %idxprom3
  %14 = load i8, i8* %arrayidx4, align 1, !tbaa !21
  %conv5 = zext i8 %14 to i32
  %and6 = and i32 %conv, %conv5
  %15 = load i32, i32* %a0, align 4, !tbaa !10
  %idxprom7 = sext i32 %15 to i64
  %16 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 %idxprom7
  %17 = load i8, i8* %arrayidx8, align 1, !tbaa !21
  %conv9 = zext i8 %17 to i32
  %or = or i32 %conv9, %and6
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %arrayidx8, align 1, !tbaa !21
  br label %if.end.32

if.else:                                          ; preds = %entry
  %18 = load i32, i32* %b0, align 4, !tbaa !10
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds [8 x i8], [8 x i8]* @lm, i32 0, i64 %idxprom11
  %19 = load i8, i8* %arrayidx12, align 1, !tbaa !21
  %conv13 = zext i8 %19 to i32
  %20 = load i32, i32* %a0, align 4, !tbaa !10
  %idxprom14 = sext i32 %20 to i64
  %21 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 %idxprom14
  %22 = load i8, i8* %arrayidx15, align 1, !tbaa !21
  %conv16 = zext i8 %22 to i32
  %or17 = or i32 %conv16, %conv13
  %conv18 = trunc i32 %or17 to i8
  store i8 %conv18, i8* %arrayidx15, align 1, !tbaa !21
  %23 = load i32, i32* %a0, align 4, !tbaa !10
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %a, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %24 = load i32, i32* %a, align 4, !tbaa !10
  %25 = load i32, i32* %a1, align 4, !tbaa !10
  %cmp19 = icmp slt i32 %24, %25
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %a, align 4, !tbaa !10
  %idxprom21 = sext i32 %26 to i64
  %27 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %27, i64 %idxprom21
  store i8 -1, i8* %arrayidx22, align 1, !tbaa !21
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %a, align 4, !tbaa !10
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %a, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %b1, align 4, !tbaa !10
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %for.end
  %30 = load i32, i32* %b1, align 4, !tbaa !10
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds [8 x i8], [8 x i8]* @rm, i32 0, i64 %idxprom24
  %31 = load i8, i8* %arrayidx25, align 1, !tbaa !21
  %conv26 = zext i8 %31 to i32
  %32 = load i32, i32* %a1, align 4, !tbaa !10
  %idxprom27 = sext i32 %32 to i64
  %33 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %33, i64 %idxprom27
  %34 = load i8, i8* %arrayidx28, align 1, !tbaa !21
  %conv29 = zext i8 %34 to i32
  %or30 = or i32 %conv29, %conv26
  %conv31 = trunc i32 %or30 to i8
  store i8 %conv31, i8* %arrayidx28, align 1, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then.23, %for.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then
  %35 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %b1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %b0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %a0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_find_changing_element_of_color(i8* %line, i32 %x, i32 %w, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !10
  store i32 %w, i32* %w.addr, align 4, !tbaa !10
  store i32 %color, i32* %color.addr, align 4, !tbaa !10
  %0 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %w.addr, align 4, !tbaa !10
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %3 = load i32, i32* %x.addr, align 4, !tbaa !10
  %4 = load i32, i32* %w.addr, align 4, !tbaa !10
  %call = call i32 @jbig2_find_changing_element(i8* %2, i32 %3, i32 %4) #3
  store i32 %call, i32* %x.addr, align 4, !tbaa !10
  %5 = load i32, i32* %x.addr, align 4, !tbaa !10
  %6 = load i32, i32* %w.addr, align 4, !tbaa !10
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %x.addr, align 4, !tbaa !10
  %shr = ashr i32 %7, 3
  %idxprom = sext i32 %shr to i64
  %8 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %x.addr, align 4, !tbaa !10
  %and = and i32 %10, 7
  %sub = sub nsw i32 7, %and
  %shr2 = ashr i32 %conv, %sub
  %and3 = and i32 %shr2, 1
  %11 = load i32, i32* %color.addr, align 4, !tbaa !10
  %cmp4 = icmp ne i32 %and3, %11
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %13 = load i32, i32* %x.addr, align 4, !tbaa !10
  %14 = load i32, i32* %w.addr, align 4, !tbaa !10
  %call7 = call i32 @jbig2_find_changing_element(i8* %12, i32 %13, i32 %14) #3
  store i32 %call7, i32* %x.addr, align 4, !tbaa !10
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %land.lhs.true, %if.end
  %15 = load i32, i32* %x.addr, align 4, !tbaa !10
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_find_changing_element(i8* %line, i32 %x, i32 %w) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !10
  store i32 %w, i32* %w.addr, align 4, !tbaa !10
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %w.addr, align 4, !tbaa !10
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4, !tbaa !10
  %cmp1 = icmp eq i32 %4, -1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %a, align 4, !tbaa !10
  store i32 0, i32* %x.addr, align 4, !tbaa !10
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %5 = load i32, i32* %x.addr, align 4, !tbaa !10
  %shr = ashr i32 %5, 3
  %idxprom = sext i32 %shr to i64
  %6 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %x.addr, align 4, !tbaa !10
  %and = and i32 %8, 7
  %sub = sub nsw i32 7, %and
  %shr3 = ashr i32 %conv, %sub
  %and4 = and i32 %shr3, 1
  store i32 %and4, i32* %a, align 4, !tbaa !10
  %9 = load i32, i32* %x.addr, align 4, !tbaa !10
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x.addr, align 4, !tbaa !10
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end.5
  %10 = load i32, i32* %x.addr, align 4, !tbaa !10
  %11 = load i32, i32* %w.addr, align 4, !tbaa !10
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %x.addr, align 4, !tbaa !10
  %shr8 = ashr i32 %12, 3
  %idxprom9 = sext i32 %shr8 to i64
  %13 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  %14 = load i8, i8* %arrayidx10, align 1, !tbaa !21
  %conv11 = zext i8 %14 to i32
  %15 = load i32, i32* %x.addr, align 4, !tbaa !10
  %and12 = and i32 %15, 7
  %sub13 = sub nsw i32 7, %and12
  %shr14 = ashr i32 %conv11, %sub13
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %b, align 4, !tbaa !10
  %16 = load i32, i32* %a, align 4, !tbaa !10
  %17 = load i32, i32* %b, align 4, !tbaa !10
  %cmp16 = icmp ne i32 %16, %17
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.body
  br label %while.end

if.end.19:                                        ; preds = %while.body
  %18 = load i32, i32* %x.addr, align 4, !tbaa !10
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, i32* %x.addr, align 4, !tbaa !10
  br label %while.cond

while.end:                                        ; preds = %if.then.18, %while.cond
  %19 = load i32, i32* %x.addr, align 4, !tbaa !10
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %20 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_get_code(%struct.Jbig2MmrCtx* %mmr, %struct.mmr_table_node* %table, i32 %initial_bits) #0 {
entry:
  %mmr.addr = alloca %struct.Jbig2MmrCtx*, align 8
  %table.addr = alloca %struct.mmr_table_node*, align 8
  %initial_bits.addr = alloca i32, align 4
  %word = alloca i32, align 4
  %table_ix = alloca i32, align 4
  %val = alloca i32, align 4
  %n_bits = alloca i32, align 4
  %mask = alloca i32, align 4
  store %struct.Jbig2MmrCtx* %mmr, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  store %struct.mmr_table_node* %table, %struct.mmr_table_node** %table.addr, align 8, !tbaa !1
  store i32 %initial_bits, i32* %initial_bits.addr, align 4, !tbaa !10
  %0 = bitcast i32* %word to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %word1 = getelementptr inbounds %struct.Jbig2MmrCtx, %struct.Jbig2MmrCtx* %1, i32 0, i32 6
  %2 = load i32, i32* %word1, align 4, !tbaa !22
  store i32 %2, i32* %word, align 4, !tbaa !10
  %3 = bitcast i32* %table_ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %word, align 4, !tbaa !10
  %5 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %sub = sub nsw i32 32, %5
  %shr = lshr i32 %4, %sub
  store i32 %shr, i32* %table_ix, align 4, !tbaa !10
  %6 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %table_ix, align 4, !tbaa !10
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.mmr_table_node*, %struct.mmr_table_node** %table.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.mmr_table_node, %struct.mmr_table_node* %8, i64 %idxprom
  %val2 = getelementptr inbounds %struct.mmr_table_node, %struct.mmr_table_node* %arrayidx, i32 0, i32 0
  %9 = load i16, i16* %val2, align 2, !tbaa !23
  %conv = sext i16 %9 to i32
  store i32 %conv, i32* %val, align 4, !tbaa !10
  %10 = bitcast i32* %n_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %table_ix, align 4, !tbaa !10
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.mmr_table_node*, %struct.mmr_table_node** %table.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.mmr_table_node, %struct.mmr_table_node* %12, i64 %idxprom3
  %n_bits5 = getelementptr inbounds %struct.mmr_table_node, %struct.mmr_table_node* %arrayidx4, i32 0, i32 1
  %13 = load i16, i16* %n_bits5, align 2, !tbaa !26
  %conv6 = sext i16 %13 to i32
  store i32 %conv6, i32* %n_bits, align 4, !tbaa !10
  %14 = load i32, i32* %n_bits, align 4, !tbaa !10
  %15 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %cmp = icmp sgt i32 %14, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %sub8 = sub nsw i32 32, %17
  %shl = shl i32 1, %sub8
  %sub9 = sub nsw i32 %shl, 1
  store i32 %sub9, i32* %mask, align 4, !tbaa !10
  %18 = load i32, i32* %val, align 4, !tbaa !10
  %19 = load i32, i32* %word, align 4, !tbaa !10
  %20 = load i32, i32* %mask, align 4, !tbaa !10
  %and = and i32 %19, %20
  %21 = load i32, i32* %n_bits, align 4, !tbaa !10
  %sub10 = sub nsw i32 32, %21
  %shr11 = lshr i32 %and, %sub10
  %add = add i32 %18, %shr11
  store i32 %add, i32* %table_ix, align 4, !tbaa !10
  %22 = load i32, i32* %table_ix, align 4, !tbaa !10
  %idxprom12 = sext i32 %22 to i64
  %23 = load %struct.mmr_table_node*, %struct.mmr_table_node** %table.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.mmr_table_node, %struct.mmr_table_node* %23, i64 %idxprom12
  %val14 = getelementptr inbounds %struct.mmr_table_node, %struct.mmr_table_node* %arrayidx13, i32 0, i32 0
  %24 = load i16, i16* %val14, align 2, !tbaa !23
  %conv15 = sext i16 %24 to i32
  store i32 %conv15, i32* %val, align 4, !tbaa !10
  %25 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %26 = load i32, i32* %table_ix, align 4, !tbaa !10
  %idxprom16 = sext i32 %26 to i64
  %27 = load %struct.mmr_table_node*, %struct.mmr_table_node** %table.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.mmr_table_node, %struct.mmr_table_node* %27, i64 %idxprom16
  %n_bits18 = getelementptr inbounds %struct.mmr_table_node, %struct.mmr_table_node* %arrayidx17, i32 0, i32 1
  %28 = load i16, i16* %n_bits18, align 2, !tbaa !26
  %conv19 = sext i16 %28 to i32
  %add20 = add nsw i32 %25, %conv19
  store i32 %add20, i32* %n_bits, align 4, !tbaa !10
  %29 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct.Jbig2MmrCtx*, %struct.Jbig2MmrCtx** %mmr.addr, align 8, !tbaa !1
  %31 = load i32, i32* %n_bits, align 4, !tbaa !10
  call void @jbig2_decode_mmr_consume(%struct.Jbig2MmrCtx* %30, i32 %31) #3
  %32 = load i32, i32* %val, align 4, !tbaa !10
  %33 = bitcast i32* %n_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %table_ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %word to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  ret i32 %32
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !9, i64 8}
!8 = !{!"_Jbig2Image", !9, i64 0, !9, i64 4, !9, i64 8, !2, i64 16, !9, i64 24}
!9 = !{!"int", !3, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!8, !2, i64 16}
!12 = !{!8, !9, i64 0}
!13 = !{!8, !9, i64 4}
!14 = !{!15, !9, i64 0}
!15 = !{!"", !9, i64 0, !9, i64 4, !2, i64 8, !6, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!16 = !{!15, !9, i64 4}
!17 = !{!15, !2, i64 8}
!18 = !{!15, !6, i64 16}
!19 = !{!15, !9, i64 24}
!20 = !{!15, !9, i64 28}
!21 = !{!3, !3, i64 0}
!22 = !{!15, !9, i64 32}
!23 = !{!24, !25, i64 0}
!24 = !{!"", !25, i64 0, !25, i64 2}
!25 = !{!"short", !3, i64 0}
!26 = !{!24, !25, i64 2}
