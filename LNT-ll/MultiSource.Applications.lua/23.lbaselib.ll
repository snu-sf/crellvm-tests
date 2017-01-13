; ModuleID = './MultiSource.Applications.lua/23.lbaselib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [10 x i8] c"coroutine\00", align 1
@co_funcs = internal constant [7 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cocreate }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_coresume }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_corunning }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_costatus }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cowrap }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_yield }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@base_funcs = internal constant [25 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_assert }, %struct.luaL_Reg { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_collectgarbage }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_dofile }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_error }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_gcinfo }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_getfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_loadfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_load }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_loadstring }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_next }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_pcall }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_print }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawequal }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawget }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawset }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_select }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_setfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tonumber }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tostring }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_unpack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_xpcall }, %struct.luaL_Reg zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"Lua 5.1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ipairs\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"kv\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"newproxy\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"collectgarbage\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"dofile\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"gcinfo\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"getfenv\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"loadfile\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"loadstring\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"pcall\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"rawequal\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"rawget\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"rawset\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"setfenv\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"tonumber\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"xpcall\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"assertion failed!\00", align 1
@luaB_collectgarbage.opts = internal constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* null], align 16
@.str.35 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"setpause\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"setstepmul\00", align 1
@luaB_collectgarbage.optsnum = internal constant [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7], align 16
@.str.42 = private unnamed_addr constant [27 x i8] c"level must be non-negative\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"invalid level\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"no function environment for tail call at level %d\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"__metatable\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"=(load)\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"too many nested functions\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"reader function must return a string\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"'tostring' must return a string to 'print'\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.52 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@.str.54 = private unnamed_addr constant [52 x i8] c"'setfenv' cannot change environment of given object\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"cannot change a protected metatable\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"base out of range\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"%s: %p\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"too many results to unpack\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"boolean or proxy expected\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"Lua function expected\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"coroutine expected\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"too many arguments to resume\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"cannot resume %s coroutine\00", align 1
@statnames = internal constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0)], align 16
@.str.75 = private unnamed_addr constant [27 x i8] c"too many results to resume\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"dead\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_base(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @base_open(%struct.lua_State* %0)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.luaL_Reg* getelementptr inbounds ([7 x %struct.luaL_Reg], [7 x %struct.luaL_Reg]* @co_funcs, i32 0, i32 0))
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal void @base_open(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %1, i32 -10002, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), %struct.luaL_Reg* getelementptr inbounds ([25 x %struct.luaL_Reg], [25 x %struct.luaL_Reg]* @base_funcs, i32 0, i32 0))
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i64 7)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %4, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @auxopen(%struct.lua_State* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_ipairs, i32 (%struct.lua_State*)* @ipairsaux)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @auxopen(%struct.lua_State* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_pairs, i32 (%struct.lua_State*)* @luaB_next)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %7, i32 0, i32 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %8, i32 -1)
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_setmetatable(%struct.lua_State* %9, i32 -2)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i64 2)
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %11, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushcclosure(%struct.lua_State* %12, i32 (%struct.lua_State*)* @luaB_newproxy, i32 1)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %13, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

declare void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @auxopen(%struct.lua_State* %L, i8* %name, i32 (%struct.lua_State*)* %f, i32 (%struct.lua_State*)* %u) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %name.addr = alloca i8*, align 8
  %f.addr = alloca i32 (%struct.lua_State*)*, align 8
  %u.addr = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 (%struct.lua_State*)* %f, i32 (%struct.lua_State*)** %f.addr, align 8
  store i32 (%struct.lua_State*)* %u, i32 (%struct.lua_State*)** %u.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %u.addr, align 8
  call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %1, i32 0)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %f.addr, align 8
  call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* %3, i32 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %name.addr, align 8
  call void @lua_setfield(%struct.lua_State* %4, i32 -2, i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_ipairs(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %1, i32 -10003)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %2, i32 1)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushinteger(%struct.lua_State* %3, i64 0)
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal i32 @ipairsaux(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %i, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %1, i32 1, i32 5)
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %i, align 4
  %conv1 = sext i32 %4 to i64
  call void @lua_pushinteger(%struct.lua_State* %3, i64 %conv1)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %i, align 4
  call void @lua_rawgeti(%struct.lua_State* %5, i32 1, i32 %6)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_type(%struct.lua_State* %7, i32 -1)
  %cmp = icmp eq i32 %call2, 0
  %cond = select i1 %cmp, i32 0, i32 2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_pairs(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %1, i32 -10003)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %2, i32 1)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %3)
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_next(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %1, i32 2)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_next(%struct.lua_State* %2, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %3)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @luaB_newproxy(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %validproxy = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_newuserdata(%struct.lua_State* %1, i64 0)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_toboolean(%struct.lua_State* %2, i32 1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_type(%struct.lua_State* %3, i32 1)
  %cmp3 = icmp eq i32 %call2, 1
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 0)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %5, i32 -1)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushboolean(%struct.lua_State* %6, i32 1)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawset(%struct.lua_State* %7, i32 -10003)
  br label %if.end.13

if.else.5:                                        ; preds = %if.else
  store i32 0, i32* %validproxy, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i32 @lua_getmetatable(%struct.lua_State* %8, i32 1)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else.5
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawget(%struct.lua_State* %9, i32 -10003)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call8 = call i32 @lua_toboolean(%struct.lua_State* %10, i32 -1)
  store i32 %call8, i32* %validproxy, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %11, i32 -2)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else.5
  %12 = load i32, i32* %validproxy, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call10 = call i32 @luaL_argerror(%struct.lua_State* %13, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %14 = phi i1 [ true, %if.end ], [ %tobool11, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call12 = call i32 @lua_getmetatable(%struct.lua_State* %15, i32 1)
  br label %if.end.13

if.end.13:                                        ; preds = %lor.end, %if.then.4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call15 = call i32 @lua_setmetatable(%struct.lua_State* %16, i32 2)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_assert(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_toboolean(%struct.lua_State* %1, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @luaL_optlstring(%struct.lua_State* %3, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i64* null)
  %call2 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* %call1)
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_gettop(%struct.lua_State* %4)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_collectgarbage(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %o = alloca i32, align 4
  %ex = alloca i32, align 4
  %res = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @luaL_checkoption(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @luaB_collectgarbage.opts, i32 0, i32 0))
  store i32 %call, i32* %o, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i64 @luaL_optinteger(%struct.lua_State* %1, i32 2, i64 0)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %ex, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %o, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %ex, align 4
  %call2 = call i32 @lua_gc(%struct.lua_State* %2, i32 %4, i32 %5)
  store i32 %call2, i32* %res, align 4
  %6 = load i32, i32* %o, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i32 0, i64 %idxprom3
  %7 = load i32, i32* %arrayidx4, align 4
  switch i32 %7, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32 @lua_gc(%struct.lua_State* %8, i32 4, i32 0)
  store i32 %call5, i32* %b, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i32, i32* %res, align 4
  %conv6 = sitofp i32 %10 to double
  %11 = load i32, i32* %b, align 4
  %conv7 = sitofp i32 %11 to double
  %div = fdiv double %conv7, 1.024000e+03
  %add = fadd double %conv6, %div
  call void @lua_pushnumber(%struct.lua_State* %9, double %add)
  store i32 1, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i32, i32* %res, align 4
  call void @lua_pushboolean(%struct.lua_State* %12, i32 %13)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load i32, i32* %res, align 4
  %conv9 = sitofp i32 %15 to double
  call void @lua_pushnumber(%struct.lua_State* %14, double %conv9)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.8, %sw.bb
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_dofile(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %fname = alloca i8*, align 8
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null)
  store i8* %call, i8** %fname, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_gettop(%struct.lua_State* %1)
  store i32 %call1, i32* %n, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %fname, align 8
  %call2 = call i32 @luaL_loadfile(%struct.lua_State* %2, i8* %3)
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_error(%struct.lua_State* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %5, i32 0, i32 -1)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call i32 @lua_gettop(%struct.lua_State* %6)
  %7 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %call4, %7
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_error(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %level = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %level, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %1, i32 1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_isstring(%struct.lua_State* %2, i32 1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %level, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %level, align 4
  call void @luaL_where(%struct.lua_State* %4, i32 %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %6, i32 1)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_concat(%struct.lua_State* %7, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_error(%struct.lua_State* %8)
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_gcinfo(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gc(%struct.lua_State* %1, i32 3, i32 0)
  %conv = sext i32 %call to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %conv)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_getfenv(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @getfunc(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_iscfunction(%struct.lua_State* %1, i32 -1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %2, i32 -10002)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfenv(%struct.lua_State* %3, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_getmetatable(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
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
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @luaL_getmetafield(%struct.lua_State* %3, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_loadfile(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %fname = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null)
  store i8* %call, i8** %fname, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %fname, align 8
  %call1 = call i32 @luaL_loadfile(%struct.lua_State* %2, i8* %3)
  %call2 = call i32 @load_aux(%struct.lua_State* %1, i32 %call1)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_load(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %status = alloca i32, align 4
  %cname = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i64* null)
  store i8* %call, i8** %cname, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %1, i32 1, i32 6)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %2, i32 3)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i8*, i8** %cname, align 8
  %call1 = call i32 @lua_load(%struct.lua_State* %3, i8* (%struct.lua_State*, i8*, i64*)* @generic_reader, i8* null, i8* %4)
  store i32 %call1, i32* %status, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %status, align 4
  %call2 = call i32 @load_aux(%struct.lua_State* %5, i32 %6)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_loadstring(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %l = alloca i64, align 8
  %s = alloca i8*, align 8
  %chunkname = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* %l)
  store i8* %call, i8** %s, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i8*, i8** %s, align 8
  %call1 = call i8* @luaL_optlstring(%struct.lua_State* %1, i32 2, i8* %2, i64* null)
  store i8* %call1, i8** %chunkname, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %s, align 8
  %6 = load i64, i64* %l, align 8
  %7 = load i8*, i8** %chunkname, align 8
  %call2 = call i32 @luaL_loadbuffer(%struct.lua_State* %4, i8* %5, i64 %6, i8* %7)
  %call3 = call i32 @load_aux(%struct.lua_State* %3, i32 %call2)
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_pcall(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %2)
  %sub = sub nsw i32 %call, 1
  %call1 = call i32 @lua_pcall(%struct.lua_State* %1, i32 %sub, i32 -1, i32 0)
  store i32 %call1, i32* %status, align 4
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %4, 0
  %conv = zext i1 %cmp to i32
  call void @lua_pushboolean(%struct.lua_State* %3, i32 %conv)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_insert(%struct.lua_State* %5, i32 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_gettop(%struct.lua_State* %6)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_print(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %1, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %4, i32 -1)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %i, align 4
  call void @lua_pushvalue(%struct.lua_State* %5, i32 %6)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %7, i32 1, i32 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 -1, i64* null)
  store i8* %call1, i8** %s, align 8
  %9 = load i8*, i8** %s, align 8
  %cmp2 = icmp eq i8* %9, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i32 0, i32 0))
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %cmp4 = icmp sgt i32 %11, 1
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), %struct._IO_FILE* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** %s, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fputs(i8* %13, %struct._IO_FILE* %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %15, i32 -2)
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), %struct._IO_FILE* %17)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_rawequal(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %1, i32 2)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_rawequal(%struct.lua_State* %3, i32 1, i32 2)
  call void @lua_pushboolean(%struct.lua_State* %2, i32 %call)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_rawget(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %1, i32 2)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %2, i32 2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawget(%struct.lua_State* %3, i32 1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_rawset(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %1, i32 2)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %2, i32 3)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %3, i32 3)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawset(%struct.lua_State* %4, i32 1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_select(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %1, i32 1)
  %cmp = icmp eq i32 %call1, 4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i8* @lua_tolstring(%struct.lua_State* %2, i32 1, i64* null)
  %3 = load i8, i8* %call2, align 1
  %conv = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv, 35
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %5, 1
  %conv5 = sext i32 %sub to i64
  call void @lua_pushinteger(%struct.lua_State* %4, i64 %conv5)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i64 @luaL_checkinteger(%struct.lua_State* %6, i32 1)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %7, 0
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  %8 = load i32, i32* %n, align 4
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, %9
  store i32 %add, i32* %i, align 4
  br label %if.end.15

if.else.11:                                       ; preds = %if.else
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n, align 4
  %cmp12 = icmp sgt i32 %10, %11
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else.11
  %12 = load i32, i32* %n, align 4
  store i32 %12, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.else.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.10
  %13 = load i32, i32* %i, align 4
  %cmp16 = icmp sle i32 1, %13
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.15
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call18 = call i32 @luaL_argerror(%struct.lua_State* %14, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0))
  %tobool = icmp ne i32 %call18, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.15
  %15 = phi i1 [ true, %if.end.15 ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %15 to i32
  %16 = load i32, i32* %n, align 4
  %17 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %16, %17
  store i32 %sub19, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_setfenv(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @getfunc(%struct.lua_State* %1, i32 0)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %2, i32 2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_isnumber(%struct.lua_State* %3, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call double @lua_tonumber(%struct.lua_State* %4, i32 1)
  %cmp = fcmp oeq double %call1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_pushthread(%struct.lua_State* %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_insert(%struct.lua_State* %6, i32 -2)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_setfenv(%struct.lua_State* %7, i32 -2)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call i32 @lua_iscfunction(%struct.lua_State* %8, i32 -2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i32 @lua_setfenv(%struct.lua_State* %9, i32 -2)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %lor.lhs.false, %if.else
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call9 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.8, %lor.lhs.false
  br label %if.end.10

if.end.10:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_setmetatable(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 2)
  store i32 %call, i32* %t, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %1, i32 1, i32 5)
  %2 = load i32, i32* %t, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %t, align 4
  %cmp1 = icmp eq i32 %3, 5
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @luaL_argerror(%struct.lua_State* %4, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0))
  %tobool = icmp ne i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @luaL_getmetafield(%struct.lua_State* %6, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %8, i32 2)
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i32 @lua_setmetatable(%struct.lua_State* %9, i32 1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_tonumber(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %base = alloca i32, align 4
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 10)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %base, align 4
  %1 = load i32, i32* %base, align 4
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %2, i32 1)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_isnumber(%struct.lua_State* %3, i32 1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call double @lua_tonumber(%struct.lua_State* %5, i32 1)
  call void @lua_pushnumber(%struct.lua_State* %4, double %call4)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.27

if.else:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i8* @luaL_checklstring(%struct.lua_State* %6, i32 1, i64* null)
  store i8* %call5, i8** %s1, align 8
  %7 = load i32, i32* %base, align 4
  %cmp6 = icmp sle i32 2, %7
  br i1 %cmp6, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %if.else
  %8 = load i32, i32* %base, align 4
  %cmp8 = icmp sle i32 %8, 36
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %if.else
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call10 = call i32 @luaL_argerror(%struct.lua_State* %9, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %10 = phi i1 [ true, %land.lhs.true ], [ %tobool11, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  %11 = load i8*, i8** %s1, align 8
  %12 = load i32, i32* %base, align 4
  %call12 = call i64 @strtoul(i8* %11, i8** %s2, i32 %12) #4
  store i64 %call12, i64* %n, align 8
  %13 = load i8*, i8** %s1, align 8
  %14 = load i8*, i8** %s2, align 8
  %cmp13 = icmp ne i8* %13, %14
  br i1 %cmp13, label %if.then.15, label %if.end.26

if.then.15:                                       ; preds = %lor.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.15
  %15 = load i8*, i8** %s2, align 8
  %16 = load i8, i8* %15, align 1
  %conv16 = zext i8 %16 to i32
  %idxprom = sext i32 %conv16 to i64
  %call17 = call i16** @__ctype_b_loc() #5
  %17 = load i16*, i16** %call17, align 8
  %arrayidx = getelementptr inbounds i16, i16* %17, i64 %idxprom
  %18 = load i16, i16* %arrayidx, align 2
  %conv18 = zext i16 %18 to i32
  %and = and i32 %conv18, 8192
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %s2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %s2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i8*, i8** %s2, align 8
  %21 = load i8, i8* %20, align 1
  %conv20 = sext i8 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %while.end
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load i64, i64* %n, align 8
  %conv24 = uitofp i64 %23 to double
  call void @lua_pushnumber(%struct.lua_State* %22, double %conv24)
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %while.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %24)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.23, %if.then.3
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_tostring(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @luaL_callmeta(%struct.lua_State* %1, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %2, i32 1)
  switch i32 %call1, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.3
    i32 1, label %sw.bb.4
    i32 0, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 1, i64* null)
  call void @lua_pushstring(%struct.lua_State* %3, i8* %call2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %5, i32 1)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32 @lua_toboolean(%struct.lua_State* %7, i32 1)
  %tobool6 = icmp ne i32 %call5, 0
  %cond = select i1 %tobool6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0)
  call void @lua_pushstring(%struct.lua_State* %6, i8* %cond)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i64 3)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call8 = call i32 @lua_type(%struct.lua_State* %11, i32 1)
  %call9 = call i8* @lua_typename(%struct.lua_State* %10, i32 %call8)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call10 = call i8* @lua_topointer(%struct.lua_State* %12, i32 1)
  %call11 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* %call9, i8* %call10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.4, %sw.bb.3, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_type(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %3, i32 1)
  %call1 = call i8* @lua_typename(%struct.lua_State* %2, i32 %call)
  call void @lua_pushstring(%struct.lua_State* %1, i8* %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_unpack(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %i = alloca i32, align 4
  %e = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @luaL_optinteger(%struct.lua_State* %1, i32 2, i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %i, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %2, i32 3)
  %cmp = icmp sle i32 %call1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i64 @lua_objlen(%struct.lua_State* %3, i32 1)
  %conv4 = trunc i64 %call3 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 3)
  %conv6 = trunc i64 %call5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ %conv6, %cond.false ]
  store i32 %cond, i32* %e, align 4
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %e, align 4
  %cmp7 = icmp sgt i32 %5, %6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %7 = load i32, i32* %e, align 4
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, %8
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %n, align 4
  %9 = load i32, i32* %n, align 4
  %cmp9 = icmp sle i32 %9, 0
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load i32, i32* %n, align 4
  %call11 = call i32 @lua_checkstack(%struct.lua_State* %10, i32 %11)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call13 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i32 0, i32 0))
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %i, align 4
  call void @lua_rawgeti(%struct.lua_State* %13, i32 1, i32 %14)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.14
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i32, i32* %e, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i32, i32* %i, align 4
  call void @lua_rawgeti(%struct.lua_State* %17, i32 1, i32 %18)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %n, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.12, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_xpcall(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %0, i32 2)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %1, i32 2)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_insert(%struct.lua_State* %2, i32 1)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_pcall(%struct.lua_State* %3, i32 0, i32 -1, i32 1)
  store i32 %call, i32* %status, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %5, 0
  %conv = zext i1 %cmp to i32
  call void @lua_pushboolean(%struct.lua_State* %4, i32 %conv)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_replace(%struct.lua_State* %6, i32 1)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_gettop(%struct.lua_State* %7)
  ret i32 %call1
}

declare void @luaL_checkany(%struct.lua_State*, i32) #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare i32 @lua_gettop(%struct.lua_State*) #1

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare i32 @lua_gc(%struct.lua_State*, i32, i32) #1

declare void @lua_pushnumber(%struct.lua_State*, double) #1

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

declare i32 @luaL_loadfile(%struct.lua_State*, i8*) #1

declare i32 @lua_error(%struct.lua_State*) #1

declare void @lua_call(%struct.lua_State*, i32, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

declare void @luaL_where(%struct.lua_State*, i32) #1

declare void @lua_concat(%struct.lua_State*, i32) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @getfunc(%struct.lua_State* %L, i32 %opt) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %opt.addr = alloca i32, align 4
  %ar = alloca %struct.lua_Debug, align 8
  %level = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %opt, i32* %opt.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 1)
  %cmp = icmp eq i32 %call, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %1, i32 1)
  br label %if.end.20

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %opt.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i64 @luaL_optinteger(%struct.lua_State* %3, i32 1, i64 1)
  %conv = trunc i64 %call1 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 1)
  %conv3 = trunc i64 %call2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv3, %cond.false ]
  store i32 %cond, i32* %level, align 4
  %5 = load i32, i32* %level, align 4
  %cmp4 = icmp sge i32 %5, 0
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i32 @luaL_argerror(%struct.lua_State* %6, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0))
  %tobool7 = icmp ne i32 %call6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %7 = phi i1 [ true, %cond.end ], [ %tobool7, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %level, align 4
  %call8 = call i32 @lua_getstack(%struct.lua_State* %8, i32 %9, %struct.lua_Debug* %ar)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.end
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call12 = call i32 @luaL_argerror(%struct.lua_State* %10, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.11, %lor.end
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call13 = call i32 @lua_getinfo(%struct.lua_State* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), %struct.lua_Debug* %ar)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call14 = call i32 @lua_type(%struct.lua_State* %12, i32 -1)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %level, align 4
  %call18 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i32 0, i32 0), i32 %14)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then
  ret void
}

declare i32 @lua_iscfunction(%struct.lua_State*, i32) #1

declare void @lua_getfenv(%struct.lua_State*, i32) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #1

declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #1

declare void @lua_pushnil(%struct.lua_State*) #1

declare i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_aux(%struct.lua_State* %L, i32 %status) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %status.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_insert(%struct.lua_State* %2, i32 -2)
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare void @lua_insert(%struct.lua_State*, i32) #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @generic_reader(%struct.lua_State* %L, i8* %ud, i64* %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i8*, i8** %ud.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkstack(%struct.lua_State* %1, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0))
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %2, i32 1)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %3, i32 0, i32 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %4, i32 -1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %size.addr, align 8
  store i64 0, i64* %5, align 8
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_isstring(%struct.lua_State* %6, i32 -1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_replace(%struct.lua_State* %7, i32 3)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i64*, i64** %size.addr, align 8
  %call3 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 3, i64* %9)
  store i8* %call3, i8** %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.2, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #1

declare void @lua_replace(%struct.lua_State*, i32) #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

declare i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) #1

declare i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) #1

declare void @lua_getfield(%struct.lua_State*, i32, i8*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @lua_rawequal(%struct.lua_State*, i32, i32) #1

declare void @lua_rawget(%struct.lua_State*, i32) #1

declare void @lua_rawset(%struct.lua_State*, i32) #1

declare i32 @lua_isnumber(%struct.lua_State*, i32) #1

declare double @lua_tonumber(%struct.lua_State*, i32) #1

declare i32 @lua_pushthread(%struct.lua_State*) #1

declare i32 @lua_setfenv(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

declare i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushstring(%struct.lua_State*, i8*) #1

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

declare i8* @lua_typename(%struct.lua_State*, i32) #1

declare i8* @lua_topointer(%struct.lua_State*, i32) #1

declare i64 @lua_objlen(%struct.lua_State*, i32) #1

declare i32 @lua_checkstack(%struct.lua_State*, i32) #1

declare void @lua_rawgeti(%struct.lua_State*, i32, i32) #1

declare i32 @lua_next(%struct.lua_State*, i32) #1

declare i8* @lua_newuserdata(%struct.lua_State*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @luaB_cocreate(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %NL = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @lua_newthread(%struct.lua_State* %0)
  store %struct.lua_State* %call, %struct.lua_State** %NL, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %1, i32 1)
  %cmp = icmp eq i32 %call1, 6
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_iscfunction(%struct.lua_State* %2, i32 1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @luaL_argerror(%struct.lua_State* %3, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %4 = phi i1 [ true, %land.lhs.true ], [ %tobool4, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %5, i32 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %NL, align 8
  call void @lua_xmove(%struct.lua_State* %6, %struct.lua_State* %7, i32 1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_coresume(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %co = alloca %struct.lua_State*, align 8
  %r = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1)
  store %struct.lua_State* %call, %struct.lua_State** %co, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %co, align 8
  %tobool = icmp ne %struct.lua_State* %1, null
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @luaL_argerror(%struct.lua_State* %2, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %co, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_gettop(%struct.lua_State* %6)
  %sub = sub nsw i32 %call3, 1
  %call4 = call i32 @auxresume(%struct.lua_State* %4, %struct.lua_State* %5, i32 %sub)
  store i32 %call4, i32* %r, align 4
  %7 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushboolean(%struct.lua_State* %8, i32 0)
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_insert(%struct.lua_State* %9, i32 -2)
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.end
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushboolean(%struct.lua_State* %10, i32 1)
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i32, i32* %r, align 4
  %add = add nsw i32 %12, 1
  %sub5 = sub nsw i32 0, %add
  call void @lua_insert(%struct.lua_State* %11, i32 %sub5)
  %13 = load i32, i32* %r, align 4
  %add6 = add nsw i32 %13, 1
  store i32 %add6, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_corunning(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_pushthread(%struct.lua_State* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_costatus(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %co = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1)
  store %struct.lua_State* %call, %struct.lua_State** %co, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %co, align 8
  %tobool = icmp ne %struct.lua_State* %1, null
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @luaL_argerror(%struct.lua_State* %2, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %co, align 8
  %call3 = call i32 @costatus(%struct.lua_State* %5, %struct.lua_State* %6)
  %idxprom = sext i32 %call3 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  call void @lua_pushstring(%struct.lua_State* %4, i8* %7)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_cowrap(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @luaB_cocreate(%struct.lua_State* %0)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushcclosure(%struct.lua_State* %1, i32 (%struct.lua_State*)* @luaB_auxwrap, i32 1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_yield(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %1)
  %call1 = call i32 @lua_yield(%struct.lua_State* %0, i32 %call)
  ret i32 %call1
}

declare %struct.lua_State* @lua_newthread(%struct.lua_State*) #1

declare void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) #1

declare %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @auxresume(%struct.lua_State* %L, %struct.lua_State* %co, i32 %narg) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %co.addr = alloca %struct.lua_State*, align 8
  %narg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %nres = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_State* %co, %struct.lua_State** %co.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %call = call i32 @costatus(%struct.lua_State* %0, %struct.lua_State* %1)
  store i32 %call, i32* %status, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %3 = load i32, i32* %narg.addr, align 4
  %call1 = call i32 @lua_checkstack(%struct.lua_State* %2, i32 %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %5, 1
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %status, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %call4 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i32 0, i32 0), i8* %8)
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %11 = load i32, i32* %narg.addr, align 4
  call void @lua_xmove(%struct.lua_State* %9, %struct.lua_State* %10, i32 %11)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  call void @lua_setlevel(%struct.lua_State* %12, %struct.lua_State* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %15 = load i32, i32* %narg.addr, align 4
  %call6 = call i32 @lua_resume(%struct.lua_State* %14, i32 %15)
  store i32 %call6, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %17 = load i32, i32* %status, align 4
  %cmp8 = icmp eq i32 %17, 1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.5
  %18 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %call10 = call i32 @lua_gettop(%struct.lua_State* %18)
  store i32 %call10, i32* %nres, align 4
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %20 = load i32, i32* %nres, align 4
  %add = add nsw i32 %20, 1
  %call11 = call i32 @lua_checkstack(%struct.lua_State* %19, i32 %add)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.then.9
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.9
  %22 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %24 = load i32, i32* %nres, align 4
  call void @lua_xmove(%struct.lua_State* %22, %struct.lua_State* %23, i32 %24)
  %25 = load i32, i32* %nres, align 4
  store i32 %25, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %26 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_xmove(%struct.lua_State* %26, %struct.lua_State* %27, i32 1)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.15, %if.then.3
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @costatus(%struct.lua_State* %L, %struct.lua_State* %co) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %co.addr = alloca %struct.lua_State*, align 8
  %ar = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_State* %co, %struct.lua_State** %co.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %cmp = icmp eq %struct.lua_State* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %call = call i32 @lua_status(%struct.lua_State* %2)
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %3 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %call2 = call i32 @lua_getstack(%struct.lua_State* %3, i32 0, %struct.lua_Debug* %ar)
  %cmp3 = icmp sgt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %sw.bb.1
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.1
  %4 = load %struct.lua_State*, %struct.lua_State** %co.addr, align 8
  %call5 = call i32 @lua_gettop(%struct.lua_State* %4)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  store i32 3, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else.8, %if.then.7, %if.then.4, %sw.bb, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare void @lua_setlevel(%struct.lua_State*, %struct.lua_State*) #1

declare i32 @lua_resume(%struct.lua_State*, i32) #1

declare i32 @lua_status(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define internal i32 @luaB_auxwrap(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %co = alloca %struct.lua_State*, align 8
  %r = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 -10003)
  store %struct.lua_State* %call, %struct.lua_State** %co, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %co, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_gettop(%struct.lua_State* %3)
  %call2 = call i32 @auxresume(%struct.lua_State* %1, %struct.lua_State* %2, i32 %call1)
  store i32 %call2, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_isstring(%struct.lua_State* %5, i32 -1)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_where(%struct.lua_State* %6, i32 1)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_insert(%struct.lua_State* %7, i32 -2)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_concat(%struct.lua_State* %8, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32 @lua_error(%struct.lua_State* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load i32, i32* %r, align 4
  ret i32 %10
}

declare i32 @lua_yield(%struct.lua_State*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
