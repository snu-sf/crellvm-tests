; ModuleID = './MultiSource.Applications.lua/1.lua.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_State = type opaque
%struct.Smain = type { i32, i8**, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@globalL = internal global %struct.lua_State* null, align 8
@progname = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"LUA_INIT\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"=LUA_INIT\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"interrupted!\00", align 1
@.str.9 = private unnamed_addr constant [307 x i8] c"usage: %s [options] [script [args]].\0AAvailable options are:\0A  -e stat  execute string 'stat'\0A  -l name  require library 'name'\0A  -i       enter interactive mode after executing 'script'\0A  -v       show version information\0A  --       stop handling options\0A  -        execute stdin and stop handling options\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"=(command line)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"too many arguments to script\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"error calling 'print' (%s)\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [10 x i8] c"return %s\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"_PROMPT\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"_PROMPT2\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c">> \00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"'<eof>'\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"(error object is not a string)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %s = alloca %struct.Smain, align 8
  %L = alloca %struct.lua_State*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %struct.lua_State* @luaL_newstate()
  store %struct.lua_State* %call, %struct.lua_State** %L, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %cmp = icmp eq %struct.lua_State* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  call void @l_message(i8* %2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %arrayidx1, align 8
  %4 = load i32, i32* %argc.addr, align 4
  %argc2 = getelementptr inbounds %struct.Smain, %struct.Smain* %s, i32 0, i32 0
  store i32 %4, i32* %argc2, align 4
  %5 = load i8**, i8*** %argv.addr, align 8
  %argv3 = getelementptr inbounds %struct.Smain, %struct.Smain* %s, i32 0, i32 1
  store i8** %5, i8*** %argv3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %7 = bitcast %struct.Smain* %s to i8*
  %call4 = call i32 @lua_cpcall(%struct.lua_State* %6, i32 (%struct.lua_State*)* @pmain, i8* %7)
  store i32 %call4, i32* %status, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %9 = load i32, i32* %status, align 4
  %call5 = call i32 @report(%struct.lua_State* %8, i32 %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  call void @lua_close(%struct.lua_State* %10)
  %11 = load i32, i32* %status, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %status6 = getelementptr inbounds %struct.Smain, %struct.Smain* %s, i32 0, i32 2
  %12 = load i32, i32* %status6, align 4
  %tobool7 = icmp ne i32 %12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %13 = phi i1 [ true, %if.end ], [ %tobool7, %lor.rhs ]
  %cond = select i1 %13, i32 1, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare %struct.lua_State* @luaL_newstate() #1

; Function Attrs: nounwind uwtable
define internal void @l_message(i8* %pname, i8* %msg) #0 {
entry:
  %pname.addr = alloca i8*, align 8
  %msg.addr = alloca i8*, align 8
  store i8* %pname, i8** %pname.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** %pname.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %pname.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %msg.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %5)
  ret void
}

declare i32 @lua_cpcall(%struct.lua_State*, i32 (%struct.lua_State*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pmain(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %s = alloca %struct.Smain*, align 8
  %argv = alloca i8**, align 8
  %script = alloca i32, align 4
  %has_i = alloca i32, align 4
  %has_v = alloca i32, align 4
  %has_e = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_touserdata(%struct.lua_State* %0, i32 1)
  %1 = bitcast i8* %call to %struct.Smain*
  store %struct.Smain* %1, %struct.Smain** %s, align 8
  %2 = load %struct.Smain*, %struct.Smain** %s, align 8
  %argv1 = getelementptr inbounds %struct.Smain, %struct.Smain* %2, i32 0, i32 1
  %3 = load i8**, i8*** %argv1, align 8
  store i8** %3, i8*** %argv, align 8
  store i32 0, i32* %has_i, align 4
  store i32 0, i32* %has_v, align 4
  store i32 0, i32* %has_e, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  store %struct.lua_State* %4, %struct.lua_State** @globalL, align 8
  %5 = load i8**, i8*** %argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i8**, i8*** %argv, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %9 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8**, i8*** %argv, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx5, align 8
  store i8* %11, i8** @progname, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i32 @lua_gc(%struct.lua_State* %12, i32 0, i32 0)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_openlibs(%struct.lua_State* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call7 = call i32 @lua_gc(%struct.lua_State* %14, i32 1, i32 0)
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call8 = call i32 @handle_luainit(%struct.lua_State* %15)
  %16 = load %struct.Smain*, %struct.Smain** %s, align 8
  %status = getelementptr inbounds %struct.Smain, %struct.Smain* %16, i32 0, i32 2
  store i32 %call8, i32* %status, align 4
  %17 = load %struct.Smain*, %struct.Smain** %s, align 8
  %status9 = getelementptr inbounds %struct.Smain, %struct.Smain* %17, i32 0, i32 2
  %18 = load i32, i32* %status9, align 4
  %cmp = icmp ne i32 %18, 0
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %19 = load i8**, i8*** %argv, align 8
  %call13 = call i32 @collectargs(i8** %19, i32* %has_i, i32* %has_v, i32* %has_e)
  store i32 %call13, i32* %script, align 4
  %20 = load i32, i32* %script, align 4
  %cmp14 = icmp slt i32 %20, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.12
  call void @print_usage()
  %21 = load %struct.Smain*, %struct.Smain** %s, align 8
  %status17 = getelementptr inbounds %struct.Smain, %struct.Smain* %21, i32 0, i32 2
  store i32 1, i32* %status17, align 4
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.12
  %22 = load i32, i32* %has_v, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  call void @print_version()
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %24 = load i8**, i8*** %argv, align 8
  %25 = load i32, i32* %script, align 4
  %cmp22 = icmp sgt i32 %25, 0
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.21
  %26 = load i32, i32* %script, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  %27 = load %struct.Smain*, %struct.Smain** %s, align 8
  %argc = getelementptr inbounds %struct.Smain, %struct.Smain* %27, i32 0, i32 0
  %28 = load i32, i32* %argc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %28, %cond.false ]
  %call24 = call i32 @runargs(%struct.lua_State* %23, i8** %24, i32 %cond)
  %29 = load %struct.Smain*, %struct.Smain** %s, align 8
  %status25 = getelementptr inbounds %struct.Smain, %struct.Smain* %29, i32 0, i32 2
  store i32 %call24, i32* %status25, align 4
  %30 = load %struct.Smain*, %struct.Smain** %s, align 8
  %status26 = getelementptr inbounds %struct.Smain, %struct.Smain* %30, i32 0, i32 2
  %31 = load i32, i32* %status26, align 4
  %cmp27 = icmp ne i32 %31, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %cond.end
  %32 = load i32, i32* %script, align 4
  %tobool31 = icmp ne i32 %32, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.30
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %34 = load i8**, i8*** %argv, align 8
  %35 = load i32, i32* %script, align 4
  %call33 = call i32 @handle_script(%struct.lua_State* %33, i8** %34, i32 %35)
  %36 = load %struct.Smain*, %struct.Smain** %s, align 8
  %status34 = getelementptr inbounds %struct.Smain, %struct.Smain* %36, i32 0, i32 2
  store i32 %call33, i32* %status34, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.30
  %37 = load %struct.Smain*, %struct.Smain** %s, align 8
  %status36 = getelementptr inbounds %struct.Smain, %struct.Smain* %37, i32 0, i32 2
  %38 = load i32, i32* %status36, align 4
  %cmp37 = icmp ne i32 %38, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.35
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.35
  %39 = load i32, i32* %has_i, align 4
  %tobool41 = icmp ne i32 %39, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.40
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @dotty(%struct.lua_State* %40)
  br label %if.end.57

if.else:                                          ; preds = %if.end.40
  %41 = load i32, i32* %script, align 4
  %cmp43 = icmp eq i32 %41, 0
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.56

land.lhs.true.45:                                 ; preds = %if.else
  %42 = load i32, i32* %has_e, align 4
  %tobool46 = icmp ne i32 %42, 0
  br i1 %tobool46, label %if.end.56, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %land.lhs.true.45
  %43 = load i32, i32* %has_v, align 4
  %tobool48 = icmp ne i32 %43, 0
  br i1 %tobool48, label %if.end.56, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.47
  %call50 = call i32 @isatty(i32 0) #4
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.then.49
  call void @print_version()
  %44 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @dotty(%struct.lua_State* %44)
  br label %if.end.55

if.else.53:                                       ; preds = %if.then.49
  %45 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call54 = call i32 @dofile(%struct.lua_State* %45, i8* null)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %if.then.52
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.47, %land.lhs.true.45, %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.42
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.39, %if.then.29, %if.then.16, %if.then.11
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @report(%struct.lua_State* %L, i32 %status) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %status.addr = alloca i32, align 4
  %msg = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %1, i32 -1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.4, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @lua_tolstring(%struct.lua_State* %2, i32 -1, i64* null)
  store i8* %call1, i8** %msg, align 8
  %3 = load i8*, i8** %msg, align 8
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), i8** %msg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %4 = load i8*, i8** @progname, align 8
  %5 = load i8*, i8** %msg, align 8
  call void @l_message(i8* %4, i8* %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %6, i32 -2)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %land.lhs.true, %entry
  %7 = load i32, i32* %status.addr, align 4
  ret i32 %7
}

declare void @lua_close(%struct.lua_State*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i8* @lua_touserdata(%struct.lua_State*, i32) #1

declare i32 @lua_gc(%struct.lua_State*, i32, i32) #1

declare void @luaL_openlibs(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define internal i32 @handle_luainit(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %init = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call, i8** %init, align 8
  %0 = load i8*, i8** %init, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %init, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 64
  br i1 %cmp1, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i8*, i8** %init, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %call4 = call i32 @dofile(%struct.lua_State* %3, i8* %add.ptr)
  store i32 %call4, i32* %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i8*, i8** %init, align 8
  %call6 = call i32 @dostring(%struct.lua_State* %5, i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %if.else.5, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @collectargs(i8** %argv, i32* %pi, i32* %pv, i32* %pe) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %pi.addr = alloca i32*, align 8
  %pv.addr = alloca i32*, align 8
  %pe.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32* %pi, i32** %pi.addr, align 8
  store i32* %pv, i32** %pv.addr, align 8
  store i32* %pe, i32** %pe.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv, 45
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %9, i64 %idxprom6
  %10 = load i8*, i8** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %11 to i32
  switch i32 %conv9, label %sw.default [
    i32 45, label %sw.bb
    i32 0, label %sw.bb.23
    i32 105, label %sw.bb.24
    i32 118, label %sw.bb.33
    i32 101, label %sw.bb.42
    i32 108, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %13, i64 %idxprom10
  %14 = load i8*, i8** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %sw.bb
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %sw.bb
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, 1
  %idxprom18 = sext i32 %add to i64
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %17, i64 %idxprom18
  %18 = load i8*, i8** %arrayidx19, align 8
  %cmp20 = icmp ne i8* %18, null
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %19 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %19, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add22, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %22, i64 %idxprom25
  %23 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %23, i64 2
  %24 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %24 to i32
  %cmp29 = icmp ne i32 %conv28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.bb.24
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %sw.bb.24
  %25 = load i32*, i32** %pi.addr, align 8
  store i32 1, i32* %25, align 4
  br label %sw.bb.33

sw.bb.33:                                         ; preds = %if.end, %if.end.32
  %26 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i8**, i8*** %argv.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %27, i64 %idxprom34
  %28 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %29 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb.33
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %sw.bb.33
  %30 = load i32*, i32** %pv.addr, align 8
  store i32 1, i32* %30, align 4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end
  %31 = load i32*, i32** %pe.addr, align 8
  store i32 1, i32* %31, align 4
  br label %sw.bb.43

sw.bb.43:                                         ; preds = %if.end, %sw.bb.42
  %32 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %32 to i64
  %33 = load i8**, i8*** %argv.addr, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %33, i64 %idxprom44
  %34 = load i8*, i8** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %35 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.57

if.then.50:                                       ; preds = %sw.bb.43
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %38 = load i8**, i8*** %argv.addr, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %38, i64 %idxprom51
  %39 = load i8*, i8** %arrayidx52, align 8
  %cmp53 = icmp eq i8* %39, null
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.50
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.50
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %sw.bb.43
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.57, %if.end.41
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %40 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %40, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.default, %if.then.55, %if.then.40, %if.then.31, %sw.bb.23, %cond.end, %if.then.16, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal void @print_usage() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progname, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.9, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_version() #0 {
entry:
  call void @l_message(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @runargs(%struct.lua_State* %L, i8** %argv, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %argv.addr = alloca i8**, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %chunk = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp eq i8* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 %idxprom2
  %7 = load i8*, i8** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 101, label %sw.bb
    i32 108, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %10, i64 %idxprom5
  %11 = load i8*, i8** %arrayidx6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %add.ptr, i8** %chunk, align 8
  %12 = load i8*, i8** %chunk, align 8
  %13 = load i8, i8* %12, align 1
  %conv7 = sext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %sw.bb
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %idxprom11 = sext i32 %inc to i64
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %15, i64 %idxprom11
  %16 = load i8*, i8** %arrayidx12, align 8
  store i8* %16, i8** %chunk, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %sw.bb
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i8*, i8** %chunk, align 8
  %call = call i32 @dostring(%struct.lua_State* %17, i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  %cmp14 = icmp ne i32 %call, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %20, i64 %idxprom19
  %21 = load i8*, i8** %arrayidx20, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr21, i8** %filename, align 8
  %22 = load i8*, i8** %filename, align 8
  %23 = load i8, i8* %22, align 1
  %conv22 = sext i8 %23 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %sw.bb.18
  %24 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %24, 1
  store i32 %inc26, i32* %i, align 4
  %idxprom27 = sext i32 %inc26 to i64
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %25, i64 %idxprom27
  %26 = load i8*, i8** %arrayidx28, align 8
  store i8* %26, i8** %filename, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %sw.bb.18
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %28 = load i8*, i8** %filename, align 8
  %call30 = call i32 @dolibrary(%struct.lua_State* %27, i8* %28)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.29
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.32, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then
  %29 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %29, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.31, %if.then.16
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @handle_script(%struct.lua_State* %L, i8** %argv, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %argv.addr = alloca i8**, align 8
  %n.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %fname = alloca i8*, align 8
  %narg = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8**, i8*** %argv.addr, align 8
  %2 = load i32, i32* %n.addr, align 4
  %call = call i32 @getargs(%struct.lua_State* %0, i8** %1, i32 %2)
  store i32 %call, i32* %narg, align 4
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %3, i32 -10002, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  %4 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  store i8* %6, i8** %fname, align 8
  %7 = load i8*, i8** %fname, align 8
  %call1 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom2 = sext i32 %sub to i64
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 %idxprom2
  %10 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #5
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8* null, i8** %fname, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i8*, i8** %fname, align 8
  %call6 = call i32 @luaL_loadfile(%struct.lua_State* %11, i8* %12)
  store i32 %call6, i32* %status, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %narg, align 4
  %add = add nsw i32 %14, 1
  %sub7 = sub nsw i32 0, %add
  call void @lua_insert(%struct.lua_State* %13, i32 %sub7)
  %15 = load i32, i32* %status, align 4
  %cmp8 = icmp eq i32 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load i32, i32* %narg, align 4
  %call10 = call i32 @docall(%struct.lua_State* %16, i32 %17, i32 0)
  store i32 %call10, i32* %status, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load i32, i32* %narg, align 4
  %sub11 = sub nsw i32 0, %19
  %sub12 = sub nsw i32 %sub11, 1
  call void @lua_settop(%struct.lua_State* %18, i32 %sub12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.9
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %21 = load i32, i32* %status, align 4
  %call14 = call i32 @report(%struct.lua_State* %20, i32 %21)
  ret i32 %call14
}

; Function Attrs: nounwind uwtable
define internal void @dotty(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %status = alloca i32, align 4
  %oldprogname = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load i8*, i8** @progname, align 8
  store i8* %0, i8** %oldprogname, align 8
  store i8* null, i8** @progname, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @loadline(%struct.lua_State* %1)
  store i32 %call, i32* %status, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %status, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @docall(%struct.lua_State* %3, i32 0, i32 0)
  store i32 %call2, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %status, align 4
  %call3 = call i32 @report(%struct.lua_State* %4, i32 %5)
  %6 = load i32, i32* %status, align 4
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32 @lua_gettop(%struct.lua_State* %7)
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %land.lhs.true
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %8, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0))
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_insert(%struct.lua_State* %9, i32 1)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call8 = call i32 @lua_gettop(%struct.lua_State* %11)
  %sub = sub nsw i32 %call8, 1
  %call9 = call i32 @lua_pcall(%struct.lua_State* %10, i32 %sub, i32 0, i32 0)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then.7
  %12 = load i8*, i8** @progname, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call12 = call i8* @lua_tolstring(%struct.lua_State* %14, i32 -1, i64* null)
  %call13 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i8* %call12)
  call void @l_message(i8* %12, i8* %call13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %15, i32 0)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call17 = call i32 @fflush(%struct._IO_FILE* %17)
  %18 = load i8*, i8** %oldprogname, align 8
  store i8* %18, i8** @progname, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @dofile(%struct.lua_State* %L, i8* %name) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %name.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i32 @luaL_loadfile(%struct.lua_State* %0, i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @docall(%struct.lua_State* %2, i32 0, i32 1)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  store i32 %lor.ext, i32* %status, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %status, align 4
  %call3 = call i32 @report(%struct.lua_State* %4, i32 %5)
  ret i32 %call3
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dostring(%struct.lua_State* %L, i8* %s, i8* %name) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %s.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %2) #5
  %3 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* %1, i64 %call, i8* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @docall(%struct.lua_State* %4, i32 0, i32 1)
  %tobool3 = icmp ne i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool3, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, i32* %status, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %status, align 4
  %call4 = call i32 @report(%struct.lua_State* %6, i32 %7)
  ret i32 %call4
}

declare i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @docall(%struct.lua_State* %L, i32 %narg, i32 %clear) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %clear.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %base = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store i32 %clear, i32* %clear.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %0)
  %1 = load i32, i32* %narg.addr, align 4
  %sub = sub nsw i32 %call, %1
  store i32 %sub, i32* %base, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* @traceback, i32 0)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %base, align 4
  call void @lua_insert(%struct.lua_State* %3, i32 %4)
  %call1 = call void (i32)* @signal(i32 2, void (i32)* @laction) #4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %narg.addr, align 4
  %7 = load i32, i32* %clear.addr, align 4
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 0, i32 -1
  %8 = load i32, i32* %base, align 4
  %call2 = call i32 @lua_pcall(%struct.lua_State* %5, i32 %6, i32 %cond, i32 %8)
  store i32 %call2, i32* %status, align 4
  %call3 = call void (i32)* @signal(i32 2, void (i32)* null) #4
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i32, i32* %base, align 4
  call void @lua_remove(%struct.lua_State* %9, i32 %10)
  %11 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call i32 @lua_gc(%struct.lua_State* %12, i32 2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %status, align 4
  ret i32 %13
}

declare i32 @lua_gettop(%struct.lua_State*) #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @traceback(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_isstring(%struct.lua_State* %0, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %1, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %2, i32 -1)
  %cmp = icmp eq i32 %call1, 5
  br i1 %cmp, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %3, i32 -2)
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %4, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call i32 @lua_type(%struct.lua_State* %5, i32 -1)
  %cmp5 = icmp eq i32 %call4, 6
  br i1 %cmp5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %6, i32 -3)
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %7, i32 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushinteger(%struct.lua_State* %8, i64 2)
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %9, i32 2, i32 1)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare void @lua_insert(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: nounwind uwtable
define internal void @laction(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %call = call void (i32)* @signal(i32 %0, void (i32)* null) #4
  %1 = load %struct.lua_State*, %struct.lua_State** @globalL, align 8
  %call1 = call i32 @lua_sethook(%struct.lua_State* %1, void (%struct.lua_State*, %struct.lua_Debug*)* @lstop, i32 11, i32 1)
  ret void
}

declare i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) #1

declare void @lua_remove(%struct.lua_State*, i32) #1

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

declare void @lua_getfield(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare void @lua_call(%struct.lua_State*, i32, i32) #1

declare i32 @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @lstop(%struct.lua_State* %L, %struct.lua_Debug* %ar) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ar.addr = alloca %struct.lua_Debug*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  %0 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_sethook(%struct.lua_State* %1, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @dolibrary(%struct.lua_State* %L, i8* %name) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0))
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  call void @lua_pushstring(%struct.lua_State* %1, i8* %2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @docall(%struct.lua_State* %4, i32 1, i32 1)
  %call1 = call i32 @report(%struct.lua_State* %3, i32 %call)
  ret i32 %call1
}

declare void @lua_pushstring(%struct.lua_State*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @getargs(%struct.lua_State* %L, i8** %argv, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %argv.addr = alloca i8**, align 8
  %n.addr = alloca i32, align 4
  %narg = alloca i32, align 4
  %i = alloca i32, align 4
  %argc = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %argc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %argc, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %argc, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %argc, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %argc, align 4
  %5 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %5, 1
  %sub = sub nsw i32 %4, %add
  store i32 %sub, i32* %narg, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %narg, align 4
  %add1 = add nsw i32 %7, 3
  call void @luaL_checkstack(%struct.lua_State* %6, i32 %add1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0))
  %8 = load i32, i32* %n.addr, align 4
  %add2 = add nsw i32 %8, 1
  store i32 %add2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %argc, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %13, i64 %idxprom3
  %14 = load i8*, i8** %arrayidx4, align 8
  call void @lua_pushstring(%struct.lua_State* %11, i8* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %15, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load i32, i32* %narg, align 4
  %18 = load i32, i32* %n.addr, align 4
  %add6 = add nsw i32 %18, 1
  call void @lua_createtable(%struct.lua_State* %16, i32 %17, i32 %add6)
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %for.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %argc, align 4
  %cmp8 = icmp slt i32 %19, %20
  br i1 %cmp8, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.7
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %23, i64 %idxprom10
  %24 = load i8*, i8** %arrayidx11, align 8
  call void @lua_pushstring(%struct.lua_State* %21, i8* %24)
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %n.addr, align 4
  %sub12 = sub nsw i32 %26, %27
  call void @lua_rawseti(%struct.lua_State* %25, i32 -2, i32 %sub12)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %28 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %28, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %29 = load i32, i32* %narg, align 4
  ret i32 %29
}

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @luaL_loadfile(%struct.lua_State*, i8*) #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @lua_rawseti(%struct.lua_State*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @loadline(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %0, i32 0)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @pushline(%struct.lua_State* %1, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.11, %if.end
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @lua_tolstring(%struct.lua_State* %3, i32 1, i64* null)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i64 @lua_objlen(%struct.lua_State* %4, i32 1)
  %call3 = call i32 @luaL_loadbuffer(%struct.lua_State* %2, i8* %call1, i64 %call2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0))
  store i32 %call3, i32* %status, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %status, align 4
  %call4 = call i32 @incomplete(%struct.lua_State* %5, i32 %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.cond
  br label %for.end

if.end.7:                                         ; preds = %for.cond
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call8 = call i32 @pushline(%struct.lua_State* %7, i32 0)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i64 1)
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_insert(%struct.lua_State* %9, i32 -2)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_concat(%struct.lua_State* %10, i32 3)
  br label %for.cond

for.end:                                          ; preds = %if.then.6
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_remove(%struct.lua_State* %12, i32 1)
  %13 = load i32, i32* %status, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.10, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pushline(%struct.lua_State* %L, i32 %firstline) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %firstline.addr = alloca i32, align 4
  %buffer = alloca [512 x i8], align 16
  %b = alloca i8*, align 8
  %l = alloca i64, align 8
  %prmt = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %firstline, i32* %firstline.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay, i8** %b, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %firstline.addr, align 4
  %call = call i8* @get_prompt(%struct.lua_State* %0, i32 %1)
  store i8* %call, i8** %prmt, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %prmt, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fputs(i8* %3, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %5)
  %6 = load i8*, i8** %b, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call3 = call i8* @fgets(i8* %6, i32 512, %struct._IO_FILE* %7)
  %cmp = icmp ne i8* %call3, null
  %conv = zext i1 %cmp to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %b, align 8
  %call6 = call i64 @strlen(i8* %8) #5
  store i64 %call6, i64* %l, align 8
  %9 = load i64, i64* %l, align 8
  %cmp7 = icmp ugt i64 %9, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %10 = load i64, i64* %l, align 8
  %sub = sub i64 %10, 1
  %11 = load i8*, i8** %b, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub
  %12 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 10
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %land.lhs.true
  %13 = load i64, i64* %l, align 8
  %sub13 = sub i64 %13, 1
  %14 = load i8*, i8** %b, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %sub13
  store i8 0, i8* %arrayidx14, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %land.lhs.true, %if.end
  %15 = load i32, i32* %firstline.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %land.lhs.true.16, label %if.else

land.lhs.true.16:                                 ; preds = %if.end.15
  %16 = load i8*, i8** %b, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv18, 61
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true.16
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load i8*, i8** %b, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 1
  %call22 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* %add.ptr)
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true.16, %if.end.15
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %21 = load i8*, i8** %b, align 8
  call void @lua_pushstring(%struct.lua_State* %20, i8* %21)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.21
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load i8*, i8** %b, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i64 @lua_objlen(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @incomplete(%struct.lua_State* %L, i32 %status) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %status.addr = alloca i32, align 4
  %lmsg = alloca i64, align 8
  %msg = alloca i8*, align 8
  %tp = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* %lmsg)
  store i8* %call, i8** %msg, align 8
  %2 = load i8*, i8** %msg, align 8
  %3 = load i64, i64* %lmsg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -7
  store i8* %add.ptr1, i8** %tp, align 8
  %4 = load i8*, i8** %msg, align 8
  %call2 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)) #5
  %5 = load i8*, i8** %tp, align 8
  %cmp3 = icmp eq i8* %call2, %5
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %6, i32 -2)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

declare void @lua_concat(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @get_prompt(%struct.lua_State* %L, i32 %firstline) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %firstline.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %firstline, i32* %firstline.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %firstline.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)
  call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* %cond)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_tolstring(%struct.lua_State* %2, i32 -1, i64* null)
  store i8* %call, i8** %p, align 8
  %3 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %firstline.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  %cond2 = select i1 %tobool1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)
  store i8* %cond2, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %5, i32 -2)
  %6 = load i8*, i8** %p, align 8
  ret i8* %6
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
