; ModuleID = './MultiSource.Applications.lua/13.linit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@lualibs = internal constant [9 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_base }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_package }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_table }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_io }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_os }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_string }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_math }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_debug }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"debug\00", align 1

; Function Attrs: nounwind uwtable
define void @luaL_openlibs(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %lib = alloca %struct.luaL_Reg*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.luaL_Reg* getelementptr inbounds ([9 x %struct.luaL_Reg], [9 x %struct.luaL_Reg]* @lualibs, i32 0, i32 0), %struct.luaL_Reg** %lib, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.luaL_Reg*, %struct.luaL_Reg** %lib, align 8
  %func = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %0, i32 0, i32 1
  %1 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %func, align 8
  %tobool = icmp ne i32 (%struct.lua_State*)* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.luaL_Reg*, %struct.luaL_Reg** %lib, align 8
  %func1 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %3, i32 0, i32 1
  %4 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %func1, align 8
  call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* %4, i32 0)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.luaL_Reg*, %struct.luaL_Reg** %lib, align 8
  %name = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  call void @lua_pushstring(%struct.lua_State* %5, i8* %7)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %8, i32 1, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.luaL_Reg*, %struct.luaL_Reg** %lib, align 8
  %incdec.ptr = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %9, i32 1
  store %struct.luaL_Reg* %incdec.ptr, %struct.luaL_Reg** %lib, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

declare void @lua_pushstring(%struct.lua_State*, i8*) #1

declare void @lua_call(%struct.lua_State*, i32, i32) #1

declare i32 @luaopen_base(%struct.lua_State*) #1

declare i32 @luaopen_package(%struct.lua_State*) #1

declare i32 @luaopen_table(%struct.lua_State*) #1

declare i32 @luaopen_io(%struct.lua_State*) #1

declare i32 @luaopen_os(%struct.lua_State*) #1

declare i32 @luaopen_string(%struct.lua_State*) #1

declare i32 @luaopen_math(%struct.lua_State*) #1

declare i32 @luaopen_debug(%struct.lua_State*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
