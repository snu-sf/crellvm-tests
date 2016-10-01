; ModuleID = './MultiSource.Applications.lua/6.ldblib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@dblib = internal constant [15 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @db_debug }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @db_gethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getinfo }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getregistry }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @db_sethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @db_errorfb }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"getfenv\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"gethook\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"getinfo\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"getlocal\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"getregistry\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"getupvalue\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"setfenv\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sethook\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"setlocal\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"setupvalue\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"lua_debug> \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"cont\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"=(debug command)\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"external hook\00", align 1
@hookf.hooknames = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"tail return\00", align 1
@KEY_HOOK = internal constant i8 104, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"flnSu\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c">%s\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"function or level expected\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"short_src\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"linedefined\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"lastlinedefined\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"currentline\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"nups\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"namewhat\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"activelines\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"level out of range\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"'setfenv' cannot change environment of given object\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"stack traceback:\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"\0A\09...\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"Snl\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c" in function '%s'\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c" in main chunk\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c" in function <%s:%d>\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_debug(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.luaL_Reg* getelementptr inbounds ([15 x %struct.luaL_Reg], [15 x %struct.luaL_Reg]* @dblib, i32 0, i32 0))
  ret i32 1
}

declare void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) #1

; Function Attrs: nounwind uwtable
define internal i32 @db_debug(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %buffer = alloca [250 x i8], align 16
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.16, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %0)
  %arraydecay = getelementptr inbounds [250 x i8], [250 x i8]* %buffer, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 250, %struct._IO_FILE* %1)
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [250 x i8], [250 x i8]* %buffer, i32 0, i32 0
  %call3 = call i32 @strcmp(i8* %arraydecay2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #3
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  ret i32 0

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %arraydecay5 = getelementptr inbounds [250 x i8], [250 x i8]* %buffer, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [250 x i8], [250 x i8]* %buffer, i32 0, i32 0
  %call7 = call i64 @strlen(i8* %arraydecay6) #3
  %call8 = call i32 @luaL_loadbuffer(%struct.lua_State* %2, i8* %arraydecay5, i64 %call7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call10 = call i32 @lua_pcall(%struct.lua_State* %3, i32 0, i32 0, i32 0)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call13 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 -1, i64* null)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 @fputs(i8* %call13, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %6)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %lor.lhs.false.9
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %7, i32 0)
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getfenv(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfenv(%struct.lua_State* %0, i32 1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @db_gethook(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %arg = alloca i32, align 4
  %L1 = alloca %struct.lua_State*, align 8
  %buff = alloca [5 x i8], align 1
  %mask = alloca i32, align 4
  %hook = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @getthread(%struct.lua_State* %0, i32* %arg)
  store %struct.lua_State* %call, %struct.lua_State** %L1, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %call1 = call i32 @lua_gethookmask(%struct.lua_State* %1)
  store i32 %call1, i32* %mask, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %call2 = call void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* %2)
  store void (%struct.lua_State*, %struct.lua_Debug*)* %call2, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 8
  %3 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 8
  %cmp = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 8
  %cmp3 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %4, @hookf
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i64 13)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @gethooktable(%struct.lua_State* %6)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %9 = bitcast %struct.lua_State* %8 to i8*
  call void @lua_pushlightuserdata(%struct.lua_State* %7, i8* %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawget(%struct.lua_State* %10, i32 -2)
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_remove(%struct.lua_State* %11, i32 -2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i32, i32* %mask, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buff, i32 0, i32 0
  %call4 = call i8* @unmakemask(i32 %13, i8* %arraydecay)
  call void @lua_pushstring(%struct.lua_State* %12, i8* %call4)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %call5 = call i32 @lua_gethookcount(%struct.lua_State* %15)
  %conv = sext i32 %call5 to i64
  call void @lua_pushinteger(%struct.lua_State* %14, i64 %conv)
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getinfo(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %ar = alloca %struct.lua_Debug, align 8
  %arg = alloca i32, align 4
  %L1 = alloca %struct.lua_State*, align 8
  %options = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @getthread(%struct.lua_State* %0, i32* %arg)
  store %struct.lua_State* %call, %struct.lua_State** %L1, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %arg, align 4
  %add = add nsw i32 %2, 2
  %call1 = call i8* @luaL_optlstring(%struct.lua_State* %1, i32 %add, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i64* null)
  store i8* %call1, i8** %options, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %arg, align 4
  %add2 = add nsw i32 %4, 1
  %call3 = call i32 @lua_isnumber(%struct.lua_State* %3, i32 %add2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %arg, align 4
  %add4 = add nsw i32 %7, 1
  %call5 = call i64 @lua_tointeger(%struct.lua_State* %6, i32 %add4)
  %conv = trunc i64 %call5 to i32
  %call6 = call i32 @lua_getstack(%struct.lua_State* %5, i32 %conv, %struct.lua_Debug* %ar)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %8)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.20

if.else:                                          ; preds = %entry
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i32, i32* %arg, align 4
  %add9 = add nsw i32 %10, 1
  %call10 = call i32 @lua_type(%struct.lua_State* %9, i32 %add9)
  %cmp = icmp eq i32 %call10, 6
  br i1 %cmp, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.else
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i8*, i8** %options, align 8
  %call13 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* %12)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call14 = call i8* @lua_tolstring(%struct.lua_State* %13, i32 -1, i64* null)
  store i8* %call14, i8** %options, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load i32, i32* %arg, align 4
  %add15 = add nsw i32 %15, 1
  call void @lua_pushvalue(%struct.lua_State* %14, i32 %add15)
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  call void @lua_xmove(%struct.lua_State* %16, %struct.lua_State* %17, i32 1)
  br label %if.end.19

if.else.16:                                       ; preds = %if.else
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load i32, i32* %arg, align 4
  %add17 = add nsw i32 %19, 1
  %call18 = call i32 @luaL_argerror(%struct.lua_State* %18, i32 %add17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  store i32 %call18, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %20 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %21 = load i8*, i8** %options, align 8
  %call21 = call i32 @lua_getinfo(%struct.lua_State* %20, i8* %21, %struct.lua_Debug* %ar)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load i32, i32* %arg, align 4
  %add24 = add nsw i32 %23, 2
  %call25 = call i32 @luaL_argerror(%struct.lua_State* %22, i32 %add24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0))
  store i32 %call25, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.20
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %24, i32 0, i32 2)
  %25 = load i8*, i8** %options, align 8
  %call27 = call i8* @strchr(i8* %25, i32 83) #3
  %tobool28 = icmp ne i8* %call27, null
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %source = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 4
  %27 = load i8*, i8** %source, align 8
  call void @settabss(%struct.lua_State* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* %27)
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %short_src = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 9
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %short_src, i32 0, i32 0
  call void @settabss(%struct.lua_State* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* %arraydecay)
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %linedefined = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 7
  %30 = load i32, i32* %linedefined, align 4
  call void @settabsi(%struct.lua_State* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 %30)
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %lastlinedefined = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 8
  %32 = load i32, i32* %lastlinedefined, align 4
  call void @settabsi(%struct.lua_State* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i32 %32)
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %what = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 3
  %34 = load i8*, i8** %what, align 8
  call void @settabss(%struct.lua_State* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %34)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  %35 = load i8*, i8** %options, align 8
  %call31 = call i8* @strchr(i8* %35, i32 108) #3
  %tobool32 = icmp ne i8* %call31, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %36 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %currentline = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 5
  %37 = load i32, i32* %currentline, align 4
  call void @settabsi(%struct.lua_State* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %37)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  %38 = load i8*, i8** %options, align 8
  %call35 = call i8* @strchr(i8* %38, i32 117) #3
  %tobool36 = icmp ne i8* %call35, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %39 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nups = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 6
  %40 = load i32, i32* %nups, align 4
  call void @settabsi(%struct.lua_State* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 %40)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %41 = load i8*, i8** %options, align 8
  %call39 = call i8* @strchr(i8* %41, i32 110) #3
  %tobool40 = icmp ne i8* %call39, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %name = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 1
  %43 = load i8*, i8** %name, align 8
  call void @settabss(%struct.lua_State* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* %43)
  %44 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %namewhat = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 2
  %45 = load i8*, i8** %namewhat, align 8
  call void @settabss(%struct.lua_State* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* %45)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  %46 = load i8*, i8** %options, align 8
  %call43 = call i8* @strchr(i8* %46, i32 76) #3
  %tobool44 = icmp ne i8* %call43, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  %47 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  call void @treatstackoption(%struct.lua_State* %47, %struct.lua_State* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %49 = load i8*, i8** %options, align 8
  %call47 = call i8* @strchr(i8* %49, i32 102) #3
  %tobool48 = icmp ne i8* %call47, null
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  %50 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %51 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  call void @treatstackoption(%struct.lua_State* %50, %struct.lua_State* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.46
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.23, %if.else.16, %if.then.8
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getlocal(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %arg = alloca i32, align 4
  %L1 = alloca %struct.lua_State*, align 8
  %ar = alloca %struct.lua_Debug, align 8
  %name = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @getthread(%struct.lua_State* %0, i32* %arg)
  store %struct.lua_State* %call, %struct.lua_State** %L1, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %arg, align 4
  %add = add nsw i32 %3, 1
  %call1 = call i64 @luaL_checkinteger(%struct.lua_State* %2, i32 %add)
  %conv = trunc i64 %call1 to i32
  %call2 = call i32 @lua_getstack(%struct.lua_State* %1, i32 %conv, %struct.lua_Debug* %ar)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %arg, align 4
  %add3 = add nsw i32 %5, 1
  %call4 = call i32 @luaL_argerror(%struct.lua_State* %4, i32 %add3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0))
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %arg, align 4
  %add5 = add nsw i32 %8, 2
  %call6 = call i64 @luaL_checkinteger(%struct.lua_State* %7, i32 %add5)
  %conv7 = trunc i64 %call6 to i32
  %call8 = call i8* @lua_getlocal(%struct.lua_State* %6, %struct.lua_Debug* %ar, i32 %conv7)
  store i8* %call8, i8** %name, align 8
  %9 = load i8*, i8** %name, align 8
  %tobool9 = icmp ne i8* %9, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %10 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_xmove(%struct.lua_State* %10, %struct.lua_State* %11, i32 1)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i8*, i8** %name, align 8
  call void @lua_pushstring(%struct.lua_State* %12, i8* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %14, i32 -2)
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %15)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.10, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getregistry(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -10000)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getmetatable(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_getmetatable(%struct.lua_State* %1, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @db_getupvalue(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @auxupvalue(%struct.lua_State* %0, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @db_setfenv(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %1, i32 2)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_setfenv(%struct.lua_State* %2, i32 1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @db_sethook(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %arg = alloca i32, align 4
  %mask = alloca i32, align 4
  %count = alloca i32, align 4
  %func = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  %L1 = alloca %struct.lua_State*, align 8
  %smask = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @getthread(%struct.lua_State* %0, i32* %arg)
  store %struct.lua_State* %call, %struct.lua_State** %L1, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %arg, align 4
  %add = add nsw i32 %2, 1
  %call1 = call i32 @lua_type(%struct.lua_State* %1, i32 %add)
  %cmp = icmp sle i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %arg, align 4
  %add2 = add nsw i32 %4, 1
  call void @lua_settop(%struct.lua_State* %3, i32 %add2)
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %func, align 8
  store i32 0, i32* %mask, align 4
  store i32 0, i32* %count, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %arg, align 4
  %add3 = add nsw i32 %6, 2
  %call4 = call i8* @luaL_checklstring(%struct.lua_State* %5, i32 %add3, i64* null)
  store i8* %call4, i8** %smask, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %arg, align 4
  %add5 = add nsw i32 %8, 1
  call void @luaL_checktype(%struct.lua_State* %7, i32 %add5, i32 6)
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i32, i32* %arg, align 4
  %add6 = add nsw i32 %10, 3
  %call7 = call i64 @luaL_optinteger(%struct.lua_State* %9, i32 %add6, i64 0)
  %conv = trunc i64 %call7 to i32
  store i32 %conv, i32* %count, align 4
  store void (%struct.lua_State*, %struct.lua_Debug*)* @hookf, void (%struct.lua_State*, %struct.lua_Debug*)** %func, align 8
  %11 = load i8*, i8** %smask, align 8
  %12 = load i32, i32* %count, align 4
  %call8 = call i32 @makemask(i8* %11, i32 %12)
  store i32 %call8, i32* %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @gethooktable(%struct.lua_State* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %16 = bitcast %struct.lua_State* %15 to i8*
  call void @lua_pushlightuserdata(%struct.lua_State* %14, i8* %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i32, i32* %arg, align 4
  %add9 = add nsw i32 %18, 1
  call void @lua_pushvalue(%struct.lua_State* %17, i32 %add9)
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawset(%struct.lua_State* %19, i32 -3)
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %20, i32 -2)
  %21 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %22 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %func, align 8
  %23 = load i32, i32* %mask, align 4
  %24 = load i32, i32* %count, align 4
  %call10 = call i32 @lua_sethook(%struct.lua_State* %21, void (%struct.lua_State*, %struct.lua_Debug*)* %22, i32 %23, i32 %24)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @db_setlocal(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %arg = alloca i32, align 4
  %L1 = alloca %struct.lua_State*, align 8
  %ar = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @getthread(%struct.lua_State* %0, i32* %arg)
  store %struct.lua_State* %call, %struct.lua_State** %L1, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %arg, align 4
  %add = add nsw i32 %3, 1
  %call1 = call i64 @luaL_checkinteger(%struct.lua_State* %2, i32 %add)
  %conv = trunc i64 %call1 to i32
  %call2 = call i32 @lua_getstack(%struct.lua_State* %1, i32 %conv, %struct.lua_Debug* %ar)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %arg, align 4
  %add3 = add nsw i32 %5, 1
  %call4 = call i32 @luaL_argerror(%struct.lua_State* %4, i32 %add3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0))
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %arg, align 4
  %add5 = add nsw i32 %7, 3
  call void @luaL_checkany(%struct.lua_State* %6, i32 %add5)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %arg, align 4
  %add6 = add nsw i32 %9, 3
  call void @lua_settop(%struct.lua_State* %8, i32 %add6)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  call void @lua_xmove(%struct.lua_State* %10, %struct.lua_State* %11, i32 1)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load i32, i32* %arg, align 4
  %add7 = add nsw i32 %15, 2
  %call8 = call i64 @luaL_checkinteger(%struct.lua_State* %14, i32 %add7)
  %conv9 = trunc i64 %call8 to i32
  %call10 = call i8* @lua_setlocal(%struct.lua_State* %13, %struct.lua_Debug* %ar, i32 %conv9)
  call void @lua_pushstring(%struct.lua_State* %12, i8* %call10)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @db_setmetatable(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 2)
  store i32 %call, i32* %t, align 4
  %1 = load i32, i32* %t, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %t, align 4
  %cmp1 = icmp eq i32 %2, 5
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @luaL_argerror(%struct.lua_State* %3, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0))
  %tobool = icmp ne i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %5, i32 2)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_setmetatable(%struct.lua_State* %7, i32 1)
  call void @lua_pushboolean(%struct.lua_State* %6, i32 %call3)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @db_setupvalue(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %0, i32 3)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @auxupvalue(%struct.lua_State* %1, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @db_errorfb(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %level = alloca i32, align 4
  %firstpart = alloca i32, align 4
  %arg = alloca i32, align 4
  %L1 = alloca %struct.lua_State*, align 8
  %ar = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 1, i32* %firstpart, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @getthread(%struct.lua_State* %0, i32* %arg)
  store %struct.lua_State* %call, %struct.lua_State** %L1, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %arg, align 4
  %add = add nsw i32 %2, 2
  %call1 = call i32 @lua_isnumber(%struct.lua_State* %1, i32 %add)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %arg, align 4
  %add2 = add nsw i32 %4, 2
  %call3 = call i64 @lua_tointeger(%struct.lua_State* %3, i32 %add2)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %level, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %5, i32 -2)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %cmp = icmp eq %struct.lua_State* %6, %7
  %cond = select i1 %cmp, i32 1, i32 0
  store i32 %cond, i32* %level, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32 @lua_gettop(%struct.lua_State* %8)
  %9 = load i32, i32* %arg, align 4
  %cmp6 = icmp eq i32 %call5, %9
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i64 0)
  br label %if.end.16

if.else.9:                                        ; preds = %if.end
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i32, i32* %arg, align 4
  %add10 = add nsw i32 %12, 1
  %call11 = call i32 @lua_isstring(%struct.lua_State* %11, i32 %add10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.else.14, label %if.then.13

if.then.13:                                       ; preds = %if.else.9
  store i32 1, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.9
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i64 1)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.8
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i64 16)
  br label %while.cond

while.cond:                                       ; preds = %if.end.71, %if.end.34, %if.end.16
  %15 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %16 = load i32, i32* %level, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %level, align 4
  %call17 = call i32 @lua_getstack(%struct.lua_State* %15, i32 %16, %struct.lua_Debug* %ar)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %while.body, label %while.end.73

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %level, align 4
  %cmp19 = icmp sgt i32 %17, 12
  br i1 %cmp19, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %while.body
  %18 = load i32, i32* %firstpart, align 4
  %tobool21 = icmp ne i32 %18, 0
  br i1 %tobool21, label %if.then.22, label %if.end.35

if.then.22:                                       ; preds = %land.lhs.true
  %19 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %20 = load i32, i32* %level, align 4
  %add23 = add nsw i32 %20, 10
  %call24 = call i32 @lua_getstack(%struct.lua_State* %19, i32 %add23, %struct.lua_Debug* %ar)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %if.then.22
  %21 = load i32, i32* %level, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %level, align 4
  br label %if.end.34

if.else.27:                                       ; preds = %if.then.22
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i64 5)
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.32, %if.else.27
  %23 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %24 = load i32, i32* %level, align 4
  %add29 = add nsw i32 %24, 10
  %call30 = call i32 @lua_getstack(%struct.lua_State* %23, i32 %add29, %struct.lua_Debug* %ar)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %while.body.32, label %while.end

while.body.32:                                    ; preds = %while.cond.28
  %25 = load i32, i32* %level, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, i32* %level, align 4
  br label %while.cond.28

while.end:                                        ; preds = %while.cond.28
  br label %if.end.34

if.end.34:                                        ; preds = %while.end, %if.then.26
  store i32 0, i32* %firstpart, align 4
  br label %while.cond

if.end.35:                                        ; preds = %land.lhs.true, %while.body
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i64 2)
  %27 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %call36 = call i32 @lua_getinfo(%struct.lua_State* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), %struct.lua_Debug* %ar)
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %short_src = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 9
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %short_src, i32 0, i32 0
  %call37 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay)
  %currentline = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 5
  %29 = load i32, i32* %currentline, align 4
  %cmp38 = icmp sgt i32 %29, 0
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.35
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %currentline41 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 5
  %31 = load i32, i32* %currentline41, align 4
  %call42 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i32 %31)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.35
  %namewhat = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 2
  %32 = load i8*, i8** %namewhat, align 8
  %33 = load i8, i8* %32, align 1
  %conv44 = sext i8 %33 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.end.43
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %name = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 1
  %35 = load i8*, i8** %name, align 8
  %call48 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), i8* %35)
  br label %if.end.71

if.else.49:                                       ; preds = %if.end.43
  %what = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 3
  %36 = load i8*, i8** %what, align 8
  %37 = load i8, i8* %36, align 1
  %conv50 = sext i8 %37 to i32
  %cmp51 = icmp eq i32 %conv50, 109
  br i1 %cmp51, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.else.49
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call54 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.70

if.else.55:                                       ; preds = %if.else.49
  %what56 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 3
  %39 = load i8*, i8** %what56, align 8
  %40 = load i8, i8* %39, align 1
  %conv57 = sext i8 %40 to i32
  %cmp58 = icmp eq i32 %conv57, 67
  br i1 %cmp58, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.55
  %what60 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 3
  %41 = load i8*, i8** %what60, align 8
  %42 = load i8, i8* %41, align 1
  %conv61 = sext i8 %42 to i32
  %cmp62 = icmp eq i32 %conv61, 116
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %lor.lhs.false, %if.else.55
  %43 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i64 2)
  br label %if.end.69

if.else.65:                                       ; preds = %lor.lhs.false
  %44 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %short_src66 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 9
  %arraydecay67 = getelementptr inbounds [60 x i8], [60 x i8]* %short_src66, i32 0, i32 0
  %linedefined = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 7
  %45 = load i32, i32* %linedefined, align 4
  %call68 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i8* %arraydecay67, i32 %45)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.65, %if.then.64
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.53
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.47
  %46 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call72 = call i32 @lua_gettop(%struct.lua_State* %47)
  %48 = load i32, i32* %arg, align 4
  %sub = sub nsw i32 %call72, %48
  call void @lua_concat(%struct.lua_State* %46, i32 %sub)
  br label %while.cond

while.end.73:                                     ; preds = %while.cond
  %49 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %50 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call74 = call i32 @lua_gettop(%struct.lua_State* %50)
  %51 = load i32, i32* %arg, align 4
  %sub75 = sub nsw i32 %call74, %51
  call void @lua_concat(%struct.lua_State* %49, i32 %sub75)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.73, %if.then.13
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare void @lua_getfenv(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.lua_State* @getthread(%struct.lua_State* %L, i32* %arg) #0 {
entry:
  %retval = alloca %struct.lua_State*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %arg.addr = alloca i32*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32* %arg, i32** %arg.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 1)
  %cmp = icmp eq i32 %call, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %arg.addr, align 8
  store i32 1, i32* %1, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call %struct.lua_State* @lua_tothread(%struct.lua_State* %2, i32 1)
  store %struct.lua_State* %call1, %struct.lua_State** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32*, i32** %arg.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  store %struct.lua_State* %4, %struct.lua_State** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct.lua_State*, %struct.lua_State** %retval
  ret %struct.lua_State* %5
}

declare i32 @lua_gethookmask(%struct.lua_State*) #1

declare void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define internal void @hookf(%struct.lua_State* %L, %struct.lua_Debug* %ar) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ar.addr = alloca %struct.lua_Debug*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* @KEY_HOOK)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawget(%struct.lua_State* %1, i32 -10000)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = bitcast %struct.lua_State* %3 to i8*
  call void @lua_pushlightuserdata(%struct.lua_State* %2, i8* %4)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawget(%struct.lua_State* %5, i32 -2)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %6, i32 -1)
  %cmp = icmp eq i32 %call, 6
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %event = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 0
  %9 = load i32, i32* %event, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i32 0, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  call void @lua_pushstring(%struct.lua_State* %7, i8* %10)
  %11 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %currentline = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %11, i32 0, i32 5
  %12 = load i32, i32* %currentline, align 4
  %cmp1 = icmp sge i32 %12, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %currentline3 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %14, i32 0, i32 5
  %15 = load i32, i32* %currentline3, align 4
  %conv = sext i32 %15 to i64
  call void @lua_pushinteger(%struct.lua_State* %13, i64 %conv)
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %17, i32 2, i32 0)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

declare void @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gethooktable(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* @KEY_HOOK)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawget(%struct.lua_State* %1, i32 -10000)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %2, i32 -1)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %3, i32 -2)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 1)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlightuserdata(%struct.lua_State* %5, i8* @KEY_HOOK)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %6, i32 -2)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawset(%struct.lua_State* %7, i32 -10000)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) #1

declare void @lua_rawget(%struct.lua_State*, i32) #1

declare void @lua_remove(%struct.lua_State*, i32) #1

declare void @lua_pushstring(%struct.lua_State*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @unmakemask(i32 %mask, i8* %smask) #0 {
entry:
  %mask.addr = alloca i32, align 4
  %smask.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %mask, i32* %mask.addr, align 4
  store i8* %smask, i8** %smask.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* %mask.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %smask.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 99, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %mask.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %4, 1
  store i32 %inc4, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %5 = load i8*, i8** %smask.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 %idxprom5
  store i8 114, i8* %arrayidx6, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %6 = load i32, i32* %mask.addr, align 4
  %and8 = and i32 %6, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.7
  %7 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %7, 1
  store i32 %inc11, i32* %i, align 4
  %idxprom12 = sext i32 %7 to i64
  %8 = load i8*, i8** %smask.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %8, i64 %idxprom12
  store i8 108, i8* %arrayidx13, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end.7
  %9 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %9 to i64
  %10 = load i8*, i8** %smask.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %10, i64 %idxprom15
  store i8 0, i8* %arrayidx16, align 1
  %11 = load i8*, i8** %smask.addr, align 8
  ret i8* %11
}

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare i32 @lua_gethookcount(%struct.lua_State*) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) #1

declare void @lua_pushnil(%struct.lua_State*) #1

declare void @lua_call(%struct.lua_State*, i32, i32) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_rawset(%struct.lua_State*, i32) #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare i32 @lua_isnumber(%struct.lua_State*, i32) #1

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #1

declare i64 @lua_tointeger(%struct.lua_State*, i32) #1

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

declare void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @settabss(%struct.lua_State* %L, i8* %i, i8* %v) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %i.addr = alloca i8*, align 8
  %v.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %i, i8** %i.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %v.addr, align 8
  call void @lua_pushstring(%struct.lua_State* %0, i8* %1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %i.addr, align 8
  call void @lua_setfield(%struct.lua_State* %2, i32 -2, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @settabsi(%struct.lua_State* %L, i8* %i, i32 %v) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %i.addr = alloca i8*, align 8
  %v.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %i, i8** %i.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %v.addr, align 4
  %conv = sext i32 %1 to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %conv)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %i.addr, align 8
  call void @lua_setfield(%struct.lua_State* %2, i32 -2, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @treatstackoption(%struct.lua_State* %L, %struct.lua_State* %L1, i8* %fname) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %L1.addr = alloca %struct.lua_State*, align 8
  %fname.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_State* %L1, %struct.lua_State** %L1.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %cmp = icmp eq %struct.lua_State* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %2, i32 -2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_remove(%struct.lua_State* %3, i32 -3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_xmove(%struct.lua_State* %4, %struct.lua_State* %5, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i8*, i8** %fname.addr, align 8
  call void @lua_setfield(%struct.lua_State* %6, i32 -2, i8* %7)
  ret void
}

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

declare i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) #1

declare void @luaL_checkany(%struct.lua_State*, i32) #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @auxupvalue(%struct.lua_State* %L, i32 %get) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %get.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %get, i32* %get.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %1, i32 1, i32 6)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_iscfunction(%struct.lua_State* %2, i32 1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %get.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %n, align 4
  %call3 = call i8* @lua_getupvalue(%struct.lua_State* %4, i32 1, i32 %5)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %n, align 4
  %call4 = call i8* @lua_setupvalue(%struct.lua_State* %6, i32 1, i32 %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ %call4, %cond.false ]
  store i8* %cond, i8** %name, align 8
  %8 = load i8*, i8** %name, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %cond.end
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i8*, i8** %name, align 8
  call void @lua_pushstring(%struct.lua_State* %9, i8* %10)
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i32, i32* %get.addr, align 4
  %add = add nsw i32 %12, 1
  %sub = sub nsw i32 0, %add
  call void @lua_insert(%struct.lua_State* %11, i32 %sub)
  %13 = load i32, i32* %get.addr, align 4
  %add8 = add nsw i32 %13, 1
  store i32 %add8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare i32 @lua_iscfunction(%struct.lua_State*, i32) #1

declare i8* @lua_getupvalue(%struct.lua_State*, i32, i32) #1

declare i8* @lua_setupvalue(%struct.lua_State*, i32, i32) #1

declare void @lua_insert(%struct.lua_State*, i32) #1

declare i32 @lua_setfenv(%struct.lua_State*, i32) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @makemask(i8* %smask, i32 %count) #0 {
entry:
  %smask.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  store i8* %smask, i8** %smask.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 0, i32* %mask, align 4
  %0 = load i8*, i8** %smask.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 99) #3
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %mask, align 4
  %or = or i32 %1, 1
  store i32 %or, i32* %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %smask.addr, align 8
  %call1 = call i8* @strchr(i8* %2, i32 114) #3
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %3 = load i32, i32* %mask, align 4
  %or4 = or i32 %3, 2
  store i32 %or4, i32* %mask, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %4 = load i8*, i8** %smask.addr, align 8
  %call6 = call i8* @strchr(i8* %4, i32 108) #3
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %5 = load i32, i32* %mask, align 4
  %or9 = or i32 %5, 4
  store i32 %or9, i32* %mask, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  %6 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.10
  %7 = load i32, i32* %mask, align 4
  %or12 = or i32 %7, 8
  store i32 %or12, i32* %mask, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.10
  %8 = load i32, i32* %mask, align 4
  ret i32 %8
}

declare i32 @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) #1

declare i8* @lua_setlocal(%struct.lua_State*, %struct.lua_Debug*, i32) #1

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #1

declare i32 @lua_gettop(%struct.lua_State*) #1

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

declare void @lua_concat(%struct.lua_State*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
