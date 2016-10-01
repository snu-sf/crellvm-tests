; ModuleID = './MultiSource.Applications.lua/26.loadlib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [9 x i8] c"_LOADLIB\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@pk_funcs = internal constant [3 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_loadlib }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_seeall }, %struct.luaL_Reg zeroinitializer], align 16
@loaders = internal constant [5 x i32 (%struct.lua_State*)*] [i32 (%struct.lua_State*)* @loader_preload, i32 (%struct.lua_State*)* @loader_Lua, i32 (%struct.lua_State*)* @loader_C, i32 (%struct.lua_State*)* @loader_Croot, i32 (%struct.lua_State*)* null], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"loaders\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"LUA_PATH\00", align 1
@.str.6 = private unnamed_addr constant [138 x i8] c"./?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua;/usr/local/lib/lua/5.1/?.lua;/usr/local/lib/lua/5.1/?/init.lua\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"cpath\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"LUA_CPATH\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"./?.so;/usr/local/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"/\0A;\0A?\0A!\0A-\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@ll_funcs = internal constant [3 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_module }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_require }, %struct.luaL_Reg zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [8 x i8] c"loadlib\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"seeall\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"LOADLIB: \00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"dynamic libraries not enabled; check your Lua installation\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"'package.preload' must be a table\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\0A\09no field package.preload['%s']\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"'package.%s' must be a string\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"\0A\09no file '%s'\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"error loading module '%s' from file '%s':\0A\09%s\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"luaopen_%s\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"\0A\09no module '%s' in file '%s'\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c";\01;\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"name conflict for module '%s'\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"_NAME\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"_M\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"_PACKAGE\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"'module' not called from a Lua function\00", align 1
@sentinel_ = internal constant i32 0, align 4
@.str.49 = private unnamed_addr constant [43 x i8] c"loop or previous error loading module '%s'\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"'package.loaders' must be a table\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"module '%s' not found:%s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_package(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @luaL_newmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushcclosure(%struct.lua_State* %1, i32 (%struct.lua_State*)* @gctm, i32 0)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %2, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @pk_funcs, i32 0, i32 0))
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %4, i32 -1)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_replace(%struct.lua_State* %5, i32 -10001)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %6, i32 0, i32 4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [5 x i32 (%struct.lua_State*)*], [5 x i32 (%struct.lua_State*)*]* @loaders, i32 0, i64 %idxprom
  %8 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %arrayidx, align 8
  %cmp = icmp ne i32 (%struct.lua_State*)* %8, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds [5 x i32 (%struct.lua_State*)*], [5 x i32 (%struct.lua_State*)*]* @loaders, i32 0, i64 %idxprom1
  %11 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %arrayidx2, align 8
  call void @lua_pushcclosure(%struct.lua_State* %9, i32 (%struct.lua_State*)* %11, i32 0)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  call void @lua_rawseti(%struct.lua_State* %12, i32 -2, i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %15, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @setpath(%struct.lua_State* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.6, i32 0, i32 0))
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @setpath(%struct.lua_State* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i32 0, i32 0))
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i64 9)
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %19, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0))
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i8* @luaL_findtable(%struct.lua_State* %20, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 2)
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %21, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0))
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %22, i32 0, i32 0)
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %23, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %24, i32 -10002)
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %25, i8* null, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @ll_funcs, i32 0, i32 0))
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %26, i32 -2)
  ret i32 1
}

declare i32 @luaL_newmetatable(%struct.lua_State*, i8*) #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gctm(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %lib = alloca i8**, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %lib, align 8
  %2 = load i8**, i8*** %lib, align 8
  %3 = load i8*, i8** %2, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %lib, align 8
  %5 = load i8*, i8** %4, align 8
  call void @ll_unloadlib(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8**, i8*** %lib, align 8
  store i8* null, i8** %6, align 8
  ret i32 0
}

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_replace(%struct.lua_State*, i32) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @lua_rawseti(%struct.lua_State*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @setpath(%struct.lua_State* %L, i8* %fieldname, i8* %envname, i8* %def) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %fieldname.addr = alloca i8*, align 8
  %envname.addr = alloca i8*, align 8
  %def.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %fieldname, i8** %fieldname.addr, align 8
  store i8* %envname, i8** %envname.addr, align 8
  store i8* %def, i8** %def.addr, align 8
  %0 = load i8*, i8** %envname.addr, align 8
  %call = call i8* @getenv(i8* %0) #4
  store i8* %call, i8** %path, align 8
  %1 = load i8*, i8** %path, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %def.addr, align 8
  call void @lua_pushstring(%struct.lua_State* %2, i8* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %path, align 8
  %call1 = call i8* @luaL_gsub(%struct.lua_State* %4, i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0))
  store i8* %call1, i8** %path, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i8*, i8** %path, align 8
  %8 = load i8*, i8** %def.addr, align 8
  %call2 = call i8* @luaL_gsub(%struct.lua_State* %6, i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_remove(%struct.lua_State* %9, i32 -2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load i8*, i8** %fieldname.addr, align 8
  call void @lua_setfield(%struct.lua_State* %10, i32 -2, i8* %11)
  ret void
}

declare void @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

declare i8* @luaL_findtable(%struct.lua_State*, i32, i8*, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ll_unloadlib(i8* %lib) #0 {
entry:
  %lib.addr = alloca i8*, align 8
  store i8* %lib, i8** %lib.addr, align 8
  %0 = load i8*, i8** %lib.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ll_loadlib(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %path = alloca i8*, align 8
  %init = alloca i8*, align 8
  %stat = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %path, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @luaL_checklstring(%struct.lua_State* %1, i32 2, i64* null)
  store i8* %call1, i8** %init, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %path, align 8
  %4 = load i8*, i8** %init, align 8
  %call2 = call i32 @ll_loadfunc(%struct.lua_State* %2, i8* %3, i8* %4)
  store i32 %call2, i32* %stat, align 4
  %5 = load i32, i32* %stat, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %6)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_insert(%struct.lua_State* %7, i32 -2)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %stat, align 4
  %cmp3 = icmp eq i32 %9, 1
  %cond = select i1 %cmp3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)
  call void @lua_pushstring(%struct.lua_State* %8, i8* %cond)
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @ll_seeall(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_getmetatable(%struct.lua_State* %1, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %2, i32 0, i32 1)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %3, i32 -1)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_setmetatable(%struct.lua_State* %4, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %5, i32 -10002)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %6, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0))
  ret i32 0
}

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ll_loadfunc(%struct.lua_State* %L, i8* %path, i8* %sym) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %path.addr = alloca i8*, align 8
  %sym.addr = alloca i8*, align 8
  %reg = alloca i8**, align 8
  %f = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %sym, i8** %sym.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %path.addr, align 8
  %call = call i8** @ll_register(%struct.lua_State* %0, i8* %1)
  store i8** %call, i8*** %reg, align 8
  %2 = load i8**, i8*** %reg, align 8
  %3 = load i8*, i8** %2, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %path.addr, align 8
  %call1 = call i8* @ll_load(%struct.lua_State* %4, i8* %5)
  %6 = load i8**, i8*** %reg, align 8
  store i8* %call1, i8** %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8**, i8*** %reg, align 8
  %8 = load i8*, i8** %7, align 8
  %cmp2 = icmp eq i8* %8, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i8**, i8*** %reg, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** %sym.addr, align 8
  %call4 = call i32 (%struct.lua_State*)* @ll_sym(%struct.lua_State* %9, i8* %11, i8* %12)
  store i32 (%struct.lua_State*)* %call4, i32 (%struct.lua_State*)** %f, align 8
  %13 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %f, align 8
  %cmp5 = icmp eq i32 (%struct.lua_State*)* %13, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %f, align 8
  call void @lua_pushcclosure(%struct.lua_State* %14, i32 (%struct.lua_State*)* %15, i32 0)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @lua_pushnil(%struct.lua_State*) #1

declare void @lua_insert(%struct.lua_State*, i32) #1

declare void @lua_pushstring(%struct.lua_State*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8** @ll_register(%struct.lua_State* %L, i8* %path) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %path.addr = alloca i8*, align 8
  %plib = alloca i8**, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %path.addr, align 8
  %call = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* %1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_gettable(%struct.lua_State* %2, i32 -10000)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %3, i32 -1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i8* @lua_touserdata(%struct.lua_State* %4, i32 -1)
  %5 = bitcast i8* %call2 to i8**
  store i8** %5, i8*** %plib, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %6, i32 -2)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i8* @lua_newuserdata(%struct.lua_State* %7, i64 8)
  %8 = bitcast i8* %call3 to i8**
  store i8** %8, i8*** %plib, align 8
  %9 = load i8**, i8*** %plib, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %10, i32 -10000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call i32 @lua_setmetatable(%struct.lua_State* %11, i32 -2)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i8*, i8** %path.addr, align 8
  %call5 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %14, i32 -2)
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settable(%struct.lua_State* %15, i32 -10000)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i8**, i8*** %plib, align 8
  ret i8** %16
}

; Function Attrs: nounwind uwtable
define internal i8* @ll_load(%struct.lua_State* %L, i8* %path) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %path.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i32 0, i32 0), i64 58)
  ret i8* null
}

; Function Attrs: nounwind uwtable
define internal i32 (%struct.lua_State*)* @ll_sym(%struct.lua_State* %L, i8* %lib, i8* %sym) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %lib.addr = alloca i8*, align 8
  %sym.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %lib, i8** %lib.addr, align 8
  store i8* %sym, i8** %sym.addr, align 8
  %0 = load i8*, i8** %lib.addr, align 8
  %1 = load i8*, i8** %sym.addr, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i32 0, i32 0), i64 58)
  ret i32 (%struct.lua_State*)* null
}

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

declare void @lua_gettable(%struct.lua_State*, i32) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare i8* @lua_touserdata(%struct.lua_State*, i32) #1

declare i8* @lua_newuserdata(%struct.lua_State*, i64) #1

declare void @lua_getfield(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #1

declare void @lua_settable(%struct.lua_State*, i32) #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @loader_preload(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %name = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %name, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %1, i32 -10001, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %2, i32 -1)
  %cmp = icmp eq i32 %call1, 5
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %name, align 8
  call void @lua_getfield(%struct.lua_State* %4, i32 -1, i8* %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_type(%struct.lua_State* %6, i32 -1)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %call6 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0), i8* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @loader_Lua(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %filename = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %name, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i8*, i8** %name, align 8
  %call1 = call i8* @findfile(%struct.lua_State* %1, i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call1, i8** %filename, align 8
  %3 = load i8*, i8** %filename, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %filename, align 8
  %call2 = call i32 @luaL_loadfile(%struct.lua_State* %4, i8* %5)
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i8*, i8** %filename, align 8
  call void @loaderror(%struct.lua_State* %6, i8* %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @loader_C(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %funcname = alloca i8*, align 8
  %name = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %name, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i8*, i8** %name, align 8
  %call1 = call i8* @findfile(%struct.lua_State* %1, i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call1, i8** %filename, align 8
  %3 = load i8*, i8** %filename, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %name, align 8
  %call2 = call i8* @mkfuncname(%struct.lua_State* %4, i8* %5)
  store i8* %call2, i8** %funcname, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i8*, i8** %filename, align 8
  %8 = load i8*, i8** %funcname, align 8
  %call3 = call i32 @ll_loadfunc(%struct.lua_State* %6, i8* %7, i8* %8)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i8*, i8** %filename, align 8
  call void @loaderror(%struct.lua_State* %9, i8* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @loader_Croot(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %funcname = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %name = alloca i8*, align 8
  %p = alloca i8*, align 8
  %stat = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %name, align 8
  %1 = load i8*, i8** %name, align 8
  %call1 = call i8* @strchr(i8* %1, i32 46) #5
  store i8* %call1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load i8*, i8** %p, align 8
  %6 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @lua_pushlstring(%struct.lua_State* %3, i8* %4, i64 %sub.ptr.sub)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 -1, i64* null)
  %call3 = call i8* @findfile(%struct.lua_State* %7, i8* %call2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call3, i8** %filename, align 8
  %9 = load i8*, i8** %filename, align 8
  %cmp4 = icmp eq i8* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load i8*, i8** %name, align 8
  %call7 = call i8* @mkfuncname(%struct.lua_State* %10, i8* %11)
  store i8* %call7, i8** %funcname, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i8*, i8** %filename, align 8
  %14 = load i8*, i8** %funcname, align 8
  %call8 = call i32 @ll_loadfunc(%struct.lua_State* %12, i8* %13, i8* %14)
  store i32 %call8, i32* %stat, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.6
  %15 = load i32, i32* %stat, align 4
  %cmp11 = icmp ne i32 %15, 2
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load i8*, i8** %filename, align 8
  call void @loaderror(%struct.lua_State* %16, i8* %17)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load i8*, i8** %name, align 8
  %20 = load i8*, i8** %filename, align 8
  %call14 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0), i8* %19, i8* %20)
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.6
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.end.13, %if.then.5, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @findfile(%struct.lua_State* %L, i8* %name, i8* %pname) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %name.addr = alloca i8*, align 8
  %pname.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %pname, i8** %pname.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i8* @luaL_gsub(%struct.lua_State* %0, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  store i8* %call, i8** %name.addr, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %pname.addr, align 8
  call void @lua_getfield(%struct.lua_State* %2, i32 -10001, i8* %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 -1, i64* null)
  store i8* %call1, i8** %path, align 8
  %5 = load i8*, i8** %path, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i8*, i8** %pname.addr, align 8
  %call2 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), i64 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i8*, i8** %path, align 8
  %call3 = call i8* @pushnexttemplate(%struct.lua_State* %9, i8* %10)
  store i8* %call3, i8** %path, align 8
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i8* @lua_tolstring(%struct.lua_State* %12, i32 -1, i64* null)
  %13 = load i8*, i8** %name.addr, align 8
  %call6 = call i8* @luaL_gsub(%struct.lua_State* %11, i8* %call5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* %13)
  store i8* %call6, i8** %filename, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_remove(%struct.lua_State* %14, i32 -2)
  %15 = load i8*, i8** %filename, align 8
  %call7 = call i32 @readable(i8* %15)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  %16 = load i8*, i8** %filename, align 8
  store i8* %16, i8** %retval
  br label %return

if.end.9:                                         ; preds = %while.body
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i8*, i8** %filename, align 8
  %call10 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* %18)
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_remove(%struct.lua_State* %19, i32 -2)
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_concat(%struct.lua_State* %20, i32 2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.8
  %21 = load i8*, i8** %retval
  ret i8* %21
}

declare i32 @luaL_loadfile(%struct.lua_State*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @loaderror(%struct.lua_State* %L, i8* %filename) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_tolstring(%struct.lua_State* %1, i32 1, i64* null)
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @lua_tolstring(%struct.lua_State* %3, i32 -1, i64* null)
  %call2 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i32 0, i32 0), i8* %call, i8* %2, i8* %call1)
  ret void
}

declare i8* @luaL_gsub(%struct.lua_State*, i8*, i8*, i8*) #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: nounwind uwtable
define internal i8* @pushnexttemplate(%struct.lua_State* %L, i8* %path) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %path.addr = alloca i8*, align 8
  %l = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), align 1
  %conv1 = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %path.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %path.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %path.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %6 = load i8*, i8** %path.addr, align 8
  %7 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), align 1
  %conv6 = sext i8 %7 to i32
  %call = call i8* @strchr(i8* %6, i32 %conv6) #5
  store i8* %call, i8** %l, align 8
  %8 = load i8*, i8** %l, align 8
  %cmp7 = icmp eq i8* %8, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %9 = load i8*, i8** %path.addr, align 8
  %10 = load i8*, i8** %path.addr, align 8
  %call10 = call i64 @strlen(i8* %10) #5
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %call10
  store i8* %add.ptr, i8** %l, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i8*, i8** %path.addr, align 8
  %13 = load i8*, i8** %l, align 8
  %14 = load i8*, i8** %path.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @lua_pushlstring(%struct.lua_State* %11, i8* %12, i64 %sub.ptr.sub)
  %15 = load i8*, i8** %l, align 8
  store i8* %15, i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %16 = load i8*, i8** %retval
  ret i8* %16
}

declare void @lua_remove(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @readable(i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* %2)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare void @lua_concat(%struct.lua_State*, i32) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i8* @mkfuncname(%struct.lua_State* %L, i8* %modname) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %modname.addr = alloca i8*, align 8
  %funcname = alloca i8*, align 8
  %mark = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %modname, i8** %modname.addr, align 8
  %0 = load i8*, i8** %modname.addr, align 8
  %1 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), align 1
  %conv = sext i8 %1 to i32
  %call = call i8* @strchr(i8* %0, i32 %conv) #5
  store i8* %call, i8** %mark, align 8
  %2 = load i8*, i8** %mark, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %mark, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %add.ptr, i8** %modname.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %modname.addr, align 8
  %call1 = call i8* @luaL_gsub(%struct.lua_State* %4, i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  store i8* %call1, i8** %funcname, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i8*, i8** %funcname, align 8
  %call2 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* %7)
  store i8* %call2, i8** %funcname, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_remove(%struct.lua_State* %8, i32 -2)
  %9 = load i8*, i8** %funcname, align 8
  ret i8* %9
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ll_module(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %modname = alloca i8*, align 8
  %loaded = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %modname, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_gettop(%struct.lua_State* %1)
  %add = add nsw i32 %call1, 1
  store i32 %add, i32* %loaded, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %2, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0))
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %loaded, align 4
  %5 = load i8*, i8** %modname, align 8
  call void @lua_getfield(%struct.lua_State* %3, i32 %4, i8* %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_type(%struct.lua_State* %6, i32 -1)
  %cmp = icmp eq i32 %call2, 5
  br i1 %cmp, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %7, i32 -2)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i8*, i8** %modname, align 8
  %call3 = call i8* @luaL_findtable(%struct.lua_State* %8, i32 -10002, i8* %9, i32 1)
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load i8*, i8** %modname, align 8
  %call6 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), i8* %11)
  store i32 %call6, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %12, i32 -1)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %loaded, align 4
  %15 = load i8*, i8** %modname, align 8
  call void @lua_setfield(%struct.lua_State* %13, i32 %14, i8* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %16, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0))
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call8 = call i32 @lua_type(%struct.lua_State* %17, i32 -1)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %18, i32 -2)
  br label %if.end.11

if.else:                                          ; preds = %if.end.7
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %19, i32 -2)
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %21 = load i8*, i8** %modname, align 8
  call void @modinit(%struct.lua_State* %20, i8* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %22, i32 -1)
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @setfenv(%struct.lua_State* %23)
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %25 = load i32, i32* %loaded, align 4
  %sub = sub nsw i32 %25, 1
  call void @dooptions(%struct.lua_State* %24, i32 %sub)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.5
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @ll_require(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %name = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %name, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %1, i32 1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %2, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0))
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i8*, i8** %name, align 8
  call void @lua_getfield(%struct.lua_State* %3, i32 2, i8* %4)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_toboolean(%struct.lua_State* %5, i32 -1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i8* @lua_touserdata(%struct.lua_State* %6, i32 -1)
  %cmp = icmp eq i8* %call2, bitcast (i32* @sentinel_ to i8*)
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %call4 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %entry
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %9, i32 -10001, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i32 @lua_type(%struct.lua_State* %10, i32 -1)
  %cmp7 = icmp eq i32 %call6, 5
  br i1 %cmp7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call9 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), i64 0)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %i, align 4
  call void @lua_rawgeti(%struct.lua_State* %13, i32 -2, i32 %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call11 = call i32 @lua_type(%struct.lua_State* %15, i32 -1)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %for.cond
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call14 = call i8* @lua_tolstring(%struct.lua_State* %18, i32 -2, i64* null)
  %call15 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0), i8* %17, i8* %call14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %for.cond
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %20 = load i8*, i8** %name, align 8
  call void @lua_pushstring(%struct.lua_State* %19, i8* %20)
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %21, i32 1, i32 1)
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call17 = call i32 @lua_type(%struct.lua_State* %22, i32 -1)
  %cmp18 = icmp eq i32 %call17, 6
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  br label %for.end

if.else:                                          ; preds = %if.end.16
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call20 = call i32 @lua_isstring(%struct.lua_State* %23, i32 -1)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_concat(%struct.lua_State* %24, i32 2)
  br label %if.end.24

if.else.23:                                       ; preds = %if.else
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %25, i32 -2)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.19
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlightuserdata(%struct.lua_State* %27, i8* bitcast (i32* @sentinel_ to i8*))
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %29 = load i8*, i8** %name, align 8
  call void @lua_setfield(%struct.lua_State* %28, i32 2, i8* %29)
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %31 = load i8*, i8** %name, align 8
  call void @lua_pushstring(%struct.lua_State* %30, i8* %31)
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %32, i32 1, i32 1)
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call26 = call i32 @lua_type(%struct.lua_State* %33, i32 -1)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %for.end
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %35 = load i8*, i8** %name, align 8
  call void @lua_setfield(%struct.lua_State* %34, i32 2, i8* %35)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %for.end
  %36 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %37 = load i8*, i8** %name, align 8
  call void @lua_getfield(%struct.lua_State* %36, i32 2, i8* %37)
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call30 = call i8* @lua_touserdata(%struct.lua_State* %38, i32 -1)
  %cmp31 = icmp eq i8* %call30, bitcast (i32* @sentinel_ to i8*)
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  %39 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushboolean(%struct.lua_State* %39, i32 1)
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %40, i32 -1)
  %41 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %42 = load i8*, i8** %name, align 8
  call void @lua_setfield(%struct.lua_State* %41, i32 2, i8* %42)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.end
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare i32 @lua_gettop(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define internal void @modinit(%struct.lua_State* %L, i8* %modname) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %modname.addr = alloca i8*, align 8
  %dot = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %modname, i8** %modname.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %1, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0))
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %modname.addr, align 8
  call void @lua_pushstring(%struct.lua_State* %2, i8* %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %4, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0))
  %5 = load i8*, i8** %modname.addr, align 8
  %call = call i8* @strrchr(i8* %5, i32 46) #5
  store i8* %call, i8** %dot, align 8
  %6 = load i8*, i8** %dot, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %modname.addr, align 8
  store i8* %7, i8** %dot, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %dot, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %dot, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i8*, i8** %modname.addr, align 8
  %11 = load i8*, i8** %dot, align 8
  %12 = load i8*, i8** %modname.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @lua_pushlstring(%struct.lua_State* %9, i8* %10, i64 %sub.ptr.sub)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %13, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setfenv(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ar = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_getstack(%struct.lua_State* %0, i32 1, %struct.lua_Debug* %ar)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_getinfo(%struct.lua_State* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), %struct.lua_Debug* %ar)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call i32 @lua_iscfunction(%struct.lua_State* %2, i32 -1)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.3
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %4, i32 -2)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i32 @lua_setfenv(%struct.lua_State* %5, i32 -2)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %6, i32 -2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dooptions(%struct.lua_State* %L, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %i, align 4
  call void @lua_pushvalue(%struct.lua_State* %2, i32 %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %4, i32 -2)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %5, i32 1, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #1

declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) #1

declare i32 @lua_iscfunction(%struct.lua_State*, i32) #1

declare i32 @lua_setfenv(%struct.lua_State*, i32) #1

declare void @lua_call(%struct.lua_State*, i32, i32) #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

declare void @lua_rawgeti(%struct.lua_State*, i32, i32) #1

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) #1

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
