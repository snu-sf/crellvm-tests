; ModuleID = './MultiSource.Applications.lua/15.lauxlib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_State = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [8192 x i8] }
%struct.LoadF = type { i32, %struct._IO_FILE*, [8192 x i8] }
%struct.LoadS = type { i8*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"bad argument #%d (%s)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"calling '%s' on bad self (%s)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"bad argument #%d to '%s' (%s)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s expected, got %s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"Sl\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"invalid option '%s'\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"stack overflow (%s)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"value expected\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"name conflict for module '%s'\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"reopen\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"cannot %s %s: %s\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [50 x i8] c"PANIC: unprotected error in call to Lua API (%s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaL_argerror(%struct.lua_State* %L, i32 %narg, i8* %extramsg) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %extramsg.addr = alloca i8*, align 8
  %ar = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store i8* %extramsg, i8** %extramsg.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* %ar)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %narg.addr, align 4
  %3 = load i8*, i8** %extramsg.addr, align 8
  %call1 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %2, i8* %3)
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_getinfo(%struct.lua_State* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct.lua_Debug* %ar)
  %namewhat = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 2
  %5 = load i8*, i8** %namewhat, align 8
  %call3 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* %narg.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %narg.addr, align 4
  %7 = load i32, i32* %narg.addr, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.4
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %name = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 1
  %9 = load i8*, i8** %name, align 8
  %10 = load i8*, i8** %extramsg.addr, align 8
  %call7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* %9, i8* %10)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %name10 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 1
  %11 = load i8*, i8** %name10, align 8
  %cmp11 = icmp eq i8* %11, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %name13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %name13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i32, i32* %narg.addr, align 4
  %name15 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 1
  %14 = load i8*, i8** %name15, align 8
  %15 = load i8*, i8** %extramsg.addr, align 8
  %call16 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32 %13, i8* %14, i8* %15)
  store i32 %call16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.6, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #1

; Function Attrs: nounwind uwtable
define i32 @luaL_error(%struct.lua_State* %L, i8* %fmt, ...) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %fmt.addr = alloca i8*, align 8
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_where(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %call = call i8* @lua_pushvfstring(%struct.lua_State* %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_concat(%struct.lua_State* %3, i32 2)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32 @lua_error(%struct.lua_State* %4)
  ret i32 %call5
}

declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @luaL_typerror(%struct.lua_State* %L, i32 %narg, i8* %tname) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %tname.addr = alloca i8*, align 8
  %msg = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store i8* %tname, i8** %tname.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %tname.addr, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %narg.addr, align 4
  %call = call i32 @lua_type(%struct.lua_State* %3, i32 %4)
  %call1 = call i8* @lua_typename(%struct.lua_State* %2, i32 %call)
  %call2 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* %1, i8* %call1)
  store i8* %call2, i8** %msg, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %narg.addr, align 4
  %7 = load i8*, i8** %msg, align 8
  %call3 = call i32 @luaL_argerror(%struct.lua_State* %5, i32 %6, i8* %7)
  ret i32 %call3
}

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

declare i8* @lua_typename(%struct.lua_State*, i32) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define void @luaL_where(%struct.lua_State* %L, i32 %level) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %level.addr = alloca i32, align 4
  %ar = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %level.addr, align 4
  %call = call i32 @lua_getstack(%struct.lua_State* %0, i32 %1, %struct.lua_Debug* %ar)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_getinfo(%struct.lua_State* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), %struct.lua_Debug* %ar)
  %currentline = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 5
  %3 = load i32, i32* %currentline, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %short_src = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 9
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %short_src, i32 0, i32 0
  %currentline3 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 5
  %5 = load i32, i32* %currentline3, align 4
  %call4 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay, i32 %5)
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i64 0)
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2
  ret void
}

declare void @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare void @lua_concat(%struct.lua_State*, i32) #1

declare i32 @lua_error(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define i32 @luaL_checkoption(%struct.lua_State* %L, i32 %narg, i8* %def, i8** %lst) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %def.addr = alloca i8*, align 8
  %lst.addr = alloca i8**, align 8
  %name = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store i8* %def, i8** %def.addr, align 8
  store i8** %lst, i8*** %lst.addr, align 8
  %0 = load i8*, i8** %def.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %narg.addr, align 4
  %3 = load i8*, i8** %def.addr, align 8
  %call = call i8* @luaL_optlstring(%struct.lua_State* %1, i32 %2, i8* %3, i64* null)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %narg.addr, align 4
  %call1 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 %5, i64* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call1, %cond.false ]
  store i8* %cond, i8** %name, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %lst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %tobool2 = icmp ne i8* %8, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i8**, i8*** %lst.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %10, i64 %idxprom3
  %11 = load i8*, i8** %arrayidx4, align 8
  %12 = load i8*, i8** %name, align 8
  %call5 = call i32 @strcmp(i8* %11, i8* %12) #6
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load i32, i32* %narg.addr, align 4
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i8*, i8** %name, align 8
  %call6 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8* %18)
  %call7 = call i32 @luaL_argerror(%struct.lua_State* %15, i32 %16, i8* %call6)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i8* @luaL_optlstring(%struct.lua_State* %L, i32 %narg, i8* %def, i64* %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %def.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store i8* %def, i8** %def.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %narg.addr, align 4
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 %1)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** %len.addr, align 8
  %tobool = icmp ne i64* %2, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load i8*, i8** %def.addr, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  %4 = load i8*, i8** %def.addr, align 8
  %call3 = call i64 @strlen(i8* %4) #6
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call3, %cond.true ], [ 0, %cond.false ]
  %5 = load i64*, i64** %len.addr, align 8
  store i64 %cond, i64* %5, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %6 = load i8*, i8** %def.addr, align 8
  store i8* %6, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %narg.addr, align 4
  %9 = load i64*, i64** %len.addr, align 8
  %call4 = call i8* @luaL_checklstring(%struct.lua_State* %7, i32 %8, i64* %9)
  store i8* %call4, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define i8* @luaL_checklstring(%struct.lua_State* %L, i32 %narg, i64* %len) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %len.addr = alloca i64*, align 8
  %s = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store i64* %len, i64** %len.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %narg.addr, align 4
  %2 = load i64*, i64** %len.addr, align 8
  %call = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %1, i64* %2)
  store i8* %call, i8** %s, align 8
  %3 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %narg.addr, align 4
  call void @tag_error(%struct.lua_State* %4, i32 %5, i32 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %s, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i32 @luaL_newmetatable(%struct.lua_State* %L, i8* %tname) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %tname.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %tname, i8** %tname.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %tname.addr, align 8
  call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* %1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %2, i32 -1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %3, i32 -2)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 0)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %5, i32 -1)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i8*, i8** %tname.addr, align 8
  call void @lua_setfield(%struct.lua_State* %6, i32 -10000, i8* %7)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare void @lua_getfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @luaL_checkudata(%struct.lua_State* %L, i32 %ud, i8* %tname) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i32, align 4
  %tname.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %ud, i32* %ud.addr, align 4
  store i8* %tname, i8** %tname.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %ud.addr, align 4
  %call = call i8* @lua_touserdata(%struct.lua_State* %0, i32 %1)
  store i8* %call, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %ud.addr, align 4
  %call1 = call i32 @lua_getmetatable(%struct.lua_State* %3, i32 %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i8*, i8** %tname.addr, align 8
  call void @lua_getfield(%struct.lua_State* %5, i32 -10000, i8* %6)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_rawequal(%struct.lua_State* %7, i32 -1, i32 -2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %8, i32 -3)
  %9 = load i8*, i8** %p, align 8
  store i8* %9, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load i32, i32* %ud.addr, align 4
  %12 = load i8*, i8** %tname.addr, align 8
  %call8 = call i32 @luaL_typerror(%struct.lua_State* %10, i32 %11, i8* %12)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5
  %13 = load i8*, i8** %retval
  ret i8* %13
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #1

declare i32 @lua_rawequal(%struct.lua_State*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @luaL_checkstack(%struct.lua_State* %L, i32 %space, i8* %mes) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %space.addr = alloca i32, align 4
  %mes.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %space, i32* %space.addr, align 4
  store i8* %mes, i8** %mes.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %space.addr, align 4
  %call = call i32 @lua_checkstack(%struct.lua_State* %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %mes.addr, align 8
  %call1 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @lua_checkstack(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define void @luaL_checktype(%struct.lua_State* %L, i32 %narg, i32 %t) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %narg.addr, align 4
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 %1)
  %2 = load i32, i32* %t.addr, align 4
  %cmp = icmp ne i32 %call, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %narg.addr, align 4
  %5 = load i32, i32* %t.addr, align 4
  call void @tag_error(%struct.lua_State* %3, i32 %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tag_error(%struct.lua_State* %L, i32 %narg, i32 %tag) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %narg.addr, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %tag.addr, align 4
  %call = call i8* @lua_typename(%struct.lua_State* %2, i32 %3)
  %call1 = call i32 @luaL_typerror(%struct.lua_State* %0, i32 %1, i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @luaL_checkany(%struct.lua_State* %L, i32 %narg) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %narg.addr, align 4
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 %1)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %narg.addr, align 4
  %call1 = call i32 @luaL_argerror(%struct.lua_State* %2, i32 %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define double @luaL_checknumber(%struct.lua_State* %L, i32 %narg) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %d = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %narg.addr, align 4
  %call = call double @lua_tonumber(%struct.lua_State* %0, i32 %1)
  store double %call, double* %d, align 8
  %2 = load double, double* %d, align 8
  %cmp = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %narg.addr, align 4
  %call1 = call i32 @lua_isnumber(%struct.lua_State* %3, i32 %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %narg.addr, align 4
  call void @tag_error(%struct.lua_State* %5, i32 %6, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load double, double* %d, align 8
  ret double %7
}

declare double @lua_tonumber(%struct.lua_State*, i32) #1

declare i32 @lua_isnumber(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define double @luaL_optnumber(%struct.lua_State* %L, i32 %narg, double %def) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %def.addr = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store double %def, double* %def.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %narg.addr, align 4
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 %1)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, double* %def.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %narg.addr, align 4
  %call1 = call double @luaL_checknumber(%struct.lua_State* %3, i32 %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %2, %cond.true ], [ %call1, %cond.false ]
  ret double %cond
}

; Function Attrs: nounwind uwtable
define i64 @luaL_checkinteger(%struct.lua_State* %L, i32 %narg) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %d = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %narg.addr, align 4
  %call = call i64 @lua_tointeger(%struct.lua_State* %0, i32 %1)
  store i64 %call, i64* %d, align 8
  %2 = load i64, i64* %d, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %narg.addr, align 4
  %call1 = call i32 @lua_isnumber(%struct.lua_State* %3, i32 %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %narg.addr, align 4
  call void @tag_error(%struct.lua_State* %5, i32 %6, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i64, i64* %d, align 8
  ret i64 %7
}

declare i64 @lua_tointeger(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define i64 @luaL_optinteger(%struct.lua_State* %L, i32 %narg, i64 %def) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %def.addr = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store i64 %def, i64* %def.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %narg.addr, align 4
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 %1)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %def.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %narg.addr, align 4
  %call1 = call i64 @luaL_checkinteger(%struct.lua_State* %3, i32 %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %call1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @luaL_getmetafield(%struct.lua_State* %L, i32 %obj, i8* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %obj.addr = alloca i32, align 4
  %event.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %obj, i32* %obj.addr, align 4
  store i8* %event, i8** %event.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %obj.addr, align 4
  %call = call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %event.addr, align 8
  call void @lua_pushstring(%struct.lua_State* %2, i8* %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawget(%struct.lua_State* %4, i32 -2)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %5, i32 -1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %6, i32 -3)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_remove(%struct.lua_State* %7, i32 -2)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare void @lua_pushstring(%struct.lua_State*, i8*) #1

declare void @lua_rawget(%struct.lua_State*, i32) #1

declare void @lua_remove(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @luaL_callmeta(%struct.lua_State* %L, i32 %obj, i8* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %obj.addr = alloca i32, align 4
  %event.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %obj, i32* %obj.addr, align 4
  store i8* %event, i8** %event.addr, align 8
  %0 = load i32, i32* %obj.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %obj.addr, align 4
  %cmp1 = icmp sle i32 %1, -10000
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %obj.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %3)
  %4 = load i32, i32* %obj.addr, align 4
  %add = add nsw i32 %call, %4
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %add2, %cond.false ]
  store i32 %cond, i32* %obj.addr, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %obj.addr, align 4
  %7 = load i8*, i8** %event.addr, align 8
  %call3 = call i32 @luaL_getmetafield(%struct.lua_State* %5, i32 %6, i8* %7)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %obj.addr, align 4
  call void @lua_pushvalue(%struct.lua_State* %8, i32 %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %10, i32 1, i32 1)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @lua_gettop(%struct.lua_State*) #1

declare void @lua_call(%struct.lua_State*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @luaL_register(%struct.lua_State* %L, i8* %libname, %struct.luaL_Reg* %l) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %libname.addr = alloca i8*, align 8
  %l.addr = alloca %struct.luaL_Reg*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %libname, i8** %libname.addr, align 8
  store %struct.luaL_Reg* %l, %struct.luaL_Reg** %l.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %libname.addr, align 8
  %2 = load %struct.luaL_Reg*, %struct.luaL_Reg** %l.addr, align 8
  call void @luaL_openlib(%struct.lua_State* %0, i8* %1, %struct.luaL_Reg* %2, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @luaL_openlib(%struct.lua_State* %L, i8* %libname, %struct.luaL_Reg* %l, i32 %nup) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %libname.addr = alloca i8*, align 8
  %l.addr = alloca %struct.luaL_Reg*, align 8
  %nup.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %libname, i8** %libname.addr, align 8
  store %struct.luaL_Reg* %l, %struct.luaL_Reg** %l.addr, align 8
  store i32 %nup, i32* %nup.addr, align 4
  %0 = load i8*, i8** %libname.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct.luaL_Reg*, %struct.luaL_Reg** %l.addr, align 8
  %call = call i32 @libsize(%struct.luaL_Reg* %1)
  store i32 %call, i32* %size, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @luaL_findtable(%struct.lua_State* %2, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 1)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i8*, i8** %libname.addr, align 8
  call void @lua_getfield(%struct.lua_State* %3, i32 -1, i8* %4)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_type(%struct.lua_State* %5, i32 -1)
  %cmp = icmp eq i32 %call2, 5
  br i1 %cmp, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %6, i32 -2)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i8*, i8** %libname.addr, align 8
  %9 = load i32, i32* %size, align 4
  %call4 = call i8* @luaL_findtable(%struct.lua_State* %7, i32 -10002, i8* %8, i32 %9)
  %cmp5 = icmp ne i8* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.3
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load i8*, i8** %libname.addr, align 8
  %call7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.3
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %12, i32 -1)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i8*, i8** %libname.addr, align 8
  call void @lua_setfield(%struct.lua_State* %13, i32 -3, i8* %14)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_remove(%struct.lua_State* %15, i32 -2)
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load i32, i32* %nup.addr, align 4
  %add = add nsw i32 %17, 1
  %sub = sub nsw i32 0, %add
  call void @lua_insert(%struct.lua_State* %16, i32 %sub)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.end.9
  %18 = load %struct.luaL_Reg*, %struct.luaL_Reg** %l.addr, align 8
  %name = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %18, i32 0, i32 0
  %19 = load i8*, i8** %name, align 8
  %tobool10 = icmp ne i8* %19, null
  br i1 %tobool10, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %nup.addr, align 4
  %cmp12 = icmp slt i32 %20, %21
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load i32, i32* %nup.addr, align 4
  %sub14 = sub nsw i32 0, %23
  call void @lua_pushvalue(%struct.lua_State* %22, i32 %sub14)
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %26 = load %struct.luaL_Reg*, %struct.luaL_Reg** %l.addr, align 8
  %func = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %26, i32 0, i32 1
  %27 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %func, align 8
  %28 = load i32, i32* %nup.addr, align 4
  call void @lua_pushcclosure(%struct.lua_State* %25, i32 (%struct.lua_State*)* %27, i32 %28)
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %30 = load i32, i32* %nup.addr, align 4
  %add15 = add nsw i32 %30, 2
  %sub16 = sub nsw i32 0, %add15
  %31 = load %struct.luaL_Reg*, %struct.luaL_Reg** %l.addr, align 8
  %name17 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %31, i32 0, i32 0
  %32 = load i8*, i8** %name17, align 8
  call void @lua_setfield(%struct.lua_State* %29, i32 %sub16, i8* %32)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %33 = load %struct.luaL_Reg*, %struct.luaL_Reg** %l.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %33, i32 1
  store %struct.luaL_Reg* %incdec.ptr, %struct.luaL_Reg** %l.addr, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %35 = load i32, i32* %nup.addr, align 4
  %sub20 = sub nsw i32 0, %35
  %sub21 = sub nsw i32 %sub20, 1
  call void @lua_settop(%struct.lua_State* %34, i32 %sub21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @libsize(%struct.luaL_Reg* %l) #0 {
entry:
  %l.addr = alloca %struct.luaL_Reg*, align 8
  %size = alloca i32, align 4
  store %struct.luaL_Reg* %l, %struct.luaL_Reg** %l.addr, align 8
  store i32 0, i32* %size, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.luaL_Reg*, %struct.luaL_Reg** %l.addr, align 8
  %name = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %size, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %size, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.luaL_Reg*, %struct.luaL_Reg** %l.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %3, i32 1
  store %struct.luaL_Reg* %incdec.ptr, %struct.luaL_Reg** %l.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %size, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i8* @luaL_findtable(%struct.lua_State* %L, i32 %idx, i8* %fname, i32 %szhint) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %szhint.addr = alloca i32, align 4
  %e = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %szhint, i32* %szhint.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %1)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i8*, i8** %fname.addr, align 8
  %call = call i8* @strchr(i8* %2, i32 46) #6
  store i8* %call, i8** %e, align 8
  %3 = load i8*, i8** %e, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i8*, i8** %fname.addr, align 8
  %5 = load i8*, i8** %fname.addr, align 8
  %call1 = call i64 @strlen(i8* %5) #6
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %call1
  store i8* %add.ptr, i8** %e, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i8*, i8** %fname.addr, align 8
  %8 = load i8*, i8** %e, align 8
  %9 = load i8*, i8** %fname.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @lua_pushlstring(%struct.lua_State* %6, i8* %7, i64 %sub.ptr.sub)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawget(%struct.lua_State* %10, i32 -2)
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_type(%struct.lua_State* %11, i32 -1)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %12, i32 -2)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i8*, i8** %e, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %cmp5 = icmp eq i32 %conv, 46
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %16 = load i32, i32* %szhint.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %16, %cond.false ]
  call void @lua_createtable(%struct.lua_State* %13, i32 0, i32 %cond)
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i8*, i8** %fname.addr, align 8
  %19 = load i8*, i8** %e, align 8
  %20 = load i8*, i8** %fname.addr, align 8
  %sub.ptr.lhs.cast7 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i8* %20 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  call void @lua_pushlstring(%struct.lua_State* %17, i8* %18, i64 %sub.ptr.sub9)
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %21, i32 -2)
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settable(%struct.lua_State* %22, i32 -4)
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call10 = call i32 @lua_type(%struct.lua_State* %23, i32 -1)
  %cmp11 = icmp eq i32 %call10, 5
  br i1 %cmp11, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.else
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %24, i32 -3)
  %25 = load i8*, i8** %fname.addr, align 8
  store i8* %25, i8** %retval
  br label %return

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %cond.end
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_remove(%struct.lua_State* %26, i32 -2)
  %27 = load i8*, i8** %e, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %add.ptr16, i8** %fname.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  %28 = load i8*, i8** %e, align 8
  %29 = load i8, i8* %28, align 1
  %conv17 = sext i8 %29 to i32
  %cmp18 = icmp eq i32 %conv17, 46
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.13
  %30 = load i8*, i8** %retval
  ret i8* %30
}

declare void @lua_insert(%struct.lua_State*, i32) #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @luaL_gsub(%struct.lua_State* %L, i8* %s, i8* %p, i8* %r) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %s.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %r.addr = alloca i8*, align 8
  %wild = alloca i8*, align 8
  %l = alloca i64, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %r, i8** %r.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  store i64 %call, i64* %l, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %1, %struct.luaL_Buffer* %b)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call1 = call i8* @strstr(i8* %2, i8* %3) #6
  store i8* %call1, i8** %wild, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8*, i8** %wild, align 8
  %6 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %4, i64 %sub.ptr.sub)
  %7 = load i8*, i8** %r.addr, align 8
  call void @luaL_addstring(%struct.luaL_Buffer* %b, i8* %7)
  %8 = load i8*, i8** %wild, align 8
  %9 = load i64, i64* %l, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9
  store i8* %add.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i8*, i8** %s.addr, align 8
  call void @luaL_addstring(%struct.luaL_Buffer* %b, i8* %10)
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i8* @lua_tolstring(%struct.lua_State* %11, i32 -1, i64* null)
  ret i8* %call2
}

; Function Attrs: nounwind uwtable
define void @luaL_buffinit(%struct.lua_State* %L, %struct.luaL_Buffer* %B) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %B.addr = alloca %struct.luaL_Buffer*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %B.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %L1 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i32 0, i32 2
  store %struct.lua_State* %0, %struct.lua_State** %L1, align 8
  %2 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %3 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %4 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %lvl = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i32 0, i32 1
  store i32 0, i32* %lvl, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @luaL_addlstring(%struct.luaL_Buffer* %B, i8* %s, i64 %l) #0 {
entry:
  %B.addr = alloca %struct.luaL_Buffer*, align 8
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i64, align 8
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %B.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %l, i64* %l.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %lor.end, %entry
  %0 = load i64, i64* %l.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %l.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i32 0, i32 0
  %2 = load i8*, i8** %p, align 8
  %3 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 8192
  %cmp = icmp ult i8* %2, %add.ptr
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.body
  %4 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %call = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %4)
  %tobool1 = icmp ne i8* %call, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.body
  %5 = phi i1 [ true, %while.body ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %p2 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %8, i32 0, i32 0
  %9 = load i8*, i8** %p2, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr3, i8** %p2, align 8
  store i8 %7, i8* %9, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @luaL_addstring(%struct.luaL_Buffer* %B, i8* %s) #0 {
entry:
  %B.addr = alloca %struct.luaL_Buffer*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %B.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  call void @luaL_addlstring(%struct.luaL_Buffer* %0, i8* %1, i64 %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @luaL_pushresult(%struct.luaL_Buffer* %B) #0 {
entry:
  %B.addr = alloca %struct.luaL_Buffer*, align 8
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %B.addr, align 8
  %0 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %call = call i32 @emptybuffer(%struct.luaL_Buffer* %0)
  %1 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %L = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i32 0, i32 2
  %2 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %3 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %lvl = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i32 0, i32 1
  %4 = load i32, i32* %lvl, align 4
  call void @lua_concat(%struct.lua_State* %2, i32 %4)
  %5 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %lvl1 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i32 0, i32 1
  store i32 1, i32* %lvl1, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare void @lua_settable(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @luaL_prepbuffer(%struct.luaL_Buffer* %B) #0 {
entry:
  %B.addr = alloca %struct.luaL_Buffer*, align 8
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %B.addr, align 8
  %0 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %call = call i32 @emptybuffer(%struct.luaL_Buffer* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  call void @adjuststack(%struct.luaL_Buffer* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  ret i8* %arraydecay
}

; Function Attrs: nounwind uwtable
define internal i32 @emptybuffer(%struct.luaL_Buffer* %B) #0 {
entry:
  %retval = alloca i32, align 4
  %B.addr = alloca %struct.luaL_Buffer*, align 8
  %l = alloca i64, align 8
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %B.addr, align 8
  %0 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %p, align 8
  %2 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %l, align 8
  %3 = load i64, i64* %l, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %L = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i32 0, i32 2
  %5 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %6 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %buffer1 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer1, i32 0, i32 0
  %7 = load i64, i64* %l, align 8
  call void @lua_pushlstring(%struct.lua_State* %5, i8* %arraydecay2, i64 %7)
  %8 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %buffer3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %8, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer3, i32 0, i32 0
  %9 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %p5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 0
  store i8* %arraydecay4, i8** %p5, align 8
  %10 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %lvl = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %10, i32 0, i32 1
  %11 = load i32, i32* %lvl, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %lvl, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @adjuststack(%struct.luaL_Buffer* %B) #0 {
entry:
  %B.addr = alloca %struct.luaL_Buffer*, align 8
  %L = alloca %struct.lua_State*, align 8
  %toget = alloca i32, align 4
  %toplen = alloca i64, align 8
  %l = alloca i64, align 8
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %B.addr, align 8
  %0 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %lvl = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i32 0, i32 1
  %1 = load i32, i32* %lvl, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %2 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %L1 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i32 0, i32 2
  %3 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  store %struct.lua_State* %3, %struct.lua_State** %L, align 8
  store i32 1, i32* %toget, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call = call i64 @lua_objlen(%struct.lua_State* %4, i32 -1)
  store i64 %call, i64* %toplen, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %5 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %6 = load i32, i32* %toget, align 4
  %add = add nsw i32 %6, 1
  %sub = sub nsw i32 0, %add
  %call2 = call i64 @lua_objlen(%struct.lua_State* %5, i32 %sub)
  store i64 %call2, i64* %l, align 8
  %7 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %lvl3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 1
  %8 = load i32, i32* %lvl3, align 4
  %9 = load i32, i32* %toget, align 4
  %sub4 = sub nsw i32 %8, %9
  %add5 = add nsw i32 %sub4, 1
  %cmp6 = icmp sge i32 %add5, 10
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %10 = load i64, i64* %toplen, align 8
  %11 = load i64, i64* %l, align 8
  %cmp7 = icmp ugt i64 %10, %11
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %lor.lhs.false, %do.body
  %12 = load i64, i64* %l, align 8
  %13 = load i64, i64* %toplen, align 8
  %add9 = add i64 %13, %12
  store i64 %add9, i64* %toplen, align 8
  %14 = load i32, i32* %toget, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %toget, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  br label %do.end

if.end:                                           ; preds = %if.then.8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %15 = load i32, i32* %toget, align 4
  %16 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %lvl10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %16, i32 0, i32 1
  %17 = load i32, i32* %lvl10, align 4
  %cmp11 = icmp slt i32 %15, %17
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else
  %18 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %19 = load i32, i32* %toget, align 4
  call void @lua_concat(%struct.lua_State* %18, i32 %19)
  %20 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %lvl12 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %20, i32 0, i32 1
  %21 = load i32, i32* %lvl12, align 4
  %22 = load i32, i32* %toget, align 4
  %sub13 = sub nsw i32 %21, %22
  %add14 = add nsw i32 %sub13, 1
  %23 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %lvl15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %23, i32 0, i32 1
  store i32 %add14, i32* %lvl15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @luaL_addvalue(%struct.luaL_Buffer* %B) #0 {
entry:
  %B.addr = alloca %struct.luaL_Buffer*, align 8
  %L = alloca %struct.lua_State*, align 8
  %vl = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %B.addr, align 8
  %0 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %L1 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i32 0, i32 2
  %1 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  store %struct.lua_State* %1, %struct.lua_State** %L, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call = call i8* @lua_tolstring(%struct.lua_State* %2, i32 -1, i64* %vl)
  store i8* %call, i8** %s, align 8
  %3 = load i64, i64* %vl, align 8
  %4 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i32 0, i32 0
  %5 = load i8*, i8** %p, align 8
  %6 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 8192, %sub.ptr.sub
  %cmp = icmp ule i64 %3, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %p2 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 0
  %8 = load i8*, i8** %p2, align 8
  %9 = load i8*, i8** %s, align 8
  %10 = load i64, i64* %vl, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %10, i32 1, i1 false)
  %11 = load i64, i64* %vl, align 8
  %12 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %p3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %12, i32 0, i32 0
  %13 = load i8*, i8** %p3, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %11
  store i8* %add.ptr, i8** %p3, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  call void @lua_settop(%struct.lua_State* %14, i32 -2)
  br label %if.end.6

if.else:                                          ; preds = %entry
  %15 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %call4 = call i32 @emptybuffer(%struct.luaL_Buffer* %15)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %16 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  call void @lua_insert(%struct.lua_State* %16, i32 -2)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  %17 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  %lvl = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %17, i32 0, i32 1
  %18 = load i32, i32* %lvl, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %lvl, align 4
  %19 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %B.addr, align 8
  call void @adjuststack(%struct.luaL_Buffer* %19)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @luaL_ref(%struct.lua_State* %L, i32 %t) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca i32, align 4
  %ref = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %t.addr, align 4
  %cmp1 = icmp sle i32 %1, -10000
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %t.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %3)
  %4 = load i32, i32* %t.addr, align 4
  %add = add nsw i32 %call, %4
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %add2, %cond.false ]
  store i32 %cond, i32* %t.addr, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_type(%struct.lua_State* %5, i32 -1)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %6, i32 -2)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %t.addr, align 4
  call void @lua_rawgeti(%struct.lua_State* %7, i32 %8, i32 0)
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i64 @lua_tointeger(%struct.lua_State* %9, i32 -1)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %ref, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %10, i32 -2)
  %11 = load i32, i32* %ref, align 4
  %cmp6 = icmp ne i32 %11, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i32, i32* %t.addr, align 4
  %14 = load i32, i32* %ref, align 4
  call void @lua_rawgeti(%struct.lua_State* %12, i32 %13, i32 %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load i32, i32* %t.addr, align 4
  call void @lua_rawseti(%struct.lua_State* %15, i32 %16, i32 0)
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i32, i32* %t.addr, align 4
  %call9 = call i64 @lua_objlen(%struct.lua_State* %17, i32 %18)
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, i32* %ref, align 4
  %19 = load i32, i32* %ref, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %ref, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %21 = load i32, i32* %t.addr, align 4
  %22 = load i32, i32* %ref, align 4
  call void @lua_rawseti(%struct.lua_State* %20, i32 %21, i32 %22)
  %23 = load i32, i32* %ref, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @lua_rawgeti(%struct.lua_State*, i32, i32) #1

declare void @lua_rawseti(%struct.lua_State*, i32, i32) #1

declare i64 @lua_objlen(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define void @luaL_unref(%struct.lua_State* %L, i32 %t, i32 %ref) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca i32, align 4
  %ref.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  store i32 %ref, i32* %ref.addr, align 4
  %0 = load i32, i32* %ref.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %t.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* %t.addr, align 4
  %cmp2 = icmp sle i32 %2, -10000
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then
  %3 = load i32, i32* %t.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %4)
  %5 = load i32, i32* %t.addr, align 4
  %add = add nsw i32 %call, %5
  %add3 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %add3, %cond.false ]
  store i32 %cond, i32* %t.addr, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %t.addr, align 4
  call void @lua_rawgeti(%struct.lua_State* %6, i32 %7, i32 0)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %t.addr, align 4
  %10 = load i32, i32* %ref.addr, align 4
  call void @lua_rawseti(%struct.lua_State* %8, i32 %9, i32 %10)
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i32, i32* %ref.addr, align 4
  %conv = sext i32 %12 to i64
  call void @lua_pushinteger(%struct.lua_State* %11, i64 %conv)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %t.addr, align 4
  call void @lua_rawseti(%struct.lua_State* %13, i32 %14, i32 0)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  ret void
}

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @luaL_loadfile(%struct.lua_State* %L, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %filename.addr = alloca i8*, align 8
  %lf = alloca %struct.LoadF, align 8
  %status = alloca i32, align 4
  %readstatus = alloca i32, align 4
  %c = alloca i32, align 4
  %fnameindex = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %0)
  %add = add nsw i32 %call, 1
  store i32 %add, i32* %fnameindex, align 4
  %extraline = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 0
  store i32 0, i32* %extraline, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i64 6)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %f = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  store %struct._IO_FILE* %3, %struct._IO_FILE** %f, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %call1 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %5)
  %6 = load i8*, i8** %filename.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %f3 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %f3, align 8
  %f4 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f4, align 8
  %cmp5 = icmp eq %struct._IO_FILE* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %fnameindex, align 4
  %call7 = call i32 @errfile(%struct.lua_State* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %9)
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %f9 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f9, align 8
  %call10 = call i32 @_IO_getc(%struct._IO_FILE* %10)
  store i32 %call10, i32* %c, align 4
  %11 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %11, 35
  br i1 %cmp11, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %if.end.8
  %extraline13 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 0
  store i32 1, i32* %extraline13, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.12
  %f14 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f14, align 8
  %call15 = call i32 @_IO_getc(%struct._IO_FILE* %12)
  store i32 %call15, i32* %c, align 4
  %cmp16 = icmp ne i32 %call15, -1
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i32, i32* %c, align 4
  %cmp17 = icmp ne i32 %13, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %15, 10
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %while.end
  %f20 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f20, align 8
  %call21 = call i32 @_IO_getc(%struct._IO_FILE* %16)
  store i32 %call21, i32* %c, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %while.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.8
  %17 = load i32, i32* %c, align 4
  %18 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i64 0), align 1
  %conv = sext i8 %18 to i32
  %cmp24 = icmp eq i32 %17, %conv
  br i1 %cmp24, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.23
  %19 = load i8*, i8** %filename.addr, align 8
  %tobool = icmp ne i8* %19, null
  br i1 %tobool, label %if.then.26, label %if.end.49

if.then.26:                                       ; preds = %land.lhs.true
  %20 = load i8*, i8** %filename.addr, align 8
  %f27 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f27, align 8
  %call28 = call %struct._IO_FILE* @freopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %21)
  %f29 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  store %struct._IO_FILE* %call28, %struct._IO_FILE** %f29, align 8
  %f30 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %f30, align 8
  %cmp31 = icmp eq %struct._IO_FILE* %22, null
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.26
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %24 = load i32, i32* %fnameindex, align 4
  %call34 = call i32 @errfile(%struct.lua_State* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 %24)
  store i32 %call34, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.26
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.body.46, %if.end.35
  %f37 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f37, align 8
  %call38 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %call38, i32* %c, align 4
  %cmp39 = icmp ne i32 %call38, -1
  br i1 %cmp39, label %land.rhs.41, label %land.end.45

land.rhs.41:                                      ; preds = %while.cond.36
  %26 = load i32, i32* %c, align 4
  %27 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i64 0), align 1
  %conv42 = sext i8 %27 to i32
  %cmp43 = icmp ne i32 %26, %conv42
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.41, %while.cond.36
  %28 = phi i1 [ false, %while.cond.36 ], [ %cmp43, %land.rhs.41 ]
  br i1 %28, label %while.body.46, label %while.end.47

while.body.46:                                    ; preds = %land.end.45
  br label %while.cond.36

while.end.47:                                     ; preds = %land.end.45
  %extraline48 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 0
  store i32 0, i32* %extraline48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %while.end.47, %land.lhs.true, %if.end.23
  %29 = load i32, i32* %c, align 4
  %f50 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f50, align 8
  %call51 = call i32 @ungetc(i32 %29, %struct._IO_FILE* %30)
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %32 = bitcast %struct.LoadF* %lf to i8*
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call52 = call i8* @lua_tolstring(%struct.lua_State* %33, i32 -1, i64* null)
  %call53 = call i32 @lua_load(%struct.lua_State* %31, i8* (%struct.lua_State*, i8*, i64*)* @getF, i8* %32, i8* %call52)
  store i32 %call53, i32* %status, align 4
  %f54 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f54, align 8
  %call55 = call i32 @ferror(%struct._IO_FILE* %34) #3
  store i32 %call55, i32* %readstatus, align 4
  %35 = load i8*, i8** %filename.addr, align 8
  %tobool56 = icmp ne i8* %35, null
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.49
  %f58 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %lf, i32 0, i32 1
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f58, align 8
  %call59 = call i32 @fclose(%struct._IO_FILE* %36)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.49
  %37 = load i32, i32* %readstatus, align 4
  %tobool61 = icmp ne i32 %37, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.60
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %39 = load i32, i32* %fnameindex, align 4
  call void @lua_settop(%struct.lua_State* %38, i32 %39)
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %41 = load i32, i32* %fnameindex, align 4
  %call63 = call i32 @errfile(%struct.lua_State* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %41)
  store i32 %call63, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.60
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %43 = load i32, i32* %fnameindex, align 4
  call void @lua_remove(%struct.lua_State* %42, i32 %43)
  %44 = load i32, i32* %status, align 4
  store i32 %44, i32* %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then.62, %if.then.33, %if.then.6
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @errfile(%struct.lua_State* %L, i8* %what, i32 %fnameindex) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %what.addr = alloca i8*, align 8
  %fnameindex.addr = alloca i32, align 4
  %serr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %what, i8** %what.addr, align 8
  store i32 %fnameindex, i32* %fnameindex.addr, align 4
  %call = call i32* @__errno_location() #7
  %0 = load i32, i32* %call, align 4
  %call1 = call i8* @strerror(i32 %0) #3
  store i8* %call1, i8** %serr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %fnameindex.addr, align 4
  %call2 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 %2, i64* null)
  %add.ptr = getelementptr inbounds i8, i8* %call2, i64 1
  store i8* %add.ptr, i8** %filename, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i8*, i8** %what.addr, align 8
  %5 = load i8*, i8** %filename, align 8
  %6 = load i8*, i8** %serr, align 8
  %call3 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* %4, i8* %5, i8* %6)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %fnameindex.addr, align 4
  call void @lua_remove(%struct.lua_State* %7, i32 %8)
  ret i32 6
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @getF(%struct.lua_State* %L, i8* %ud, i64* %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %lf = alloca %struct.LoadF*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i8*, i8** %ud.addr, align 8
  %1 = bitcast i8* %0 to %struct.LoadF*
  store %struct.LoadF* %1, %struct.LoadF** %lf, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.LoadF*, %struct.LoadF** %lf, align 8
  %extraline = getelementptr inbounds %struct.LoadF, %struct.LoadF* %3, i32 0, i32 0
  %4 = load i32, i32* %extraline, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.LoadF*, %struct.LoadF** %lf, align 8
  %extraline1 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %5, i32 0, i32 0
  store i32 0, i32* %extraline1, align 4
  %6 = load i64*, i64** %size.addr, align 8
  store i64 1, i64* %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.LoadF*, %struct.LoadF** %lf, align 8
  %f = getelementptr inbounds %struct.LoadF, %struct.LoadF* %7, i32 0, i32 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %8) #3
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.LoadF*, %struct.LoadF** %lf, align 8
  %buff = getelementptr inbounds %struct.LoadF, %struct.LoadF* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %10 = load %struct.LoadF*, %struct.LoadF** %lf, align 8
  %f5 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %10, i32 0, i32 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f5, align 8
  %call6 = call i64 @fread(i8* %arraydecay, i64 1, i64 8192, %struct._IO_FILE* %11)
  %12 = load i64*, i64** %size.addr, align 8
  store i64 %call6, i64* %12, align 8
  %13 = load i64*, i64** %size.addr, align 8
  %14 = load i64, i64* %13, align 8
  %cmp = icmp ugt i64 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %15 = load %struct.LoadF*, %struct.LoadF** %lf, align 8
  %buff7 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %15, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff7, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay8, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.3, %if.then
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @luaL_loadbuffer(%struct.lua_State* %L, i8* %buff, i64 %size, i8* %name) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %buff.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %ls = alloca %struct.LoadS, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %buff, i8** %buff.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %buff.addr, align 8
  %s = getelementptr inbounds %struct.LoadS, %struct.LoadS* %ls, i32 0, i32 0
  store i8* %0, i8** %s, align 8
  %1 = load i64, i64* %size.addr, align 8
  %size1 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %ls, i32 0, i32 1
  store i64 %1, i64* %size1, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = bitcast %struct.LoadS* %ls to i8*
  %4 = load i8*, i8** %name.addr, align 8
  %call = call i32 @lua_load(%struct.lua_State* %2, i8* (%struct.lua_State*, i8*, i64*)* @getS, i8* %3, i8* %4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i8* @getS(%struct.lua_State* %L, i8* %ud, i64* %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %ls = alloca %struct.LoadS*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i8*, i8** %ud.addr, align 8
  %1 = bitcast i8* %0 to %struct.LoadS*
  store %struct.LoadS* %1, %struct.LoadS** %ls, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.LoadS*, %struct.LoadS** %ls, align 8
  %size1 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %3, i32 0, i32 1
  %4 = load i64, i64* %size1, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.LoadS*, %struct.LoadS** %ls, align 8
  %size2 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %5, i32 0, i32 1
  %6 = load i64, i64* %size2, align 8
  %7 = load i64*, i64** %size.addr, align 8
  store i64 %6, i64* %7, align 8
  %8 = load %struct.LoadS*, %struct.LoadS** %ls, align 8
  %size3 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %8, i32 0, i32 1
  store i64 0, i64* %size3, align 8
  %9 = load %struct.LoadS*, %struct.LoadS** %ls, align 8
  %s = getelementptr inbounds %struct.LoadS, %struct.LoadS* %9, i32 0, i32 0
  %10 = load i8*, i8** %s, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define i32 @luaL_loadstring(%struct.lua_State* %L, i8* %s) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %3 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* %1, i64 %call, i8* %3)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define %struct.lua_State* @luaL_newstate() #0 {
entry:
  %L = alloca %struct.lua_State*, align 8
  %call = call %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)* @l_alloc, i8* null)
  store %struct.lua_State* %call, %struct.lua_State** %L, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %tobool = icmp ne %struct.lua_State* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call1 = call i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* %1, i32 (%struct.lua_State*)* @panic)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  ret %struct.lua_State* %2
}

declare %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @l_alloc(i8* %ud, i8* %ptr, i64 %osize, i64 %nsize) #0 {
entry:
  %retval = alloca i8*, align 8
  %ud.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %osize.addr = alloca i64, align 8
  %nsize.addr = alloca i64, align 8
  store i8* %ud, i8** %ud.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %osize, i64* %osize.addr, align 8
  store i64 %nsize, i64* %nsize.addr, align 8
  %0 = load i8*, i8** %ud.addr, align 8
  %1 = load i64, i64* %osize.addr, align 8
  %2 = load i64, i64* %nsize.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %3) #3
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i64, i64* %nsize.addr, align 8
  %call = call i8* @realloc(i8* %4, i64 %5) #3
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

declare i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State*, i32 (%struct.lua_State*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @panic(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_tolstring(%struct.lua_State* %2, i32 -1, i64* null)
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0), i8* %call)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
