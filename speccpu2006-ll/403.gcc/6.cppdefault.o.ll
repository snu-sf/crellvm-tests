; ModuleID = 'cppdefault.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.default_include = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"NONE/include\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/usr/include\00", align 1
@cpp_include_defaults = constant [3 x %struct.default_include] [%struct.default_include { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* null, i32 0, i32 1 }, %struct.default_include { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* null, i32 0, i32 0 }, %struct.default_include zeroinitializer], align 16
@cpp_GCC_INCLUDE_DIR = constant [1 x i8] zeroinitializer, align 1
@cpp_GCC_INCLUDE_DIR_len = constant i64 0, align 8

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
