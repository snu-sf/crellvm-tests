; ModuleID = './MultiSource.Applications.lua/28.loslib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [8192 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"os\00", align 1
@syslib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @os_clock }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @os_date }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @os_difftime }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @os_execute }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @os_exit }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @os_getenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @os_remove }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @os_rename }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @os_setlocale }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @os_time }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @os_tmpname }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"difftime\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"getenv\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"setlocale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"tmpname\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"*t\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"wday\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"yday\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@os_setlocale.cat = internal constant [6 x i32] [i32 6, i32 3, i32 0, i32 4, i32 1, i32 2], align 16
@os_setlocale.catnames = internal constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.24 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"collate\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"ctype\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"monetary\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"field '%s' missing in date table\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"/tmp/lua_XXXXXX\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"unable to generate a unique filename\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_os(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @syslib, i32 0, i32 0))
  ret i32 1
}

declare void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) #1

; Function Attrs: nounwind uwtable
define internal i32 @os_clock(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @clock() #6
  %conv = sitofp i64 %call to double
  %div = fdiv double %conv, 1.000000e+06
  call void @lua_pushnumber(%struct.lua_State* %0, double %div)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_date(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %s = alloca i8*, align 8
  %t = alloca i64, align 8
  %stm = alloca %struct.tm*, align 8
  %cc = alloca [3 x i8], align 1
  %b = alloca %struct.luaL_Buffer, align 8
  %reslen = alloca i64, align 8
  %buff = alloca [200 x i8], align 16
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i64* null)
  store i8* %call, i8** %s, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %1, i32 2)
  %cmp = icmp sle i32 %call1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i64 @time(i64* null) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call double @luaL_checknumber(%struct.lua_State* %2, i32 2)
  %conv = fptosi double %call3 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %conv, %cond.false ]
  store i64 %cond, i64* %t, align 8
  %3 = load i8*, i8** %s, align 8
  %4 = load i8, i8* %3, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 33
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call7 = call %struct.tm* @gmtime(i64* %t) #6
  store %struct.tm* %call7, %struct.tm** %stm, align 8
  %5 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %call8 = call %struct.tm* @localtime(i64* %t) #6
  store %struct.tm* %call8, %struct.tm** %stm, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.tm*, %struct.tm** %stm, align 8
  %cmp9 = icmp eq %struct.tm* %6, null
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %7)
  br label %if.end.46

if.else.12:                                       ; preds = %if.end
  %8 = load i8*, i8** %s, align 8
  %call13 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %if.else.12
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %9, i32 0, i32 9)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.tm*, %struct.tm** %stm, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %12 = load i32, i32* %tm_sec, align 4
  call void @setfield(%struct.lua_State* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 %12)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load %struct.tm*, %struct.tm** %stm, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1
  %15 = load i32, i32* %tm_min, align 4
  call void @setfield(%struct.lua_State* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 %15)
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load %struct.tm*, %struct.tm** %stm, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 2
  %18 = load i32, i32* %tm_hour, align 4
  call void @setfield(%struct.lua_State* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %18)
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %20 = load %struct.tm*, %struct.tm** %stm, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 3
  %21 = load i32, i32* %tm_mday, align 4
  call void @setfield(%struct.lua_State* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 %21)
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load %struct.tm*, %struct.tm** %stm, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 4
  %24 = load i32, i32* %tm_mon, align 4
  %add = add nsw i32 %24, 1
  call void @setfield(%struct.lua_State* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %add)
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %26 = load %struct.tm*, %struct.tm** %stm, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 5
  %27 = load i32, i32* %tm_year, align 4
  %add17 = add nsw i32 %27, 1900
  call void @setfield(%struct.lua_State* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 %add17)
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %29 = load %struct.tm*, %struct.tm** %stm, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 6
  %30 = load i32, i32* %tm_wday, align 4
  %add18 = add nsw i32 %30, 1
  call void @setfield(%struct.lua_State* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 %add18)
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %32 = load %struct.tm*, %struct.tm** %stm, align 8
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 7
  %33 = load i32, i32* %tm_yday, align 4
  %add19 = add nsw i32 %33, 1
  call void @setfield(%struct.lua_State* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 %add19)
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %35 = load %struct.tm*, %struct.tm** %stm, align 8
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 8
  %36 = load i32, i32* %tm_isdst, align 4
  call void @setboolfield(%struct.lua_State* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %36)
  br label %if.end.45

if.else.20:                                       ; preds = %if.else.12
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %cc, i32 0, i64 0
  store i8 37, i8* %arrayidx, align 1
  %arrayidx21 = getelementptr inbounds [3 x i8], [3 x i8]* %cc, i32 0, i64 2
  store i8 0, i8* %arrayidx21, align 1
  %37 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %37, %struct.luaL_Buffer* %b)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.20
  %38 = load i8*, i8** %s, align 8
  %39 = load i8, i8* %38, align 1
  %tobool = icmp ne i8 %39, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i8*, i8** %s, align 8
  %41 = load i8, i8* %40, align 1
  %conv22 = sext i8 %41 to i32
  %cmp23 = icmp ne i32 %conv22, 37
  br i1 %cmp23, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %42 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %add.ptr, align 1
  %conv25 = sext i8 %43 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.then.28, label %if.else.36

if.then.28:                                       ; preds = %lor.lhs.false, %for.body
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %44 = load i8*, i8** %p, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr29 = getelementptr inbounds i8, i8* %arraydecay, i64 8192
  %cmp30 = icmp ult i8* %44, %add.ptr29
  br i1 %cmp30, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.28
  %call32 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %b)
  %tobool33 = icmp ne i8* %call32, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.28
  %45 = phi i1 [ true, %if.then.28 ], [ %tobool33, %lor.rhs ]
  %lor.ext = zext i1 %45 to i32
  %46 = load i8*, i8** %s, align 8
  %47 = load i8, i8* %46, align 1
  %p34 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %48 = load i8*, i8** %p34, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr35, i8** %p34, align 8
  store i8 %47, i8* %48, align 1
  br label %if.end.43

if.else.36:                                       ; preds = %lor.lhs.false
  %49 = load i8*, i8** %s, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr37, i8** %s, align 8
  %50 = load i8, i8* %incdec.ptr37, align 1
  %arrayidx38 = getelementptr inbounds [3 x i8], [3 x i8]* %cc, i32 0, i64 1
  store i8 %50, i8* %arrayidx38, align 1
  %arraydecay39 = getelementptr inbounds [200 x i8], [200 x i8]* %buff, i32 0, i32 0
  %arraydecay40 = getelementptr inbounds [3 x i8], [3 x i8]* %cc, i32 0, i32 0
  %51 = load %struct.tm*, %struct.tm** %stm, align 8
  %call41 = call i64 @strftime(i8* %arraydecay39, i64 200, i8* %arraydecay40, %struct.tm* %51) #6
  store i64 %call41, i64* %reslen, align 8
  %arraydecay42 = getelementptr inbounds [200 x i8], [200 x i8]* %buff, i32 0, i32 0
  %52 = load i64, i64* %reslen, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %arraydecay42, i64 %52)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.36, %lor.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %53 = load i8*, i8** %s, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr44, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  br label %if.end.45

if.end.45:                                        ; preds = %for.end, %if.then.16
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.11
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_difftime(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %conv = fptosi double %call to i64
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call double @luaL_optnumber(%struct.lua_State* %2, i32 2, double 0.000000e+00)
  %conv2 = fptosi double %call1 to i64
  %call3 = call double @difftime(i64 %conv, i64 %conv2) #8
  call void @lua_pushnumber(%struct.lua_State* %0, double %call3)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_execute(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_optlstring(%struct.lua_State* %1, i32 1, i8* null, i64* null)
  %call1 = call i32 @system(i8* %call)
  %conv = sext i32 %call1 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %conv)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_exit(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 1, i64 0)
  %conv = trunc i64 %call to i32
  call void @exit(i32 %conv) #9
  unreachable

return:                                           ; No predecessors!
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_getenv(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %1, i32 1, i64* null)
  %call1 = call i8* @getenv(i8* %call) #6
  call void @lua_pushstring(%struct.lua_State* %0, i8* %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_remove(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %filename = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %filename, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i8*, i8** %filename, align 8
  %call1 = call i32 @remove(i8* %2) #6
  %cmp = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %3 = load i8*, i8** %filename, align 8
  %call2 = call i32 @os_pushresult(%struct.lua_State* %1, i32 %conv, i8* %3)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @os_rename(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %fromname = alloca i8*, align 8
  %toname = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %fromname, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @luaL_checklstring(%struct.lua_State* %1, i32 2, i64* null)
  store i8* %call1, i8** %toname, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %fromname, align 8
  %4 = load i8*, i8** %toname, align 8
  %call2 = call i32 @rename(i8* %3, i8* %4) #6
  %cmp = icmp eq i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %5 = load i8*, i8** %fromname, align 8
  %call3 = call i32 @os_pushresult(%struct.lua_State* %2, i32 %conv, i8* %5)
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @os_setlocale(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %l = alloca i8*, align 8
  %op = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null)
  store i8* %call, i8** %l, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @luaL_checkoption(%struct.lua_State* %1, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @os_setlocale.catnames, i32 0, i32 0))
  store i32 %call1, i32* %op, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %op, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @os_setlocale.cat, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i8*, i8** %l, align 8
  %call2 = call i8* @setlocale(i32 %4, i8* %5) #6
  call void @lua_pushstring(%struct.lua_State* %2, i8* %call2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_time(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t = alloca i64, align 8
  %ts = alloca %struct.tm, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 1)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @time(i64* null) #6
  store i64 %call1, i64* %t, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %1, i32 1, i32 5)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %2, i32 1)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @getfield(%struct.lua_State* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 0)
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %ts, i32 0, i32 0
  store i32 %call2, i32* %tm_sec, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @getfield(%struct.lua_State* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 0)
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %ts, i32 0, i32 1
  store i32 %call3, i32* %tm_min, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call i32 @getfield(%struct.lua_State* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 12)
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %ts, i32 0, i32 2
  store i32 %call4, i32* %tm_hour, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32 @getfield(%struct.lua_State* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 -1)
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %ts, i32 0, i32 3
  store i32 %call5, i32* %tm_mday, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i32 @getfield(%struct.lua_State* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 -1)
  %sub = sub nsw i32 %call6, 1
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %ts, i32 0, i32 4
  store i32 %sub, i32* %tm_mon, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call7 = call i32 @getfield(%struct.lua_State* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 -1)
  %sub8 = sub nsw i32 %call7, 1900
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %ts, i32 0, i32 5
  store i32 %sub8, i32* %tm_year, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call9 = call i32 @getboolfield(%struct.lua_State* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0))
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %ts, i32 0, i32 8
  store i32 %call9, i32* %tm_isdst, align 4
  %call10 = call i64 @mktime(%struct.tm* %ts) #6
  store i64 %call10, i64* %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i64, i64* %t, align 8
  %cmp11 = icmp eq i64 %10, -1
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %11)
  br label %if.end.14

if.else.13:                                       ; preds = %if.end
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i64, i64* %t, align 8
  %conv = sitofp i64 %13 to double
  call void @lua_pushnumber(%struct.lua_State* %12, double %conv)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @os_tmpname(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %buff = alloca [32 x i8], align 16
  %err = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buff, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0)) #6
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %buff, i32 0, i32 0
  %call2 = call i32 @mkstemp(i8* %arraydecay1)
  store i32 %call2, i32* %err, align 4
  %0 = load i32, i32* %err, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %err, align 4
  %call3 = call i32 @close(i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %err, align 4
  %cmp4 = icmp eq i32 %2, -1
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %arraydecay8 = getelementptr inbounds [32 x i8], [32 x i8]* %buff, i32 0, i32 0
  call void @lua_pushstring(%struct.lua_State* %5, i8* %arraydecay8)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare void @lua_pushnumber(%struct.lua_State*, double) #1

; Function Attrs: nounwind
declare i64 @clock() #2

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare double @luaL_checknumber(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

declare void @lua_pushnil(%struct.lua_State*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @setfield(%struct.lua_State* %L, i8* %key, i32 %value) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %value.addr, align 4
  %conv = sext i32 %1 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %conv)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %key.addr, align 8
  call void @lua_setfield(%struct.lua_State* %2, i32 -2, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setboolfield(%struct.lua_State* %L, i8* %key, i32 %value) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %value.addr, align 4
  call void @lua_pushboolean(%struct.lua_State* %1, i32 %2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i8*, i8** %key.addr, align 8
  call void @lua_setfield(%struct.lua_State* %3, i32 -2, i8* %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #1

declare i8* @luaL_prepbuffer(%struct.luaL_Buffer*) #1

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

; Function Attrs: nounwind readnone
declare double @difftime(i64, i64) #4

declare double @luaL_optnumber(%struct.lua_State*, i32, double) #1

declare i32 @system(i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare void @lua_pushstring(%struct.lua_State*, i8*) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: nounwind uwtable
define internal i32 @os_pushresult(%struct.lua_State* %L, i32 %i, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %i.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %en = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %call = call i32* @__errno_location() #8
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %en, align 4
  %1 = load i32, i32* %i.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushboolean(%struct.lua_State* %2, i32 1)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %6 = load i32, i32* %en, align 4
  %call1 = call i8* @strerror(i32 %6) #6
  %call2 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* %5, i8* %call1)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %en, align 4
  %conv = sext i32 %8 to i64
  call void @lua_pushinteger(%struct.lua_State* %7, i64 %conv)
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare i32 @remove(i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #2

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @getfield(%struct.lua_State* %L, i8* %key, i32 %d) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %key.addr = alloca i8*, align 8
  %d.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %d, i32* %d.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_isnumber(%struct.lua_State* %2, i32 -1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i64 @lua_tointeger(%struct.lua_State* %3, i32 -1)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %res, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %d.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i8*, i8** %key.addr, align 8
  %call4 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i8* %6)
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %7 = load i32, i32* %d.addr, align 4
  store i32 %7, i32* %res, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %8, i32 -2)
  %9 = load i32, i32* %res, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @getboolfield(%struct.lua_State* %L, i8* %key) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %key.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %2, i32 -1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_toboolean(%struct.lua_State* %3, i32 -1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call1, %cond.false ]
  store i32 %cond, i32* %res, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %4, i32 -2)
  %5 = load i32, i32* %res, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #2

declare void @lua_getfield(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_isnumber(%struct.lua_State*, i32) #1

declare i64 @lua_tointeger(%struct.lua_State*, i32) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @mkstemp(i8*) #1

declare i32 @close(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
