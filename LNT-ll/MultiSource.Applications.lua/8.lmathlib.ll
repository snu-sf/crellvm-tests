; ModuleID = './MultiSource.Applications.lua/8.lmathlib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@.str = private unnamed_addr constant [5 x i8] c"math\00", align 1
@mathlib = internal constant [29 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @math_abs }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @math_acos }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @math_asin }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @math_atan2 }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @math_atan }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ceil }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @math_cosh }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @math_cos }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @math_deg }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @math_exp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @math_floor }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @math_fmod }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @math_frexp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ldexp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.lua_State*)* @math_log10 }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.lua_State*)* @math_log }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.lua_State*)* @math_max }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.lua_State*)* @math_min }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.lua_State*)* @math_modf }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.lua_State*)* @math_pow }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.lua_State*)* @math_rad }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.lua_State*)* @math_random }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.lua_State*)* @math_randomseed }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sinh }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sin }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sqrt }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.lua_State*)* @math_tanh }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 (%struct.lua_State*)* @math_tan }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"deg\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"frexp\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"modf\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"rad\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"randomseed\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_math(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.luaL_Reg* getelementptr inbounds ([29 x %struct.luaL_Reg], [29 x %struct.luaL_Reg]* @mathlib, i32 0, i32 0))
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnumber(%struct.lua_State* %1, double 0x400921FB54442D18)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %2, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnumber(%struct.lua_State* %3, double 0x7FF0000000000000)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %4, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %5, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %6, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  ret i32 1
}

declare void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) #1

declare void @lua_pushnumber(%struct.lua_State*, double) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_getfield(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @math_abs(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @fabs(double %call) #4
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_acos(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @acos(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_asin(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @asin(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_atan2(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call double @luaL_checknumber(%struct.lua_State* %2, i32 2)
  %call2 = call double @atan2(double %call, double %call1) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_atan(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @atan(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_ceil(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @ceil(double %call) #4
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_cosh(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @cosh(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_cos(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @cos(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_deg(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %div = fdiv double %call, 0x3F91DF46A2529D39
  call void @lua_pushnumber(%struct.lua_State* %0, double %div)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_exp(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @exp(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_floor(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @floor(double %call) #4
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_fmod(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call double @luaL_checknumber(%struct.lua_State* %2, i32 2)
  %call2 = call double @fmod(double %call, double %call1) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_frexp(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %e = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @frexp(double %call, i32* %e) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %e, align 4
  %conv = sext i32 %3 to i64
  call void @lua_pushinteger(%struct.lua_State* %2, i64 %conv)
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @math_ldexp(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i64 @luaL_checkinteger(%struct.lua_State* %2, i32 2)
  %conv = trunc i64 %call1 to i32
  %call2 = call double @ldexp(double %call, i32 %conv) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_log10(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @log10(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_log(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @log(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_max(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %n = alloca i32, align 4
  %dmax = alloca double, align 8
  %i = alloca i32, align 4
  %d = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  store double %call1, double* %dmax, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call double @luaL_checknumber(%struct.lua_State* %4, i32 %5)
  store double %call2, double* %d, align 8
  %6 = load double, double* %d, align 8
  %7 = load double, double* %dmax, align 8
  %cmp3 = fcmp ogt double %6, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load double, double* %d, align 8
  store double %8, double* %dmax, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load double, double* %dmax, align 8
  call void @lua_pushnumber(%struct.lua_State* %10, double %11)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_min(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %n = alloca i32, align 4
  %dmin = alloca double, align 8
  %i = alloca i32, align 4
  %d = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  store double %call1, double* %dmin, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call double @luaL_checknumber(%struct.lua_State* %4, i32 %5)
  store double %call2, double* %d, align 8
  %6 = load double, double* %d, align 8
  %7 = load double, double* %dmin, align 8
  %cmp3 = fcmp olt double %6, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load double, double* %d, align 8
  store double %8, double* %dmin, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load double, double* %dmin, align 8
  call void @lua_pushnumber(%struct.lua_State* %10, double %11)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_modf(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ip = alloca double, align 8
  %fp = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %0, i32 1)
  %call1 = call double @modf(double %call, double* %ip) #5
  store double %call1, double* %fp, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load double, double* %ip, align 8
  call void @lua_pushnumber(%struct.lua_State* %1, double %2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load double, double* %fp, align 8
  call void @lua_pushnumber(%struct.lua_State* %3, double %4)
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @math_pow(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call double @luaL_checknumber(%struct.lua_State* %2, i32 2)
  %call2 = call double @pow(double %call, double %call1) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_rad(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %mul = fmul double %call, 0x3F91DF46A2529D39
  call void @lua_pushnumber(%struct.lua_State* %0, double %mul)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_random(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %r = alloca double, align 8
  %u = alloca i32, align 4
  %l = alloca i32, align 4
  %u12 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %call = call i32 @rand() #5
  %rem = srem i32 %call, 2147483647
  %conv = sitofp i32 %rem to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  store double %div, double* %r, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_gettop(%struct.lua_State* %0)
  switch i32 %call1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load double, double* %r, align 8
  call void @lua_pushnumber(%struct.lua_State* %1, double %2)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i64 @luaL_checkinteger(%struct.lua_State* %3, i32 1)
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %u, align 4
  %4 = load i32, i32* %u, align 4
  %cmp = icmp sle i32 1, %4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.2
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i32 @luaL_argerror(%struct.lua_State* %5, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0))
  %tobool = icmp ne i32 %call6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.2
  %6 = phi i1 [ true, %sw.bb.2 ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load double, double* %r, align 8
  %9 = load i32, i32* %u, align 4
  %conv7 = sitofp i32 %9 to double
  %mul = fmul double %8, %conv7
  %call8 = call double @floor(double %mul) #4
  %add = fadd double %call8, 1.000000e+00
  call void @lua_pushnumber(%struct.lua_State* %7, double %add)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call10 = call i64 @luaL_checkinteger(%struct.lua_State* %10, i32 1)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, i32* %l, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call13 = call i64 @luaL_checkinteger(%struct.lua_State* %11, i32 2)
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, i32* %u12, align 4
  %12 = load i32, i32* %l, align 4
  %13 = load i32, i32* %u12, align 4
  %cmp15 = icmp sle i32 %12, %13
  br i1 %cmp15, label %lor.end.20, label %lor.rhs.17

lor.rhs.17:                                       ; preds = %sw.bb.9
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call18 = call i32 @luaL_argerror(%struct.lua_State* %14, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0))
  %tobool19 = icmp ne i32 %call18, 0
  br label %lor.end.20

lor.end.20:                                       ; preds = %lor.rhs.17, %sw.bb.9
  %15 = phi i1 [ true, %sw.bb.9 ], [ %tobool19, %lor.rhs.17 ]
  %lor.ext21 = zext i1 %15 to i32
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load double, double* %r, align 8
  %18 = load i32, i32* %u12, align 4
  %19 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %18, %19
  %add22 = add nsw i32 %sub, 1
  %conv23 = sitofp i32 %add22 to double
  %mul24 = fmul double %17, %conv23
  %call25 = call double @floor(double %mul24) #4
  %20 = load i32, i32* %l, align 4
  %conv26 = sitofp i32 %20 to double
  %add27 = fadd double %call25, %conv26
  call void @lua_pushnumber(%struct.lua_State* %16, double %add27)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call28 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0))
  store i32 %call28, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %lor.end.20, %lor.end, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @math_randomseed(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1)
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @math_sinh(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @sinh(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_sin(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @sin(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_sqrt(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @sqrt(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_tanh(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @tanh(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_tan(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call double @luaL_checknumber(%struct.lua_State* %1, i32 1)
  %call1 = call double @tan(double %call) #5
  call void @lua_pushnumber(%struct.lua_State* %0, double %call1)
  ret i32 1
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare double @luaL_checknumber(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare double @acos(double) #3

; Function Attrs: nounwind
declare double @asin(double) #3

; Function Attrs: nounwind
declare double @atan2(double, double) #3

; Function Attrs: nounwind
declare double @atan(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

; Function Attrs: nounwind
declare double @cosh(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind
declare double @fmod(double, double) #3

; Function Attrs: nounwind
declare double @frexp(double, i32*) #3

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

; Function Attrs: nounwind
declare double @ldexp(double, i32) #3

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare double @log10(double) #3

; Function Attrs: nounwind
declare double @log(double) #3

declare i32 @lua_gettop(%struct.lua_State*) #1

; Function Attrs: nounwind
declare double @modf(double, double*) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind
declare i32 @rand() #3

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind
declare double @sinh(double) #3

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare double @tanh(double) #3

; Function Attrs: nounwind
declare double @tan(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
