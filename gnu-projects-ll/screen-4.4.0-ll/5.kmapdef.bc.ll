; ModuleID = './kmapdef.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\1B[M\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[10~\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\1BOP\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\1BOQ\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\1BOR\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\1BOS\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\1B[15~\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\1B[17~\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\1B[18~\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\1B[19~\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"\1B[20~\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\1B[21~\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\1B[23~\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\1B[24~\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\1B[1~\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\1B[4~\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\1B[6~\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\1B[5~\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\1B[2~\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"\1B[3~\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"\1B[A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"\1B[B\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"\1B[C\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"\1B[D\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@kmapdef = global [82 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0)], align 16
@.str.42 = private unnamed_addr constant [4 x i8] c"\1BOA\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"\1BOB\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"\1BOC\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"\1BOD\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"\1BOp\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"\1BOq\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"\1BOr\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"\1BOs\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"\1BOt\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"\1BOu\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"\1BOv\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"\1BOw\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"\1BOx\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"\1BOy\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"\1BOk\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"\1BOm\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"\1BOj\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"\1BOo\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"\1BOX\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"\1BOn\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"\1BOl\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"\1BOM\00", align 1
@kmapadef = global [22 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0)], align 16
@.str.64 = private unnamed_addr constant [2 x i8] c"\92\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"\04\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"\15\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"\81\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"\85\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"\06\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"\02\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"\90\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"\8E\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"\86\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"\82\00", align 1
@kmapmdef = global [64 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0)], align 16

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}