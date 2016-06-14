; ModuleID = 'parse_args_file.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.arg_t = type { i8*, i32, i8*, i8* }

@parse_args_file.nliveargs = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@arg = internal global [77 x %struct.arg_t] [%struct.arg_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.10, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.20, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.22, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.25, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.28, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.34, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.41, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.44, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.47, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.49, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.51, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.54, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.57, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.60, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.63, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.66, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.70, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.72, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.76, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.79, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.81, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.91, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.93, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.103, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.105, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.107, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.109, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.111, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.114, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.116, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.118, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.121, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.123, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.125, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.127, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.128, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.129, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.132, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.134, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.136, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.139, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.142, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.144, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.147, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.148, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.150, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.152, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.154, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.156, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.157, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.158, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.159, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.161, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.162, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.164, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.167, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.168, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.170, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.171, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.173, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.174, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.179, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.181, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.183, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.184, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.186, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.188, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.189, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.190, i32 0, i32 0) }, %struct.arg_t { i8* null, i32 2, i8* null, i8* null }], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"parse_args_file.c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Unable to open arguments file %s for reading\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@liveargs = internal global i8** null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"-logbase\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"1.0003\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Base in which all log-likelihoods calculated\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-feat\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"1s_c_d_dd\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"Feature type: Must be s3_1x39 / s2_4x / cep_dcep[,%d] / cep[,%d] / %d,%d,...,%d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"-gs\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Gaussian Selection Mapping.\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"-ds\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Ratio of Down-sampling the frame computation.\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"-cond_ds\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"Conditional Down-sampling, override normal down sampling.\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"-gs4gs\00", align 1
@.str.20 = private unnamed_addr constant [159 x i8] c"A flag that specified whether the input GS map will be used for Gaussian Selection. If it is disabled, the map will only provide information to other modules.\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"-svq4svq\00", align 1
@.str.22 = private unnamed_addr constant [96 x i8] c"A flag that specified whether the input SVQ will be used as approximate scores of the Gaussians\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"-ci_pbeam\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"1e-80\00", align 1
@.str.25 = private unnamed_addr constant [92 x i8] c"CI phone beam for CI-based GMM Selection. Good number should be [0(widest) .. 1(narrowest)]\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"-wend_beam\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"1.0e-80\00", align 1
@.str.28 = private unnamed_addr constant [81 x i8] c"Beam selecting word-final HMMs exiting in each frame [0(widest) .. 1(narrowest)]\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"-pl_window\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"Window size (actually window size-1) of phoneme look-ahead.\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"-pheurtype\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"0 = bypass, 1= sum of max, 2 = sum of avg, 3 = sum of 1st senones only\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"-pl_beam\00", align 1
@.str.34 = private unnamed_addr constant [57 x i8] c"Beam for phoneme look-ahead. [0(widest) .. 1(narrowest)]\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"-ctl\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"Control file listing utterances to be processed\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"-ctl_lm\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"Control file that list the corresponding LMs\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"-beam\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"1.0e-55\00", align 1
@.str.41 = private unnamed_addr constant [86 x i8] c"Beam selecting active HMMs (relative to best) in each frame [0(widest)..1(narrowest)]\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"-pbeam\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"1.0e-50\00", align 1
@.str.44 = private unnamed_addr constant [88 x i8] c"Beam selecting HMMs transitioning to successors in each frame [0(widest)..1(narrowest)]\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"-wbeam\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"1.0e-35\00", align 1
@.str.47 = private unnamed_addr constant [79 x i8] c"Beam selecting word-final HMMs exiting in each frame [0(widest)..1(narrowest)]\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"-lminmemory\00", align 1
@.str.49 = private unnamed_addr constant [64 x i8] c"Load language model into memory (default: use disk cache for lm\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"-log3table\00", align 1
@.str.51 = private unnamed_addr constant [79 x i8] c"Determines whether to use the log3 table or to compute the values at run time.\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"-vqeval\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.54 = private unnamed_addr constant [112 x i8] c"How many vectors should be analyzed by VQ when building the shortlist. It speeds up the decoder, but at a cost.\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"-senmgau\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c".cont.\00", align 1
@.str.57 = private unnamed_addr constant [62 x i8] c"Senone to mixture-gaussian mapping file (or .semi. or .cont.)\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"-cmn\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.60 = private unnamed_addr constant [85 x i8] c"Cepstral mean normalization scheme (default: Cep -= mean-over-current-sentence(Cep))\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"-varnorm\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.63 = private unnamed_addr constant [85 x i8] c"Variance normalize each utterance (yes/no; only applicable if CMN is also performed)\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"-agc\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.66 = private unnamed_addr constant [92 x i8] c"Automatic gain control for c0 ('max' or 'none'); (max: c0 -= max-over-current-sentence(c0))\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"-mdef\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"Model definition input file\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"-dict\00", align 1
@.str.70 = private unnamed_addr constant [36 x i8] c"Pronunciation dictionary input file\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"-fdict\00", align 1
@.str.72 = private unnamed_addr constant [48 x i8] c"Filler word pronunciation dictionary input file\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"Word trigram language model input file\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"-fillpen\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"Filler word probabilities input file\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"-silprob\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"Default silence word probability\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"-fillprob\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"Default non-silence filler word probability\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"-lw\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"8.5\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"Language weight\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"-wip\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"0.7\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"Word insertion penalty\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"-uw\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"Unigram weight\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"-mean\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"Mixture gaussian means input file\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"-var\00", align 1
@.str.93 = private unnamed_addr constant [38 x i8] c"Mixture gaussian variances input file\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"-varfloor\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"0.0001\00", align 1
@.str.96 = private unnamed_addr constant [65 x i8] c"Mixture gaussian variance floor (applied to data from -var file)\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"-mixw\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"Senone mixture weights input file\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"-mixwfloor\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"0.0000001\00", align 1
@.str.101 = private unnamed_addr constant [63 x i8] c"Senone mixture weights floor (applied to data from -mixw file)\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"-subvq\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"Sub-vector quantized form of acoustic model\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"-tmat\00", align 1
@.str.105 = private unnamed_addr constant [39 x i8] c"HMM state transition matrix input file\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"-tmatfloor\00", align 1
@.str.107 = private unnamed_addr constant [63 x i8] c"HMM state transition probability floor (applied to -tmat file)\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"-Nlextree\00", align 1
@.str.109 = private unnamed_addr constant [72 x i8] c"No. of lextrees to be instantiated; entries into them staggered in time\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"-epl\00", align 1
@.str.111 = private unnamed_addr constant [101 x i8] c"Entries Per Lextree; #successive entries into one lextree before lextree-entries shifted to the next\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"-subvqbeam\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"3.0e-3\00", align 1
@.str.114 = private unnamed_addr constant [86 x i8] c"Beam selecting best components within each mixture Gaussian [0(widest)..1(narrowest)]\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"-utt\00", align 1
@.str.116 = private unnamed_addr constant [58 x i8] c"Utterance file to be processed (-ctlcount argument times)\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"-ctloffset\00", align 1
@.str.118 = private unnamed_addr constant [62 x i8] c"No. of utterances at the beginning of -ctl file to be skipped\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"-ctlcount\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"1000000000\00", align 1
@.str.121 = private unnamed_addr constant [70 x i8] c"No. of utterances to be processed (after skipping -ctloffset entries)\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"-cepdir\00", align 1
@.str.123 = private unnamed_addr constant [71 x i8] c"Input cepstrum files directory (prefixed to filespecs in control file)\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"-bptbldir\00", align 1
@.str.125 = private unnamed_addr constant [75 x i8] c"Directory in which to dump word Viterbi back pointer table (for debugging)\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"-outlatdir\00", align 1
@.str.127 = private unnamed_addr constant [41 x i8] c"Directory in which to dump word lattices\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"-outlatoldfmt\00", align 1
@.str.129 = private unnamed_addr constant [39 x i8] c"Whether to dump lattices in old format\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"-latext\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"lat.gz\00", align 1
@.str.132 = private unnamed_addr constant [67 x i8] c"Filename extension for lattice files (gzip compressed, by default)\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"-hmmdump\00", align 1
@.str.134 = private unnamed_addr constant [61 x i8] c"Whether to dump active HMM details to stderr (for debugging)\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"-lextreedump\00", align 1
@.str.136 = private unnamed_addr constant [64 x i8] c"Whether to dump the lextree structure to stderr (for debugging)\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"-maxwpf\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.139 = private unnamed_addr constant [57 x i8] c"Max no. of distinct word exits to maintain at each frame\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"-maxhistpf\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.142 = private unnamed_addr constant [47 x i8] c"Max no. of histories to maintain at each frame\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"-bghist\00", align 1
@.str.144 = private unnamed_addr constant [68 x i8] c"Bigram-mode: If TRUE only one BP entry/frame; else one per LM state\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"-maxhmmpf\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"20000\00", align 1
@.str.147 = private unnamed_addr constant [58 x i8] c"Max no. of active HMMs to maintain at each frame; approx.\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"-hmmhistbinsize\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"5000\00", align 1
@.str.150 = private unnamed_addr constant [76 x i8] c"Performance histogram: #frames vs #HMMs active; #HMMs/bin in this histogram\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"-ptranskip\00", align 1
@.str.152 = private unnamed_addr constant [63 x i8] c"Use wbeam for phone transitions every so many frames (if >= 1)\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"-hyp\00", align 1
@.str.154 = private unnamed_addr constant [41 x i8] c"Recognition result file, with only words\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"-hypseg\00", align 1
@.str.156 = private unnamed_addr constant [60 x i8] c"Recognition result file, with word segmentations and scores\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"-treeugprob\00", align 1
@.str.158 = private unnamed_addr constant [46 x i8] c"If TRUE (non-0), Use unigram probs in lextree\00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"-maxhyplen\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@.str.161 = private unnamed_addr constant [69 x i8] c"Maximum number of words in a partial hypothesis (for block decoding)\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"-maxcepvecs\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.164 = private unnamed_addr constant [84 x i8] c"Maximum number of cepstral vectors that can be obtained from a single sample buffer\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"-samprate\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"8000\00", align 1
@.str.167 = private unnamed_addr constant [52 x i8] c"Sampling rate (only 8K and 16K currently supported)\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"-nfilt\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"31\00", align 1
@.str.170 = private unnamed_addr constant [22 x i8] c"Number of mel filters\00", align 1
@.str.171 = private unnamed_addr constant [8 x i8] c"-lowerf\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.173 = private unnamed_addr constant [22 x i8] c"Lower edge of filters\00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c"-upperf\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"3500\00", align 1
@.str.176 = private unnamed_addr constant [22 x i8] c"Upper edge of filters\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"-alpha\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"0.97\00", align 1
@.str.179 = private unnamed_addr constant [30 x i8] c"alpha for pre-emphasis window\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"-frate\00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c"frame rate\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"-nfft\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"no. pts for FFT\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"-wlen\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"0.0256\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"window length\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"-lmdumpdir\00", align 1
@.str.188 = private unnamed_addr constant [41 x i8] c"The directory for dumping the DMP file. \00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"-lmctlfn\00", align 1
@.str.190 = private unnamed_addr constant [33 x i8] c"Control file for language model\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @parse_args_file(i8* %live_args) #0 {
entry:
  %live_args.addr = alloca i8*, align 8
  %nargs = alloca i32, align 4
  %maxarglen = alloca i32, align 4
  %argline = alloca i8*, align 8
  %targ = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %live_args, i8** %live_args.addr, align 8
  %0 = load i8*, i8** %live_args.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @cmd_ln_print_help(%struct._IO_FILE* %1, %struct.arg_t* getelementptr inbounds ([77 x %struct.arg_t], [77 x %struct.arg_t]* @arg, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %live_args.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i64 388, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %3 = load i8*, i8** %live_args.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i8* %3)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %call4 = call i8* @__ckd_calloc__(i64 10000, i64 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 390)
  store i8* %call4, i8** %argline, align 8
  store i32 1, i32* %nargs, align 4
  store i32 0, i32* %maxarglen, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then.9, %if.end.3
  %4 = load i8*, i8** %argline, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i8* @fgets(i8* %4, i32 10000, %struct._IO_FILE* %5)
  %cmp6 = icmp ne i8* %call5, null
  br i1 %cmp6, label %while.body, label %while.end.32

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %argline, align 8
  %call7 = call i8* @strtok(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call7, i8** %targ, align 8
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  br label %while.cond

if.end.10:                                        ; preds = %while.body
  %7 = load i8*, i8** %targ, align 8
  %call11 = call i64 @strlen(i8* %7) #5
  %conv = trunc i64 %call11 to i32
  %8 = load i32, i32* %maxarglen, align 4
  %cmp12 = icmp sgt i32 %conv, %8
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.10
  %9 = load i8*, i8** %targ, align 8
  %call15 = call i64 @strlen(i8* %9) #5
  %conv16 = trunc i64 %call15 to i32
  store i32 %conv16, i32* %maxarglen, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.10
  %10 = load i32, i32* %nargs, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %nargs, align 4
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.30, %if.end.17
  %call19 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call19, i8** %targ, align 8
  %cmp20 = icmp ne i8* %call19, null
  br i1 %cmp20, label %while.body.22, label %while.end

while.body.22:                                    ; preds = %while.cond.18
  %11 = load i8*, i8** %targ, align 8
  %call23 = call i64 @strlen(i8* %11) #5
  %conv24 = trunc i64 %call23 to i32
  %12 = load i32, i32* %maxarglen, align 4
  %cmp25 = icmp sgt i32 %conv24, %12
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %while.body.22
  %13 = load i8*, i8** %targ, align 8
  %call28 = call i64 @strlen(i8* %13) #5
  %conv29 = trunc i64 %call28 to i32
  store i32 %conv29, i32* %maxarglen, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %while.body.22
  %14 = load i32, i32* %nargs, align 4
  %inc31 = add nsw i32 %14, 1
  store i32 %inc31, i32* %nargs, align 4
  br label %while.cond.18

while.end:                                        ; preds = %while.cond.18
  br label %while.cond

while.end.32:                                     ; preds = %while.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @rewind(%struct._IO_FILE* %15)
  %16 = load i32, i32* %nargs, align 4
  store i32 %16, i32* @parse_args_file.nliveargs, align 4
  %17 = load i32, i32* %nargs, align 4
  %18 = load i32, i32* %maxarglen, align 4
  %add = add nsw i32 %18, 1
  %call33 = call i8** @__ckd_calloc_2d__(i32 %17, i32 %add, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 407)
  store i8** %call33, i8*** @liveargs, align 8
  store i32 1, i32* %nargs, align 4
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.end.55, %if.then.42, %while.end.32
  %19 = load i8*, i8** %argline, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call35 = call i8* @fgets(i8* %19, i32 10000, %struct._IO_FILE* %20)
  %cmp36 = icmp ne i8* %call35, null
  br i1 %cmp36, label %while.body.38, label %while.end.56

while.body.38:                                    ; preds = %while.cond.34
  %21 = load i8*, i8** %argline, align 8
  %call39 = call i8* @strtok(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call39, i8** %targ, align 8
  %cmp40 = icmp eq i8* %call39, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %while.body.38
  br label %while.cond.34

if.end.43:                                        ; preds = %while.body.38
  %22 = load i32, i32* %nargs, align 4
  %inc44 = add nsw i32 %22, 1
  store i32 %inc44, i32* %nargs, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i8**, i8*** @liveargs, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  %24 = load i8*, i8** %arrayidx, align 8
  %25 = load i8*, i8** %targ, align 8
  %call45 = call i8* @strcpy(i8* %24, i8* %25) #4
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.50, %if.end.43
  %call47 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call47, i8** %targ, align 8
  %cmp48 = icmp ne i8* %call47, null
  br i1 %cmp48, label %while.body.50, label %while.end.55

while.body.50:                                    ; preds = %while.cond.46
  %26 = load i32, i32* %nargs, align 4
  %inc51 = add nsw i32 %26, 1
  store i32 %inc51, i32* %nargs, align 4
  %idxprom52 = sext i32 %26 to i64
  %27 = load i8**, i8*** @liveargs, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %27, i64 %idxprom52
  %28 = load i8*, i8** %arrayidx53, align 8
  %29 = load i8*, i8** %targ, align 8
  %call54 = call i8* @strcpy(i8* %28, i8* %29) #4
  br label %while.cond.46

while.end.55:                                     ; preds = %while.cond.46
  br label %while.cond.34

while.end.56:                                     ; preds = %while.cond.34
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call57 = call i32 @fclose(%struct._IO_FILE* %30)
  %31 = load i8*, i8** %argline, align 8
  call void @free(i8* %31) #4
  %32 = load i32, i32* @parse_args_file.nliveargs, align 4
  %33 = load i8**, i8*** @liveargs, align 8
  %call58 = call i32 @cmd_ln_parse(%struct.arg_t* getelementptr inbounds ([77 x %struct.arg_t], [77 x %struct.arg_t]* @arg, i32 0, i32 0), i32 %32, i8** %33)
  br label %return

return:                                           ; preds = %while.end.56, %if.then
  ret void
}

declare void @cmd_ln_print_help(%struct._IO_FILE*, %struct.arg_t*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @rewind(%struct._IO_FILE*) #1

declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @cmd_ln_parse(%struct.arg_t*, i32, i8**) #1

; Function Attrs: nounwind uwtable
define void @parse_args_free() #0 {
entry:
  call void (...) @cmd_ln_free()
  %0 = load i8**, i8*** @liveargs, align 8
  call void @ckd_free_2d(i8** %0)
  ret void
}

declare void @cmd_ln_free(...) #1

declare void @ckd_free_2d(i8**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
