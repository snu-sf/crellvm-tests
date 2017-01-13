; ModuleID = './jbig2_huffman.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2HuffmanLine = type { i32, i32, i32 }
%struct._Jbig2HuffmanParams = type { i32, i32, %struct._Jbig2HuffmanLine* }
%struct._Jbig2HuffmanState = type { i32, i32, i32, i32, i32, %struct._Jbig2WordStream*, %struct._Jbig2Ctx* }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct._Jbig2WordStream = type { i32 (%struct._Jbig2WordStream*, i32, i32*)* }
%struct._Jbig2HuffmanTable = type { i32, %struct._Jbig2HuffmanEntry* }
%struct._Jbig2HuffmanEntry = type { %union.anon, i8, i8, i8 }
%union.anon = type { %struct._Jbig2HuffmanTable* }

@jbig2_huffman_lines_A = constant [5 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 1, i32 4, i32 0 }, %struct._Jbig2HuffmanLine { i32 2, i32 8, i32 16 }, %struct._Jbig2HuffmanLine { i32 3, i32 16, i32 272 }, %struct._Jbig2HuffmanLine { i32 0, i32 32, i32 -1 }, %struct._Jbig2HuffmanLine { i32 3, i32 32, i32 65808 }], align 16
@jbig2_huffman_params_A = constant %struct._Jbig2HuffmanParams { i32 0, i32 5, %struct._Jbig2HuffmanLine* getelementptr inbounds ([5 x %struct._Jbig2HuffmanLine], [5 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_A, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_B = constant [8 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 1, i32 0, i32 0 }, %struct._Jbig2HuffmanLine { i32 2, i32 0, i32 1 }, %struct._Jbig2HuffmanLine { i32 3, i32 0, i32 2 }, %struct._Jbig2HuffmanLine { i32 4, i32 3, i32 3 }, %struct._Jbig2HuffmanLine { i32 5, i32 6, i32 11 }, %struct._Jbig2HuffmanLine { i32 0, i32 32, i32 -1 }, %struct._Jbig2HuffmanLine { i32 6, i32 32, i32 75 }, %struct._Jbig2HuffmanLine { i32 6, i32 0, i32 0 }], align 16
@jbig2_huffman_params_B = constant %struct._Jbig2HuffmanParams { i32 1, i32 8, %struct._Jbig2HuffmanLine* getelementptr inbounds ([8 x %struct._Jbig2HuffmanLine], [8 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_B, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_C = constant [9 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 8, i32 8, i32 -256 }, %struct._Jbig2HuffmanLine { i32 1, i32 0, i32 0 }, %struct._Jbig2HuffmanLine { i32 2, i32 0, i32 1 }, %struct._Jbig2HuffmanLine { i32 3, i32 0, i32 2 }, %struct._Jbig2HuffmanLine { i32 4, i32 3, i32 3 }, %struct._Jbig2HuffmanLine { i32 5, i32 6, i32 11 }, %struct._Jbig2HuffmanLine { i32 8, i32 32, i32 -257 }, %struct._Jbig2HuffmanLine { i32 7, i32 32, i32 75 }, %struct._Jbig2HuffmanLine { i32 6, i32 0, i32 0 }], align 16
@jbig2_huffman_params_C = constant %struct._Jbig2HuffmanParams { i32 1, i32 9, %struct._Jbig2HuffmanLine* getelementptr inbounds ([9 x %struct._Jbig2HuffmanLine], [9 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_C, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_D = constant [7 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 1, i32 0, i32 1 }, %struct._Jbig2HuffmanLine { i32 2, i32 0, i32 2 }, %struct._Jbig2HuffmanLine { i32 3, i32 0, i32 3 }, %struct._Jbig2HuffmanLine { i32 4, i32 3, i32 4 }, %struct._Jbig2HuffmanLine { i32 5, i32 6, i32 12 }, %struct._Jbig2HuffmanLine { i32 0, i32 32, i32 -1 }, %struct._Jbig2HuffmanLine { i32 5, i32 32, i32 76 }], align 16
@jbig2_huffman_params_D = constant %struct._Jbig2HuffmanParams { i32 0, i32 7, %struct._Jbig2HuffmanLine* getelementptr inbounds ([7 x %struct._Jbig2HuffmanLine], [7 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_D, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_E = constant [8 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 7, i32 8, i32 -255 }, %struct._Jbig2HuffmanLine { i32 1, i32 0, i32 1 }, %struct._Jbig2HuffmanLine { i32 2, i32 0, i32 2 }, %struct._Jbig2HuffmanLine { i32 3, i32 0, i32 3 }, %struct._Jbig2HuffmanLine { i32 4, i32 3, i32 4 }, %struct._Jbig2HuffmanLine { i32 5, i32 6, i32 12 }, %struct._Jbig2HuffmanLine { i32 7, i32 32, i32 -256 }, %struct._Jbig2HuffmanLine { i32 6, i32 32, i32 76 }], align 16
@jbig2_huffman_params_E = constant %struct._Jbig2HuffmanParams { i32 0, i32 8, %struct._Jbig2HuffmanLine* getelementptr inbounds ([8 x %struct._Jbig2HuffmanLine], [8 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_E, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_F = constant [14 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 5, i32 10, i32 -2048 }, %struct._Jbig2HuffmanLine { i32 4, i32 9, i32 -1024 }, %struct._Jbig2HuffmanLine { i32 4, i32 8, i32 -512 }, %struct._Jbig2HuffmanLine { i32 4, i32 7, i32 -256 }, %struct._Jbig2HuffmanLine { i32 5, i32 6, i32 -128 }, %struct._Jbig2HuffmanLine { i32 5, i32 5, i32 -64 }, %struct._Jbig2HuffmanLine { i32 4, i32 5, i32 -32 }, %struct._Jbig2HuffmanLine { i32 2, i32 7, i32 0 }, %struct._Jbig2HuffmanLine { i32 3, i32 7, i32 128 }, %struct._Jbig2HuffmanLine { i32 3, i32 8, i32 256 }, %struct._Jbig2HuffmanLine { i32 4, i32 9, i32 512 }, %struct._Jbig2HuffmanLine { i32 4, i32 10, i32 1024 }, %struct._Jbig2HuffmanLine { i32 6, i32 32, i32 -2049 }, %struct._Jbig2HuffmanLine { i32 6, i32 32, i32 2048 }], align 16
@jbig2_huffman_params_F = constant %struct._Jbig2HuffmanParams { i32 0, i32 14, %struct._Jbig2HuffmanLine* getelementptr inbounds ([14 x %struct._Jbig2HuffmanLine], [14 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_F, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_G = constant [15 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 4, i32 9, i32 -1024 }, %struct._Jbig2HuffmanLine { i32 3, i32 8, i32 -512 }, %struct._Jbig2HuffmanLine { i32 4, i32 7, i32 -256 }, %struct._Jbig2HuffmanLine { i32 5, i32 6, i32 -128 }, %struct._Jbig2HuffmanLine { i32 5, i32 5, i32 -64 }, %struct._Jbig2HuffmanLine { i32 4, i32 5, i32 -32 }, %struct._Jbig2HuffmanLine { i32 4, i32 5, i32 0 }, %struct._Jbig2HuffmanLine { i32 5, i32 5, i32 32 }, %struct._Jbig2HuffmanLine { i32 5, i32 6, i32 64 }, %struct._Jbig2HuffmanLine { i32 4, i32 7, i32 128 }, %struct._Jbig2HuffmanLine { i32 3, i32 8, i32 256 }, %struct._Jbig2HuffmanLine { i32 3, i32 9, i32 512 }, %struct._Jbig2HuffmanLine { i32 3, i32 10, i32 1024 }, %struct._Jbig2HuffmanLine { i32 5, i32 32, i32 -1025 }, %struct._Jbig2HuffmanLine { i32 5, i32 32, i32 2048 }], align 16
@jbig2_huffman_params_G = constant %struct._Jbig2HuffmanParams { i32 0, i32 15, %struct._Jbig2HuffmanLine* getelementptr inbounds ([15 x %struct._Jbig2HuffmanLine], [15 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_G, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_H = constant [21 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 8, i32 3, i32 -15 }, %struct._Jbig2HuffmanLine { i32 9, i32 1, i32 -7 }, %struct._Jbig2HuffmanLine { i32 8, i32 1, i32 -5 }, %struct._Jbig2HuffmanLine { i32 9, i32 0, i32 -3 }, %struct._Jbig2HuffmanLine { i32 7, i32 0, i32 -2 }, %struct._Jbig2HuffmanLine { i32 4, i32 0, i32 -1 }, %struct._Jbig2HuffmanLine { i32 2, i32 1, i32 0 }, %struct._Jbig2HuffmanLine { i32 5, i32 0, i32 2 }, %struct._Jbig2HuffmanLine { i32 6, i32 0, i32 3 }, %struct._Jbig2HuffmanLine { i32 3, i32 4, i32 4 }, %struct._Jbig2HuffmanLine { i32 6, i32 1, i32 20 }, %struct._Jbig2HuffmanLine { i32 4, i32 4, i32 22 }, %struct._Jbig2HuffmanLine { i32 4, i32 5, i32 38 }, %struct._Jbig2HuffmanLine { i32 5, i32 6, i32 70 }, %struct._Jbig2HuffmanLine { i32 5, i32 7, i32 134 }, %struct._Jbig2HuffmanLine { i32 6, i32 7, i32 262 }, %struct._Jbig2HuffmanLine { i32 7, i32 8, i32 390 }, %struct._Jbig2HuffmanLine { i32 6, i32 10, i32 646 }, %struct._Jbig2HuffmanLine { i32 9, i32 32, i32 -16 }, %struct._Jbig2HuffmanLine { i32 9, i32 32, i32 1670 }, %struct._Jbig2HuffmanLine { i32 2, i32 0, i32 0 }], align 16
@jbig2_huffman_params_H = constant %struct._Jbig2HuffmanParams { i32 1, i32 21, %struct._Jbig2HuffmanLine* getelementptr inbounds ([21 x %struct._Jbig2HuffmanLine], [21 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_H, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_I = constant [22 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 8, i32 4, i32 -31 }, %struct._Jbig2HuffmanLine { i32 9, i32 2, i32 -15 }, %struct._Jbig2HuffmanLine { i32 8, i32 2, i32 -11 }, %struct._Jbig2HuffmanLine { i32 9, i32 1, i32 -7 }, %struct._Jbig2HuffmanLine { i32 7, i32 1, i32 -5 }, %struct._Jbig2HuffmanLine { i32 4, i32 1, i32 -3 }, %struct._Jbig2HuffmanLine { i32 3, i32 1, i32 -1 }, %struct._Jbig2HuffmanLine { i32 3, i32 1, i32 1 }, %struct._Jbig2HuffmanLine { i32 5, i32 1, i32 3 }, %struct._Jbig2HuffmanLine { i32 6, i32 1, i32 5 }, %struct._Jbig2HuffmanLine { i32 3, i32 5, i32 7 }, %struct._Jbig2HuffmanLine { i32 6, i32 2, i32 39 }, %struct._Jbig2HuffmanLine { i32 4, i32 5, i32 43 }, %struct._Jbig2HuffmanLine { i32 4, i32 6, i32 75 }, %struct._Jbig2HuffmanLine { i32 5, i32 7, i32 139 }, %struct._Jbig2HuffmanLine { i32 5, i32 8, i32 267 }, %struct._Jbig2HuffmanLine { i32 6, i32 8, i32 523 }, %struct._Jbig2HuffmanLine { i32 7, i32 9, i32 779 }, %struct._Jbig2HuffmanLine { i32 6, i32 11, i32 1291 }, %struct._Jbig2HuffmanLine { i32 9, i32 32, i32 -32 }, %struct._Jbig2HuffmanLine { i32 9, i32 32, i32 3339 }, %struct._Jbig2HuffmanLine { i32 2, i32 0, i32 0 }], align 16
@jbig2_huffman_params_I = constant %struct._Jbig2HuffmanParams { i32 1, i32 22, %struct._Jbig2HuffmanLine* getelementptr inbounds ([22 x %struct._Jbig2HuffmanLine], [22 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_I, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_J = constant [21 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 7, i32 4, i32 -21 }, %struct._Jbig2HuffmanLine { i32 8, i32 0, i32 -5 }, %struct._Jbig2HuffmanLine { i32 7, i32 0, i32 -4 }, %struct._Jbig2HuffmanLine { i32 5, i32 0, i32 -3 }, %struct._Jbig2HuffmanLine { i32 2, i32 2, i32 -2 }, %struct._Jbig2HuffmanLine { i32 5, i32 0, i32 2 }, %struct._Jbig2HuffmanLine { i32 6, i32 0, i32 3 }, %struct._Jbig2HuffmanLine { i32 7, i32 0, i32 4 }, %struct._Jbig2HuffmanLine { i32 8, i32 0, i32 5 }, %struct._Jbig2HuffmanLine { i32 2, i32 6, i32 6 }, %struct._Jbig2HuffmanLine { i32 5, i32 5, i32 70 }, %struct._Jbig2HuffmanLine { i32 6, i32 5, i32 102 }, %struct._Jbig2HuffmanLine { i32 6, i32 6, i32 134 }, %struct._Jbig2HuffmanLine { i32 6, i32 7, i32 198 }, %struct._Jbig2HuffmanLine { i32 6, i32 8, i32 326 }, %struct._Jbig2HuffmanLine { i32 6, i32 9, i32 582 }, %struct._Jbig2HuffmanLine { i32 6, i32 10, i32 1094 }, %struct._Jbig2HuffmanLine { i32 7, i32 11, i32 2118 }, %struct._Jbig2HuffmanLine { i32 8, i32 32, i32 -22 }, %struct._Jbig2HuffmanLine { i32 8, i32 32, i32 4166 }, %struct._Jbig2HuffmanLine { i32 2, i32 0, i32 0 }], align 16
@jbig2_huffman_params_J = constant %struct._Jbig2HuffmanParams { i32 1, i32 21, %struct._Jbig2HuffmanLine* getelementptr inbounds ([21 x %struct._Jbig2HuffmanLine], [21 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_J, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_K = constant [14 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 1, i32 0, i32 1 }, %struct._Jbig2HuffmanLine { i32 2, i32 1, i32 2 }, %struct._Jbig2HuffmanLine { i32 4, i32 0, i32 4 }, %struct._Jbig2HuffmanLine { i32 4, i32 1, i32 5 }, %struct._Jbig2HuffmanLine { i32 5, i32 1, i32 7 }, %struct._Jbig2HuffmanLine { i32 5, i32 2, i32 9 }, %struct._Jbig2HuffmanLine { i32 6, i32 2, i32 13 }, %struct._Jbig2HuffmanLine { i32 7, i32 2, i32 17 }, %struct._Jbig2HuffmanLine { i32 7, i32 3, i32 21 }, %struct._Jbig2HuffmanLine { i32 7, i32 4, i32 29 }, %struct._Jbig2HuffmanLine { i32 7, i32 5, i32 45 }, %struct._Jbig2HuffmanLine { i32 7, i32 6, i32 77 }, %struct._Jbig2HuffmanLine { i32 0, i32 32, i32 -1 }, %struct._Jbig2HuffmanLine { i32 7, i32 32, i32 141 }], align 16
@jbig2_huffman_params_K = constant %struct._Jbig2HuffmanParams { i32 0, i32 14, %struct._Jbig2HuffmanLine* getelementptr inbounds ([14 x %struct._Jbig2HuffmanLine], [14 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_K, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_L = constant [15 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 1, i32 0, i32 1 }, %struct._Jbig2HuffmanLine { i32 2, i32 0, i32 2 }, %struct._Jbig2HuffmanLine { i32 3, i32 1, i32 3 }, %struct._Jbig2HuffmanLine { i32 5, i32 0, i32 5 }, %struct._Jbig2HuffmanLine { i32 5, i32 1, i32 6 }, %struct._Jbig2HuffmanLine { i32 6, i32 1, i32 8 }, %struct._Jbig2HuffmanLine { i32 7, i32 0, i32 10 }, %struct._Jbig2HuffmanLine { i32 7, i32 1, i32 11 }, %struct._Jbig2HuffmanLine { i32 7, i32 2, i32 13 }, %struct._Jbig2HuffmanLine { i32 7, i32 3, i32 17 }, %struct._Jbig2HuffmanLine { i32 7, i32 4, i32 25 }, %struct._Jbig2HuffmanLine { i32 8, i32 5, i32 41 }, %struct._Jbig2HuffmanLine { i32 8, i32 32, i32 73 }, %struct._Jbig2HuffmanLine { i32 0, i32 32, i32 -1 }, %struct._Jbig2HuffmanLine { i32 0, i32 32, i32 0 }], align 16
@jbig2_huffman_params_L = constant %struct._Jbig2HuffmanParams { i32 0, i32 15, %struct._Jbig2HuffmanLine* getelementptr inbounds ([15 x %struct._Jbig2HuffmanLine], [15 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_L, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_M = constant [14 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 1, i32 0, i32 1 }, %struct._Jbig2HuffmanLine { i32 3, i32 0, i32 2 }, %struct._Jbig2HuffmanLine { i32 4, i32 0, i32 3 }, %struct._Jbig2HuffmanLine { i32 5, i32 0, i32 4 }, %struct._Jbig2HuffmanLine { i32 4, i32 1, i32 5 }, %struct._Jbig2HuffmanLine { i32 3, i32 3, i32 7 }, %struct._Jbig2HuffmanLine { i32 6, i32 1, i32 15 }, %struct._Jbig2HuffmanLine { i32 6, i32 2, i32 17 }, %struct._Jbig2HuffmanLine { i32 6, i32 3, i32 21 }, %struct._Jbig2HuffmanLine { i32 6, i32 4, i32 29 }, %struct._Jbig2HuffmanLine { i32 6, i32 5, i32 45 }, %struct._Jbig2HuffmanLine { i32 7, i32 6, i32 77 }, %struct._Jbig2HuffmanLine { i32 0, i32 32, i32 -1 }, %struct._Jbig2HuffmanLine { i32 7, i32 32, i32 141 }], align 16
@jbig2_huffman_params_M = constant %struct._Jbig2HuffmanParams { i32 0, i32 14, %struct._Jbig2HuffmanLine* getelementptr inbounds ([14 x %struct._Jbig2HuffmanLine], [14 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_M, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_N = constant [7 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 3, i32 0, i32 -2 }, %struct._Jbig2HuffmanLine { i32 3, i32 0, i32 -1 }, %struct._Jbig2HuffmanLine { i32 1, i32 0, i32 0 }, %struct._Jbig2HuffmanLine { i32 3, i32 0, i32 1 }, %struct._Jbig2HuffmanLine { i32 3, i32 0, i32 2 }, %struct._Jbig2HuffmanLine { i32 0, i32 32, i32 -1 }, %struct._Jbig2HuffmanLine { i32 0, i32 32, i32 3 }], align 16
@jbig2_huffman_params_N = constant %struct._Jbig2HuffmanParams { i32 0, i32 7, %struct._Jbig2HuffmanLine* getelementptr inbounds ([7 x %struct._Jbig2HuffmanLine], [7 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_N, i32 0, i32 0) }, align 8
@jbig2_huffman_lines_O = constant [13 x %struct._Jbig2HuffmanLine] [%struct._Jbig2HuffmanLine { i32 7, i32 4, i32 -24 }, %struct._Jbig2HuffmanLine { i32 6, i32 2, i32 -8 }, %struct._Jbig2HuffmanLine { i32 5, i32 1, i32 -4 }, %struct._Jbig2HuffmanLine { i32 4, i32 0, i32 -2 }, %struct._Jbig2HuffmanLine { i32 3, i32 0, i32 -1 }, %struct._Jbig2HuffmanLine { i32 1, i32 0, i32 0 }, %struct._Jbig2HuffmanLine { i32 3, i32 0, i32 1 }, %struct._Jbig2HuffmanLine { i32 4, i32 0, i32 2 }, %struct._Jbig2HuffmanLine { i32 5, i32 1, i32 3 }, %struct._Jbig2HuffmanLine { i32 6, i32 2, i32 5 }, %struct._Jbig2HuffmanLine { i32 7, i32 4, i32 9 }, %struct._Jbig2HuffmanLine { i32 7, i32 32, i32 -25 }, %struct._Jbig2HuffmanLine { i32 7, i32 32, i32 25 }], align 16
@jbig2_huffman_params_O = constant %struct._Jbig2HuffmanParams { i32 0, i32 13, %struct._Jbig2HuffmanLine* getelementptr inbounds ([13 x %struct._Jbig2HuffmanLine], [13 x %struct._Jbig2HuffmanLine]* @jbig2_huffman_lines_O, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to allocate new huffman coding state\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"end of jbig2 buffer reached at offset %d\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"end of Jbig2WordStream reached at offset %d\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"couldn't allocate storage for huffman histogram\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"constructing huffman table log size %d\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"couldn't allocate result storage in jbig2_build_huffman_table\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"couldn't allocate entries storage in jbig2_build_huffman_table\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"ran off the end of the entries table! (%d >= %d)\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Could not allocate Huffman Table Parameter\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Could not allocate Huffman Table Lines\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Could not reallocate Huffman Table Lines\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Segment too short\00", align 1

; Function Attrs: nounwind uwtable
define %struct._Jbig2HuffmanState* @jbig2_huffman_new(%struct._Jbig2Ctx* %ctx, %struct._Jbig2WordStream* %ws) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %ws.addr = alloca %struct._Jbig2WordStream*, align 8
  %result = alloca %struct._Jbig2HuffmanState*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2WordStream* %ws, %struct._Jbig2WordStream** %ws.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2HuffmanState** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._Jbig2HuffmanState* null, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !5
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %2, i64 1, i64 40) #4
  %3 = bitcast i8* %call to %struct._Jbig2HuffmanState*
  store %struct._Jbig2HuffmanState* %3, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %4 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %cmp = icmp ne %struct._Jbig2HuffmanState* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %5, i32 0, i32 3
  store i32 0, i32* %offset, align 4, !tbaa !9
  %6 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %offset_bits = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %6, i32 0, i32 2
  store i32 0, i32* %offset_bits, align 4, !tbaa !11
  %7 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %offset_limit = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %7, i32 0, i32 4
  store i32 0, i32* %offset_limit, align 4, !tbaa !12
  %8 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws.addr, align 8, !tbaa !1
  %9 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %ws1 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %9, i32 0, i32 5
  store %struct._Jbig2WordStream* %8, %struct._Jbig2WordStream** %ws1, align 8, !tbaa !13
  %10 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %11 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %ctx2 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %11, i32 0, i32 6
  store %struct._Jbig2Ctx* %10, %struct._Jbig2Ctx** %ctx2, align 8, !tbaa !14
  %12 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %call3 = call i32 @huff_get_next_word(%struct._Jbig2HuffmanState* %12, i32 0) #4
  %13 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %this_word = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %13, i32 0, i32 0
  store i32 %call3, i32* %this_word, align 4, !tbaa !15
  %14 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %call4 = call i32 @huff_get_next_word(%struct._Jbig2HuffmanState* %14, i32 4) #4
  %15 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %next_word = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %15, i32 0, i32 1
  store i32 %call4, i32* %next_word, align 4, !tbaa !16
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %16, i32 3, i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %result, align 8, !tbaa !1
  %18 = bitcast %struct._Jbig2HuffmanState** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret %struct._Jbig2HuffmanState* %17
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @huff_get_next_word(%struct._Jbig2HuffmanState* %hs, i32 %offset) #0 {
entry:
  %hs.addr = alloca %struct._Jbig2HuffmanState*, align 8
  %offset.addr = alloca i32, align 4
  %word = alloca i32, align 4
  %ws = alloca %struct._Jbig2WordStream*, align 8
  store %struct._Jbig2HuffmanState* %hs, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !17
  %0 = bitcast i32* %word to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %word, align 4, !tbaa !17
  %1 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %ws1 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %2, i32 0, i32 5
  %3 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws1, align 8, !tbaa !13
  store %struct._Jbig2WordStream* %3, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %4 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %get_next_word = getelementptr inbounds %struct._Jbig2WordStream, %struct._Jbig2WordStream* %4, i32 0, i32 0
  %5 = load i32 (%struct._Jbig2WordStream*, i32, i32*)*, i32 (%struct._Jbig2WordStream*, i32, i32*)** %get_next_word, align 8, !tbaa !18
  %6 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %7 = load i32, i32* %offset.addr, align 4, !tbaa !17
  %call = call i32 %5(%struct._Jbig2WordStream* %6, i32 %7, i32* %word) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_limit = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %8, i32 0, i32 4
  %9 = load i32, i32* %offset_limit, align 4, !tbaa !12
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i32, i32* %offset.addr, align 4, !tbaa !17
  %11 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_limit2 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %11, i32 0, i32 4
  %12 = load i32, i32* %offset_limit2, align 4, !tbaa !12
  %cmp3 = icmp slt i32 %10, %12
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !17
  %14 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_limit4 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %14, i32 0, i32 4
  store i32 %13, i32* %offset_limit4, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %15 = load i32, i32* %word, align 4, !tbaa !17
  %16 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i32* %word to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret i32 %15
}

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @jbig2_huffman_free(%struct._Jbig2Ctx* %ctx, %struct._Jbig2HuffmanState* %hs) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %hs.addr = alloca %struct._Jbig2HuffmanState*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2HuffmanState* %hs, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._Jbig2HuffmanState* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %2 = bitcast %struct._Jbig2HuffmanState* %1 to i8*
  call void @free(i8* %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @jbig2_huffman_skip(%struct._Jbig2HuffmanState* %hs) #0 {
entry:
  %hs.addr = alloca %struct._Jbig2HuffmanState*, align 8
  %bits = alloca i32, align 4
  store %struct._Jbig2HuffmanState* %hs, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %1, i32 0, i32 2
  %2 = load i32, i32* %offset_bits, align 4, !tbaa !11
  %and = and i32 %2, 7
  store i32 %and, i32* %bits, align 4, !tbaa !17
  %3 = load i32, i32* %bits, align 4, !tbaa !17
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %bits, align 4, !tbaa !17
  %sub = sub nsw i32 8, %4
  store i32 %sub, i32* %bits, align 4, !tbaa !17
  %5 = load i32, i32* %bits, align 4, !tbaa !17
  %6 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits1 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %6, i32 0, i32 2
  %7 = load i32, i32* %offset_bits1, align 4, !tbaa !11
  %add = add nsw i32 %7, %5
  store i32 %add, i32* %offset_bits1, align 4, !tbaa !11
  %8 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %8, i32 0, i32 0
  %9 = load i32, i32* %this_word, align 4, !tbaa !15
  %10 = load i32, i32* %bits, align 4, !tbaa !17
  %shl = shl i32 %9, %10
  %11 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %11, i32 0, i32 1
  %12 = load i32, i32* %next_word, align 4, !tbaa !16
  %13 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits2 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %13, i32 0, i32 2
  %14 = load i32, i32* %offset_bits2, align 4, !tbaa !11
  %sub3 = sub nsw i32 32, %14
  %shr = lshr i32 %12, %sub3
  %or = or i32 %shl, %shr
  %15 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word4 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %15, i32 0, i32 0
  store i32 %or, i32* %this_word4, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits5 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %16, i32 0, i32 2
  %17 = load i32, i32* %offset_bits5, align 4, !tbaa !11
  %cmp = icmp sge i32 %17, 32
  br i1 %cmp, label %if.then.6, label %if.end.28

if.then.6:                                        ; preds = %if.end
  %18 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word7 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %18, i32 0, i32 1
  %19 = load i32, i32* %next_word7, align 4, !tbaa !16
  %20 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word8 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %20, i32 0, i32 0
  store i32 %19, i32* %this_word8, align 4, !tbaa !15
  %21 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %21, i32 0, i32 3
  %22 = load i32, i32* %offset, align 4, !tbaa !9
  %add9 = add nsw i32 %22, 4
  store i32 %add9, i32* %offset, align 4, !tbaa !9
  %23 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %24 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset10 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %24, i32 0, i32 3
  %25 = load i32, i32* %offset10, align 4, !tbaa !9
  %add11 = add nsw i32 %25, 4
  %call = call i32 @huff_get_next_word(%struct._Jbig2HuffmanState* %23, i32 %add11) #4
  %26 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word12 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %26, i32 0, i32 1
  store i32 %call, i32* %next_word12, align 4, !tbaa !16
  %27 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits13 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %27, i32 0, i32 2
  %28 = load i32, i32* %offset_bits13, align 4, !tbaa !11
  %sub14 = sub nsw i32 %28, 32
  store i32 %sub14, i32* %offset_bits13, align 4, !tbaa !11
  %29 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits15 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %29, i32 0, i32 2
  %30 = load i32, i32* %offset_bits15, align 4, !tbaa !11
  %tobool16 = icmp ne i32 %30, 0
  br i1 %tobool16, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %if.then.6
  %31 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word18 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %31, i32 0, i32 0
  %32 = load i32, i32* %this_word18, align 4, !tbaa !15
  %33 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits19 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %33, i32 0, i32 2
  %34 = load i32, i32* %offset_bits19, align 4, !tbaa !11
  %shl20 = shl i32 %32, %34
  %35 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word21 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %35, i32 0, i32 1
  %36 = load i32, i32* %next_word21, align 4, !tbaa !16
  %37 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits22 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %37, i32 0, i32 2
  %38 = load i32, i32* %offset_bits22, align 4, !tbaa !11
  %sub23 = sub nsw i32 32, %38
  %shr24 = lshr i32 %36, %sub23
  %or25 = or i32 %shl20, %shr24
  %39 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word26 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %39, i32 0, i32 0
  store i32 %or25, i32* %this_word26, align 4, !tbaa !15
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.17, %if.then.6
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %40 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jbig2_huffman_advance(%struct._Jbig2HuffmanState* %hs, i32 %offset) #0 {
entry:
  %hs.addr = alloca %struct._Jbig2HuffmanState*, align 8
  %offset.addr = alloca i32, align 4
  store %struct._Jbig2HuffmanState* %hs, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !17
  %0 = load i32, i32* %offset.addr, align 4, !tbaa !17
  %and = and i32 %0, -4
  %1 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset1 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %1, i32 0, i32 3
  %2 = load i32, i32* %offset1, align 4, !tbaa !9
  %add = add nsw i32 %2, %and
  store i32 %add, i32* %offset1, align 4, !tbaa !9
  %3 = load i32, i32* %offset.addr, align 4, !tbaa !17
  %and2 = and i32 %3, 3
  %shl = shl i32 %and2, 3
  %4 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %4, i32 0, i32 2
  %5 = load i32, i32* %offset_bits, align 4, !tbaa !11
  %add3 = add nsw i32 %5, %shl
  store i32 %add3, i32* %offset_bits, align 4, !tbaa !11
  %6 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits4 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %6, i32 0, i32 2
  %7 = load i32, i32* %offset_bits4, align 4, !tbaa !11
  %cmp = icmp sge i32 %7, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset5 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %8, i32 0, i32 3
  %9 = load i32, i32* %offset5, align 4, !tbaa !9
  %add6 = add nsw i32 %9, 4
  store i32 %add6, i32* %offset5, align 4, !tbaa !9
  %10 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits7 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %10, i32 0, i32 2
  %11 = load i32, i32* %offset_bits7, align 4, !tbaa !11
  %sub = sub nsw i32 %11, 32
  store i32 %sub, i32* %offset_bits7, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %13 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset8 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %13, i32 0, i32 3
  %14 = load i32, i32* %offset8, align 4, !tbaa !9
  %call = call i32 @huff_get_next_word(%struct._Jbig2HuffmanState* %12, i32 %14) #4
  %15 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %15, i32 0, i32 0
  store i32 %call, i32* %this_word, align 4, !tbaa !15
  %16 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %17 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset9 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %17, i32 0, i32 3
  %18 = load i32, i32* %offset9, align 4, !tbaa !9
  %add10 = add nsw i32 %18, 4
  %call11 = call i32 @huff_get_next_word(%struct._Jbig2HuffmanState* %16, i32 %add10) #4
  %19 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %19, i32 0, i32 1
  store i32 %call11, i32* %next_word, align 4, !tbaa !16
  %20 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits12 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %20, i32 0, i32 2
  %21 = load i32, i32* %offset_bits12, align 4, !tbaa !11
  %cmp13 = icmp sgt i32 %21, 0
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end
  %22 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word15 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %22, i32 0, i32 0
  %23 = load i32, i32* %this_word15, align 4, !tbaa !15
  %24 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits16 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %24, i32 0, i32 2
  %25 = load i32, i32* %offset_bits16, align 4, !tbaa !11
  %shl17 = shl i32 %23, %25
  %26 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word18 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %26, i32 0, i32 1
  %27 = load i32, i32* %next_word18, align 4, !tbaa !16
  %28 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits19 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %28, i32 0, i32 2
  %29 = load i32, i32* %offset_bits19, align 4, !tbaa !11
  %sub20 = sub nsw i32 32, %29
  %shr = lshr i32 %27, %sub20
  %or = or i32 %shl17, %shr
  %30 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word21 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %30, i32 0, i32 0
  store i32 %or, i32* %this_word21, align 4, !tbaa !15
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.14, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_huffman_offset(%struct._Jbig2HuffmanState* %hs) #0 {
entry:
  %hs.addr = alloca %struct._Jbig2HuffmanState*, align 8
  store %struct._Jbig2HuffmanState* %hs, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %0, i32 0, i32 3
  %1 = load i32, i32* %offset, align 4, !tbaa !9
  %2 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %2, i32 0, i32 2
  %3 = load i32, i32* %offset_bits, align 4, !tbaa !11
  %shr = ashr i32 %3, 3
  %add = add nsw i32 %1, %shr
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_huffman_get_bits(%struct._Jbig2HuffmanState* %hs, i32 %bits, i32* %err) #0 {
entry:
  %retval = alloca i32, align 4
  %hs.addr = alloca %struct._Jbig2HuffmanState*, align 8
  %bits.addr = alloca i32, align 4
  %err.addr = alloca i32*, align 8
  %this_word = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2HuffmanState* %hs, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  store i32 %bits, i32* %bits.addr, align 4, !tbaa !17
  store i32* %err, i32** %err.addr, align 8, !tbaa !1
  %0 = bitcast i32* %this_word to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word1 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %1, i32 0, i32 0
  %2 = load i32, i32* %this_word1, align 4, !tbaa !15
  store i32 %2, i32* %this_word, align 4, !tbaa !17
  %3 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_limit = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %4, i32 0, i32 4
  %5 = load i32, i32* %offset_limit, align 4, !tbaa !12
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %6, i32 0, i32 3
  %7 = load i32, i32* %offset, align 4, !tbaa !9
  %8 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_limit2 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %8, i32 0, i32 4
  %9 = load i32, i32* %offset_limit2, align 4, !tbaa !12
  %cmp = icmp sge i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %10, i32 0, i32 6
  %11 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx, align 8, !tbaa !14
  %12 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset3 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %12, i32 0, i32 3
  %13 = load i32, i32* %offset3, align 4, !tbaa !9
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %11, i32 3, i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 %13) #4
  %14 = load i32*, i32** %err.addr, align 8, !tbaa !1
  store i32 -1, i32* %14, align 4, !tbaa !17
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %15 = load i32, i32* %this_word, align 4, !tbaa !17
  %16 = load i32, i32* %bits.addr, align 4, !tbaa !17
  %sub = sub nsw i32 32, %16
  %shr = lshr i32 %15, %sub
  store i32 %shr, i32* %result, align 4, !tbaa !17
  %17 = load i32, i32* %bits.addr, align 4, !tbaa !17
  %18 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %18, i32 0, i32 2
  %19 = load i32, i32* %offset_bits, align 4, !tbaa !11
  %add = add nsw i32 %19, %17
  store i32 %add, i32* %offset_bits, align 4, !tbaa !11
  %20 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits4 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %20, i32 0, i32 2
  %21 = load i32, i32* %offset_bits4, align 4, !tbaa !11
  %cmp5 = icmp sge i32 %21, 32
  br i1 %cmp5, label %if.then.6, label %if.else.31

if.then.6:                                        ; preds = %if.end
  %22 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset7 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %22, i32 0, i32 3
  %23 = load i32, i32* %offset7, align 4, !tbaa !9
  %add8 = add nsw i32 %23, 4
  store i32 %add8, i32* %offset7, align 4, !tbaa !9
  %24 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits9 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %24, i32 0, i32 2
  %25 = load i32, i32* %offset_bits9, align 4, !tbaa !11
  %sub10 = sub nsw i32 %25, 32
  store i32 %sub10, i32* %offset_bits9, align 4, !tbaa !11
  %26 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %26, i32 0, i32 1
  %27 = load i32, i32* %next_word, align 4, !tbaa !16
  %28 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word11 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %28, i32 0, i32 0
  store i32 %27, i32* %this_word11, align 4, !tbaa !15
  %29 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %30 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset12 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %30, i32 0, i32 3
  %31 = load i32, i32* %offset12, align 4, !tbaa !9
  %add13 = add nsw i32 %31, 4
  %call14 = call i32 @huff_get_next_word(%struct._Jbig2HuffmanState* %29, i32 %add13) #4
  %32 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word15 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %32, i32 0, i32 1
  store i32 %call14, i32* %next_word15, align 4, !tbaa !16
  %33 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits16 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %33, i32 0, i32 2
  %34 = load i32, i32* %offset_bits16, align 4, !tbaa !11
  %tobool17 = icmp ne i32 %34, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.6
  %35 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word19 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %35, i32 0, i32 0
  %36 = load i32, i32* %this_word19, align 4, !tbaa !15
  %37 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits20 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %37, i32 0, i32 2
  %38 = load i32, i32* %offset_bits20, align 4, !tbaa !11
  %shl = shl i32 %36, %38
  %39 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word21 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %39, i32 0, i32 1
  %40 = load i32, i32* %next_word21, align 4, !tbaa !16
  %41 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits22 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %41, i32 0, i32 2
  %42 = load i32, i32* %offset_bits22, align 4, !tbaa !11
  %sub23 = sub nsw i32 32, %42
  %shr24 = lshr i32 %40, %sub23
  %or = or i32 %shl, %shr24
  %43 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word25 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %43, i32 0, i32 0
  store i32 %or, i32* %this_word25, align 4, !tbaa !15
  br label %if.end.30

if.else:                                          ; preds = %if.then.6
  %44 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word26 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %44, i32 0, i32 0
  %45 = load i32, i32* %this_word26, align 4, !tbaa !15
  %46 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits27 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %46, i32 0, i32 2
  %47 = load i32, i32* %offset_bits27, align 4, !tbaa !11
  %shl28 = shl i32 %45, %47
  %48 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word29 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %48, i32 0, i32 0
  store i32 %shl28, i32* %this_word29, align 4, !tbaa !15
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.18
  br label %if.end.39

if.else.31:                                       ; preds = %if.end
  %49 = load i32, i32* %this_word, align 4, !tbaa !17
  %50 = load i32, i32* %bits.addr, align 4, !tbaa !17
  %shl32 = shl i32 %49, %50
  %51 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word33 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %51, i32 0, i32 1
  %52 = load i32, i32* %next_word33, align 4, !tbaa !16
  %53 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits34 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %53, i32 0, i32 2
  %54 = load i32, i32* %offset_bits34, align 4, !tbaa !11
  %sub35 = sub nsw i32 32, %54
  %shr36 = lshr i32 %52, %sub35
  %or37 = or i32 %shl32, %shr36
  %55 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word38 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %55, i32 0, i32 0
  store i32 %or37, i32* %this_word38, align 4, !tbaa !15
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.31, %if.end.30
  %56 = load i32, i32* %result, align 4, !tbaa !17
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then
  %57 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %this_word to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %hs, %struct._Jbig2HuffmanTable* %table, i32* %oob) #0 {
entry:
  %retval = alloca i32, align 4
  %hs.addr = alloca %struct._Jbig2HuffmanState*, align 8
  %table.addr = alloca %struct._Jbig2HuffmanTable*, align 8
  %oob.addr = alloca i32*, align 8
  %entry1 = alloca %struct._Jbig2HuffmanEntry*, align 8
  %flags = alloca i8, align 1
  %offset_bits = alloca i32, align 4
  %this_word = alloca i32, align 4
  %next_word = alloca i32, align 4
  %RANGELEN = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %log_table_size = alloca i32, align 4
  %PREFLEN = alloca i32, align 4
  %HTOFFSET = alloca i32, align 4
  store %struct._Jbig2HuffmanState* %hs, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  store %struct._Jbig2HuffmanTable* %table, %struct._Jbig2HuffmanTable** %table.addr, align 8, !tbaa !1
  store i32* %oob, i32** %oob.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2HuffmanEntry** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %flags) #1
  %1 = bitcast i32* %offset_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits2 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %2, i32 0, i32 2
  %3 = load i32, i32* %offset_bits2, align 4, !tbaa !11
  store i32 %3, i32* %offset_bits, align 4, !tbaa !17
  %4 = bitcast i32* %this_word to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word3 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %5, i32 0, i32 0
  %6 = load i32, i32* %this_word3, align 4, !tbaa !15
  store i32 %6, i32* %this_word, align 4, !tbaa !17
  %7 = bitcast i32* %next_word to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %RANGELEN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_limit = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %10, i32 0, i32 4
  %11 = load i32, i32* %offset_limit, align 4, !tbaa !12
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %12, i32 0, i32 3
  %13 = load i32, i32* %offset, align 4, !tbaa !9
  %14 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_limit4 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %14, i32 0, i32 4
  %15 = load i32, i32* %offset_limit4, align 4, !tbaa !12
  %cmp = icmp sge i32 %13, %15
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %16, i32 0, i32 6
  %17 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx, align 8, !tbaa !14
  %18 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset5 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %18, i32 0, i32 3
  %19 = load i32, i32* %offset5, align 4, !tbaa !9
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %17, i32 3, i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i32 %19) #4
  %20 = load i32*, i32** %oob.addr, align 8, !tbaa !1
  %tobool6 = icmp ne i32* %20, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %21 = load i32*, i32** %oob.addr, align 8, !tbaa !1
  store i32 -1, i32* %21, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end.8:                                         ; preds = %land.lhs.true, %entry
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end.8
  %22 = bitcast i32* %log_table_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %table.addr, align 8, !tbaa !1
  %log_table_size9 = getelementptr inbounds %struct._Jbig2HuffmanTable, %struct._Jbig2HuffmanTable* %23, i32 0, i32 0
  %24 = load i32, i32* %log_table_size9, align 4, !tbaa !20
  store i32 %24, i32* %log_table_size, align 4, !tbaa !17
  %25 = bitcast i32* %PREFLEN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* %log_table_size, align 4, !tbaa !17
  %cmp10 = icmp sgt i32 %26, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %27 = load i32, i32* %this_word, align 4, !tbaa !17
  %28 = load i32, i32* %log_table_size, align 4, !tbaa !17
  %sub = sub nsw i32 32, %28
  %shr = lshr i32 %27, %sub
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ 0, %cond.false ]
  %idxprom = zext i32 %cond to i64
  %29 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %table.addr, align 8, !tbaa !1
  %entries = getelementptr inbounds %struct._Jbig2HuffmanTable, %struct._Jbig2HuffmanTable* %29, i32 0, i32 1
  %30 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %30, i64 %idxprom
  store %struct._Jbig2HuffmanEntry* %arrayidx, %struct._Jbig2HuffmanEntry** %entry1, align 8, !tbaa !1
  %31 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entry1, align 8, !tbaa !1
  %flags11 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %31, i32 0, i32 3
  %32 = load i8, i8* %flags11, align 1, !tbaa !23
  store i8 %32, i8* %flags, align 1, !tbaa !25
  %33 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entry1, align 8, !tbaa !1
  %PREFLEN12 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %33, i32 0, i32 1
  %34 = load i8, i8* %PREFLEN12, align 1, !tbaa !26
  %conv = zext i8 %34 to i32
  store i32 %conv, i32* %PREFLEN, align 4, !tbaa !17
  %35 = load i8, i8* %flags, align 1, !tbaa !25
  %conv13 = zext i8 %35 to i32
  %cmp14 = icmp eq i32 %conv13, 255
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.26

land.lhs.true.16:                                 ; preds = %cond.end
  %36 = load i32, i32* %PREFLEN, align 4, !tbaa !17
  %cmp17 = icmp eq i32 %36, 255
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.26

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %37 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entry1, align 8, !tbaa !1
  %u = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %37, i32 0, i32 0
  %RANGELOW = bitcast %union.anon* %u to i32*
  %38 = load i32, i32* %RANGELOW, align 4, !tbaa !17
  %cmp20 = icmp eq i32 %38, -1
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %land.lhs.true.19
  %39 = load i32*, i32** %oob.addr, align 8, !tbaa !1
  %tobool23 = icmp ne i32* %39, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.22
  %40 = load i32*, i32** %oob.addr, align 8, !tbaa !1
  store i32 -1, i32* %40, align 4, !tbaa !17
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.22
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true.19, %land.lhs.true.16, %cond.end
  %41 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word27 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %41, i32 0, i32 1
  %42 = load i32, i32* %next_word27, align 4, !tbaa !16
  store i32 %42, i32* %next_word, align 4, !tbaa !17
  %43 = load i32, i32* %PREFLEN, align 4, !tbaa !17
  %44 = load i32, i32* %offset_bits, align 4, !tbaa !17
  %add = add nsw i32 %44, %43
  store i32 %add, i32* %offset_bits, align 4, !tbaa !17
  %45 = load i32, i32* %offset_bits, align 4, !tbaa !17
  %cmp28 = icmp sge i32 %45, 32
  br i1 %cmp28, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.26
  %46 = load i32, i32* %next_word, align 4, !tbaa !17
  store i32 %46, i32* %this_word, align 4, !tbaa !17
  %47 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset31 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %47, i32 0, i32 3
  %48 = load i32, i32* %offset31, align 4, !tbaa !9
  %add32 = add nsw i32 %48, 4
  store i32 %add32, i32* %offset31, align 4, !tbaa !9
  %49 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %50 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset33 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %50, i32 0, i32 3
  %51 = load i32, i32* %offset33, align 4, !tbaa !9
  %add34 = add nsw i32 %51, 4
  %call35 = call i32 @huff_get_next_word(%struct._Jbig2HuffmanState* %49, i32 %add34) #4
  store i32 %call35, i32* %next_word, align 4, !tbaa !17
  %52 = load i32, i32* %offset_bits, align 4, !tbaa !17
  %sub36 = sub nsw i32 %52, 32
  store i32 %sub36, i32* %offset_bits, align 4, !tbaa !17
  %53 = load i32, i32* %next_word, align 4, !tbaa !17
  %54 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word37 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %54, i32 0, i32 1
  store i32 %53, i32* %next_word37, align 4, !tbaa !16
  %55 = load i32, i32* %offset_bits, align 4, !tbaa !17
  store i32 %55, i32* %PREFLEN, align 4, !tbaa !17
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.30, %if.end.26
  %56 = load i32, i32* %PREFLEN, align 4, !tbaa !17
  %tobool39 = icmp ne i32 %56, 0
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.38
  %57 = load i32, i32* %this_word, align 4, !tbaa !17
  %58 = load i32, i32* %PREFLEN, align 4, !tbaa !17
  %shl = shl i32 %57, %58
  %59 = load i32, i32* %next_word, align 4, !tbaa !17
  %60 = load i32, i32* %offset_bits, align 4, !tbaa !17
  %sub41 = sub nsw i32 32, %60
  %shr42 = lshr i32 %59, %sub41
  %or = or i32 %shl, %shr42
  store i32 %or, i32* %this_word, align 4, !tbaa !17
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.38
  %61 = load i8, i8* %flags, align 1, !tbaa !25
  %conv44 = zext i8 %61 to i32
  %and = and i32 %conv44, 4
  %tobool45 = icmp ne i32 %and, 0
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.end.43
  %62 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entry1, align 8, !tbaa !1
  %u47 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %62, i32 0, i32 0
  %ext_table = bitcast %union.anon* %u47 to %struct._Jbig2HuffmanTable**
  %63 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %ext_table, align 8, !tbaa !1
  store %struct._Jbig2HuffmanTable* %63, %struct._Jbig2HuffmanTable** %table.addr, align 8, !tbaa !1
  br label %if.end.48

if.else:                                          ; preds = %if.end.43
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.then.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.else, %if.end.25
  %64 = bitcast i32* %PREFLEN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %log_table_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.95 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %66 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entry1, align 8, !tbaa !1
  %u50 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %66, i32 0, i32 0
  %RANGELOW51 = bitcast %union.anon* %u50 to i32*
  %67 = load i32, i32* %RANGELOW51, align 4, !tbaa !17
  store i32 %67, i32* %result, align 4, !tbaa !17
  %68 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entry1, align 8, !tbaa !1
  %RANGELEN52 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %68, i32 0, i32 2
  %69 = load i8, i8* %RANGELEN52, align 1, !tbaa !27
  %conv53 = zext i8 %69 to i32
  store i32 %conv53, i32* %RANGELEN, align 4, !tbaa !17
  %70 = load i32, i32* %RANGELEN, align 4, !tbaa !17
  %cmp54 = icmp sgt i32 %70, 0
  br i1 %cmp54, label %if.then.56, label %if.end.86

if.then.56:                                       ; preds = %for.end
  %71 = bitcast i32* %HTOFFSET to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i32, i32* %this_word, align 4, !tbaa !17
  %73 = load i32, i32* %RANGELEN, align 4, !tbaa !17
  %sub57 = sub nsw i32 32, %73
  %shr58 = lshr i32 %72, %sub57
  store i32 %shr58, i32* %HTOFFSET, align 4, !tbaa !17
  %74 = load i8, i8* %flags, align 1, !tbaa !25
  %conv59 = zext i8 %74 to i32
  %and60 = and i32 %conv59, 2
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %if.then.56
  %75 = load i32, i32* %HTOFFSET, align 4, !tbaa !17
  %76 = load i32, i32* %result, align 4, !tbaa !17
  %sub63 = sub nsw i32 %76, %75
  store i32 %sub63, i32* %result, align 4, !tbaa !17
  br label %if.end.66

if.else.64:                                       ; preds = %if.then.56
  %77 = load i32, i32* %HTOFFSET, align 4, !tbaa !17
  %78 = load i32, i32* %result, align 4, !tbaa !17
  %add65 = add nsw i32 %78, %77
  store i32 %add65, i32* %result, align 4, !tbaa !17
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.62
  %79 = load i32, i32* %RANGELEN, align 4, !tbaa !17
  %80 = load i32, i32* %offset_bits, align 4, !tbaa !17
  %add67 = add nsw i32 %80, %79
  store i32 %add67, i32* %offset_bits, align 4, !tbaa !17
  %81 = load i32, i32* %offset_bits, align 4, !tbaa !17
  %cmp68 = icmp sge i32 %81, 32
  br i1 %cmp68, label %if.then.70, label %if.end.78

if.then.70:                                       ; preds = %if.end.66
  %82 = load i32, i32* %next_word, align 4, !tbaa !17
  store i32 %82, i32* %this_word, align 4, !tbaa !17
  %83 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset71 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %83, i32 0, i32 3
  %84 = load i32, i32* %offset71, align 4, !tbaa !9
  %add72 = add nsw i32 %84, 4
  store i32 %add72, i32* %offset71, align 4, !tbaa !9
  %85 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %86 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset73 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %86, i32 0, i32 3
  %87 = load i32, i32* %offset73, align 4, !tbaa !9
  %add74 = add nsw i32 %87, 4
  %call75 = call i32 @huff_get_next_word(%struct._Jbig2HuffmanState* %85, i32 %add74) #4
  store i32 %call75, i32* %next_word, align 4, !tbaa !17
  %88 = load i32, i32* %offset_bits, align 4, !tbaa !17
  %sub76 = sub nsw i32 %88, 32
  store i32 %sub76, i32* %offset_bits, align 4, !tbaa !17
  %89 = load i32, i32* %next_word, align 4, !tbaa !17
  %90 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %next_word77 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %90, i32 0, i32 1
  store i32 %89, i32* %next_word77, align 4, !tbaa !16
  %91 = load i32, i32* %offset_bits, align 4, !tbaa !17
  store i32 %91, i32* %RANGELEN, align 4, !tbaa !17
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.70, %if.end.66
  %92 = load i32, i32* %RANGELEN, align 4, !tbaa !17
  %tobool79 = icmp ne i32 %92, 0
  br i1 %tobool79, label %if.then.80, label %if.end.85

if.then.80:                                       ; preds = %if.end.78
  %93 = load i32, i32* %this_word, align 4, !tbaa !17
  %94 = load i32, i32* %RANGELEN, align 4, !tbaa !17
  %shl81 = shl i32 %93, %94
  %95 = load i32, i32* %next_word, align 4, !tbaa !17
  %96 = load i32, i32* %offset_bits, align 4, !tbaa !17
  %sub82 = sub nsw i32 32, %96
  %shr83 = lshr i32 %95, %sub82
  %or84 = or i32 %shl81, %shr83
  store i32 %or84, i32* %this_word, align 4, !tbaa !17
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.80, %if.end.78
  %97 = bitcast i32* %HTOFFSET to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %for.end
  %98 = load i32, i32* %this_word, align 4, !tbaa !17
  %99 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %this_word87 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %99, i32 0, i32 0
  store i32 %98, i32* %this_word87, align 4, !tbaa !15
  %100 = load i32, i32* %offset_bits, align 4, !tbaa !17
  %101 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs.addr, align 8, !tbaa !1
  %offset_bits88 = getelementptr inbounds %struct._Jbig2HuffmanState, %struct._Jbig2HuffmanState* %101, i32 0, i32 2
  store i32 %100, i32* %offset_bits88, align 4, !tbaa !11
  %102 = load i32*, i32** %oob.addr, align 8, !tbaa !1
  %cmp89 = icmp ne i32* %102, null
  br i1 %cmp89, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.end.86
  %103 = load i8, i8* %flags, align 1, !tbaa !25
  %conv92 = zext i8 %103 to i32
  %and93 = and i32 %conv92, 1
  %104 = load i32*, i32** %oob.addr, align 8, !tbaa !1
  store i32 %and93, i32* %104, align 4, !tbaa !17
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.end.86
  %105 = load i32, i32* %result, align 4, !tbaa !17
  store i32 %105, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

cleanup.95:                                       ; preds = %if.end.94, %cleanup, %if.end
  %106 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %RANGELEN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %next_word to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %this_word to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %offset_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  call void @llvm.lifetime.end(i64 1, i8* %flags) #1
  %111 = bitcast %struct._Jbig2HuffmanEntry** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = load i32, i32* %retval
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %ctx, %struct._Jbig2HuffmanParams* %params) #0 {
entry:
  %retval = alloca %struct._Jbig2HuffmanTable*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %params.addr = alloca %struct._Jbig2HuffmanParams*, align 8
  %LENCOUNT = alloca i32*, align 8
  %LENMAX = alloca i32, align 4
  %lencountcount = alloca i32, align 4
  %lines = alloca %struct._Jbig2HuffmanLine*, align 8
  %n_lines = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max_j = alloca i32, align 4
  %log_table_size = alloca i32, align 4
  %result = alloca %struct._Jbig2HuffmanTable*, align 8
  %entries = alloca %struct._Jbig2HuffmanEntry*, align 8
  %CURLEN = alloca i32, align 4
  %firstcode = alloca i32, align 4
  %CURCODE = alloca i32, align 4
  %CURTEMP = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %PREFLEN = alloca i32, align 4
  %lts = alloca i32, align 4
  %shift = alloca i32, align 4
  %PREFLEN68 = alloca i32, align 4
  %RANGELEN75 = alloca i32, align 4
  %start_j = alloca i32, align 4
  %end_j = alloca i32, align 4
  %eflags = alloca i8, align 1
  %HTOFFSET = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2HuffmanParams* %params, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %0 = bitcast i32** %LENCOUNT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %LENMAX to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1, i32* %LENMAX, align 4, !tbaa !17
  %2 = bitcast i32* %lencountcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 256, i32* %lencountcount, align 4, !tbaa !17
  %3 = bitcast %struct._Jbig2HuffmanLine** %lines to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %lines1 = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %4, i32 0, i32 2
  %5 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %lines1, align 8, !tbaa !28
  store %struct._Jbig2HuffmanLine* %5, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !1
  %6 = bitcast i32* %n_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %n_lines2 = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %7, i32 0, i32 1
  %8 = load i32, i32* %n_lines2, align 4, !tbaa !30
  store i32 %8, i32* %n_lines, align 4, !tbaa !17
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %max_j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %log_table_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %log_table_size, align 4, !tbaa !17
  %13 = bitcast %struct._Jbig2HuffmanTable** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast %struct._Jbig2HuffmanEntry** %entries to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %CURLEN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %firstcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %firstcode, align 4, !tbaa !17
  %17 = bitcast i32* %CURCODE to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %CURTEMP to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %19, i32 0, i32 0
  %20 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !5
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %20, i64 256, i64 4) #4
  %21 = bitcast i8* %call to i32*
  store i32* %21, i32** %LENCOUNT, align 8, !tbaa !1
  %22 = load i32*, i32** %LENCOUNT, align 8, !tbaa !1
  %cmp = icmp eq i32* %22, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %23, i32 3, i32 -1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0)) #4
  store %struct._Jbig2HuffmanTable* null, %struct._Jbig2HuffmanTable** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.197

if.end:                                           ; preds = %entry
  %24 = load i32*, i32** %LENCOUNT, align 8, !tbaa !1
  %25 = bitcast i32* %24 to i8*
  %call4 = call i8* @memset(i8* %25, i32 0, i64 1024) #5
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.end
  %26 = load i32, i32* %i, align 4, !tbaa !17
  %27 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %n_lines5 = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %27, i32 0, i32 1
  %28 = load i32, i32* %n_lines5, align 4, !tbaa !30
  %cmp6 = icmp slt i32 %26, %28
  br i1 %cmp6, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %29 = bitcast i32* %PREFLEN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %30 to i64
  %31 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %31, i64 %idxprom
  %PREFLEN7 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx, i32 0, i32 0
  %32 = load i32, i32* %PREFLEN7, align 4, !tbaa !31
  store i32 %32, i32* %PREFLEN, align 4, !tbaa !17
  %33 = bitcast i32* %lts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %PREFLEN, align 4, !tbaa !17
  %35 = load i32, i32* %LENMAX, align 4, !tbaa !17
  %cmp8 = icmp sgt i32 %34, %35
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %for.body
  %36 = load i32, i32* %LENMAX, align 4, !tbaa !17
  %add = add nsw i32 %36, 1
  store i32 %add, i32* %j, align 4, !tbaa !17
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.then.9
  %37 = load i32, i32* %j, align 4, !tbaa !17
  %38 = load i32, i32* %PREFLEN, align 4, !tbaa !17
  %add11 = add nsw i32 %38, 1
  %cmp12 = icmp slt i32 %37, %add11
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %39 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom14 = sext i32 %39 to i64
  %40 = load i32*, i32** %LENCOUNT, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i32, i32* %40, i64 %idxprom14
  store i32 0, i32* %arrayidx15, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %41 = load i32, i32* %j, align 4, !tbaa !17
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %j, align 4, !tbaa !17
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %42 = load i32, i32* %PREFLEN, align 4, !tbaa !17
  store i32 %42, i32* %LENMAX, align 4, !tbaa !17
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %for.body
  %43 = load i32, i32* %PREFLEN, align 4, !tbaa !17
  %idxprom17 = sext i32 %43 to i64
  %44 = load i32*, i32** %LENCOUNT, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i32, i32* %44, i64 %idxprom17
  %45 = load i32, i32* %arrayidx18, align 4, !tbaa !17
  %inc19 = add nsw i32 %45, 1
  store i32 %inc19, i32* %arrayidx18, align 4, !tbaa !17
  %46 = load i32, i32* %PREFLEN, align 4, !tbaa !17
  %47 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom20 = sext i32 %47 to i64
  %48 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %48, i64 %idxprom20
  %RANGELEN = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx21, i32 0, i32 1
  %49 = load i32, i32* %RANGELEN, align 4, !tbaa !33
  %add22 = add nsw i32 %46, %49
  store i32 %add22, i32* %lts, align 4, !tbaa !17
  %50 = load i32, i32* %lts, align 4, !tbaa !17
  %cmp23 = icmp sgt i32 %50, 16
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.16
  %51 = load i32, i32* %PREFLEN, align 4, !tbaa !17
  store i32 %51, i32* %lts, align 4, !tbaa !17
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.16
  %52 = load i32, i32* %lts, align 4, !tbaa !17
  %cmp26 = icmp sle i32 %52, 16
  br i1 %cmp26, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.25
  %53 = load i32, i32* %log_table_size, align 4, !tbaa !17
  %54 = load i32, i32* %lts, align 4, !tbaa !17
  %cmp27 = icmp slt i32 %53, %54
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true
  %55 = load i32, i32* %lts, align 4, !tbaa !17
  store i32 %55, i32* %log_table_size, align 4, !tbaa !17
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true, %if.end.25
  %56 = bitcast i32* %lts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %PREFLEN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %58 = load i32, i32* %i, align 4, !tbaa !17
  %inc31 = add nsw i32 %58, 1
  store i32 %inc31, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  %59 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %60 = load i32, i32* %log_table_size, align 4, !tbaa !17
  %call33 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %59, i32 0, i32 -1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %60) #4
  %61 = load i32, i32* %log_table_size, align 4, !tbaa !17
  %shl = shl i32 1, %61
  store i32 %shl, i32* %max_j, align 4, !tbaa !17
  %62 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator34 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %62, i32 0, i32 0
  %63 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator34, align 8, !tbaa !5
  %call35 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %63, i64 1, i64 16) #4
  %64 = bitcast i8* %call35 to %struct._Jbig2HuffmanTable*
  store %struct._Jbig2HuffmanTable* %64, %struct._Jbig2HuffmanTable** %result, align 8, !tbaa !1
  %65 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %result, align 8, !tbaa !1
  %cmp36 = icmp eq %struct._Jbig2HuffmanTable* %65, null
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %for.end.32
  %66 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call38 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %66, i32 3, i32 -1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i32 0, i32 0)) #4
  %67 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator39 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %67, i32 0, i32 0
  %68 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator39, align 8, !tbaa !5
  %69 = load i32*, i32** %LENCOUNT, align 8, !tbaa !1
  %70 = bitcast i32* %69 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %68, i8* %70) #4
  store %struct._Jbig2HuffmanTable* null, %struct._Jbig2HuffmanTable** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.197

if.end.40:                                        ; preds = %for.end.32
  %71 = load i32, i32* %log_table_size, align 4, !tbaa !17
  %72 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %result, align 8, !tbaa !1
  %log_table_size41 = getelementptr inbounds %struct._Jbig2HuffmanTable, %struct._Jbig2HuffmanTable* %72, i32 0, i32 0
  store i32 %71, i32* %log_table_size41, align 4, !tbaa !20
  %73 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator42 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %73, i32 0, i32 0
  %74 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator42, align 8, !tbaa !5
  %75 = load i32, i32* %max_j, align 4, !tbaa !17
  %conv = sext i32 %75 to i64
  %call43 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %74, i64 %conv, i64 16) #4
  %76 = bitcast i8* %call43 to %struct._Jbig2HuffmanEntry*
  store %struct._Jbig2HuffmanEntry* %76, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %77 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %cmp44 = icmp eq %struct._Jbig2HuffmanEntry* %77, null
  br i1 %cmp44, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.end.40
  %78 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call47 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %78, i32 3, i32 -1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0)) #4
  %79 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator48 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %79, i32 0, i32 0
  %80 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator48, align 8, !tbaa !5
  %81 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %result, align 8, !tbaa !1
  %82 = bitcast %struct._Jbig2HuffmanTable* %81 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %80, i8* %82) #4
  %83 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator49 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %83, i32 0, i32 0
  %84 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator49, align 8, !tbaa !5
  %85 = load i32*, i32** %LENCOUNT, align 8, !tbaa !1
  %86 = bitcast i32* %85 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %84, i8* %86) #4
  store %struct._Jbig2HuffmanTable* null, %struct._Jbig2HuffmanTable** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.197

if.end.50:                                        ; preds = %if.end.40
  %87 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %88 = bitcast %struct._Jbig2HuffmanEntry* %87 to i8*
  %89 = load i32, i32* %max_j, align 4, !tbaa !17
  %conv51 = sext i32 %89 to i64
  %mul = mul i64 16, %conv51
  %call52 = call i8* @memset(i8* %88, i32 255, i64 %mul) #5
  %90 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %91 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %result, align 8, !tbaa !1
  %entries53 = getelementptr inbounds %struct._Jbig2HuffmanTable, %struct._Jbig2HuffmanTable* %91, i32 0, i32 1
  store %struct._Jbig2HuffmanEntry* %90, %struct._Jbig2HuffmanEntry** %entries53, align 8, !tbaa !22
  %92 = load i32*, i32** %LENCOUNT, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 0, i32* %arrayidx54, align 4, !tbaa !17
  store i32 1, i32* %CURLEN, align 4, !tbaa !17
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.193, %if.end.50
  %93 = load i32, i32* %CURLEN, align 4, !tbaa !17
  %94 = load i32, i32* %LENMAX, align 4, !tbaa !17
  %cmp56 = icmp sle i32 %93, %94
  br i1 %cmp56, label %for.body.58, label %for.end.195

for.body.58:                                      ; preds = %for.cond.55
  %95 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = load i32, i32* %log_table_size, align 4, !tbaa !17
  %97 = load i32, i32* %CURLEN, align 4, !tbaa !17
  %sub = sub nsw i32 %96, %97
  store i32 %sub, i32* %shift, align 4, !tbaa !17
  %98 = load i32, i32* %firstcode, align 4, !tbaa !17
  %99 = load i32, i32* %CURLEN, align 4, !tbaa !17
  %sub59 = sub nsw i32 %99, 1
  %idxprom60 = sext i32 %sub59 to i64
  %100 = load i32*, i32** %LENCOUNT, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i32, i32* %100, i64 %idxprom60
  %101 = load i32, i32* %arrayidx61, align 4, !tbaa !17
  %add62 = add nsw i32 %98, %101
  %shl63 = shl i32 %add62, 1
  store i32 %shl63, i32* %firstcode, align 4, !tbaa !17
  %102 = load i32, i32* %firstcode, align 4, !tbaa !17
  store i32 %102, i32* %CURCODE, align 4, !tbaa !17
  store i32 0, i32* %CURTEMP, align 4, !tbaa !17
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.187, %for.body.58
  %103 = load i32, i32* %CURTEMP, align 4, !tbaa !17
  %104 = load i32, i32* %n_lines, align 4, !tbaa !17
  %cmp65 = icmp slt i32 %103, %104
  br i1 %cmp65, label %for.body.67, label %for.end.189

for.body.67:                                      ; preds = %for.cond.64
  %105 = bitcast i32* %PREFLEN68 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = load i32, i32* %CURTEMP, align 4, !tbaa !17
  %idxprom69 = sext i32 %106 to i64
  %107 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %107, i64 %idxprom69
  %PREFLEN71 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx70, i32 0, i32 0
  %108 = load i32, i32* %PREFLEN71, align 4, !tbaa !31
  store i32 %108, i32* %PREFLEN68, align 4, !tbaa !17
  %109 = load i32, i32* %PREFLEN68, align 4, !tbaa !17
  %110 = load i32, i32* %CURLEN, align 4, !tbaa !17
  %cmp72 = icmp eq i32 %109, %110
  br i1 %cmp72, label %if.then.74, label %if.end.183

if.then.74:                                       ; preds = %for.body.67
  %111 = bitcast i32* %RANGELEN75 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = load i32, i32* %CURTEMP, align 4, !tbaa !17
  %idxprom76 = sext i32 %112 to i64
  %113 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %113, i64 %idxprom76
  %RANGELEN78 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx77, i32 0, i32 1
  %114 = load i32, i32* %RANGELEN78, align 4, !tbaa !33
  store i32 %114, i32* %RANGELEN75, align 4, !tbaa !17
  %115 = bitcast i32* %start_j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = load i32, i32* %CURCODE, align 4, !tbaa !17
  %117 = load i32, i32* %shift, align 4, !tbaa !17
  %shl79 = shl i32 %116, %117
  store i32 %shl79, i32* %start_j, align 4, !tbaa !17
  %118 = bitcast i32* %end_j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = load i32, i32* %CURCODE, align 4, !tbaa !17
  %add80 = add nsw i32 %119, 1
  %120 = load i32, i32* %shift, align 4, !tbaa !17
  %shl81 = shl i32 %add80, %120
  store i32 %shl81, i32* %end_j, align 4, !tbaa !17
  call void @llvm.lifetime.start(i64 1, i8* %eflags) #1
  store i8 0, i8* %eflags, align 1, !tbaa !25
  %121 = load i32, i32* %end_j, align 4, !tbaa !17
  %122 = load i32, i32* %max_j, align 4, !tbaa !17
  %cmp82 = icmp sgt i32 %121, %122
  br i1 %cmp82, label %if.then.84, label %if.end.90

if.then.84:                                       ; preds = %if.then.74
  %123 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %124 = load i32, i32* %end_j, align 4, !tbaa !17
  %125 = load i32, i32* %max_j, align 4, !tbaa !17
  %call85 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %123, i32 3, i32 -1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i32 %124, i32 %125) #4
  %126 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator86 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %126, i32 0, i32 0
  %127 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator86, align 8, !tbaa !5
  %128 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %result, align 8, !tbaa !1
  %entries87 = getelementptr inbounds %struct._Jbig2HuffmanTable, %struct._Jbig2HuffmanTable* %128, i32 0, i32 1
  %129 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries87, align 8, !tbaa !22
  %130 = bitcast %struct._Jbig2HuffmanEntry* %129 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %127, i8* %130) #4
  %131 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator88 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %131, i32 0, i32 0
  %132 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator88, align 8, !tbaa !5
  %133 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %result, align 8, !tbaa !1
  %134 = bitcast %struct._Jbig2HuffmanTable* %133 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %132, i8* %134) #4
  %135 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator89 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %135, i32 0, i32 0
  %136 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator89, align 8, !tbaa !5
  %137 = load i32*, i32** %LENCOUNT, align 8, !tbaa !1
  %138 = bitcast i32* %137 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %136, i8* %138) #4
  store %struct._Jbig2HuffmanTable* null, %struct._Jbig2HuffmanTable** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.then.74
  %139 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %HTOOB = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %139, i32 0, i32 0
  %140 = load i32, i32* %HTOOB, align 4, !tbaa !34
  %tobool = icmp ne i32 %140, 0
  br i1 %tobool, label %land.lhs.true.91, label %if.end.98

land.lhs.true.91:                                 ; preds = %if.end.90
  %141 = load i32, i32* %CURTEMP, align 4, !tbaa !17
  %142 = load i32, i32* %n_lines, align 4, !tbaa !17
  %sub92 = sub nsw i32 %142, 1
  %cmp93 = icmp eq i32 %141, %sub92
  br i1 %cmp93, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %land.lhs.true.91
  %143 = load i8, i8* %eflags, align 1, !tbaa !25
  %conv96 = zext i8 %143 to i32
  %or = or i32 %conv96, 1
  %conv97 = trunc i32 %or to i8
  store i8 %conv97, i8* %eflags, align 1, !tbaa !25
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %land.lhs.true.91, %if.end.90
  %144 = load i32, i32* %CURTEMP, align 4, !tbaa !17
  %145 = load i32, i32* %n_lines, align 4, !tbaa !17
  %146 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %HTOOB99 = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %146, i32 0, i32 0
  %147 = load i32, i32* %HTOOB99, align 4, !tbaa !34
  %tobool100 = icmp ne i32 %147, 0
  %cond = select i1 %tobool100, i32 3, i32 2
  %sub101 = sub nsw i32 %145, %cond
  %cmp102 = icmp eq i32 %144, %sub101
  br i1 %cmp102, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %if.end.98
  %148 = load i8, i8* %eflags, align 1, !tbaa !25
  %conv105 = zext i8 %148 to i32
  %or106 = or i32 %conv105, 2
  %conv107 = trunc i32 %or106 to i8
  store i8 %conv107, i8* %eflags, align 1, !tbaa !25
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.104, %if.end.98
  %149 = load i32, i32* %PREFLEN68, align 4, !tbaa !17
  %150 = load i32, i32* %RANGELEN75, align 4, !tbaa !17
  %add109 = add nsw i32 %149, %150
  %cmp110 = icmp sgt i32 %add109, 16
  br i1 %cmp110, label %if.then.112, label %if.else

if.then.112:                                      ; preds = %if.end.108
  %151 = load i32, i32* %start_j, align 4, !tbaa !17
  store i32 %151, i32* %j, align 4, !tbaa !17
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.132, %if.then.112
  %152 = load i32, i32* %j, align 4, !tbaa !17
  %153 = load i32, i32* %end_j, align 4, !tbaa !17
  %cmp114 = icmp slt i32 %152, %153
  br i1 %cmp114, label %for.body.116, label %for.end.134

for.body.116:                                     ; preds = %for.cond.113
  %154 = load i32, i32* %CURTEMP, align 4, !tbaa !17
  %idxprom117 = sext i32 %154 to i64
  %155 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %155, i64 %idxprom117
  %RANGELOW = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx118, i32 0, i32 2
  %156 = load i32, i32* %RANGELOW, align 4, !tbaa !35
  %157 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom119 = sext i32 %157 to i64
  %158 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %158, i64 %idxprom119
  %u = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %arrayidx120, i32 0, i32 0
  %RANGELOW121 = bitcast %union.anon* %u to i32*
  store i32 %156, i32* %RANGELOW121, align 4, !tbaa !17
  %159 = load i32, i32* %PREFLEN68, align 4, !tbaa !17
  %conv122 = trunc i32 %159 to i8
  %160 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom123 = sext i32 %160 to i64
  %161 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %161, i64 %idxprom123
  %PREFLEN125 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %arrayidx124, i32 0, i32 1
  store i8 %conv122, i8* %PREFLEN125, align 1, !tbaa !26
  %162 = load i32, i32* %RANGELEN75, align 4, !tbaa !17
  %conv126 = trunc i32 %162 to i8
  %163 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom127 = sext i32 %163 to i64
  %164 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %164, i64 %idxprom127
  %RANGELEN129 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %arrayidx128, i32 0, i32 2
  store i8 %conv126, i8* %RANGELEN129, align 1, !tbaa !27
  %165 = load i8, i8* %eflags, align 1, !tbaa !25
  %166 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom130 = sext i32 %166 to i64
  %167 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %167, i64 %idxprom130
  %flags = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %arrayidx131, i32 0, i32 3
  store i8 %165, i8* %flags, align 1, !tbaa !23
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.116
  %168 = load i32, i32* %j, align 4, !tbaa !17
  %inc133 = add nsw i32 %168, 1
  store i32 %inc133, i32* %j, align 4, !tbaa !17
  br label %for.cond.113

for.end.134:                                      ; preds = %for.cond.113
  br label %if.end.178

if.else:                                          ; preds = %if.end.108
  %169 = load i32, i32* %start_j, align 4, !tbaa !17
  store i32 %169, i32* %j, align 4, !tbaa !17
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.175, %if.else
  %170 = load i32, i32* %j, align 4, !tbaa !17
  %171 = load i32, i32* %end_j, align 4, !tbaa !17
  %cmp136 = icmp slt i32 %170, %171
  br i1 %cmp136, label %for.body.138, label %for.end.177

for.body.138:                                     ; preds = %for.cond.135
  %172 = bitcast i32* %HTOFFSET to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  %173 = load i32, i32* %j, align 4, !tbaa !17
  %174 = load i32, i32* %shift, align 4, !tbaa !17
  %175 = load i32, i32* %RANGELEN75, align 4, !tbaa !17
  %sub139 = sub nsw i32 %174, %175
  %shr = ashr i32 %173, %sub139
  %176 = load i32, i32* %RANGELEN75, align 4, !tbaa !17
  %shl140 = shl i32 1, %176
  %sub141 = sub nsw i32 %shl140, 1
  %and = and i32 %shr, %sub141
  store i32 %and, i32* %HTOFFSET, align 4, !tbaa !17
  %177 = load i8, i8* %eflags, align 1, !tbaa !25
  %conv142 = zext i8 %177 to i32
  %and143 = and i32 %conv142, 2
  %tobool144 = icmp ne i32 %and143, 0
  br i1 %tobool144, label %if.then.145, label %if.else.154

if.then.145:                                      ; preds = %for.body.138
  %178 = load i32, i32* %CURTEMP, align 4, !tbaa !17
  %idxprom146 = sext i32 %178 to i64
  %179 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %179, i64 %idxprom146
  %RANGELOW148 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx147, i32 0, i32 2
  %180 = load i32, i32* %RANGELOW148, align 4, !tbaa !35
  %181 = load i32, i32* %HTOFFSET, align 4, !tbaa !17
  %sub149 = sub nsw i32 %180, %181
  %182 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom150 = sext i32 %182 to i64
  %183 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %183, i64 %idxprom150
  %u152 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %arrayidx151, i32 0, i32 0
  %RANGELOW153 = bitcast %union.anon* %u152 to i32*
  store i32 %sub149, i32* %RANGELOW153, align 4, !tbaa !17
  br label %if.end.163

if.else.154:                                      ; preds = %for.body.138
  %184 = load i32, i32* %CURTEMP, align 4, !tbaa !17
  %idxprom155 = sext i32 %184 to i64
  %185 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %185, i64 %idxprom155
  %RANGELOW157 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx156, i32 0, i32 2
  %186 = load i32, i32* %RANGELOW157, align 4, !tbaa !35
  %187 = load i32, i32* %HTOFFSET, align 4, !tbaa !17
  %add158 = add nsw i32 %186, %187
  %188 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom159 = sext i32 %188 to i64
  %189 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %189, i64 %idxprom159
  %u161 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %arrayidx160, i32 0, i32 0
  %RANGELOW162 = bitcast %union.anon* %u161 to i32*
  store i32 %add158, i32* %RANGELOW162, align 4, !tbaa !17
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.154, %if.then.145
  %190 = load i32, i32* %PREFLEN68, align 4, !tbaa !17
  %191 = load i32, i32* %RANGELEN75, align 4, !tbaa !17
  %add164 = add nsw i32 %190, %191
  %conv165 = trunc i32 %add164 to i8
  %192 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom166 = sext i32 %192 to i64
  %193 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %193, i64 %idxprom166
  %PREFLEN168 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %arrayidx167, i32 0, i32 1
  store i8 %conv165, i8* %PREFLEN168, align 1, !tbaa !26
  %194 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom169 = sext i32 %194 to i64
  %195 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %195, i64 %idxprom169
  %RANGELEN171 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %arrayidx170, i32 0, i32 2
  store i8 0, i8* %RANGELEN171, align 1, !tbaa !27
  %196 = load i8, i8* %eflags, align 1, !tbaa !25
  %197 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom172 = sext i32 %197 to i64
  %198 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %198, i64 %idxprom172
  %flags174 = getelementptr inbounds %struct._Jbig2HuffmanEntry, %struct._Jbig2HuffmanEntry* %arrayidx173, i32 0, i32 3
  store i8 %196, i8* %flags174, align 1, !tbaa !23
  %199 = bitcast i32* %HTOFFSET to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  br label %for.inc.175

for.inc.175:                                      ; preds = %if.end.163
  %200 = load i32, i32* %j, align 4, !tbaa !17
  %inc176 = add nsw i32 %200, 1
  store i32 %inc176, i32* %j, align 4, !tbaa !17
  br label %for.cond.135

for.end.177:                                      ; preds = %for.cond.135
  br label %if.end.178

if.end.178:                                       ; preds = %for.end.177, %for.end.134
  %201 = load i32, i32* %CURCODE, align 4, !tbaa !17
  %inc179 = add nsw i32 %201, 1
  store i32 %inc179, i32* %CURCODE, align 4, !tbaa !17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.178, %if.then.84
  call void @llvm.lifetime.end(i64 1, i8* %eflags) #1
  %202 = bitcast i32* %end_j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %start_j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %RANGELEN75 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.184 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.183

if.end.183:                                       ; preds = %cleanup.cont, %for.body.67
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.184

cleanup.184:                                      ; preds = %if.end.183, %cleanup
  %205 = bitcast i32* %PREFLEN68 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %cleanup.dest.185 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.185, label %cleanup.190 [
    i32 0, label %cleanup.cont.186
  ]

cleanup.cont.186:                                 ; preds = %cleanup.184
  br label %for.inc.187

for.inc.187:                                      ; preds = %cleanup.cont.186
  %206 = load i32, i32* %CURTEMP, align 4, !tbaa !17
  %inc188 = add nsw i32 %206, 1
  store i32 %inc188, i32* %CURTEMP, align 4, !tbaa !17
  br label %for.cond.64

for.end.189:                                      ; preds = %for.cond.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.190

cleanup.190:                                      ; preds = %for.end.189, %cleanup.184
  %207 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %cleanup.dest.191 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.191, label %cleanup.197 [
    i32 0, label %cleanup.cont.192
  ]

cleanup.cont.192:                                 ; preds = %cleanup.190
  br label %for.inc.193

for.inc.193:                                      ; preds = %cleanup.cont.192
  %208 = load i32, i32* %CURLEN, align 4, !tbaa !17
  %inc194 = add nsw i32 %208, 1
  store i32 %inc194, i32* %CURLEN, align 4, !tbaa !17
  br label %for.cond.55

for.end.195:                                      ; preds = %for.cond.55
  %209 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator196 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %209, i32 0, i32 0
  %210 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator196, align 8, !tbaa !5
  %211 = load i32*, i32** %LENCOUNT, align 8, !tbaa !1
  %212 = bitcast i32* %211 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %210, i8* %212) #4
  %213 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %result, align 8, !tbaa !1
  store %struct._Jbig2HuffmanTable* %213, %struct._Jbig2HuffmanTable** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.197

cleanup.197:                                      ; preds = %for.end.195, %cleanup.190, %if.then.46, %if.then.37, %if.then
  %214 = bitcast i32* %CURTEMP to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %CURCODE to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %firstcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %CURLEN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast %struct._Jbig2HuffmanEntry** %entries to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast %struct._Jbig2HuffmanTable** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast i32* %log_table_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i32* %max_j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast i32* %n_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast %struct._Jbig2HuffmanLine** %lines to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i32* %lencountcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %LENMAX to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast i32** %LENCOUNT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %229 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %retval
  ret %struct._Jbig2HuffmanTable* %229
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #2

; Function Attrs: nounwind uwtable
define void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %ctx, %struct._Jbig2HuffmanTable* %table) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %table.addr = alloca %struct._Jbig2HuffmanTable*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2HuffmanTable* %table, %struct._Jbig2HuffmanTable** %table.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %table.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._Jbig2HuffmanTable* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !5
  %3 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %table.addr, align 8, !tbaa !1
  %entries = getelementptr inbounds %struct._Jbig2HuffmanTable, %struct._Jbig2HuffmanTable* %3, i32 0, i32 1
  %4 = load %struct._Jbig2HuffmanEntry*, %struct._Jbig2HuffmanEntry** %entries, align 8, !tbaa !22
  %5 = bitcast %struct._Jbig2HuffmanEntry* %4 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %2, i8* %5) #4
  %6 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator1 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %6, i32 0, i32 0
  %7 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator1, align 8, !tbaa !5
  %8 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %table.addr, align 8, !tbaa !1
  %9 = bitcast %struct._Jbig2HuffmanTable* %8 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %7, i8* %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_table(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %params = alloca %struct._Jbig2HuffmanParams*, align 8
  %line = alloca %struct._Jbig2HuffmanLine*, align 8
  %code_table_flags = alloca i32, align 4
  %HTOOB = alloca i32, align 4
  %HTPS = alloca i32, align 4
  %HTRS = alloca i32, align 4
  %HTLOW = alloca i32, align 4
  %HTHIGH = alloca i32, align 4
  %lines_max = alloca i64, align 8
  %lines_data = alloca i8*, align 8
  %lines_data_bitlen = alloca i64, align 8
  %boffset = alloca i64, align 8
  %CURRANGELOW = alloca i32, align 4
  %NTEMP = alloca i64, align 8
  %new_line = alloca %struct._Jbig2HuffmanLine*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2HuffmanParams** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._Jbig2HuffmanParams* null, %struct._Jbig2HuffmanParams** %params, align 8, !tbaa !1
  %1 = bitcast %struct._Jbig2HuffmanLine** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct._Jbig2HuffmanLine* null, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %2 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %2, i32 0, i32 6
  store i8* null, i8** %result, align 8, !tbaa !36
  %3 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %3, i32 0, i32 3
  %4 = load i64, i64* %data_length, align 8, !tbaa !38
  %cmp = icmp ult i64 %4, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %too_short

if.end:                                           ; preds = %entry
  %5 = bitcast i32* %code_table_flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %7 to i32
  store i32 %conv, i32* %code_table_flags, align 4, !tbaa !17
  %8 = bitcast i32* %HTOOB to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %code_table_flags, align 4, !tbaa !17
  %and = and i32 %9, 1
  store i32 %and, i32* %HTOOB, align 4, !tbaa !17
  %10 = bitcast i32* %HTPS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %code_table_flags, align 4, !tbaa !17
  %shr = ashr i32 %11, 1
  %and1 = and i32 %shr, 7
  %add = add nsw i32 %and1, 1
  store i32 %add, i32* %HTPS, align 4, !tbaa !17
  %12 = bitcast i32* %HTRS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %code_table_flags, align 4, !tbaa !17
  %shr2 = ashr i32 %13, 4
  %and3 = and i32 %shr2, 7
  %add4 = add nsw i32 %and3, 1
  store i32 %add4, i32* %HTRS, align 4, !tbaa !17
  %14 = bitcast i32* %HTLOW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  %call = call i32 @jbig2_get_int32(i8* %add.ptr) #4
  store i32 %call, i32* %HTLOW, align 4, !tbaa !17
  %16 = bitcast i32* %HTHIGH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %17, i64 5
  %call6 = call i32 @jbig2_get_int32(i8* %add.ptr5) #4
  store i32 %call6, i32* %HTHIGH, align 4, !tbaa !17
  %18 = bitcast i64* %lines_max to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length7 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %19, i32 0, i32 3
  %20 = load i64, i64* %data_length7, align 8, !tbaa !38
  %mul = mul i64 %20, 8
  %21 = load i32, i32* %HTPS, align 4, !tbaa !17
  %22 = load i32, i32* %HTOOB, align 4, !tbaa !17
  %tobool = icmp ne i32 %22, 0
  %cond = select i1 %tobool, i32 3, i32 2
  %mul8 = mul nsw i32 %21, %cond
  %conv9 = sext i32 %mul8 to i64
  %sub = sub i64 %mul, %conv9
  %23 = load i32, i32* %HTPS, align 4, !tbaa !17
  %24 = load i32, i32* %HTRS, align 4, !tbaa !17
  %add10 = add nsw i32 %23, %24
  %conv11 = sext i32 %add10 to i64
  %div = udiv i64 %sub, %conv11
  %25 = load i32, i32* %HTOOB, align 4, !tbaa !17
  %tobool12 = icmp ne i32 %25, 0
  %cond13 = select i1 %tobool12, i32 3, i32 2
  %conv14 = sext i32 %cond13 to i64
  %add15 = add i64 %div, %conv14
  store i64 %add15, i64* %lines_max, align 8, !tbaa !39
  %26 = bitcast i8** %lines_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i8, i8* %27, i64 9
  store i8* %add.ptr16, i8** %lines_data, align 8, !tbaa !1
  %28 = bitcast i64* %lines_data_bitlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length17 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %29, i32 0, i32 3
  %30 = load i64, i64* %data_length17, align 8, !tbaa !38
  %sub18 = sub i64 %30, 9
  %mul19 = mul i64 %sub18, 8
  store i64 %mul19, i64* %lines_data_bitlen, align 8, !tbaa !39
  %31 = bitcast i64* %boffset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i64 0, i64* %boffset, align 8, !tbaa !39
  %32 = bitcast i32* %CURRANGELOW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i32, i32* %HTLOW, align 4, !tbaa !17
  store i32 %33, i32* %CURRANGELOW, align 4, !tbaa !17
  %34 = bitcast i64* %NTEMP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i64 0, i64* %NTEMP, align 8, !tbaa !39
  %35 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %35, i32 0, i32 0
  %36 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !5
  %call20 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %36, i64 1, i64 16) #4
  %37 = bitcast i8* %call20 to %struct._Jbig2HuffmanParams*
  store %struct._Jbig2HuffmanParams* %37, %struct._Jbig2HuffmanParams** %params, align 8, !tbaa !1
  %38 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params, align 8, !tbaa !1
  %cmp21 = icmp eq %struct._Jbig2HuffmanParams* %38, null
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end
  %39 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %40 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %40, i32 0, i32 0
  %41 = load i32, i32* %number, align 4, !tbaa !40
  %call24 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %39, i32 3, i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0)) #4
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.25:                                        ; preds = %if.end
  %42 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator26 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %42, i32 0, i32 0
  %43 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator26, align 8, !tbaa !5
  %44 = load i64, i64* %lines_max, align 8, !tbaa !39
  %call27 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %43, i64 %44, i64 12) #4
  %45 = bitcast i8* %call27 to %struct._Jbig2HuffmanLine*
  store %struct._Jbig2HuffmanLine* %45, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %46 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %cmp28 = icmp eq %struct._Jbig2HuffmanLine* %46, null
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.25
  %47 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %48 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number31 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %48, i32 0, i32 0
  %49 = load i32, i32* %number31, align 4, !tbaa !40
  %call32 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %47, i32 3, i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0)) #4
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.33:                                        ; preds = %if.end.25
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.end.33
  %50 = load i32, i32* %CURRANGELOW, align 4, !tbaa !17
  %51 = load i32, i32* %HTHIGH, align 4, !tbaa !17
  %cmp34 = icmp slt i32 %50, %51
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load i64, i64* %boffset, align 8, !tbaa !39
  %53 = load i32, i32* %HTPS, align 4, !tbaa !17
  %conv36 = sext i32 %53 to i64
  %add37 = add i64 %52, %conv36
  %54 = load i64, i64* %lines_data_bitlen, align 8, !tbaa !39
  %cmp38 = icmp uge i64 %add37, %54
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.41:                                        ; preds = %while.body
  %55 = load i8*, i8** %lines_data, align 8, !tbaa !1
  %56 = load i32, i32* %HTPS, align 4, !tbaa !17
  %call42 = call i32 @jbig2_table_read_bits(i8* %55, i64* %boffset, i32 %56) #4
  %57 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %58 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %58, i64 %57
  %PREFLEN = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx43, i32 0, i32 0
  store i32 %call42, i32* %PREFLEN, align 4, !tbaa !31
  %59 = load i64, i64* %boffset, align 8, !tbaa !39
  %60 = load i32, i32* %HTRS, align 4, !tbaa !17
  %conv44 = sext i32 %60 to i64
  %add45 = add i64 %59, %conv44
  %61 = load i64, i64* %lines_data_bitlen, align 8, !tbaa !39
  %cmp46 = icmp uge i64 %add45, %61
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.41
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.49:                                        ; preds = %if.end.41
  %62 = load i8*, i8** %lines_data, align 8, !tbaa !1
  %63 = load i32, i32* %HTRS, align 4, !tbaa !17
  %call50 = call i32 @jbig2_table_read_bits(i8* %62, i64* %boffset, i32 %63) #4
  %64 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %65 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %65, i64 %64
  %RANGELEN = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx51, i32 0, i32 1
  store i32 %call50, i32* %RANGELEN, align 4, !tbaa !33
  %66 = load i32, i32* %CURRANGELOW, align 4, !tbaa !17
  %67 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %68 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %68, i64 %67
  %RANGELOW = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx52, i32 0, i32 2
  store i32 %66, i32* %RANGELOW, align 4, !tbaa !35
  %69 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %70 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %70, i64 %69
  %RANGELEN54 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx53, i32 0, i32 1
  %71 = load i32, i32* %RANGELEN54, align 4, !tbaa !33
  %shl = shl i32 1, %71
  %72 = load i32, i32* %CURRANGELOW, align 4, !tbaa !17
  %add55 = add nsw i32 %72, %shl
  store i32 %add55, i32* %CURRANGELOW, align 4, !tbaa !17
  %73 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %inc = add i64 %73, 1
  store i64 %inc, i64* %NTEMP, align 8, !tbaa !39
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %74 = load i64, i64* %boffset, align 8, !tbaa !39
  %75 = load i32, i32* %HTPS, align 4, !tbaa !17
  %conv56 = sext i32 %75 to i64
  %add57 = add i64 %74, %conv56
  %76 = load i64, i64* %lines_data_bitlen, align 8, !tbaa !39
  %cmp58 = icmp uge i64 %add57, %76
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %while.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.61:                                        ; preds = %while.end
  %77 = load i8*, i8** %lines_data, align 8, !tbaa !1
  %78 = load i32, i32* %HTPS, align 4, !tbaa !17
  %call62 = call i32 @jbig2_table_read_bits(i8* %77, i64* %boffset, i32 %78) #4
  %79 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %80 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %80, i64 %79
  %PREFLEN64 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx63, i32 0, i32 0
  store i32 %call62, i32* %PREFLEN64, align 4, !tbaa !31
  %81 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %82 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %82, i64 %81
  %RANGELEN66 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx65, i32 0, i32 1
  store i32 32, i32* %RANGELEN66, align 4, !tbaa !33
  %83 = load i32, i32* %HTLOW, align 4, !tbaa !17
  %sub67 = sub nsw i32 %83, 1
  %84 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %85 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %85, i64 %84
  %RANGELOW69 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx68, i32 0, i32 2
  store i32 %sub67, i32* %RANGELOW69, align 4, !tbaa !35
  %86 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %inc70 = add i64 %86, 1
  store i64 %inc70, i64* %NTEMP, align 8, !tbaa !39
  %87 = load i64, i64* %boffset, align 8, !tbaa !39
  %88 = load i32, i32* %HTPS, align 4, !tbaa !17
  %conv71 = sext i32 %88 to i64
  %add72 = add i64 %87, %conv71
  %89 = load i64, i64* %lines_data_bitlen, align 8, !tbaa !39
  %cmp73 = icmp uge i64 %add72, %89
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.61
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.76:                                        ; preds = %if.end.61
  %90 = load i8*, i8** %lines_data, align 8, !tbaa !1
  %91 = load i32, i32* %HTPS, align 4, !tbaa !17
  %call77 = call i32 @jbig2_table_read_bits(i8* %90, i64* %boffset, i32 %91) #4
  %92 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %93 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %93, i64 %92
  %PREFLEN79 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx78, i32 0, i32 0
  store i32 %call77, i32* %PREFLEN79, align 4, !tbaa !31
  %94 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %95 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %95, i64 %94
  %RANGELEN81 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx80, i32 0, i32 1
  store i32 32, i32* %RANGELEN81, align 4, !tbaa !33
  %96 = load i32, i32* %HTHIGH, align 4, !tbaa !17
  %97 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %98 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %98, i64 %97
  %RANGELOW83 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx82, i32 0, i32 2
  store i32 %96, i32* %RANGELOW83, align 4, !tbaa !35
  %99 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %inc84 = add i64 %99, 1
  store i64 %inc84, i64* %NTEMP, align 8, !tbaa !39
  %100 = load i32, i32* %HTOOB, align 4, !tbaa !17
  %tobool85 = icmp ne i32 %100, 0
  br i1 %tobool85, label %if.then.86, label %if.end.101

if.then.86:                                       ; preds = %if.end.76
  %101 = load i64, i64* %boffset, align 8, !tbaa !39
  %102 = load i32, i32* %HTPS, align 4, !tbaa !17
  %conv87 = sext i32 %102 to i64
  %add88 = add i64 %101, %conv87
  %103 = load i64, i64* %lines_data_bitlen, align 8, !tbaa !39
  %cmp89 = icmp uge i64 %add88, %103
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.86
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.92:                                        ; preds = %if.then.86
  %104 = load i8*, i8** %lines_data, align 8, !tbaa !1
  %105 = load i32, i32* %HTPS, align 4, !tbaa !17
  %call93 = call i32 @jbig2_table_read_bits(i8* %104, i64* %boffset, i32 %105) #4
  %106 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %107 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %107, i64 %106
  %PREFLEN95 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx94, i32 0, i32 0
  store i32 %call93, i32* %PREFLEN95, align 4, !tbaa !31
  %108 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %109 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %109, i64 %108
  %RANGELEN97 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx96, i32 0, i32 1
  store i32 0, i32* %RANGELEN97, align 4, !tbaa !33
  %110 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %111 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %111, i64 %110
  %RANGELOW99 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx98, i32 0, i32 2
  store i32 0, i32* %RANGELOW99, align 4, !tbaa !35
  %112 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %inc100 = add i64 %112, 1
  store i64 %inc100, i64* %NTEMP, align 8, !tbaa !39
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.92, %if.end.76
  %113 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %114 = load i64, i64* %lines_max, align 8, !tbaa !39
  %cmp102 = icmp ne i64 %113, %114
  br i1 %cmp102, label %if.then.104, label %if.end.113

if.then.104:                                      ; preds = %if.end.101
  %115 = bitcast %struct._Jbig2HuffmanLine** %new_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator105 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %116, i32 0, i32 0
  %117 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator105, align 8, !tbaa !5
  %118 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %119 = bitcast %struct._Jbig2HuffmanLine* %118 to i8*
  %120 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %call106 = call i8* @jbig2_realloc(%struct._Jbig2Allocator* %117, i8* %119, i64 %120, i64 12) #4
  %121 = bitcast i8* %call106 to %struct._Jbig2HuffmanLine*
  store %struct._Jbig2HuffmanLine* %121, %struct._Jbig2HuffmanLine** %new_line, align 8, !tbaa !1
  %122 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %new_line, align 8, !tbaa !1
  %cmp107 = icmp eq %struct._Jbig2HuffmanLine* %122, null
  br i1 %cmp107, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %if.then.104
  %123 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %124 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number110 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %124, i32 0, i32 0
  %125 = load i32, i32* %number110, align 4, !tbaa !40
  %call111 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %123, i32 3, i32 %125, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0)) #4
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.112:                                       ; preds = %if.then.104
  %126 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %new_line, align 8, !tbaa !1
  store %struct._Jbig2HuffmanLine* %126, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.109, %if.end.112
  %127 = bitcast %struct._Jbig2HuffmanLine** %new_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.117 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.113

if.end.113:                                       ; preds = %cleanup.cont, %if.end.101
  %128 = load i32, i32* %HTOOB, align 4, !tbaa !17
  %129 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params, align 8, !tbaa !1
  %HTOOB114 = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %129, i32 0, i32 0
  store i32 %128, i32* %HTOOB114, align 4, !tbaa !34
  %130 = load i64, i64* %NTEMP, align 8, !tbaa !39
  %conv115 = trunc i64 %130 to i32
  %131 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params, align 8, !tbaa !1
  %n_lines = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %131, i32 0, i32 1
  store i32 %conv115, i32* %n_lines, align 4, !tbaa !30
  %132 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %133 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params, align 8, !tbaa !1
  %lines = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %133, i32 0, i32 2
  store %struct._Jbig2HuffmanLine* %132, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !28
  %134 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params, align 8, !tbaa !1
  %135 = bitcast %struct._Jbig2HuffmanParams* %134 to i8*
  %136 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result116 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %136, i32 0, i32 6
  store i8* %135, i8** %result116, align 8, !tbaa !36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.117

cleanup.117:                                      ; preds = %if.then.91, %if.then.75, %if.then.60, %if.then.48, %if.then.40, %if.then.30, %if.then.23, %if.end.113, %cleanup
  %137 = bitcast i64* %NTEMP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i32* %CURRANGELOW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i64* %boffset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i64* %lines_data_bitlen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i8** %lines_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i64* %lines_max to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32* %HTHIGH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %HTLOW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %HTRS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %HTPS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %HTOOB to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %code_table_flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %cleanup.dest.129 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.129, label %cleanup.143 [
    i32 0, label %cleanup.cont.130
    i32 2, label %too_short
    i32 3, label %error_exit
  ]

cleanup.cont.130:                                 ; preds = %cleanup.117
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

too_short:                                        ; preds = %cleanup.117, %if.then
  %149 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %150 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number131 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %150, i32 0, i32 0
  %151 = load i32, i32* %number131, align 4, !tbaa !40
  %call132 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %149, i32 3, i32 %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #4
  br label %error_exit

error_exit:                                       ; preds = %too_short, %cleanup.117
  %152 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %cmp133 = icmp ne %struct._Jbig2HuffmanLine* %152, null
  br i1 %cmp133, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %error_exit
  %153 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator136 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %153, i32 0, i32 0
  %154 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator136, align 8, !tbaa !5
  %155 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %line, align 8, !tbaa !1
  %156 = bitcast %struct._Jbig2HuffmanLine* %155 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %154, i8* %156) #4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %error_exit
  %157 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params, align 8, !tbaa !1
  %cmp138 = icmp ne %struct._Jbig2HuffmanParams* %157, null
  br i1 %cmp138, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.end.137
  %158 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator141 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %158, i32 0, i32 0
  %159 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator141, align 8, !tbaa !5
  %160 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params, align 8, !tbaa !1
  %161 = bitcast %struct._Jbig2HuffmanParams* %160 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %159, i8* %161) #4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %if.end.137
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

cleanup.143:                                      ; preds = %if.end.142, %cleanup.cont.130, %cleanup.117
  %162 = bitcast %struct._Jbig2HuffmanLine** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %struct._Jbig2HuffmanParams** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = load i32, i32* %retval
  ret i32 %164
}

declare i32 @jbig2_get_int32(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_table_read_bits(i8* %data, i64* %bitoffset, i32 %bitlen) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %bitoffset.addr = alloca i64*, align 8
  %bitlen.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %byte_offset = alloca i32, align 4
  %endbit = alloca i32, align 4
  %n_proc_bytes = alloca i32, align 4
  %rshift = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %nshift = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64* %bitoffset, i64** %bitoffset.addr, align 8, !tbaa !1
  store i32 %bitlen, i32* %bitlen.addr, align 4, !tbaa !17
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %result, align 4, !tbaa !17
  %1 = bitcast i32* %byte_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i64*, i64** %bitoffset.addr, align 8, !tbaa !1
  %3 = load i64, i64* %2, align 8, !tbaa !39
  %div = udiv i64 %3, 8
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %byte_offset, align 4, !tbaa !17
  %4 = bitcast i32* %endbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i64*, i64** %bitoffset.addr, align 8, !tbaa !1
  %6 = load i64, i64* %5, align 8, !tbaa !39
  %and = and i64 %6, 7
  %7 = load i32, i32* %bitlen.addr, align 4, !tbaa !17
  %conv1 = sext i32 %7 to i64
  %add = add i64 %and, %conv1
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %endbit, align 4, !tbaa !17
  %8 = bitcast i32* %n_proc_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %endbit, align 4, !tbaa !17
  %add3 = add nsw i32 %9, 7
  %div4 = sdiv i32 %add3, 8
  store i32 %div4, i32* %n_proc_bytes, align 4, !tbaa !17
  %10 = bitcast i32* %rshift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %n_proc_bytes, align 4, !tbaa !17
  %mul = mul nsw i32 %11, 8
  %12 = load i32, i32* %endbit, align 4, !tbaa !17
  %sub = sub nsw i32 %mul, %12
  store i32 %sub, i32* %rshift, align 4, !tbaa !17
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %n_proc_bytes, align 4, !tbaa !17
  %sub5 = sub nsw i32 %14, 1
  store i32 %sub5, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4, !tbaa !17
  %cmp = icmp sge i32 %15, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %byte_offset, align 4, !tbaa !17
  %inc = add i32 %17, 1
  store i32 %inc, i32* %byte_offset, align 4, !tbaa !17
  %idxprom = zext i32 %17 to i64
  %18 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv7 = zext i8 %19 to i32
  store i32 %conv7, i32* %d, align 4, !tbaa !17
  %20 = bitcast i32* %nshift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %i, align 4, !tbaa !17
  %mul8 = mul nsw i32 %21, 8
  %22 = load i32, i32* %rshift, align 4, !tbaa !17
  %sub9 = sub nsw i32 %mul8, %22
  store i32 %sub9, i32* %nshift, align 4, !tbaa !17
  %23 = load i32, i32* %nshift, align 4, !tbaa !17
  %cmp10 = icmp sgt i32 %23, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %24 = load i32, i32* %nshift, align 4, !tbaa !17
  %25 = load i32, i32* %d, align 4, !tbaa !17
  %shl = shl i32 %25, %24
  store i32 %shl, i32* %d, align 4, !tbaa !17
  br label %if.end.16

if.else:                                          ; preds = %for.body
  %26 = load i32, i32* %nshift, align 4, !tbaa !17
  %cmp12 = icmp slt i32 %26, 0
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else
  %27 = load i32, i32* %nshift, align 4, !tbaa !17
  %sub15 = sub nsw i32 0, %27
  %28 = load i32, i32* %d, align 4, !tbaa !17
  %shr = lshr i32 %28, %sub15
  store i32 %shr, i32* %d, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  %29 = load i32, i32* %d, align 4, !tbaa !17
  %30 = load i32, i32* %result, align 4, !tbaa !17
  %or = or i32 %30, %29
  store i32 %or, i32* %result, align 4, !tbaa !17
  %31 = bitcast i32* %nshift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %33 = load i32, i32* %i, align 4, !tbaa !17
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %bitlen.addr, align 4, !tbaa !17
  %shl17 = shl i32 -1, %34
  %neg = xor i32 %shl17, -1
  %35 = load i32, i32* %result, align 4, !tbaa !17
  %and18 = and i32 %35, %neg
  store i32 %and18, i32* %result, align 4, !tbaa !17
  %36 = load i32, i32* %bitlen.addr, align 4, !tbaa !17
  %conv19 = sext i32 %36 to i64
  %37 = load i64*, i64** %bitoffset.addr, align 8, !tbaa !1
  %38 = load i64, i64* %37, align 8, !tbaa !39
  %add20 = add i64 %38, %conv19
  store i64 %add20, i64* %37, align 8, !tbaa !39
  %39 = load i32, i32* %result, align 4, !tbaa !17
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %rshift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %n_proc_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %endbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %byte_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  ret i32 %39
}

declare i8* @jbig2_realloc(%struct._Jbig2Allocator*, i8*, i64, i64) #2

; Function Attrs: nounwind uwtable
define void @jbig2_table_free(%struct._Jbig2Ctx* %ctx, %struct._Jbig2HuffmanParams* %params) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %params.addr = alloca %struct._Jbig2HuffmanParams*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2HuffmanParams* %params, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._Jbig2HuffmanParams* %0, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %lines = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %1, i32 0, i32 2
  %2 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !28
  %cmp1 = icmp ne %struct._Jbig2HuffmanLine* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %3, i32 0, i32 0
  %4 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !5
  %5 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %lines3 = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %5, i32 0, i32 2
  %6 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %lines3, align 8, !tbaa !28
  %7 = bitcast %struct._Jbig2HuffmanLine* %6 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %4, i8* %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator4 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %8, i32 0, i32 0
  %9 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator4, align 8, !tbaa !5
  %10 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %params.addr, align 8, !tbaa !1
  %11 = bitcast %struct._Jbig2HuffmanParams* %10 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %9, i8* %11) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i32 %index) #0 {
entry:
  %retval = alloca %struct._Jbig2HuffmanParams*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %table_index = alloca i32, align 4
  %rsegment = alloca %struct._Jbig2Segment*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !17
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %table_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %table_index, align 4, !tbaa !17
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !17
  %3 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segment_count = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %3, i32 0, i32 4
  %4 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !41
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct._Jbig2Segment** %rsegment to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %7 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segments = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %8, i32 0, i32 5
  %9 = load i32*, i32** %referred_to_segments, align 8, !tbaa !42
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !17
  %call = call %struct._Jbig2Segment* @jbig2_find_segment(%struct._Jbig2Ctx* %6, i32 %10) #4
  store %struct._Jbig2Segment* %call, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %11 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %tobool = icmp ne %struct._Jbig2Segment* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %12, i32 0, i32 1
  %13 = load i8, i8* %flags, align 1, !tbaa !43
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 63
  %cmp1 = icmp eq i32 %and, 53
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %table_index, align 4, !tbaa !17
  %15 = load i32, i32* %index.addr, align 4, !tbaa !17
  %cmp3 = icmp eq i32 %14, %15
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %16 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %16, i32 0, i32 6
  %17 = load i8*, i8** %result, align 8, !tbaa !36
  %18 = bitcast i8* %17 to %struct._Jbig2HuffmanParams*
  store %struct._Jbig2HuffmanParams* %18, %struct._Jbig2HuffmanParams** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %19 = load i32, i32* %table_index, align 4, !tbaa !17
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %table_index, align 4, !tbaa !17
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %land.lhs.true, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %20 = bitcast %struct._Jbig2Segment** %rsegment to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %21 = load i32, i32* %i, align 4, !tbaa !17
  %inc7 = add nsw i32 %21, 1
  store i32 %inc7, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._Jbig2HuffmanParams* null, %struct._Jbig2HuffmanParams** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.8

cleanup.8:                                        ; preds = %for.end, %cleanup
  %22 = bitcast i32* %table_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %retval
  ret %struct._Jbig2HuffmanParams* %24
}

declare %struct._Jbig2Segment* @jbig2_find_segment(%struct._Jbig2Ctx*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !7, i64 48, !8, i64 56, !8, i64 60, !3, i64 64, !3, i64 68, !8, i64 72, !8, i64 76, !2, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !2, i64 104}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !8, i64 12}
!10 = !{!"_Jbig2HuffmanState", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !2, i64 24, !2, i64 32}
!11 = !{!10, !8, i64 8}
!12 = !{!10, !8, i64 16}
!13 = !{!10, !2, i64 24}
!14 = !{!10, !2, i64 32}
!15 = !{!10, !8, i64 0}
!16 = !{!10, !8, i64 4}
!17 = !{!8, !8, i64 0}
!18 = !{!19, !2, i64 0}
!19 = !{!"_Jbig2WordStream", !2, i64 0}
!20 = !{!21, !8, i64 0}
!21 = !{!"_Jbig2HuffmanTable", !8, i64 0, !2, i64 8}
!22 = !{!21, !2, i64 8}
!23 = !{!24, !3, i64 10}
!24 = !{!"_Jbig2HuffmanEntry", !3, i64 0, !3, i64 8, !3, i64 9, !3, i64 10}
!25 = !{!3, !3, i64 0}
!26 = !{!24, !3, i64 8}
!27 = !{!24, !3, i64 9}
!28 = !{!29, !2, i64 8}
!29 = !{!"_Jbig2HuffmanParams", !8, i64 0, !8, i64 4, !2, i64 8}
!30 = !{!29, !8, i64 4}
!31 = !{!32, !8, i64 0}
!32 = !{!"_Jbig2HuffmanLine", !8, i64 0, !8, i64 4, !8, i64 8}
!33 = !{!32, !8, i64 4}
!34 = !{!29, !8, i64 0}
!35 = !{!32, !8, i64 8}
!36 = !{!37, !2, i64 40}
!37 = !{!"_Jbig2Segment", !8, i64 0, !3, i64 4, !8, i64 8, !7, i64 16, !8, i64 24, !2, i64 32, !2, i64 40}
!38 = !{!37, !7, i64 16}
!39 = !{!7, !7, i64 0}
!40 = !{!37, !8, i64 0}
!41 = !{!37, !8, i64 24}
!42 = !{!37, !2, i64 32}
!43 = !{!37, !3, i64 4}
