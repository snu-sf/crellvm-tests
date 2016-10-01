; ModuleID = './MultiSource.Applications.ClamAV/6.clamscan_treewalk.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_info = type { i32, i32, i32, i32, i32, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.optstruct = type { %struct.optnode*, i8* }
%struct.optnode = type { i8, i8*, i8*, %struct.optnode* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.anon = type { i32 }
%struct.s_du = type { i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"exclude-dir\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"include-dir\00", align 1
@printinfected = external global i16, align 2
@.str.2 = private unnamed_addr constant [14 x i8] c"%s: Excluded\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"max-dir-recursion\00", align 1
@info = external global %struct.s_info, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@recursion = external global i16, align 2
@.str.7 = private unnamed_addr constant [27 x i8] c"%s: Can't open directory.\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"clamav\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"ERROR: setgid(%d) failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"ERROR: setuid(%d) failed.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @treewalk(i8* %dirname, %struct.cl_engine* %engine, %struct.passwd* %user, %struct.optstruct* %opt, %struct.cl_limits* %limits, i32 %options, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  %user.addr = alloca %struct.passwd*, align 8
  %opt.addr = alloca %struct.optstruct*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %options.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %dd = alloca %struct.__dirstream*, align 8
  %dent = alloca %struct.dirent*, align 8
  %statbuf = alloca %struct.stat, align 8
  %fname = alloca i8*, align 8
  %scanret = alloca i32, align 4
  %included = alloca i32, align 4
  %maxdepth = alloca i32, align 4
  %optnode = alloca %struct.optnode*, align 8
  %argument = alloca i8*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.passwd* %user, %struct.passwd** %user.addr, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 0, i32* %scanret, align 4
  %0 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call = call i32 @opt_check(%struct.optstruct* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call1 = call i8* @opt_firstarg(%struct.optstruct* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.optnode** %optnode)
  store i8* %call1, i8** %argument, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load i8*, i8** %argument, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %dirname.addr, align 8
  %4 = load i8*, i8** %argument, align 8
  %call3 = call i32 @match_regex(i8* %3, i8* %4)
  %cmp = icmp eq i32 %call3, 1
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %call5 = call i8* @opt_nextarg(%struct.optnode** %optnode, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  store i8* %call5, i8** %argument, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.6

if.end.6:                                         ; preds = %while.end, %entry
  %5 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call7 = call i32 @opt_check(%struct.optstruct* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.28

if.then.9:                                        ; preds = %if.end.6
  store i32 0, i32* %included, align 4
  %6 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call10 = call i8* @opt_firstarg(%struct.optstruct* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), %struct.optnode** %optnode)
  store i8* %call10, i8** %argument, align 8
  br label %while.cond.11

while.cond.11:                                    ; preds = %if.end.18, %if.then.9
  %7 = load i8*, i8** %argument, align 8
  %tobool12 = icmp ne i8* %7, null
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.11
  %8 = load i32, i32* %included, align 4
  %tobool13 = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool13, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.11
  %9 = phi i1 [ false, %while.cond.11 ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body.14, label %while.end.20

while.body.14:                                    ; preds = %land.end
  %10 = load i8*, i8** %dirname.addr, align 8
  %11 = load i8*, i8** %argument, align 8
  %call15 = call i32 @match_regex(i8* %10, i8* %11)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body.14
  store i32 1, i32* %included, align 4
  br label %while.end.20

if.end.18:                                        ; preds = %while.body.14
  %call19 = call i8* @opt_nextarg(%struct.optnode** %optnode, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call19, i8** %argument, align 8
  br label %while.cond.11

while.end.20:                                     ; preds = %if.then.17, %land.end
  %12 = load i32, i32* %included, align 4
  %tobool21 = icmp ne i32 %12, 0
  br i1 %tobool21, label %if.end.27, label %if.then.22

if.then.22:                                       ; preds = %while.end.20
  %13 = load i16, i16* @printinfected, align 2
  %tobool23 = icmp ne i16 %13, 0
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.then.22
  %14 = load i8*, i8** %dirname.addr, align 8
  %call25 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %14)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.then.22
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %while.end.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.6
  %15 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call29 = call i32 @opt_check(%struct.optstruct* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.28
  %16 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %call32 = call i8* @opt_arg(%struct.optstruct* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %call33 = call i32 @atoi(i8* %call32) #5
  store i32 %call33, i32* %maxdepth, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end.28
  store i32 15, i32* %maxdepth, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.31
  %17 = load i32, i32* %depth.addr, align 4
  %18 = load i32, i32* %maxdepth, align 4
  %cmp35 = icmp ugt i32 %17, %18
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.34
  %19 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 1), align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 1), align 4
  %20 = load i32, i32* %depth.addr, align 4
  %inc38 = add i32 %20, 1
  store i32 %inc38, i32* %depth.addr, align 4
  %21 = load i8*, i8** %dirname.addr, align 8
  %call39 = call %struct.__dirstream* @opendir(i8* %21)
  store %struct.__dirstream* %call39, %struct.__dirstream** %dd, align 8
  %cmp40 = icmp ne %struct.__dirstream* %call39, null
  br i1 %cmp40, label %if.then.41, label %if.else.95

if.then.41:                                       ; preds = %if.end.37
  br label %while.cond.42

while.cond.42:                                    ; preds = %if.end.93, %if.then.41
  %22 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call43 = call %struct.dirent* @readdir(%struct.__dirstream* %22)
  store %struct.dirent* %call43, %struct.dirent** %dent, align 8
  %tobool44 = icmp ne %struct.dirent* %call43, null
  br i1 %tobool44, label %while.body.45, label %while.end.94

while.body.45:                                    ; preds = %while.cond.42
  %23 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 0
  %24 = load i64, i64* %d_ino, align 8
  %tobool46 = icmp ne i64 %24, 0
  br i1 %tobool46, label %if.then.47, label %if.end.93

if.then.47:                                       ; preds = %while.body.45
  %25 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call48 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #5
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %if.then.47
  %26 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name50 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 4
  %arraydecay51 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name50, i32 0, i32 0
  %call52 = call i32 @strcmp(i8* %arraydecay51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #5
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.92

if.then.54:                                       ; preds = %land.lhs.true
  %27 = load i8*, i8** %dirname.addr, align 8
  %call55 = call i64 @strlen(i8* %27) #5
  %28 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name56 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 4
  %arraydecay57 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name56, i32 0, i32 0
  %call58 = call i64 @strlen(i8* %arraydecay57) #5
  %add = add i64 %call55, %call58
  %add59 = add i64 %add, 2
  %call60 = call noalias i8* @malloc(i64 %add59) #6
  store i8* %call60, i8** %fname, align 8
  %29 = load i8*, i8** %fname, align 8
  %30 = load i8*, i8** %dirname.addr, align 8
  %31 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name61 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 4
  %arraydecay62 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name61, i32 0, i32 0
  %call63 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %30, i8* %arraydecay62) #6
  %32 = load i8*, i8** %fname, align 8
  %call64 = call i32 @lstat(i8* %32, %struct.stat* %statbuf) #6
  %cmp65 = icmp ne i32 %call64, -1
  br i1 %cmp65, label %if.then.66, label %if.end.91

if.then.66:                                       ; preds = %if.then.54
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %33 = load i32, i32* %st_mode, align 4
  %and = and i32 %33, 61440
  %cmp67 = icmp eq i32 %and, 16384
  br i1 %cmp67, label %land.lhs.true.68, label %if.else.81

land.lhs.true.68:                                 ; preds = %if.then.66
  %st_mode69 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %34 = load i32, i32* %st_mode69, align 4
  %and70 = and i32 %34, 61440
  %cmp71 = icmp eq i32 %and70, 40960
  br i1 %cmp71, label %if.else.81, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %land.lhs.true.68
  %35 = load i16, i16* @recursion, align 2
  %conv = sext i16 %35 to i32
  %tobool73 = icmp ne i32 %conv, 0
  br i1 %tobool73, label %if.then.74, label %if.else.81

if.then.74:                                       ; preds = %land.lhs.true.72
  %36 = load i8*, i8** %fname, align 8
  %37 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %38 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %39 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %40 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %41 = load i32, i32* %options.addr, align 4
  %42 = load i32, i32* %depth.addr, align 4
  %call75 = call i32 @treewalk(i8* %36, %struct.cl_engine* %37, %struct.passwd* %38, %struct.optstruct* %39, %struct.cl_limits* %40, i32 %41, i32 %42)
  %cmp76 = icmp eq i32 %call75, 1
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.then.74
  %43 = load i32, i32* %scanret, align 4
  %inc79 = add nsw i32 %43, 1
  store i32 %inc79, i32* %scanret, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.74
  br label %if.end.90

if.else.81:                                       ; preds = %land.lhs.true.72, %land.lhs.true.68, %if.then.66
  %st_mode82 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %44 = load i32, i32* %st_mode82, align 4
  %and83 = and i32 %44, 61440
  %cmp84 = icmp eq i32 %and83, 32768
  br i1 %cmp84, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.else.81
  %45 = load i8*, i8** %fname, align 8
  %46 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %47 = load %struct.passwd*, %struct.passwd** %user.addr, align 8
  %48 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %49 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %50 = load i32, i32* %options.addr, align 4
  %call87 = call i32 @scanfile(i8* %45, %struct.cl_engine* %46, %struct.passwd* %47, %struct.optstruct* %48, %struct.cl_limits* %49, i32 %50)
  %51 = load i32, i32* %scanret, align 4
  %add88 = add nsw i32 %51, %call87
  store i32 %add88, i32* %scanret, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %if.else.81
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.80
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.54
  %52 = load i8*, i8** %fname, align 8
  call void @free(i8* %52) #6
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %land.lhs.true, %if.then.47
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %while.body.45
  br label %while.cond.42

while.end.94:                                     ; preds = %while.cond.42
  br label %if.end.100

if.else.95:                                       ; preds = %if.end.37
  %53 = load i16, i16* @printinfected, align 2
  %tobool96 = icmp ne i16 %53, 0
  br i1 %tobool96, label %if.end.99, label %if.then.97

if.then.97:                                       ; preds = %if.else.95
  %54 = load i8*, i8** %dirname.addr, align 8
  %call98 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %54)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.else.95
  store i32 53, i32* %retval
  br label %return

if.end.100:                                       ; preds = %while.end.94
  %55 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call101 = call i32 @closedir(%struct.__dirstream* %55)
  %56 = load i32, i32* %scanret, align 4
  %tobool102 = icmp ne i32 %56, 0
  br i1 %tobool102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.end.100
  store i32 1, i32* %retval
  br label %return

if.else.104:                                      ; preds = %if.end.100
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.104, %if.then.103, %if.end.99, %if.then.36, %if.end.26, %if.then.4
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @opt_check(%struct.optstruct*, i8*) #1

declare i8* @opt_firstarg(%struct.optstruct*, i8*, %struct.optnode**) #1

declare i32 @match_regex(i8*, i8*) #1

declare i8* @opt_nextarg(%struct.optnode**, i8*) #1

declare i32 @logg(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i8* @opt_arg(%struct.optstruct*, i8*) #1

declare %struct.__dirstream* @opendir(i8*) #1

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

declare i32 @scanfile(i8*, %struct.cl_engine*, %struct.passwd*, %struct.optstruct*, %struct.cl_limits*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @closedir(%struct.__dirstream*) #1

; Function Attrs: nounwind uwtable
define i32 @clamav_rmdirs(i8* %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %user = alloca %struct.passwd*, align 8
  %pid = alloca i32, align 4
  %status = alloca i32, align 4
  %.compoundliteral = alloca %union.anon, align 4
  store i8* %dir, i8** %dir.addr, align 8
  %call = call i32 @fork() #6
  store i32 %call, i32* %pid, align 4
  switch i32 %call, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call i32 @geteuid() #6
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.17, label %if.then

if.then:                                          ; preds = %sw.bb.1
  %call3 = call %struct.passwd* @getpwnam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  store %struct.passwd* %call3, %struct.passwd** %user, align 8
  %cmp = icmp eq %struct.passwd* %call3, null
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -3, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %0 = load %struct.passwd*, %struct.passwd** %user, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %0, i32 0, i32 3
  %1 = load i32, i32* %pw_gid, align 4
  %call5 = call i32 @setgid(i32 %1) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load %struct.passwd*, %struct.passwd** %user, align 8
  %pw_gid8 = getelementptr inbounds %struct.passwd, %struct.passwd* %3, i32 0, i32 3
  %4 = load i32, i32* %pw_gid8, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %4)
  store i32 -3, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %5 = load %struct.passwd*, %struct.passwd** %user, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %5, i32 0, i32 2
  %6 = load i32, i32* %pw_uid, align 4
  %call11 = call i32 @setuid(i32 %6) #6
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load %struct.passwd*, %struct.passwd** %user, align 8
  %pw_uid14 = getelementptr inbounds %struct.passwd, %struct.passwd* %8, i32 0, i32 2
  %9 = load i32, i32* %pw_uid14, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 %9)
  store i32 -3, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %sw.bb.1
  %10 = load i8*, i8** %dir.addr, align 8
  %call18 = call i32 @cli_rmdirs(i8* %10)
  call void @exit(i32 0) #7
  unreachable

sw.default:                                       ; preds = %entry
  %11 = load i32, i32* %pid, align 4
  %call19 = call i32 @waitpid(i32 %11, i32* %status, i32 0)
  %__in = bitcast %union.anon* %.compoundliteral to i32*
  %12 = load i32, i32* %status, align 4
  store i32 %12, i32* %__in, align 4
  %__i = bitcast %union.anon* %.compoundliteral to i32*
  %13 = load i32, i32* %__i, align 4
  %and = and i32 %13, 127
  %cmp20 = icmp eq i32 %and, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.default
  store i32 -2, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.21, %if.then.13, %if.then.7, %if.then.4, %sw.bb
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare i32 @fork() #3

; Function Attrs: nounwind
declare i32 @geteuid() #3

declare %struct.passwd* @getpwnam(i8*) #1

; Function Attrs: nounwind
declare i32 @setgid(i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @setuid(i32) #3

declare i32 @cli_rmdirs(i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @waitpid(i32, i32*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @fixperms(i8* %dirname) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %dd = alloca %struct.__dirstream*, align 8
  %dent = alloca %struct.dirent*, align 8
  %statbuf = alloca %struct.stat, align 8
  %fname = alloca i8*, align 8
  %scanret = alloca i32, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store i32 0, i32* %scanret, align 4
  %0 = load i8*, i8** %dirname.addr, align 8
  %call = call %struct.__dirstream* @opendir(i8* %0)
  store %struct.__dirstream* %call, %struct.__dirstream** %dd, align 8
  %cmp = icmp ne %struct.__dirstream* %call, null
  br i1 %cmp, label %if.then, label %if.else.40

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.then
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call1 = call %struct.dirent* @readdir(%struct.__dirstream* %1)
  store %struct.dirent* %call1, %struct.dirent** %dent, align 8
  %tobool = icmp ne %struct.dirent* %call1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %2, i32 0, i32 0
  %3 = load i64, i64* %d_ino, align 8
  %tobool2 = icmp ne i64 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.39

if.then.3:                                        ; preds = %while.body
  %4 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call4 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.then.3
  %5 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name6 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name6, i32 0, i32 0
  %call8 = call i32 @strcmp(i8* %arraydecay7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.38

if.then.10:                                       ; preds = %land.lhs.true
  %6 = load i8*, i8** %dirname.addr, align 8
  %call11 = call i64 @strlen(i8* %6) #5
  %7 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name12 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name12, i32 0, i32 0
  %call14 = call i64 @strlen(i8* %arraydecay13) #5
  %add = add i64 %call11, %call14
  %add15 = add i64 %add, 2
  %call16 = call noalias i8* @malloc(i64 %add15) #6
  store i8* %call16, i8** %fname, align 8
  %8 = load i8*, i8** %fname, align 8
  %9 = load i8*, i8** %dirname.addr, align 8
  %10 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name17 = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 4
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name17, i32 0, i32 0
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %9, i8* %arraydecay18) #6
  %11 = load i8*, i8** %fname, align 8
  %call20 = call i32 @lstat(i8* %11, %struct.stat* %statbuf) #6
  %cmp21 = icmp ne i32 %call20, -1
  br i1 %cmp21, label %if.then.22, label %if.end.37

if.then.22:                                       ; preds = %if.then.10
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %12 = load i32, i32* %st_mode, align 4
  %and = and i32 %12, 61440
  %cmp23 = icmp eq i32 %and, 16384
  br i1 %cmp23, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %if.then.22
  %st_mode25 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %13 = load i32, i32* %st_mode25, align 4
  %and26 = and i32 %13, 61440
  %cmp27 = icmp eq i32 %and26, 40960
  br i1 %cmp27, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.24
  %14 = load i8*, i8** %fname, align 8
  %call29 = call i32 @chmod(i8* %14, i32 448) #6
  %15 = load i8*, i8** %fname, align 8
  %call30 = call i32 @fixperms(i8* %15)
  br label %if.end.36

if.else:                                          ; preds = %land.lhs.true.24, %if.then.22
  %st_mode31 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %16 = load i32, i32* %st_mode31, align 4
  %and32 = and i32 %16, 61440
  %cmp33 = icmp eq i32 %and32, 32768
  br i1 %cmp33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %if.else
  %17 = load i8*, i8** %fname, align 8
  %call35 = call i32 @chmod(i8* %17, i32 448) #6
  br label %if.end

if.end:                                           ; preds = %if.then.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %if.then.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.10
  %18 = load i8*, i8** %fname, align 8
  call void @free(i8* %18) #6
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true, %if.then.3
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.45

if.else.40:                                       ; preds = %entry
  %19 = load i16, i16* @printinfected, align 2
  %tobool41 = icmp ne i16 %19, 0
  br i1 %tobool41, label %if.end.44, label %if.then.42

if.then.42:                                       ; preds = %if.else.40
  %20 = load i8*, i8** %dirname.addr, align 8
  %call43 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %20)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.else.40
  store i32 53, i32* %retval
  br label %return

if.end.45:                                        ; preds = %while.end
  %21 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call46 = call i32 @closedir(%struct.__dirstream* %21)
  %22 = load i32, i32* %scanret, align 4
  %tobool47 = icmp ne i32 %22, 0
  br i1 %tobool47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.end.45
  store i32 1, i32* %retval
  br label %return

if.else.49:                                       ; preds = %if.end.45
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.49, %if.then.48, %if.end.44
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @du(i8* %dirname, %struct.s_du* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %n.addr = alloca %struct.s_du*, align 8
  %dd = alloca %struct.__dirstream*, align 8
  %dent = alloca %struct.dirent*, align 8
  %statbuf = alloca %struct.stat, align 8
  %fname = alloca i8*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.s_du* %n, %struct.s_du** %n.addr, align 8
  %0 = load i8*, i8** %dirname.addr, align 8
  %call = call %struct.__dirstream* @opendir(i8* %0)
  store %struct.__dirstream* %call, %struct.__dirstream** %dd, align 8
  %cmp = icmp ne %struct.__dirstream* %call, null
  br i1 %cmp, label %if.then, label %if.else.34

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %if.then
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call1 = call %struct.dirent* @readdir(%struct.__dirstream* %1)
  store %struct.dirent* %call1, %struct.dirent** %dent, align 8
  %tobool = icmp ne %struct.dirent* %call1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %2, i32 0, i32 0
  %3 = load i64, i64* %d_ino, align 8
  %tobool2 = icmp ne i64 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.33

if.then.3:                                        ; preds = %while.body
  %4 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call4 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.then.3
  %5 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name6 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name6, i32 0, i32 0
  %call8 = call i32 @strcmp(i8* %arraydecay7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.32

if.then.10:                                       ; preds = %land.lhs.true
  %6 = load %struct.s_du*, %struct.s_du** %n.addr, align 8
  %files = getelementptr inbounds %struct.s_du, %struct.s_du* %6, i32 0, i32 0
  %7 = load i32, i32* %files, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %files, align 4
  %8 = load i8*, i8** %dirname.addr, align 8
  %call11 = call i64 @strlen(i8* %8) #5
  %9 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name12 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 4
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name12, i32 0, i32 0
  %call14 = call i64 @strlen(i8* %arraydecay13) #5
  %add = add i64 %call11, %call14
  %add15 = add i64 %add, 2
  %call16 = call noalias i8* @malloc(i64 %add15) #6
  store i8* %call16, i8** %fname, align 8
  %10 = load i8*, i8** %fname, align 8
  %11 = load i8*, i8** %dirname.addr, align 8
  %12 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name17 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 4
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name17, i32 0, i32 0
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %11, i8* %arraydecay18) #6
  %13 = load i8*, i8** %fname, align 8
  %call20 = call i32 @lstat(i8* %13, %struct.stat* %statbuf) #6
  %cmp21 = icmp ne i32 %call20, -1
  br i1 %cmp21, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %if.then.10
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %14 = load i32, i32* %st_mode, align 4
  %and = and i32 %14, 61440
  %cmp23 = icmp eq i32 %and, 16384
  br i1 %cmp23, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %if.then.22
  %st_mode25 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %15 = load i32, i32* %st_mode25, align 4
  %and26 = and i32 %15, 61440
  %cmp27 = icmp eq i32 %and26, 40960
  br i1 %cmp27, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.24
  %16 = load i8*, i8** %fname, align 8
  %17 = load %struct.s_du*, %struct.s_du** %n.addr, align 8
  %call29 = call i32 @du(i8* %16, %struct.s_du* %17)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.24, %if.then.22
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %18 = load i64, i64* %st_size, align 8
  %div = sdiv i64 %18, 1024
  %19 = load %struct.s_du*, %struct.s_du** %n.addr, align 8
  %space = getelementptr inbounds %struct.s_du, %struct.s_du* %19, i32 0, i32 1
  %20 = load i64, i64* %space, align 8
  %add30 = add i64 %20, %div
  store i64 %add30, i64* %space, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.28
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.10
  %21 = load i8*, i8** %fname, align 8
  call void @free(i8* %21) #6
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true, %if.then.3
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.39

if.else.34:                                       ; preds = %entry
  %22 = load i16, i16* @printinfected, align 2
  %tobool35 = icmp ne i16 %22, 0
  br i1 %tobool35, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.else.34
  %23 = load i8*, i8** %dirname.addr, align 8
  %call37 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %23)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.else.34
  store i32 53, i32* %retval
  br label %return

if.end.39:                                        ; preds = %while.end
  %24 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call40 = call i32 @closedir(%struct.__dirstream* %24)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.end.38
  %25 = load i32, i32* %retval
  ret i32 %25
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
