; ModuleID = './MultiSource.Applications.lua/21.ltablib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [8192 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"table\00", align 1
@tab_funcs = internal constant [10 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @tconcat }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @foreach }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @foreachi }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @getn }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @maxn }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @tinsert }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @tremove }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @setn }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @sort }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"foreachi\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"getn\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"maxn\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"setn\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"invalid value (%s) at index %d in table for 'concat'\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"wrong number of arguments to 'insert'\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"'setn' is obsolete\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"invalid order function for sorting\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_table(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.luaL_Reg* getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @tab_funcs, i32 0, i32 0))
  ret i32 1
}

declare void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) #1

; Function Attrs: nounwind uwtable
define internal i32 @tconcat(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  %lsep = alloca i64, align 8
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %sep = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i64* %lsep)
  store i8* %call, i8** %sep, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %1, i32 1, i32 5)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i64 @luaL_optinteger(%struct.lua_State* %2, i32 3, i64 1)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %i, align 4
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_type(%struct.lua_State* %3, i32 4)
  %cmp = icmp sle i32 %call2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call i64 @lua_objlen(%struct.lua_State* %4, i32 1)
  %conv5 = trunc i64 %call4 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i64 @luaL_checkinteger(%struct.lua_State* %5, i32 4)
  %conv7 = trunc i64 %call6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv7, %cond.false ]
  store i32 %cond, i32* %last, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %6, %struct.luaL_Buffer* %b)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %last, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i32, i32* %i, align 4
  call void @addfield(%struct.lua_State* %9, %struct.luaL_Buffer* %b, i32 %10)
  %11 = load i8*, i8** %sep, align 8
  %12 = load i64, i64* %lsep, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %11, i64 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %last, align 4
  %cmp10 = icmp eq i32 %14, %15
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load i32, i32* %i, align 4
  call void @addfield(%struct.lua_State* %16, %struct.luaL_Buffer* %b, i32 %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @foreach(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %1, i32 2, i32 6)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %2)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_next(%struct.lua_State* %3, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %4, i32 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %5, i32 -3)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %6, i32 -3)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %7, i32 2, i32 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %8, i32 -1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %9, i32 -3)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @foreachi(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @lua_objlen(%struct.lua_State* %1, i32 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %2, i32 2, i32 6)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %5, i32 2)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %i, align 4
  %conv2 = sext i32 %7 to i64
  call void @lua_pushinteger(%struct.lua_State* %6, i64 %conv2)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %i, align 4
  call void @lua_rawgeti(%struct.lua_State* %8, i32 1, i32 %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %10, i32 2, i32 1)
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_type(%struct.lua_State* %11, i32 -1)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %12, i32 -2)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @getn(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %1, i32 1, i32 5)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @lua_objlen(%struct.lua_State* %2, i32 1)
  %conv = trunc i64 %call to i32
  %conv1 = sext i32 %conv to i64
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %conv1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @maxn(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %max = alloca double, align 8
  %v = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store double 0.000000e+00, double* %max, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_next(%struct.lua_State* %2, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %3, i32 -2)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %4, i32 -1)
  %cmp = icmp eq i32 %call1, 3
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %while.body
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call double @lua_tonumber(%struct.lua_State* %5, i32 -1)
  store double %call2, double* %v, align 8
  %6 = load double, double* %v, align 8
  %7 = load double, double* %max, align 8
  %cmp3 = fcmp ogt double %6, %7
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load double, double* %v, align 8
  store double %8, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load double, double* %max, align 8
  call void @lua_pushnumber(%struct.lua_State* %9, double %10)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tinsert(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %e = alloca i32, align 4
  %pos = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @lua_objlen(%struct.lua_State* %1, i32 1)
  %conv = trunc i64 %call to i32
  %add = add nsw i32 %conv, 1
  store i32 %add, i32* %e, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_gettop(%struct.lua_State* %2)
  switch i32 %call1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, i32* %e, align 4
  store i32 %3, i32* %pos, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 2)
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %pos, align 4
  %5 = load i32, i32* %pos, align 4
  %6 = load i32, i32* %e, align 4
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %7 = load i32, i32* %pos, align 4
  store i32 %7, i32* %e, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  %8 = load i32, i32* %e, align 4
  store i32 %8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %pos, align 4
  %cmp6 = icmp sgt i32 %9, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  call void @lua_rawgeti(%struct.lua_State* %11, i32 1, i32 %sub)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %i, align 4
  call void @lua_rawseti(%struct.lua_State* %13, i32 1, i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0))
  store i32 %call8, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %for.end, %sw.bb
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i32, i32* %pos, align 4
  call void @lua_rawseti(%struct.lua_State* %17, i32 1, i32 %18)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @tremove(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %e = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @lua_objlen(%struct.lua_State* %1, i32 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %e, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %e, align 4
  %conv1 = sext i32 %3 to i64
  %call2 = call i64 @luaL_optinteger(%struct.lua_State* %2, i32 2, i64 %conv1)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %pos, align 4
  %4 = load i32, i32* %pos, align 4
  %cmp = icmp sle i32 1, %4
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %pos, align 4
  %6 = load i32, i32* %e, align 4
  %cmp5 = icmp sle i32 %5, %6
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %pos, align 4
  call void @lua_rawgeti(%struct.lua_State* %7, i32 1, i32 %8)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %pos, align 4
  %10 = load i32, i32* %e, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i32, i32* %pos, align 4
  %add = add nsw i32 %12, 1
  call void @lua_rawgeti(%struct.lua_State* %11, i32 1, i32 %add)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %pos, align 4
  call void @lua_rawseti(%struct.lua_State* %13, i32 1, i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i32, i32* %e, align 4
  call void @lua_rawseti(%struct.lua_State* %17, i32 1, i32 %18)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @setn(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %2, i32 1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @sort(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @lua_objlen(%struct.lua_State* %1, i32 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkstack(%struct.lua_State* %2, i32 40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0))
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %3, i32 2)
  %cmp = icmp sle i32 %call1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %4, i32 2, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %5, i32 2)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %n, align 4
  call void @auxsort(%struct.lua_State* %6, i32 1, i32 %7)
  ret i32 0
}

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare i64 @lua_objlen(%struct.lua_State*, i32) #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #1

; Function Attrs: nounwind uwtable
define internal void @addfield(%struct.lua_State* %L, %struct.luaL_Buffer* %b, i32 %i) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %b.addr = alloca %struct.luaL_Buffer*, align 8
  %i.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.luaL_Buffer* %b, %struct.luaL_Buffer** %b.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_isstring(%struct.lua_State* %2, i32 -1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_type(%struct.lua_State* %5, i32 -1)
  %call2 = call i8* @lua_typename(%struct.lua_State* %4, i32 %call1)
  %6 = load i32, i32* %i.addr, align 4
  %call3 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), i8* %call2, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  call void @luaL_addvalue(%struct.luaL_Buffer* %7)
  ret void
}

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) #1

declare void @lua_rawgeti(%struct.lua_State*, i32, i32) #1

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare i8* @lua_typename(%struct.lua_State*, i32) #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) #1

declare void @lua_pushnil(%struct.lua_State*) #1

declare i32 @lua_next(%struct.lua_State*, i32) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_call(%struct.lua_State*, i32, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare double @lua_tonumber(%struct.lua_State*, i32) #1

declare void @lua_pushnumber(%struct.lua_State*, double) #1

declare i32 @lua_gettop(%struct.lua_State*) #1

declare void @lua_rawseti(%struct.lua_State*, i32, i32) #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @auxsort(%struct.lua_State* %L, i32 %l, i32 %u) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %l.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %u, i32* %u.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.52, %entry
  %0 = load i32, i32* %l.addr, align 4
  %1 = load i32, i32* %u.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end.53

while.body:                                       ; preds = %while.cond
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %l.addr, align 4
  call void @lua_rawgeti(%struct.lua_State* %2, i32 1, i32 %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %u.addr, align 4
  call void @lua_rawgeti(%struct.lua_State* %4, i32 1, i32 %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @sort_comp(%struct.lua_State* %6, i32 -1, i32 -2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %l.addr, align 4
  %9 = load i32, i32* %u.addr, align 4
  call void @set2(%struct.lua_State* %7, i32 %8, i32 %9)
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %10, i32 -3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %u.addr, align 4
  %12 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %11, %12
  %cmp1 = icmp eq i32 %sub, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %while.end.53

if.end.3:                                         ; preds = %if.end
  %13 = load i32, i32* %l.addr, align 4
  %14 = load i32, i32* %u.addr, align 4
  %add = add nsw i32 %13, %14
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %i, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load i32, i32* %i, align 4
  call void @lua_rawgeti(%struct.lua_State* %15, i32 1, i32 %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i32, i32* %l.addr, align 4
  call void @lua_rawgeti(%struct.lua_State* %17, i32 1, i32 %18)
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call i32 @sort_comp(%struct.lua_State* %19, i32 -2, i32 -1)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.3
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %l.addr, align 4
  call void @set2(%struct.lua_State* %20, i32 %21, i32 %22)
  br label %if.end.13

if.else.7:                                        ; preds = %if.end.3
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %23, i32 -2)
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %25 = load i32, i32* %u.addr, align 4
  call void @lua_rawgeti(%struct.lua_State* %24, i32 1, i32 %25)
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call8 = call i32 @sort_comp(%struct.lua_State* %26, i32 -1, i32 -2)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.7
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %u.addr, align 4
  call void @set2(%struct.lua_State* %27, i32 %28, i32 %29)
  br label %if.end.12

if.else.11:                                       ; preds = %if.else.7
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %30, i32 -3)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.6
  %31 = load i32, i32* %u.addr, align 4
  %32 = load i32, i32* %l.addr, align 4
  %sub14 = sub nsw i32 %31, %32
  %cmp15 = icmp eq i32 %sub14, 2
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  br label %while.end.53

if.end.17:                                        ; preds = %if.end.13
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %34 = load i32, i32* %i, align 4
  call void @lua_rawgeti(%struct.lua_State* %33, i32 1, i32 %34)
  %35 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %35, i32 -1)
  %36 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %37 = load i32, i32* %u.addr, align 4
  %sub18 = sub nsw i32 %37, 1
  call void @lua_rawgeti(%struct.lua_State* %36, i32 1, i32 %sub18)
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %u.addr, align 4
  %sub19 = sub nsw i32 %40, 1
  call void @set2(%struct.lua_State* %38, i32 %39, i32 %sub19)
  %41 = load i32, i32* %l.addr, align 4
  store i32 %41, i32* %i, align 4
  %42 = load i32, i32* %u.addr, align 4
  %sub20 = sub nsw i32 %42, 1
  store i32 %sub20, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.40, %if.end.17
  br label %while.cond.21

while.cond.21:                                    ; preds = %if.end.28, %for.cond
  %43 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  call void @lua_rawgeti(%struct.lua_State* %43, i32 1, i32 %inc)
  %45 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call22 = call i32 @sort_comp(%struct.lua_State* %45, i32 -1, i32 -2)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %while.body.24, label %while.end

while.body.24:                                    ; preds = %while.cond.21
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %u.addr, align 4
  %cmp25 = icmp sgt i32 %46, %47
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %while.body.24
  %48 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call27 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %while.body.24
  %49 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %49, i32 -2)
  br label %while.cond.21

while.end:                                        ; preds = %while.cond.21
  br label %while.cond.29

while.cond.29:                                    ; preds = %if.end.36, %while.end
  %50 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %51 = load i32, i32* %j, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %j, align 4
  call void @lua_rawgeti(%struct.lua_State* %50, i32 1, i32 %dec)
  %52 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call30 = call i32 @sort_comp(%struct.lua_State* %52, i32 -3, i32 -1)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %while.body.32, label %while.end.37

while.body.32:                                    ; preds = %while.cond.29
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %l.addr, align 4
  %cmp33 = icmp slt i32 %53, %54
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %while.body.32
  %55 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call35 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %while.body.32
  %56 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %56, i32 -2)
  br label %while.cond.29

while.end.37:                                     ; preds = %while.cond.29
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %i, align 4
  %cmp38 = icmp slt i32 %57, %58
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %while.end.37
  %59 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %59, i32 -4)
  br label %for.end

if.end.40:                                        ; preds = %while.end.37
  %60 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %j, align 4
  call void @set2(%struct.lua_State* %60, i32 %61, i32 %62)
  br label %for.cond

for.end:                                          ; preds = %if.then.39
  %63 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %64 = load i32, i32* %u.addr, align 4
  %sub41 = sub nsw i32 %64, 1
  call void @lua_rawgeti(%struct.lua_State* %63, i32 1, i32 %sub41)
  %65 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %66 = load i32, i32* %i, align 4
  call void @lua_rawgeti(%struct.lua_State* %65, i32 1, i32 %66)
  %67 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %68 = load i32, i32* %u.addr, align 4
  %sub42 = sub nsw i32 %68, 1
  %69 = load i32, i32* %i, align 4
  call void @set2(%struct.lua_State* %67, i32 %sub42, i32 %69)
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %l.addr, align 4
  %sub43 = sub nsw i32 %70, %71
  %72 = load i32, i32* %u.addr, align 4
  %73 = load i32, i32* %i, align 4
  %sub44 = sub nsw i32 %72, %73
  %cmp45 = icmp slt i32 %sub43, %sub44
  br i1 %cmp45, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %for.end
  %74 = load i32, i32* %l.addr, align 4
  store i32 %74, i32* %j, align 4
  %75 = load i32, i32* %i, align 4
  %sub47 = sub nsw i32 %75, 1
  store i32 %sub47, i32* %i, align 4
  %76 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %76, 2
  store i32 %add48, i32* %l.addr, align 4
  br label %if.end.52

if.else.49:                                       ; preds = %for.end
  %77 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %77, 1
  store i32 %add50, i32* %j, align 4
  %78 = load i32, i32* %u.addr, align 4
  store i32 %78, i32* %i, align 4
  %79 = load i32, i32* %j, align 4
  %sub51 = sub nsw i32 %79, 2
  store i32 %sub51, i32* %u.addr, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.46
  %80 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %81 = load i32, i32* %j, align 4
  %82 = load i32, i32* %i, align 4
  call void @auxsort(%struct.lua_State* %80, i32 %81, i32 %82)
  br label %while.cond

while.end.53:                                     ; preds = %if.then.16, %if.then.2, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sort_comp(%struct.lua_State* %L, i32 %a, i32 %b) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 2)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %1, i32 2)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %3, 1
  call void @lua_pushvalue(%struct.lua_State* %2, i32 %sub)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %b.addr, align 4
  %sub1 = sub nsw i32 %5, 2
  call void @lua_pushvalue(%struct.lua_State* %4, i32 %sub1)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_call(%struct.lua_State* %6, i32 2, i32 1)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_toboolean(%struct.lua_State* %7, i32 -1)
  store i32 %call2, i32* %res, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %8, i32 -2)
  %9 = load i32, i32* %res, align 4
  store i32 %9, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load i32, i32* %a.addr, align 4
  %12 = load i32, i32* %b.addr, align 4
  %call3 = call i32 @lua_lessthan(%struct.lua_State* %10, i32 %11, i32 %12)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @set2(%struct.lua_State* %L, i32 %i, i32 %j) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %j.addr, align 4
  call void @lua_rawseti(%struct.lua_State* %2, i32 1, i32 %3)
  ret void
}

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

declare i32 @lua_lessthan(%struct.lua_State*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
