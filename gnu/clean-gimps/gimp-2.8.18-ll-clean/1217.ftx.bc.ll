; ModuleID = './plug-ins/script-fu/ftx/ftx.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.named_constant = type { i8*, i32 }
%struct.scheme = type { i8* (i64)*, void (i8*)*, i32, i32, [50 x i8*], [50 x %struct.cell*], i32, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, i32, i32, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, i64, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, [64 x %struct.port], [64 x i32], i32, i32, i8, i8, [1024 x i8], [1024 x i8], %struct._IO_FILE*, i32, i32, %struct.cell*, i32, i8*, i64, %struct.scheme_interface*, i8*, i32, [2 x i32], i32 }
%struct.cell = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i32 }
%struct.port = type { i8, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct._IO_FILE*, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.scheme_interface = type { void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, double)*, %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*)*, %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*, i32)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, i8*)*, void (%struct.scheme*, i32)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, { i8, i64 } (%struct.cell*)*, i64 (%struct.cell*)*, double (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)*, i64 (%struct.cell*)*, void (%struct.cell*, %struct.cell*)*, %struct.cell* (%struct.cell*, i32)*, %struct.cell* (%struct.cell*, i32, %struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*, %struct.cell*)*, %struct.cell* (%struct.cell*, %struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, void (%struct.cell*)*, void (%struct.scheme*, %struct._IO_FILE*)*, void (%struct.scheme*, i8*)* }
%struct._GError = type { i32, i32, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._GDir = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._GTimeVal = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"FILE-TYPE-UNKNOWN\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"FILE-TYPE-FILE\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"FILE-TYPE-DIR\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"FILE-TYPE-LINK\00", align 1
@file_type_constants = global [5 x %struct.named_constant] [%struct.named_constant { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.named_constant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1 }, %struct.named_constant { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 2 }, %struct.named_constant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 3 }, %struct.named_constant zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"getenv\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"gettimeofday\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"usleep\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"file-exists?\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"file-type\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"file-size\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"file-delete\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"dir-open-stream\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"dir-read-entry\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"dir-rewind\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"dir-close-stream\00", align 1

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_fileexists(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %filename = alloca i8*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp eq %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 36
  %7 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %8 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %7(%struct.cell* %8)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %is_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 16
  %11 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string, align 8
  %12 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call2 = call i32 %11(%struct.cell* %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F4 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 21
  %14 = load %struct.cell*, %struct.cell** %F4, align 8
  store %struct.cell* %14, %struct.cell** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 18
  %17 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %18 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call7 = call i8* %17(%struct.cell* %18)
  store i8* %call7, i8** %filename, align 8
  %19 = load i8*, i8** %filename, align 8
  %call8 = call noalias i8* @g_filename_from_utf8(i8* %19, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call8, i8** %filename, align 8
  %20 = load i8*, i8** %filename, align 8
  %call9 = call i32 @g_file_test(i8* %20, i32 16)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.5
  %21 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %T = getelementptr inbounds %struct.scheme, %struct.scheme* %21, i32 0, i32 19
  %22 = load %struct.cell*, %struct.cell** %T, align 8
  store %struct.cell* %22, %struct.cell** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.5
  %23 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F13 = getelementptr inbounds %struct.scheme, %struct.scheme* %23, i32 0, i32 21
  %24 = load %struct.cell*, %struct.cell** %F13, align 8
  store %struct.cell* %24, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.3, %if.then
  %25 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %25
}

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare i32 @g_file_test(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_filetype(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %filename = alloca i8*, align 8
  %retcode = alloca i32, align 4
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp eq %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 36
  %7 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %8 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %7(%struct.cell* %8)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %is_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 16
  %11 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string, align 8
  %12 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call2 = call i32 %11(%struct.cell* %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F4 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 21
  %14 = load %struct.cell*, %struct.cell** %F4, align 8
  store %struct.cell* %14, %struct.cell** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 18
  %17 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %18 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call7 = call i8* %17(%struct.cell* %18)
  store i8* %call7, i8** %filename, align 8
  %19 = load i8*, i8** %filename, align 8
  %call8 = call noalias i8* @g_filename_from_utf8(i8* %19, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call8, i8** %filename, align 8
  %20 = load i8*, i8** %filename, align 8
  %call9 = call i32 @g_file_test(i8* %20, i32 2)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.5
  store i32 3, i32* %retcode, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.end.5
  %21 = load i8*, i8** %filename, align 8
  %call12 = call i32 @g_file_test(i8* %21, i32 1)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  store i32 1, i32* %retcode, align 4
  br label %if.end.21

if.else.15:                                       ; preds = %if.else
  %22 = load i8*, i8** %filename, align 8
  %call16 = call i32 @g_file_test(i8* %22, i32 4)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.15
  store i32 2, i32* %retcode, align 4
  br label %if.end.20

if.else.19:                                       ; preds = %if.else.15
  store i32 0, i32* %retcode, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.11
  %23 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr23 = getelementptr inbounds %struct.scheme, %struct.scheme* %23, i32 0, i32 58
  %24 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr23, align 8
  %mk_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %24, i32 0, i32 4
  %25 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer, align 8
  %26 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %27 = load i32, i32* %retcode, align 4
  %conv = sext i32 %27 to i64
  %call24 = call %struct.cell* %25(%struct.scheme* %26, i64 %conv)
  store %struct.cell* %call24, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.3, %if.then
  %28 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %28
}

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_filesize(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %ret = alloca %struct.cell*, align 8
  %buf = alloca %struct.stat, align 8
  %filename = alloca i8*, align 8
  %retcode = alloca i32, align 4
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp eq %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 36
  %7 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %8 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %7(%struct.cell* %8)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %is_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 16
  %11 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string, align 8
  %12 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call2 = call i32 %11(%struct.cell* %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F4 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 21
  %14 = load %struct.cell*, %struct.cell** %F4, align 8
  store %struct.cell* %14, %struct.cell** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 18
  %17 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %18 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call7 = call i8* %17(%struct.cell* %18)
  store i8* %call7, i8** %filename, align 8
  %19 = load i8*, i8** %filename, align 8
  %call8 = call noalias i8* @g_filename_from_utf8(i8* %19, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call8, i8** %filename, align 8
  %20 = load i8*, i8** %filename, align 8
  %call9 = call i32 @stat(i8* %20, %struct.stat* %buf) #3
  store i32 %call9, i32* %retcode, align 4
  %21 = load i32, i32* %retcode, align 4
  %cmp10 = icmp eq i32 %21, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.5
  %22 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr12 = getelementptr inbounds %struct.scheme, %struct.scheme* %22, i32 0, i32 58
  %23 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr12, align 8
  %mk_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %23, i32 0, i32 4
  %24 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer, align 8
  %25 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 8
  %26 = load i64, i64* %st_size, align 8
  %call13 = call %struct.cell* %24(%struct.scheme* %25, i64 %26)
  store %struct.cell* %call13, %struct.cell** %ret, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end.5
  %27 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F14 = getelementptr inbounds %struct.scheme, %struct.scheme* %27, i32 0, i32 21
  %28 = load %struct.cell*, %struct.cell** %F14, align 8
  store %struct.cell* %28, %struct.cell** %ret, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.11
  %29 = load %struct.cell*, %struct.cell** %ret, align 8
  store %struct.cell* %29, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.3, %if.then
  %30 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %30
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_filedelete(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %ret = alloca %struct.cell*, align 8
  %filename = alloca i8*, align 8
  %retcode = alloca i32, align 4
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp eq %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 36
  %7 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %8 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %7(%struct.cell* %8)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %is_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 16
  %11 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string, align 8
  %12 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call2 = call i32 %11(%struct.cell* %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F4 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 21
  %14 = load %struct.cell*, %struct.cell** %F4, align 8
  store %struct.cell* %14, %struct.cell** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 18
  %17 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %18 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call7 = call i8* %17(%struct.cell* %18)
  store i8* %call7, i8** %filename, align 8
  %19 = load i8*, i8** %filename, align 8
  %call8 = call noalias i8* @g_filename_from_utf8(i8* %19, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call8, i8** %filename, align 8
  %20 = load i8*, i8** %filename, align 8
  %call9 = call i32 @unlink(i8* %20) #3
  store i32 %call9, i32* %retcode, align 4
  %21 = load i32, i32* %retcode, align 4
  %cmp10 = icmp eq i32 %21, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.5
  %22 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %T = getelementptr inbounds %struct.scheme, %struct.scheme* %22, i32 0, i32 19
  %23 = load %struct.cell*, %struct.cell** %T, align 8
  store %struct.cell* %23, %struct.cell** %ret, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end.5
  %24 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F12 = getelementptr inbounds %struct.scheme, %struct.scheme* %24, i32 0, i32 21
  %25 = load %struct.cell*, %struct.cell** %F12, align 8
  store %struct.cell* %25, %struct.cell** %ret, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  %26 = load %struct.cell*, %struct.cell** %ret, align 8
  store %struct.cell* %26, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.3, %if.then
  %27 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %27
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_diropenstream(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %dirpath = alloca i8*, align 8
  %dir = alloca %struct._GDir*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp eq %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 36
  %7 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %8 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %7(%struct.cell* %8)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %is_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 16
  %11 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string, align 8
  %12 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call2 = call i32 %11(%struct.cell* %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F4 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 21
  %14 = load %struct.cell*, %struct.cell** %F4, align 8
  store %struct.cell* %14, %struct.cell** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 18
  %17 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %18 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call7 = call i8* %17(%struct.cell* %18)
  store i8* %call7, i8** %dirpath, align 8
  %19 = load i8*, i8** %dirpath, align 8
  %call8 = call noalias i8* @g_filename_from_utf8(i8* %19, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call8, i8** %dirpath, align 8
  %20 = load i8*, i8** %dirpath, align 8
  %call9 = call %struct._GDir* @g_dir_open(i8* %20, i32 0, %struct._GError** null)
  store %struct._GDir* %call9, %struct._GDir** %dir, align 8
  %21 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %cmp10 = icmp eq %struct._GDir* %21, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.5
  %22 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F12 = getelementptr inbounds %struct.scheme, %struct.scheme* %22, i32 0, i32 21
  %23 = load %struct.cell*, %struct.cell** %F12, align 8
  store %struct.cell* %23, %struct.cell** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.5
  %24 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr14 = getelementptr inbounds %struct.scheme, %struct.scheme* %24, i32 0, i32 58
  %25 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr14, align 8
  %mk_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %25, i32 0, i32 4
  %26 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer, align 8
  %27 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %28 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %29 = ptrtoint %struct._GDir* %28 to i64
  %call15 = call %struct.cell* %26(%struct.scheme* %27, i64 %29)
  store %struct.cell* %call15, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then.3, %if.then
  %30 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %30
}

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_dirreadentry(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %dir = alloca %struct._GDir*, align 8
  %entry1 = alloca i8*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp eq %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 36
  %7 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %8 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %7(%struct.cell* %8)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr2 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr2, align 8
  %is_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 23
  %11 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_integer, align 8
  %12 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call3 = call i32 %11(%struct.cell* %12)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F5 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 21
  %14 = load %struct.cell*, %struct.cell** %F5, align 8
  store %struct.cell* %14, %struct.cell** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr7 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr7, align 8
  %ivalue = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 21
  %17 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue, align 8
  %18 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call8 = call i64 %17(%struct.cell* %18)
  %19 = inttoptr i64 %call8 to %struct._GDir*
  store %struct._GDir* %19, %struct._GDir** %dir, align 8
  %20 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %cmp9 = icmp eq %struct._GDir* %20, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %21 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F11 = getelementptr inbounds %struct.scheme, %struct.scheme* %21, i32 0, i32 21
  %22 = load %struct.cell*, %struct.cell** %F11, align 8
  store %struct.cell* %22, %struct.cell** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %23 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call13 = call i8* @g_dir_read_name(%struct._GDir* %23)
  store i8* %call13, i8** %entry1, align 8
  %24 = load i8*, i8** %entry1, align 8
  %cmp14 = icmp eq i8* %24, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %25 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %EOF_OBJ = getelementptr inbounds %struct.scheme, %struct.scheme* %25, i32 0, i32 23
  %26 = load %struct.cell*, %struct.cell** %EOF_OBJ, align 8
  store %struct.cell* %26, %struct.cell** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %27 = load i8*, i8** %entry1, align 8
  %call17 = call noalias i8* @g_filename_to_utf8(i8* %27, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call17, i8** %entry1, align 8
  %28 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr18 = getelementptr inbounds %struct.scheme, %struct.scheme* %28, i32 0, i32 58
  %29 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr18, align 8
  %mk_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %29, i32 0, i32 8
  %30 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string, align 8
  %31 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %32 = load i8*, i8** %entry1, align 8
  %call19 = call %struct.cell* %30(%struct.scheme* %31, i8* %32)
  store %struct.cell* %call19, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.10, %if.then.4, %if.then
  %33 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %33
}

declare i8* @g_dir_read_name(%struct._GDir*) #1

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_dirrewind(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %dir = alloca %struct._GDir*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp eq %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 36
  %7 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %8 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %7(%struct.cell* %8)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %is_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 23
  %11 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_integer, align 8
  %12 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call2 = call i32 %11(%struct.cell* %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F4 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 21
  %14 = load %struct.cell*, %struct.cell** %F4, align 8
  store %struct.cell* %14, %struct.cell** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %ivalue = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 21
  %17 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue, align 8
  %18 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call7 = call i64 %17(%struct.cell* %18)
  %19 = inttoptr i64 %call7 to %struct._GDir*
  store %struct._GDir* %19, %struct._GDir** %dir, align 8
  %20 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %cmp8 = icmp eq %struct._GDir* %20, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.5
  %21 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F10 = getelementptr inbounds %struct.scheme, %struct.scheme* %21, i32 0, i32 21
  %22 = load %struct.cell*, %struct.cell** %F10, align 8
  store %struct.cell* %22, %struct.cell** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.5
  %23 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_rewind(%struct._GDir* %23)
  %24 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %T = getelementptr inbounds %struct.scheme, %struct.scheme* %24, i32 0, i32 19
  %25 = load %struct.cell*, %struct.cell** %T, align 8
  store %struct.cell* %25, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9, %if.then.3, %if.then
  %26 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %26
}

declare void @g_dir_rewind(%struct._GDir*) #1

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_dirclosestream(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %dir = alloca %struct._GDir*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp eq %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 36
  %7 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %8 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %7(%struct.cell* %8)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %is_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 23
  %11 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_integer, align 8
  %12 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call2 = call i32 %11(%struct.cell* %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F4 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 21
  %14 = load %struct.cell*, %struct.cell** %F4, align 8
  store %struct.cell* %14, %struct.cell** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %ivalue = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 21
  %17 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue, align 8
  %18 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call7 = call i64 %17(%struct.cell* %18)
  %19 = inttoptr i64 %call7 to %struct._GDir*
  store %struct._GDir* %19, %struct._GDir** %dir, align 8
  %20 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %cmp8 = icmp eq %struct._GDir* %20, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.5
  %21 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F10 = getelementptr inbounds %struct.scheme, %struct.scheme* %21, i32 0, i32 21
  %22 = load %struct.cell*, %struct.cell** %F10, align 8
  store %struct.cell* %22, %struct.cell** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.5
  %23 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_close(%struct._GDir* %23)
  %24 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %T = getelementptr inbounds %struct.scheme, %struct.scheme* %24, i32 0, i32 19
  %25 = load %struct.cell*, %struct.cell** %T, align 8
  store %struct.cell* %25, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9, %if.then.3, %if.then
  %26 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %26
}

declare void @g_dir_close(%struct._GDir*) #1

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_getenv(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %ret = alloca %struct.cell*, align 8
  %varname = alloca i8*, align 8
  %value = alloca i8*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp eq %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 36
  %7 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %8 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %7(%struct.cell* %8)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %is_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 16
  %11 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string, align 8
  %12 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call2 = call i32 %11(%struct.cell* %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F4 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 21
  %14 = load %struct.cell*, %struct.cell** %F4, align 8
  store %struct.cell* %14, %struct.cell** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 18
  %17 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %18 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call7 = call i8* %17(%struct.cell* %18)
  store i8* %call7, i8** %varname, align 8
  %19 = load i8*, i8** %varname, align 8
  %call8 = call i8* @g_getenv(i8* %19)
  store i8* %call8, i8** %value, align 8
  %20 = load i8*, i8** %value, align 8
  %cmp9 = icmp eq i8* %20, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.5
  %21 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F11 = getelementptr inbounds %struct.scheme, %struct.scheme* %21, i32 0, i32 21
  %22 = load %struct.cell*, %struct.cell** %F11, align 8
  store %struct.cell* %22, %struct.cell** %ret, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end.5
  %23 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr12 = getelementptr inbounds %struct.scheme, %struct.scheme* %23, i32 0, i32 58
  %24 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr12, align 8
  %mk_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %24, i32 0, i32 8
  %25 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_string, align 8
  %26 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %27 = load i8*, i8** %value, align 8
  %call13 = call %struct.cell* %25(%struct.scheme* %26, i8* %27)
  store %struct.cell* %call13, %struct.cell** %ret, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  %28 = load %struct.cell*, %struct.cell** %ret, align 8
  store %struct.cell* %28, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.3, %if.then
  %29 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %29
}

declare i8* @g_getenv(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_time(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %now = alloca i64, align 8
  %now_tm = alloca %struct.tm*, align 8
  %ret = alloca %struct.cell*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp ne %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i64 @time(i64* %now) #3
  %call1 = call %struct.tm* @localtime(i64* %now) #3
  store %struct.tm* %call1, %struct.tm** %now_tm, align 8
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %cons = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 1
  %7 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons, align 8
  %8 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr2 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr2, align 8
  %mk_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 4
  %11 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer, align 8
  %12 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %13 = load %struct.tm*, %struct.tm** %now_tm, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  %14 = load i32, i32* %tm_year, align 4
  %conv = sext i32 %14 to i64
  %call3 = call %struct.cell* %11(%struct.scheme* %12, i64 %conv)
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr4 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr4, align 8
  %cons5 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 1
  %17 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons5, align 8
  %18 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %19 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %19, i32 0, i32 58
  %20 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %mk_integer7 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %20, i32 0, i32 4
  %21 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer7, align 8
  %22 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %23 = load %struct.tm*, %struct.tm** %now_tm, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 4
  %24 = load i32, i32* %tm_mon, align 4
  %conv8 = sext i32 %24 to i64
  %call9 = call %struct.cell* %21(%struct.scheme* %22, i64 %conv8)
  %25 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr10 = getelementptr inbounds %struct.scheme, %struct.scheme* %25, i32 0, i32 58
  %26 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr10, align 8
  %cons11 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %26, i32 0, i32 1
  %27 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons11, align 8
  %28 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %29 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr12 = getelementptr inbounds %struct.scheme, %struct.scheme* %29, i32 0, i32 58
  %30 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr12, align 8
  %mk_integer13 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %30, i32 0, i32 4
  %31 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer13, align 8
  %32 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %33 = load %struct.tm*, %struct.tm** %now_tm, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 3
  %34 = load i32, i32* %tm_mday, align 4
  %conv14 = sext i32 %34 to i64
  %call15 = call %struct.cell* %31(%struct.scheme* %32, i64 %conv14)
  %35 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr16 = getelementptr inbounds %struct.scheme, %struct.scheme* %35, i32 0, i32 58
  %36 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr16, align 8
  %cons17 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %36, i32 0, i32 1
  %37 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons17, align 8
  %38 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %39 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr18 = getelementptr inbounds %struct.scheme, %struct.scheme* %39, i32 0, i32 58
  %40 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr18, align 8
  %mk_integer19 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %40, i32 0, i32 4
  %41 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer19, align 8
  %42 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %43 = load %struct.tm*, %struct.tm** %now_tm, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 2
  %44 = load i32, i32* %tm_hour, align 4
  %conv20 = sext i32 %44 to i64
  %call21 = call %struct.cell* %41(%struct.scheme* %42, i64 %conv20)
  %45 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr22 = getelementptr inbounds %struct.scheme, %struct.scheme* %45, i32 0, i32 58
  %46 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr22, align 8
  %cons23 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %46, i32 0, i32 1
  %47 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons23, align 8
  %48 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %49 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr24 = getelementptr inbounds %struct.scheme, %struct.scheme* %49, i32 0, i32 58
  %50 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr24, align 8
  %mk_integer25 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %50, i32 0, i32 4
  %51 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer25, align 8
  %52 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %53 = load %struct.tm*, %struct.tm** %now_tm, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 1
  %54 = load i32, i32* %tm_min, align 4
  %conv26 = sext i32 %54 to i64
  %call27 = call %struct.cell* %51(%struct.scheme* %52, i64 %conv26)
  %55 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr28 = getelementptr inbounds %struct.scheme, %struct.scheme* %55, i32 0, i32 58
  %56 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr28, align 8
  %cons29 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %56, i32 0, i32 1
  %57 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons29, align 8
  %58 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %59 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr30 = getelementptr inbounds %struct.scheme, %struct.scheme* %59, i32 0, i32 58
  %60 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr30, align 8
  %mk_integer31 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %60, i32 0, i32 4
  %61 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer31, align 8
  %62 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %63 = load %struct.tm*, %struct.tm** %now_tm, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 0
  %64 = load i32, i32* %tm_sec, align 4
  %conv32 = sext i32 %64 to i64
  %call33 = call %struct.cell* %61(%struct.scheme* %62, i64 %conv32)
  %65 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL34 = getelementptr inbounds %struct.scheme, %struct.scheme* %65, i32 0, i32 17
  %66 = load %struct.cell*, %struct.cell** %NIL34, align 8
  %call35 = call %struct.cell* %57(%struct.scheme* %58, %struct.cell* %call33, %struct.cell* %66)
  %call36 = call %struct.cell* %47(%struct.scheme* %48, %struct.cell* %call27, %struct.cell* %call35)
  %call37 = call %struct.cell* %37(%struct.scheme* %38, %struct.cell* %call21, %struct.cell* %call36)
  %call38 = call %struct.cell* %27(%struct.scheme* %28, %struct.cell* %call15, %struct.cell* %call37)
  %call39 = call %struct.cell* %17(%struct.scheme* %18, %struct.cell* %call9, %struct.cell* %call38)
  %call40 = call %struct.cell* %7(%struct.scheme* %8, %struct.cell* %call3, %struct.cell* %call39)
  store %struct.cell* %call40, %struct.cell** %ret, align 8
  %67 = load %struct.cell*, %struct.cell** %ret, align 8
  store %struct.cell* %67, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %68 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %68
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_gettimeofday(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %tv = alloca %struct._GTimeVal, align 8
  %ret = alloca %struct.cell*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  call void @g_get_current_time(%struct._GTimeVal* %tv)
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %0, i32 0, i32 58
  %1 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %cons = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1, i32 0, i32 1
  %2 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons, align 8
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %4 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %4, i32 0, i32 58
  %5 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %mk_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %5, i32 0, i32 4
  %6 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer, align 8
  %7 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %tv_sec = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %tv, i32 0, i32 0
  %8 = load i64, i64* %tv_sec, align 8
  %call = call %struct.cell* %6(%struct.scheme* %7, i64 %8)
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr2 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr2, align 8
  %cons3 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 1
  %11 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons3, align 8
  %12 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr4 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 58
  %14 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr4, align 8
  %mk_integer5 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %14, i32 0, i32 4
  %15 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer5, align 8
  %16 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %tv_usec = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %tv, i32 0, i32 1
  %17 = load i64, i64* %tv_usec, align 8
  %call6 = call %struct.cell* %15(%struct.scheme* %16, i64 %17)
  %18 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %18, i32 0, i32 17
  %19 = load %struct.cell*, %struct.cell** %NIL, align 8
  %call7 = call %struct.cell* %11(%struct.scheme* %12, %struct.cell* %call6, %struct.cell* %19)
  %call8 = call %struct.cell* %2(%struct.scheme* %3, %struct.cell* %call, %struct.cell* %call7)
  store %struct.cell* %call8, %struct.cell** %ret, align 8
  %20 = load %struct.cell*, %struct.cell** %ret, align 8
  ret %struct.cell* %20
}

declare void @g_get_current_time(%struct._GTimeVal*) #1

; Function Attrs: nounwind uwtable
define %struct.cell* @foreign_usleep(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %usec = alloca i64, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %1 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %1, i32 0, i32 17
  %2 = load %struct.cell*, %struct.cell** %NIL, align 8
  %cmp = icmp eq %struct.cell* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %3, i32 0, i32 21
  %4 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %4, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 58
  %6 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %6, i32 0, i32 36
  %7 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %8 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %7(%struct.cell* %8)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %is_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 23
  %11 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_integer, align 8
  %12 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call2 = call i32 %11(%struct.cell* %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F4 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 21
  %14 = load %struct.cell*, %struct.cell** %F4, align 8
  store %struct.cell* %14, %struct.cell** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %ivalue = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 21
  %17 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue, align 8
  %18 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call7 = call i64 %17(%struct.cell* %18)
  store i64 %call7, i64* %usec, align 8
  %19 = load i64, i64* %usec, align 8
  call void @g_usleep(i64 %19)
  %20 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %T = getelementptr inbounds %struct.scheme, %struct.scheme* %20, i32 0, i32 19
  %21 = load %struct.cell*, %struct.cell** %T, align 8
  store %struct.cell* %21, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %22 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %22
}

declare void @g_usleep(i64) #1

; Function Attrs: nounwind uwtable
define void @init_ftx(%struct.scheme* %sc) #0 {
entry:
  %sc.addr = alloca %struct.scheme*, align 8
  %i = alloca i32, align 4
  %coerce = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce12 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce23 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce34 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce45 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce56 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce67 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce78 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce89 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce100 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce111 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  %coerce122 = alloca %struct.cell* (%struct.scheme*, %struct.cell*)*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %0, i32 0, i32 58
  %1 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %scheme_define = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1, i32 0, i32 0
  %2 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define, align 8
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %4 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env = getelementptr inbounds %struct.scheme, %struct.scheme* %4, i32 0, i32 25
  %5 = load %struct.cell*, %struct.cell** %global_env, align 8
  %6 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %6, i32 0, i32 58
  %7 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %mk_symbol = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %7, i32 0, i32 6
  %8 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call = call %struct.cell* %8(%struct.scheme* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %10 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr2 = getelementptr inbounds %struct.scheme, %struct.scheme* %10, i32 0, i32 58
  %11 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr2, align 8
  %mk_foreign_func = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %11, i32 0, i32 12
  %12 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func, align 8
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_getenv, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce, align 8
  %14 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce, align 8
  %coerce.val = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %14 to {}*
  %call3 = call %struct.cell* %12(%struct.scheme* %13, {}* %coerce.val)
  call void %2(%struct.scheme* %3, %struct.cell* %5, %struct.cell* %call, %struct.cell* %call3)
  %15 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr4 = getelementptr inbounds %struct.scheme, %struct.scheme* %15, i32 0, i32 58
  %16 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr4, align 8
  %scheme_define5 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %16, i32 0, i32 0
  %17 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define5, align 8
  %18 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %19 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env6 = getelementptr inbounds %struct.scheme, %struct.scheme* %19, i32 0, i32 25
  %20 = load %struct.cell*, %struct.cell** %global_env6, align 8
  %21 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr7 = getelementptr inbounds %struct.scheme, %struct.scheme* %21, i32 0, i32 58
  %22 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr7, align 8
  %mk_symbol8 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %22, i32 0, i32 6
  %23 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol8, align 8
  %24 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call9 = call %struct.cell* %23(%struct.scheme* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %25 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr10 = getelementptr inbounds %struct.scheme, %struct.scheme* %25, i32 0, i32 58
  %26 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr10, align 8
  %mk_foreign_func11 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %26, i32 0, i32 12
  %27 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func11, align 8
  %28 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_time, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce12, align 8
  %29 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce12, align 8
  %coerce.val13 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %29 to {}*
  %call14 = call %struct.cell* %27(%struct.scheme* %28, {}* %coerce.val13)
  call void %17(%struct.scheme* %18, %struct.cell* %20, %struct.cell* %call9, %struct.cell* %call14)
  %30 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr15 = getelementptr inbounds %struct.scheme, %struct.scheme* %30, i32 0, i32 58
  %31 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr15, align 8
  %scheme_define16 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %31, i32 0, i32 0
  %32 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define16, align 8
  %33 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %34 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env17 = getelementptr inbounds %struct.scheme, %struct.scheme* %34, i32 0, i32 25
  %35 = load %struct.cell*, %struct.cell** %global_env17, align 8
  %36 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr18 = getelementptr inbounds %struct.scheme, %struct.scheme* %36, i32 0, i32 58
  %37 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr18, align 8
  %mk_symbol19 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %37, i32 0, i32 6
  %38 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol19, align 8
  %39 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call20 = call %struct.cell* %38(%struct.scheme* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  %40 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr21 = getelementptr inbounds %struct.scheme, %struct.scheme* %40, i32 0, i32 58
  %41 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr21, align 8
  %mk_foreign_func22 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %41, i32 0, i32 12
  %42 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func22, align 8
  %43 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_gettimeofday, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce23, align 8
  %44 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce23, align 8
  %coerce.val24 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %44 to {}*
  %call25 = call %struct.cell* %42(%struct.scheme* %43, {}* %coerce.val24)
  call void %32(%struct.scheme* %33, %struct.cell* %35, %struct.cell* %call20, %struct.cell* %call25)
  %45 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr26 = getelementptr inbounds %struct.scheme, %struct.scheme* %45, i32 0, i32 58
  %46 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr26, align 8
  %scheme_define27 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %46, i32 0, i32 0
  %47 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define27, align 8
  %48 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %49 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env28 = getelementptr inbounds %struct.scheme, %struct.scheme* %49, i32 0, i32 25
  %50 = load %struct.cell*, %struct.cell** %global_env28, align 8
  %51 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr29 = getelementptr inbounds %struct.scheme, %struct.scheme* %51, i32 0, i32 58
  %52 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr29, align 8
  %mk_symbol30 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %52, i32 0, i32 6
  %53 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol30, align 8
  %54 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call31 = call %struct.cell* %53(%struct.scheme* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  %55 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr32 = getelementptr inbounds %struct.scheme, %struct.scheme* %55, i32 0, i32 58
  %56 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr32, align 8
  %mk_foreign_func33 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %56, i32 0, i32 12
  %57 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func33, align 8
  %58 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_usleep, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce34, align 8
  %59 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce34, align 8
  %coerce.val35 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %59 to {}*
  %call36 = call %struct.cell* %57(%struct.scheme* %58, {}* %coerce.val35)
  call void %47(%struct.scheme* %48, %struct.cell* %50, %struct.cell* %call31, %struct.cell* %call36)
  %60 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr37 = getelementptr inbounds %struct.scheme, %struct.scheme* %60, i32 0, i32 58
  %61 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr37, align 8
  %scheme_define38 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %61, i32 0, i32 0
  %62 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define38, align 8
  %63 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %64 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env39 = getelementptr inbounds %struct.scheme, %struct.scheme* %64, i32 0, i32 25
  %65 = load %struct.cell*, %struct.cell** %global_env39, align 8
  %66 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr40 = getelementptr inbounds %struct.scheme, %struct.scheme* %66, i32 0, i32 58
  %67 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr40, align 8
  %mk_symbol41 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %67, i32 0, i32 6
  %68 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol41, align 8
  %69 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call42 = call %struct.cell* %68(%struct.scheme* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %70 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr43 = getelementptr inbounds %struct.scheme, %struct.scheme* %70, i32 0, i32 58
  %71 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr43, align 8
  %mk_foreign_func44 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %71, i32 0, i32 12
  %72 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func44, align 8
  %73 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_fileexists, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce45, align 8
  %74 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce45, align 8
  %coerce.val46 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %74 to {}*
  %call47 = call %struct.cell* %72(%struct.scheme* %73, {}* %coerce.val46)
  call void %62(%struct.scheme* %63, %struct.cell* %65, %struct.cell* %call42, %struct.cell* %call47)
  %75 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr48 = getelementptr inbounds %struct.scheme, %struct.scheme* %75, i32 0, i32 58
  %76 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr48, align 8
  %scheme_define49 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %76, i32 0, i32 0
  %77 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define49, align 8
  %78 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %79 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env50 = getelementptr inbounds %struct.scheme, %struct.scheme* %79, i32 0, i32 25
  %80 = load %struct.cell*, %struct.cell** %global_env50, align 8
  %81 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr51 = getelementptr inbounds %struct.scheme, %struct.scheme* %81, i32 0, i32 58
  %82 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr51, align 8
  %mk_symbol52 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %82, i32 0, i32 6
  %83 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol52, align 8
  %84 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call53 = call %struct.cell* %83(%struct.scheme* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %85 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr54 = getelementptr inbounds %struct.scheme, %struct.scheme* %85, i32 0, i32 58
  %86 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr54, align 8
  %mk_foreign_func55 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %86, i32 0, i32 12
  %87 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func55, align 8
  %88 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_filetype, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce56, align 8
  %89 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce56, align 8
  %coerce.val57 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %89 to {}*
  %call58 = call %struct.cell* %87(%struct.scheme* %88, {}* %coerce.val57)
  call void %77(%struct.scheme* %78, %struct.cell* %80, %struct.cell* %call53, %struct.cell* %call58)
  %90 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr59 = getelementptr inbounds %struct.scheme, %struct.scheme* %90, i32 0, i32 58
  %91 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr59, align 8
  %scheme_define60 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %91, i32 0, i32 0
  %92 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define60, align 8
  %93 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %94 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env61 = getelementptr inbounds %struct.scheme, %struct.scheme* %94, i32 0, i32 25
  %95 = load %struct.cell*, %struct.cell** %global_env61, align 8
  %96 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr62 = getelementptr inbounds %struct.scheme, %struct.scheme* %96, i32 0, i32 58
  %97 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr62, align 8
  %mk_symbol63 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %97, i32 0, i32 6
  %98 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol63, align 8
  %99 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call64 = call %struct.cell* %98(%struct.scheme* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  %100 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr65 = getelementptr inbounds %struct.scheme, %struct.scheme* %100, i32 0, i32 58
  %101 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr65, align 8
  %mk_foreign_func66 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %101, i32 0, i32 12
  %102 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func66, align 8
  %103 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_filesize, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce67, align 8
  %104 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce67, align 8
  %coerce.val68 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %104 to {}*
  %call69 = call %struct.cell* %102(%struct.scheme* %103, {}* %coerce.val68)
  call void %92(%struct.scheme* %93, %struct.cell* %95, %struct.cell* %call64, %struct.cell* %call69)
  %105 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr70 = getelementptr inbounds %struct.scheme, %struct.scheme* %105, i32 0, i32 58
  %106 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr70, align 8
  %scheme_define71 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %106, i32 0, i32 0
  %107 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define71, align 8
  %108 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %109 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env72 = getelementptr inbounds %struct.scheme, %struct.scheme* %109, i32 0, i32 25
  %110 = load %struct.cell*, %struct.cell** %global_env72, align 8
  %111 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr73 = getelementptr inbounds %struct.scheme, %struct.scheme* %111, i32 0, i32 58
  %112 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr73, align 8
  %mk_symbol74 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %112, i32 0, i32 6
  %113 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol74, align 8
  %114 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call75 = call %struct.cell* %113(%struct.scheme* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  %115 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr76 = getelementptr inbounds %struct.scheme, %struct.scheme* %115, i32 0, i32 58
  %116 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr76, align 8
  %mk_foreign_func77 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %116, i32 0, i32 12
  %117 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func77, align 8
  %118 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_filedelete, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce78, align 8
  %119 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce78, align 8
  %coerce.val79 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %119 to {}*
  %call80 = call %struct.cell* %117(%struct.scheme* %118, {}* %coerce.val79)
  call void %107(%struct.scheme* %108, %struct.cell* %110, %struct.cell* %call75, %struct.cell* %call80)
  %120 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr81 = getelementptr inbounds %struct.scheme, %struct.scheme* %120, i32 0, i32 58
  %121 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr81, align 8
  %scheme_define82 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %121, i32 0, i32 0
  %122 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define82, align 8
  %123 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %124 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env83 = getelementptr inbounds %struct.scheme, %struct.scheme* %124, i32 0, i32 25
  %125 = load %struct.cell*, %struct.cell** %global_env83, align 8
  %126 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr84 = getelementptr inbounds %struct.scheme, %struct.scheme* %126, i32 0, i32 58
  %127 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr84, align 8
  %mk_symbol85 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %127, i32 0, i32 6
  %128 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol85, align 8
  %129 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call86 = call %struct.cell* %128(%struct.scheme* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0))
  %130 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr87 = getelementptr inbounds %struct.scheme, %struct.scheme* %130, i32 0, i32 58
  %131 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr87, align 8
  %mk_foreign_func88 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %131, i32 0, i32 12
  %132 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func88, align 8
  %133 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_diropenstream, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce89, align 8
  %134 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce89, align 8
  %coerce.val90 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %134 to {}*
  %call91 = call %struct.cell* %132(%struct.scheme* %133, {}* %coerce.val90)
  call void %122(%struct.scheme* %123, %struct.cell* %125, %struct.cell* %call86, %struct.cell* %call91)
  %135 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr92 = getelementptr inbounds %struct.scheme, %struct.scheme* %135, i32 0, i32 58
  %136 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr92, align 8
  %scheme_define93 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %136, i32 0, i32 0
  %137 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define93, align 8
  %138 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %139 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env94 = getelementptr inbounds %struct.scheme, %struct.scheme* %139, i32 0, i32 25
  %140 = load %struct.cell*, %struct.cell** %global_env94, align 8
  %141 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr95 = getelementptr inbounds %struct.scheme, %struct.scheme* %141, i32 0, i32 58
  %142 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr95, align 8
  %mk_symbol96 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %142, i32 0, i32 6
  %143 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol96, align 8
  %144 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call97 = call %struct.cell* %143(%struct.scheme* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  %145 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr98 = getelementptr inbounds %struct.scheme, %struct.scheme* %145, i32 0, i32 58
  %146 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr98, align 8
  %mk_foreign_func99 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %146, i32 0, i32 12
  %147 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func99, align 8
  %148 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_dirreadentry, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce100, align 8
  %149 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce100, align 8
  %coerce.val101 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %149 to {}*
  %call102 = call %struct.cell* %147(%struct.scheme* %148, {}* %coerce.val101)
  call void %137(%struct.scheme* %138, %struct.cell* %140, %struct.cell* %call97, %struct.cell* %call102)
  %150 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr103 = getelementptr inbounds %struct.scheme, %struct.scheme* %150, i32 0, i32 58
  %151 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr103, align 8
  %scheme_define104 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %151, i32 0, i32 0
  %152 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define104, align 8
  %153 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %154 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env105 = getelementptr inbounds %struct.scheme, %struct.scheme* %154, i32 0, i32 25
  %155 = load %struct.cell*, %struct.cell** %global_env105, align 8
  %156 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr106 = getelementptr inbounds %struct.scheme, %struct.scheme* %156, i32 0, i32 58
  %157 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr106, align 8
  %mk_symbol107 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %157, i32 0, i32 6
  %158 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol107, align 8
  %159 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call108 = call %struct.cell* %158(%struct.scheme* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0))
  %160 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr109 = getelementptr inbounds %struct.scheme, %struct.scheme* %160, i32 0, i32 58
  %161 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr109, align 8
  %mk_foreign_func110 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %161, i32 0, i32 12
  %162 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func110, align 8
  %163 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_dirrewind, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce111, align 8
  %164 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce111, align 8
  %coerce.val112 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %164 to {}*
  %call113 = call %struct.cell* %162(%struct.scheme* %163, {}* %coerce.val112)
  call void %152(%struct.scheme* %153, %struct.cell* %155, %struct.cell* %call108, %struct.cell* %call113)
  %165 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr114 = getelementptr inbounds %struct.scheme, %struct.scheme* %165, i32 0, i32 58
  %166 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr114, align 8
  %scheme_define115 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %166, i32 0, i32 0
  %167 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define115, align 8
  %168 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %169 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env116 = getelementptr inbounds %struct.scheme, %struct.scheme* %169, i32 0, i32 25
  %170 = load %struct.cell*, %struct.cell** %global_env116, align 8
  %171 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr117 = getelementptr inbounds %struct.scheme, %struct.scheme* %171, i32 0, i32 58
  %172 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr117, align 8
  %mk_symbol118 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %172, i32 0, i32 6
  %173 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol118, align 8
  %174 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call119 = call %struct.cell* %173(%struct.scheme* %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0))
  %175 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr120 = getelementptr inbounds %struct.scheme, %struct.scheme* %175, i32 0, i32 58
  %176 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr120, align 8
  %mk_foreign_func121 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %176, i32 0, i32 12
  %177 = load %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, {}*)** %mk_foreign_func121, align 8
  %178 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  store %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_dirclosestream, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce122, align 8
  %179 = load %struct.cell* (%struct.scheme*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*)** %coerce122, align 8
  %coerce.val123 = bitcast %struct.cell* (%struct.scheme*, %struct.cell*)* %179 to {}*
  %call124 = call %struct.cell* %177(%struct.scheme* %178, {}* %coerce.val123)
  call void %167(%struct.scheme* %168, %struct.cell* %170, %struct.cell* %call119, %struct.cell* %call124)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %180 = load i32, i32* %i, align 4
  %idxprom = sext i32 %180 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.named_constant], [5 x %struct.named_constant]* @file_type_constants, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.named_constant, %struct.named_constant* %arrayidx, i32 0, i32 0
  %181 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %181, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %182 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr125 = getelementptr inbounds %struct.scheme, %struct.scheme* %182, i32 0, i32 58
  %183 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr125, align 8
  %scheme_define126 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %183, i32 0, i32 0
  %184 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define126, align 8
  %185 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %186 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env127 = getelementptr inbounds %struct.scheme, %struct.scheme* %186, i32 0, i32 25
  %187 = load %struct.cell*, %struct.cell** %global_env127, align 8
  %188 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr128 = getelementptr inbounds %struct.scheme, %struct.scheme* %188, i32 0, i32 58
  %189 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr128, align 8
  %mk_symbol129 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %189, i32 0, i32 6
  %190 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol129, align 8
  %191 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %192 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %192 to i64
  %arrayidx131 = getelementptr inbounds [5 x %struct.named_constant], [5 x %struct.named_constant]* @file_type_constants, i32 0, i64 %idxprom130
  %name132 = getelementptr inbounds %struct.named_constant, %struct.named_constant* %arrayidx131, i32 0, i32 0
  %193 = load i8*, i8** %name132, align 8
  %call133 = call %struct.cell* %190(%struct.scheme* %191, i8* %193)
  %194 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr134 = getelementptr inbounds %struct.scheme, %struct.scheme* %194, i32 0, i32 58
  %195 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr134, align 8
  %mk_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %195, i32 0, i32 4
  %196 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer, align 8
  %197 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %198 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %198 to i64
  %arrayidx136 = getelementptr inbounds [5 x %struct.named_constant], [5 x %struct.named_constant]* @file_type_constants, i32 0, i64 %idxprom135
  %value = getelementptr inbounds %struct.named_constant, %struct.named_constant* %arrayidx136, i32 0, i32 1
  %199 = load i32, i32* %value, align 4
  %conv = zext i32 %199 to i64
  %call137 = call %struct.cell* %196(%struct.scheme* %197, i64 %conv)
  call void %184(%struct.scheme* %185, %struct.cell* %187, %struct.cell* %call133, %struct.cell* %call137)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %200 = load i32, i32* %i, align 4
  %inc = add nsw i32 %200, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
