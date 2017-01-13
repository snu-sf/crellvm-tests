; ModuleID = './MultiSource.Applications.lua/14.ldebug.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%union.Value = type { %union.GCObject* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_longjmp = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@luaT_typenames = external hidden constant [0 x i8*], align 8
@.str = private unnamed_addr constant [35 x i8] c"attempt to %s %s '%s' (a %s value)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"attempt to %s a %s value\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"concatenate\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"perform arithmetic on\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"attempt to compare two %s values\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"attempt to compare %s with %s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"(*temporary)\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"=(tail call)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"=[C]\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Lua\00", align 1
@luaP_opmodes = external hidden constant [38 x i8], align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @lua_sethook(%struct.lua_State* %L, void (%struct.lua_State*, %struct.lua_Debug*)* %func, i32 %mask, i32 %count) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %func.addr = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  %mask.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store void (%struct.lua_State*, %struct.lua_Debug*)* %func, void (%struct.lua_State*, %struct.lua_Debug*)** %func.addr, align 8
  store i32 %mask, i32* %mask.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %func.addr, align 8
  %cmp = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %mask.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %mask.addr, align 4
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %func.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %func.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hook = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 21
  store void (%struct.lua_State*, %struct.lua_Debug*)* %2, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 8
  %4 = load i32, i32* %count.addr, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %basehookcount = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 19
  store i32 %4, i32* %basehookcount, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %basehookcount2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 19
  %7 = load i32, i32* %basehookcount2, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookcount = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 20
  store i32 %7, i32* %hookcount, align 4
  %9 = load i32, i32* %mask.addr, align 4
  %conv = trunc i32 %9 to i8
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 17
  store i8 %conv, i8* %hookmask, align 1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hook = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 21
  %1 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 8
  ret void (%struct.lua_State*, %struct.lua_Debug*)* %1
}

; Function Attrs: nounwind uwtable
define i32 @lua_gethookmask(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 17
  %1 = load i8, i8* %hookmask, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @lua_gethookcount(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %basehookcount = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 19
  %1 = load i32, i32* %basehookcount, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @lua_getstack(%struct.lua_State* %L, i32 %level, %struct.lua_Debug* %ar) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %level.addr = alloca i32, align 4
  %ar.addr = alloca %struct.lua_Debug*, align 8
  %status = alloca i32, align 4
  %ci = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 7
  %1 = load %struct.CallInfo*, %struct.CallInfo** %ci1, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %ci, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %level.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 12
  %5 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %cmp2 = icmp ugt %struct.CallInfo* %3, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i32, i32* %level.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %level.addr, align 4
  %8 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i32 0, i32 1
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %10 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %10 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %11 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %12 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %tailcalls = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 5
  %13 = load i32, i32* %tailcalls, align 4
  %14 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %14, %13
  store i32 %sub, i32* %level.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %incdec.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %15, i32 -1
  store %struct.CallInfo* %incdec.ptr, %struct.CallInfo** %ci, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %16 = load i32, i32* %level.addr, align 4
  %cmp3 = icmp eq i32 %16, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %17 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 12
  %19 = load %struct.CallInfo*, %struct.CallInfo** %base_ci4, align 8
  %cmp5 = icmp ugt %struct.CallInfo* %17, %19
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4
  %20 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 12
  %22 = load %struct.CallInfo*, %struct.CallInfo** %base_ci7, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.CallInfo* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.CallInfo* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv = trunc i64 %sub.ptr.div to i32
  %23 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %i_ci = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %23, i32 0, i32 10
  store i32 %conv, i32* %i_ci, align 4
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %for.end
  %24 = load i32, i32* %level.addr, align 4
  %cmp8 = icmp slt i32 %24, 0
  br i1 %cmp8, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else
  store i32 1, i32* %status, align 4
  %25 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %i_ci11 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %25, i32 0, i32 10
  store i32 0, i32* %i_ci11, align 4
  br label %if.end.13

if.else.12:                                       ; preds = %if.else
  store i32 0, i32* %status, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.6
  %26 = load i32, i32* %status, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i8* @lua_getlocal(%struct.lua_State* %L, %struct.lua_Debug* %ar, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ar.addr = alloca %struct.lua_Debug*, align 8
  %n.addr = alloca i32, align 4
  %ci = alloca %struct.CallInfo*, align 8
  %name = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 12
  %1 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %2 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %i_ci = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i32 0, i32 10
  %3 = load i32, i32* %i_ci, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 %idx.ext
  store %struct.CallInfo* %add.ptr, %struct.CallInfo** %ci, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %6 = load i32, i32* %n.addr, align 4
  %call = call i8* @findlocal(%struct.lua_State* %4, %struct.CallInfo* %5, i32 %6)
  store i8* %call, i8** %name, align 8
  %7 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i32 0, i32 0
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %11 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %11, 1
  %idx.ext1 = sext i32 %sub to i64
  %add.ptr2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i64 %idx.ext1
  call void @luaA_pushobject(%struct.lua_State* %8, %struct.lua_TValue* %add.ptr2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** %name, align 8
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @findlocal(%struct.lua_State* %L, %struct.CallInfo* %ci, i32 %n) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %ci.addr = alloca %struct.CallInfo*, align 8
  %n.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %fp = alloca %struct.Proto*, align 8
  %limit = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.CallInfo* %ci, %struct.CallInfo** %ci.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %call = call %struct.Proto* @getluaproto(%struct.CallInfo* %0)
  store %struct.Proto* %call, %struct.Proto** %fp, align 8
  %1 = load %struct.Proto*, %struct.Proto** %fp, align 8
  %tobool = icmp ne %struct.Proto* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Proto*, %struct.Proto** %fp, align 8
  %3 = load i32, i32* %n.addr, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %call1 = call i32 @currentpc(%struct.lua_State* %4, %struct.CallInfo* %5)
  %call2 = call i8* @luaF_getlocalname(%struct.Proto* %2, i32 %3, i32 %call1)
  store i8* %call2, i8** %name, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %name, align 8
  store i8* %6, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %9 = load %struct.CallInfo*, %struct.CallInfo** %ci3, align 8
  %cmp4 = icmp eq %struct.CallInfo* %7, %9
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 4
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %12 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i64 1
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %add.ptr, i32 0, i32 1
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lua_TValue* [ %11, %cond.true ], [ %13, %cond.false ]
  store %struct.lua_TValue* %cond, %struct.lua_TValue** %limit, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %limit, align 8
  %15 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %15, i32 0, i32 0
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.lua_TValue* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.lua_TValue* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %17 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %17 to i64
  %cmp5 = icmp sge i64 %sub.ptr.div, %conv
  br i1 %cmp5, label %land.lhs.true.7, label %if.else.11

land.lhs.true.7:                                  ; preds = %cond.end
  %18 = load i32, i32* %n.addr, align 4
  %cmp8 = icmp sgt i32 %18, 0
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true.7
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8** %retval
  br label %return

if.else.11:                                       ; preds = %land.lhs.true.7, %cond.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else.11, %if.then.10, %if.then
  %19 = load i8*, i8** %retval
  ret i8* %19
}

declare hidden void @luaA_pushobject(%struct.lua_State*, %struct.lua_TValue*) #1

; Function Attrs: nounwind uwtable
define i8* @lua_setlocal(%struct.lua_State* %L, %struct.lua_Debug* %ar, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ar.addr = alloca %struct.lua_Debug*, align 8
  %n.addr = alloca i32, align 4
  %ci = alloca %struct.CallInfo*, align 8
  %name = alloca i8*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 12
  %1 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %2 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %i_ci = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i32 0, i32 10
  %3 = load i32, i32* %i_ci, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 %idx.ext
  store %struct.CallInfo* %add.ptr, %struct.CallInfo** %ci, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %6 = load i32, i32* %n.addr, align 4
  %call = call i8* @findlocal(%struct.lua_State* %4, %struct.CallInfo* %5, i32 %6)
  store i8* %call, i8** %name, align 8
  %7 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 4
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 -1
  store %struct.lua_TValue* %add.ptr1, %struct.lua_TValue** %o2, align 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i32 0, i32 0
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %12 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %12, 1
  %idx.ext2 = sext i32 %sub to i64
  %add.ptr3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %idx.ext2
  store %struct.lua_TValue* %add.ptr3, %struct.lua_TValue** %o1, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %15 = bitcast %union.Value* %value to i8*
  %16 = bitcast %union.Value* %value4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 1
  %18 = load i32, i32* %tt, align 4
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 1
  store i32 %18, i32* %tt5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 4
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %top6, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 -1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top6, align 8
  %22 = load i8*, i8** %name, align 8
  ret i8* %22
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @lua_getinfo(%struct.lua_State* %L, i8* %what, %struct.lua_Debug* %ar) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %what.addr = alloca i8*, align 8
  %ar.addr = alloca %struct.lua_Debug*, align 8
  %status = alloca i32, align 4
  %f = alloca %union.Closure*, align 8
  %ci = alloca %struct.CallInfo*, align 8
  %func = alloca %struct.lua_TValue*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %what, i8** %what.addr, align 8
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  store %union.Closure* null, %union.Closure** %f, align 8
  store %struct.CallInfo* null, %struct.CallInfo** %ci, align 8
  %0 = load i8*, i8** %what.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 62
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 4
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 -1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %func, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %what.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %what.addr, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %7 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %7 to %union.Closure*
  store %union.Closure* %cl, %union.Closure** %f, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 4
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 -1
  store %struct.lua_TValue* %incdec.ptr3, %struct.lua_TValue** %top2, align 8
  br label %if.end.13

if.else:                                          ; preds = %entry
  %10 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %i_ci = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %10, i32 0, i32 10
  %11 = load i32, i32* %i_ci, align 4
  %cmp4 = icmp ne i32 %11, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 12
  %13 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %14 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %i_ci7 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %14, i32 0, i32 10
  %15 = load i32, i32* %i_ci7, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %13, i64 %idx.ext
  store %struct.CallInfo* %add.ptr8, %struct.CallInfo** %ci, align 8
  %16 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i32 0, i32 1
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %func9, align 8
  %value10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %gc11 = bitcast %union.Value* %value10 to %union.GCObject**
  %18 = load %union.GCObject*, %union.GCObject** %gc11, align 8
  %cl12 = bitcast %union.GCObject* %18 to %union.Closure*
  store %union.Closure* %cl12, %union.Closure** %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %20 = load i8*, i8** %what.addr, align 8
  %21 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %22 = load %union.Closure*, %union.Closure** %f, align 8
  %23 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %call = call i32 @auxgetinfo(%struct.lua_State* %19, i8* %20, %struct.lua_Debug* %21, %union.Closure* %22, %struct.CallInfo* %23)
  store i32 %call, i32* %status, align 4
  %24 = load i8*, i8** %what.addr, align 8
  %call14 = call i8* @strchr(i8* %24, i32 102) #4
  %tobool = icmp ne i8* %call14, null
  br i1 %tobool, label %if.then.15, label %if.end.34

if.then.15:                                       ; preds = %if.end.13
  %25 = load %union.Closure*, %union.Closure** %f, align 8
  %cmp16 = icmp eq %union.Closure* %25, null
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.then.15
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 4
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %top19, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  br label %if.end.25

if.else.20:                                       ; preds = %if.then.15
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 4
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %top21, align 8
  store %struct.lua_TValue* %29, %struct.lua_TValue** %i_o, align 8
  %30 = load %union.Closure*, %union.Closure** %f, align 8
  %31 = bitcast %union.Closure* %30 to %union.GCObject*
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 0
  %gc23 = bitcast %union.Value* %value22 to %union.GCObject**
  store %union.GCObject* %31, %union.GCObject** %gc23, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  store i32 6, i32* %tt24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.20, %if.then.18
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 9
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %36 = bitcast %struct.lua_TValue* %35 to i8*
  %37 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 4
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %top26, align 8
  %39 = bitcast %struct.lua_TValue* %38 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp27 = icmp sle i64 %sub.ptr.sub, 16
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.end.25
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %40, i32 1)
  br label %if.end.31

if.else.30:                                       ; preds = %if.end.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  %41 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 4
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %top32, align 8
  %incdec.ptr33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 1
  store %struct.lua_TValue* %incdec.ptr33, %struct.lua_TValue** %top32, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.31, %if.end.13
  %43 = load i8*, i8** %what.addr, align 8
  %call35 = call i8* @strchr(i8* %43, i32 76) #4
  %tobool36 = icmp ne i8* %call35, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %44 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %45 = load %union.Closure*, %union.Closure** %f, align 8
  call void @collectvalidlines(%struct.lua_State* %44, %union.Closure* %45)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %46 = load i32, i32* %status, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @auxgetinfo(%struct.lua_State* %L, i8* %what, %struct.lua_Debug* %ar, %union.Closure* %f, %struct.CallInfo* %ci) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %what.addr = alloca i8*, align 8
  %ar.addr = alloca %struct.lua_Debug*, align 8
  %f.addr = alloca %union.Closure*, align 8
  %ci.addr = alloca %struct.CallInfo*, align 8
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %what, i8** %what.addr, align 8
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  store %union.Closure* %f, %union.Closure** %f.addr, align 8
  store %struct.CallInfo* %ci, %struct.CallInfo** %ci.addr, align 8
  store i32 1, i32* %status, align 4
  %0 = load %union.Closure*, %union.Closure** %f.addr, align 8
  %cmp = icmp eq %union.Closure* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  call void @info_tailcall(%struct.lua_Debug* %1)
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i8*, i8** %what.addr, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %what.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 83, label %sw.bb
    i32 108, label %sw.bb.1
    i32 117, label %sw.bb.3
    i32 110, label %sw.bb.5
    i32 76, label %sw.bb.19
    i32 102, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %for.body
  %7 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %8 = load %union.Closure*, %union.Closure** %f.addr, align 8
  call void @funcinfo(%struct.lua_Debug* %7, %union.Closure* %8)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %9 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %tobool2 = icmp ne %struct.CallInfo* %9, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %call = call i32 @currentline(%struct.lua_State* %10, %struct.CallInfo* %11)
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ]
  %12 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %currentline = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %12, i32 0, i32 5
  store i32 %cond, i32* %currentline, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %13 = load %union.Closure*, %union.Closure** %f.addr, align 8
  %c = bitcast %union.Closure* %13 to %struct.CClosure*
  %nupvalues = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 4
  %14 = load i8, i8* %nupvalues, align 1
  %conv4 = zext i8 %14 to i32
  %15 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %nups = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %15, i32 0, i32 6
  store i32 %conv4, i32* %nups, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  %16 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %tobool6 = icmp ne %struct.CallInfo* %16, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %sw.bb.5
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %19 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %name = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %19, i32 0, i32 1
  %call8 = call i8* @getfuncname(%struct.lua_State* %17, %struct.CallInfo* %18, i8** %name)
  br label %cond.end.10

cond.false.9:                                     ; preds = %sw.bb.5
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.7
  %cond11 = phi i8* [ %call8, %cond.true.7 ], [ null, %cond.false.9 ]
  %20 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %namewhat = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %20, i32 0, i32 2
  store i8* %cond11, i8** %namewhat, align 8
  %21 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %namewhat12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %21, i32 0, i32 2
  %22 = load i8*, i8** %namewhat12, align 8
  %cmp13 = icmp eq i8* %22, null
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %cond.end.10
  %23 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %namewhat16 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %23, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8** %namewhat16, align 8
  %24 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %name17 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %24, i32 0, i32 1
  store i8* null, i8** %name17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %cond.end.10
  br label %sw.epilog

sw.bb.19:                                         ; preds = %for.body, %for.body
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  store i32 0, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.19, %if.end.18, %sw.bb.3, %cond.end, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %25 = load i8*, i8** %what.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %what.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %status, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @collectvalidlines(%struct.lua_State* %L, %union.Closure* %f) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %union.Closure*, align 8
  %t = alloca %struct.Table*, align 8
  %lineinfo = alloca i32*, align 8
  %i = alloca i32, align 4
  %i_o = alloca %struct.lua_TValue*, align 8
  %i_o8 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %union.Closure* %f, %union.Closure** %f.addr, align 8
  %0 = load %union.Closure*, %union.Closure** %f.addr, align 8
  %cmp = icmp eq %union.Closure* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.Closure*, %union.Closure** %f.addr, align 8
  %c = bitcast %union.Closure* %1 to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %2 = load i8, i8* %isC, align 1
  %conv = zext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 4
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.Table* @luaH_new(%struct.lua_State* %5, i32 0, i32 0)
  store %struct.Table* %call, %struct.Table** %t, align 8
  %6 = load %union.Closure*, %union.Closure** %f.addr, align 8
  %l = bitcast %union.Closure* %6 to %struct.LClosure*
  %p = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %7 = load %struct.Proto*, %struct.Proto** %p, align 8
  %lineinfo1 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 6
  %8 = load i32*, i32** %lineinfo1, align 8
  store i32* %8, i32** %lineinfo, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load i32, i32* %i, align 4
  %10 = load %union.Closure*, %union.Closure** %f.addr, align 8
  %l2 = bitcast %union.Closure* %10 to %struct.LClosure*
  %p3 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l2, i32 0, i32 7
  %11 = load %struct.Proto*, %struct.Proto** %p3, align 8
  %sizelineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 13
  %12 = load i32, i32* %sizelineinfo, align 4
  %cmp4 = icmp slt i32 %9, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load %struct.Table*, %struct.Table** %t, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32*, i32** %lineinfo, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %call6 = call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %13, %struct.Table* %14, i32 %17)
  store %struct.lua_TValue* %call6, %struct.lua_TValue** %i_o, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %b = bitcast %union.Value* %value to i32*
  store i32 1, i32* %b, align 4
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 1
  store i32 1, i32* %tt7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 4
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %top9, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %i_o8, align 8
  %23 = load %struct.Table*, %struct.Table** %t, align 8
  %24 = bitcast %struct.Table* %23 to %union.GCObject*
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o8, align 8
  %value10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %gc = bitcast %union.Value* %value10 to %union.GCObject**
  store %union.GCObject* %24, %union.GCObject** %gc, align 8
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o8, align 8
  %tt11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  store i32 5, i32* %tt11, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 9
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %29 = bitcast %struct.lua_TValue* %28 to i8*
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 4
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %top12, align 8
  %32 = bitcast %struct.lua_TValue* %31 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp13 = icmp sle i64 %sub.ptr.sub, 16
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %33, i32 1)
  br label %if.end.17

if.else.16:                                       ; preds = %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.15
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 4
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %top18, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top18, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaG_checkopenop(i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %shr = lshr i32 %0, 0
  %and = and i32 %shr, 63
  switch i32 %and, label %sw.default [
    i32 28, label %sw.bb
    i32 29, label %sw.bb
    i32 30, label %sw.bb
    i32 34, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %1 = load i32, i32* %i.addr, align 4
  %shr1 = lshr i32 %1, 23
  %and2 = and i32 %shr1, 511
  %cmp = icmp eq i32 %and2, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaG_checkcode(%struct.Proto* %pt) #0 {
entry:
  %pt.addr = alloca %struct.Proto*, align 8
  store %struct.Proto* %pt, %struct.Proto** %pt.addr, align 8
  %0 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %1 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizecode = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i32 0, i32 12
  %2 = load i32, i32* %sizecode, align 4
  %call = call i32 @symbexec(%struct.Proto* %0, i32 %2, i32 255)
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @symbexec(%struct.Proto* %pt, i32 %lastpc, i32 %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %pt.addr = alloca %struct.Proto*, align 8
  %lastpc.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %pc = alloca i32, align 4
  %last = alloca i32, align 4
  %i = alloca i32, align 4
  %op = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %dest = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  %dest231 = alloca i32, align 4
  %nup = alloca i32, align 4
  %j324 = alloca i32, align 4
  %op1 = alloca i32, align 4
  store %struct.Proto* %pt, %struct.Proto** %pt.addr, align 8
  store i32 %lastpc, i32* %lastpc.addr, align 4
  store i32 %reg, i32* %reg.addr, align 4
  %0 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizecode = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i32 0, i32 12
  %1 = load i32, i32* %sizecode, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %last, align 4
  %2 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %call = call i32 @precheck(%struct.Proto* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %pc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.397, %if.end
  %3 = load i32, i32* %pc, align 4
  %4 = load i32, i32* %lastpc.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.399

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %pc, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 4
  %7 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  store i32 %8, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %shr = lshr i32 %9, 0
  %and = and i32 %shr, 63
  store i32 %and, i32* %op, align 4
  %10 = load i32, i32* %i, align 4
  %shr1 = lshr i32 %10, 6
  %and2 = and i32 %shr1, 255
  store i32 %and2, i32* %a, align 4
  store i32 0, i32* %b, align 4
  store i32 0, i32* %c, align 4
  %11 = load i32, i32* %op, align 4
  %cmp3 = icmp ult i32 %11, 38
  br i1 %cmp3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %for.body
  %12 = load i32, i32* %a, align 4
  %13 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 22
  %14 = load i8, i8* %maxstacksize, align 1
  %conv = zext i8 %14 to i32
  %cmp6 = icmp slt i32 %12, %conv
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %15 = load i32, i32* %op, align 4
  %idxprom10 = zext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i32 0, i64 %idxprom10
  %16 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %16 to i32
  %and13 = and i32 %conv12, 3
  switch i32 %and13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.36
    i32 2, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %if.end.9
  %17 = load i32, i32* %i, align 4
  %shr14 = lshr i32 %17, 23
  %and15 = and i32 %shr14, 511
  store i32 %and15, i32* %b, align 4
  %18 = load i32, i32* %i, align 4
  %shr16 = lshr i32 %18, 14
  %and17 = and i32 %shr16, 511
  store i32 %and17, i32* %c, align 4
  %19 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %20 = load i32, i32* %b, align 4
  %21 = load i32, i32* %op, align 4
  %idxprom18 = zext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i32 0, i64 %idxprom18
  %22 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %22 to i32
  %shr21 = ashr i32 %conv20, 4
  %and22 = and i32 %shr21, 3
  %call23 = call i32 @checkArgMode(%struct.Proto* %19, i32 %20, i32 %and22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %sw.bb
  %23 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %op, align 4
  %idxprom27 = zext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i32 0, i64 %idxprom27
  %26 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %26 to i32
  %shr30 = ashr i32 %conv29, 2
  %and31 = and i32 %shr30, 3
  %call32 = call i32 @checkArgMode(%struct.Proto* %23, i32 %24, i32 %and31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.26
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.9
  %27 = load i32, i32* %i, align 4
  %shr37 = lshr i32 %27, 14
  %and38 = and i32 %shr37, 262143
  store i32 %and38, i32* %b, align 4
  %28 = load i32, i32* %op, align 4
  %idxprom39 = zext i32 %28 to i64
  %arrayidx40 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i32 0, i64 %idxprom39
  %29 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %29 to i32
  %shr42 = ashr i32 %conv41, 4
  %and43 = and i32 %shr42, 3
  %cmp44 = icmp eq i32 %and43, 3
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %sw.bb.36
  %30 = load i32, i32* %b, align 4
  %31 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizek = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 11
  %32 = load i32, i32* %sizek, align 4
  %cmp47 = icmp slt i32 %30, %32
  br i1 %cmp47, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.then.46
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.46
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %sw.bb.36
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.9
  %33 = load i32, i32* %i, align 4
  %shr53 = lshr i32 %33, 14
  %and54 = and i32 %shr53, 262143
  %sub55 = sub nsw i32 %and54, 131071
  store i32 %sub55, i32* %b, align 4
  %34 = load i32, i32* %op, align 4
  %idxprom56 = zext i32 %34 to i64
  %arrayidx57 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i32 0, i64 %idxprom56
  %35 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %35 to i32
  %shr59 = ashr i32 %conv58, 4
  %and60 = and i32 %shr59, 3
  %cmp61 = icmp eq i32 %and60, 2
  br i1 %cmp61, label %if.then.63, label %if.end.101

if.then.63:                                       ; preds = %sw.bb.52
  %36 = load i32, i32* %pc, align 4
  %add = add nsw i32 %36, 1
  %37 = load i32, i32* %b, align 4
  %add64 = add nsw i32 %add, %37
  store i32 %add64, i32* %dest, align 4
  %38 = load i32, i32* %dest, align 4
  %cmp65 = icmp sle i32 0, %38
  br i1 %cmp65, label %land.lhs.true, label %if.then.70

land.lhs.true:                                    ; preds = %if.then.63
  %39 = load i32, i32* %dest, align 4
  %40 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizecode67 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i32 0, i32 12
  %41 = load i32, i32* %sizecode67, align 4
  %cmp68 = icmp slt i32 %39, %41
  br i1 %cmp68, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true, %if.then.63
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %land.lhs.true
  %42 = load i32, i32* %dest, align 4
  %cmp72 = icmp sgt i32 %42, 0
  br i1 %cmp72, label %if.then.74, label %if.end.100

if.then.74:                                       ; preds = %if.end.71
  store i32 0, i32* %j, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc, %if.then.74
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %dest, align 4
  %cmp76 = icmp slt i32 %43, %44
  br i1 %cmp76, label %for.body.78, label %for.end

for.body.78:                                      ; preds = %for.cond.75
  %45 = load i32, i32* %dest, align 4
  %sub79 = sub nsw i32 %45, 1
  %46 = load i32, i32* %j, align 4
  %sub80 = sub nsw i32 %sub79, %46
  %idxprom81 = sext i32 %sub80 to i64
  %47 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %code82 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i32 0, i32 4
  %48 = load i32*, i32** %code82, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %48, i64 %idxprom81
  %49 = load i32, i32* %arrayidx83, align 4
  store i32 %49, i32* %d, align 4
  %50 = load i32, i32* %d, align 4
  %shr84 = lshr i32 %50, 0
  %and85 = and i32 %shr84, 63
  %cmp86 = icmp eq i32 %and85, 34
  br i1 %cmp86, label %land.lhs.true.88, label %if.then.93

land.lhs.true.88:                                 ; preds = %for.body.78
  %51 = load i32, i32* %d, align 4
  %shr89 = lshr i32 %51, 14
  %and90 = and i32 %shr89, 511
  %cmp91 = icmp eq i32 %and90, 0
  br i1 %cmp91, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %land.lhs.true.88, %for.body.78
  br label %for.end

if.end.94:                                        ; preds = %land.lhs.true.88
  br label %for.inc

for.inc:                                          ; preds = %if.end.94
  %52 = load i32, i32* %j, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.75

for.end:                                          ; preds = %if.then.93, %for.cond.75
  %53 = load i32, i32* %j, align 4
  %and95 = and i32 %53, 1
  %cmp96 = icmp eq i32 %and95, 0
  br i1 %cmp96, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.99:                                        ; preds = %for.end
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.71
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %sw.bb.52
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.9, %if.end.101, %if.end.51, %if.end.35
  %54 = load i32, i32* %op, align 4
  %idxprom102 = zext i32 %54 to i64
  %arrayidx103 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i32 0, i64 %idxprom102
  %55 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %55 to i32
  %and105 = and i32 %conv104, 64
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.112

if.then.107:                                      ; preds = %sw.epilog
  %56 = load i32, i32* %a, align 4
  %57 = load i32, i32* %reg.addr, align 4
  %cmp108 = icmp eq i32 %56, %57
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.then.107
  %58 = load i32, i32* %pc, align 4
  store i32 %58, i32* %last, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.then.107
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %sw.epilog
  %59 = load i32, i32* %op, align 4
  %idxprom113 = zext i32 %59 to i64
  %arrayidx114 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i32 0, i64 %idxprom113
  %60 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %60 to i32
  %and116 = and i32 %conv115, 128
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.135

if.then.118:                                      ; preds = %if.end.112
  %61 = load i32, i32* %pc, align 4
  %add119 = add nsw i32 %61, 2
  %62 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizecode120 = getelementptr inbounds %struct.Proto, %struct.Proto* %62, i32 0, i32 12
  %63 = load i32, i32* %sizecode120, align 4
  %cmp121 = icmp slt i32 %add119, %63
  br i1 %cmp121, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %if.then.118
  store i32 0, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.then.118
  %64 = load i32, i32* %pc, align 4
  %add125 = add nsw i32 %64, 1
  %idxprom126 = sext i32 %add125 to i64
  %65 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %code127 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i32 0, i32 4
  %66 = load i32*, i32** %code127, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %66, i64 %idxprom126
  %67 = load i32, i32* %arrayidx128, align 4
  %shr129 = lshr i32 %67, 0
  %and130 = and i32 %shr129, 63
  %cmp131 = icmp eq i32 %and130, 22
  br i1 %cmp131, label %if.end.134, label %if.then.133

if.then.133:                                      ; preds = %if.end.124
  store i32 0, i32* %retval
  br label %return

if.end.134:                                       ; preds = %if.end.124
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.112
  %68 = load i32, i32* %op, align 4
  switch i32 %68, label %sw.default [
    i32 2, label %sw.bb.136
    i32 3, label %sw.bb.165
    i32 4, label %sw.bb.173
    i32 8, label %sw.bb.173
    i32 5, label %sw.bb.179
    i32 7, label %sw.bb.179
    i32 11, label %sw.bb.186
    i32 21, label %sw.bb.199
    i32 33, label %sw.bb.204
    i32 31, label %sw.bb.222
    i32 32, label %sw.bb.222
    i32 22, label %sw.bb.230
    i32 28, label %sw.bb.245
    i32 29, label %sw.bb.245
    i32 30, label %sw.bb.286
    i32 34, label %sw.bb.300
    i32 36, label %sw.bb.323
    i32 37, label %sw.bb.364
  ]

sw.bb.136:                                        ; preds = %if.end.135
  %69 = load i32, i32* %c, align 4
  %cmp137 = icmp eq i32 %69, 1
  br i1 %cmp137, label %if.then.139, label %if.end.164

if.then.139:                                      ; preds = %sw.bb.136
  %70 = load i32, i32* %pc, align 4
  %add140 = add nsw i32 %70, 2
  %71 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizecode141 = getelementptr inbounds %struct.Proto, %struct.Proto* %71, i32 0, i32 12
  %72 = load i32, i32* %sizecode141, align 4
  %cmp142 = icmp slt i32 %add140, %72
  br i1 %cmp142, label %if.end.145, label %if.then.144

if.then.144:                                      ; preds = %if.then.139
  store i32 0, i32* %retval
  br label %return

if.end.145:                                       ; preds = %if.then.139
  %73 = load i32, i32* %pc, align 4
  %add146 = add nsw i32 %73, 1
  %idxprom147 = sext i32 %add146 to i64
  %74 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %code148 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i32 0, i32 4
  %75 = load i32*, i32** %code148, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %75, i64 %idxprom147
  %76 = load i32, i32* %arrayidx149, align 4
  %shr150 = lshr i32 %76, 0
  %and151 = and i32 %shr150, 63
  %cmp152 = icmp ne i32 %and151, 34
  br i1 %cmp152, label %if.end.163, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.145
  %77 = load i32, i32* %pc, align 4
  %add154 = add nsw i32 %77, 1
  %idxprom155 = sext i32 %add154 to i64
  %78 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %code156 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i32 0, i32 4
  %79 = load i32*, i32** %code156, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %79, i64 %idxprom155
  %80 = load i32, i32* %arrayidx157, align 4
  %shr158 = lshr i32 %80, 14
  %and159 = and i32 %shr158, 511
  %cmp160 = icmp ne i32 %and159, 0
  br i1 %cmp160, label %if.end.163, label %if.then.162

if.then.162:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

if.end.163:                                       ; preds = %lor.lhs.false, %if.end.145
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %sw.bb.136
  br label %sw.epilog.396

sw.bb.165:                                        ; preds = %if.end.135
  %81 = load i32, i32* %a, align 4
  %82 = load i32, i32* %reg.addr, align 4
  %cmp166 = icmp sle i32 %81, %82
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.172

land.lhs.true.168:                                ; preds = %sw.bb.165
  %83 = load i32, i32* %reg.addr, align 4
  %84 = load i32, i32* %b, align 4
  %cmp169 = icmp sle i32 %83, %84
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %land.lhs.true.168
  %85 = load i32, i32* %pc, align 4
  store i32 %85, i32* %last, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %land.lhs.true.168, %sw.bb.165
  br label %sw.epilog.396

sw.bb.173:                                        ; preds = %if.end.135, %if.end.135
  %86 = load i32, i32* %b, align 4
  %87 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %nups = getelementptr inbounds %struct.Proto, %struct.Proto* %87, i32 0, i32 19
  %88 = load i8, i8* %nups, align 1
  %conv174 = zext i8 %88 to i32
  %cmp175 = icmp slt i32 %86, %conv174
  br i1 %cmp175, label %if.end.178, label %if.then.177

if.then.177:                                      ; preds = %sw.bb.173
  store i32 0, i32* %retval
  br label %return

if.end.178:                                       ; preds = %sw.bb.173
  br label %sw.epilog.396

sw.bb.179:                                        ; preds = %if.end.135, %if.end.135
  %89 = load i32, i32* %b, align 4
  %idxprom180 = sext i32 %89 to i64
  %90 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %k = getelementptr inbounds %struct.Proto, %struct.Proto* %90, i32 0, i32 3
  %91 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %arrayidx181 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i64 %idxprom180
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx181, i32 0, i32 1
  %92 = load i32, i32* %tt, align 4
  %cmp182 = icmp eq i32 %92, 4
  br i1 %cmp182, label %if.end.185, label %if.then.184

if.then.184:                                      ; preds = %sw.bb.179
  store i32 0, i32* %retval
  br label %return

if.end.185:                                       ; preds = %sw.bb.179
  br label %sw.epilog.396

sw.bb.186:                                        ; preds = %if.end.135
  %93 = load i32, i32* %a, align 4
  %add187 = add nsw i32 %93, 1
  %94 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize188 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i32 0, i32 22
  %95 = load i8, i8* %maxstacksize188, align 1
  %conv189 = zext i8 %95 to i32
  %cmp190 = icmp slt i32 %add187, %conv189
  br i1 %cmp190, label %if.end.193, label %if.then.192

if.then.192:                                      ; preds = %sw.bb.186
  store i32 0, i32* %retval
  br label %return

if.end.193:                                       ; preds = %sw.bb.186
  %96 = load i32, i32* %reg.addr, align 4
  %97 = load i32, i32* %a, align 4
  %add194 = add nsw i32 %97, 1
  %cmp195 = icmp eq i32 %96, %add194
  br i1 %cmp195, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %if.end.193
  %98 = load i32, i32* %pc, align 4
  store i32 %98, i32* %last, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.197, %if.end.193
  br label %sw.epilog.396

sw.bb.199:                                        ; preds = %if.end.135
  %99 = load i32, i32* %b, align 4
  %100 = load i32, i32* %c, align 4
  %cmp200 = icmp slt i32 %99, %100
  br i1 %cmp200, label %if.end.203, label %if.then.202

if.then.202:                                      ; preds = %sw.bb.199
  store i32 0, i32* %retval
  br label %return

if.end.203:                                       ; preds = %sw.bb.199
  br label %sw.epilog.396

sw.bb.204:                                        ; preds = %if.end.135
  %101 = load i32, i32* %c, align 4
  %cmp205 = icmp sge i32 %101, 1
  br i1 %cmp205, label %if.end.208, label %if.then.207

if.then.207:                                      ; preds = %sw.bb.204
  store i32 0, i32* %retval
  br label %return

if.end.208:                                       ; preds = %sw.bb.204
  %102 = load i32, i32* %a, align 4
  %add209 = add nsw i32 %102, 2
  %103 = load i32, i32* %c, align 4
  %add210 = add nsw i32 %add209, %103
  %104 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize211 = getelementptr inbounds %struct.Proto, %struct.Proto* %104, i32 0, i32 22
  %105 = load i8, i8* %maxstacksize211, align 1
  %conv212 = zext i8 %105 to i32
  %cmp213 = icmp slt i32 %add210, %conv212
  br i1 %cmp213, label %if.end.216, label %if.then.215

if.then.215:                                      ; preds = %if.end.208
  store i32 0, i32* %retval
  br label %return

if.end.216:                                       ; preds = %if.end.208
  %106 = load i32, i32* %reg.addr, align 4
  %107 = load i32, i32* %a, align 4
  %add217 = add nsw i32 %107, 2
  %cmp218 = icmp sge i32 %106, %add217
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.end.216
  %108 = load i32, i32* %pc, align 4
  store i32 %108, i32* %last, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.end.216
  br label %sw.epilog.396

sw.bb.222:                                        ; preds = %if.end.135, %if.end.135
  %109 = load i32, i32* %a, align 4
  %add223 = add nsw i32 %109, 3
  %110 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize224 = getelementptr inbounds %struct.Proto, %struct.Proto* %110, i32 0, i32 22
  %111 = load i8, i8* %maxstacksize224, align 1
  %conv225 = zext i8 %111 to i32
  %cmp226 = icmp slt i32 %add223, %conv225
  br i1 %cmp226, label %if.end.229, label %if.then.228

if.then.228:                                      ; preds = %sw.bb.222
  store i32 0, i32* %retval
  br label %return

if.end.229:                                       ; preds = %sw.bb.222
  br label %sw.bb.230

sw.bb.230:                                        ; preds = %if.end.135, %if.end.229
  %112 = load i32, i32* %pc, align 4
  %add232 = add nsw i32 %112, 1
  %113 = load i32, i32* %b, align 4
  %add233 = add nsw i32 %add232, %113
  store i32 %add233, i32* %dest231, align 4
  %114 = load i32, i32* %reg.addr, align 4
  %cmp234 = icmp ne i32 %114, 255
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.244

land.lhs.true.236:                                ; preds = %sw.bb.230
  %115 = load i32, i32* %pc, align 4
  %116 = load i32, i32* %dest231, align 4
  %cmp237 = icmp slt i32 %115, %116
  br i1 %cmp237, label %land.lhs.true.239, label %if.end.244

land.lhs.true.239:                                ; preds = %land.lhs.true.236
  %117 = load i32, i32* %dest231, align 4
  %118 = load i32, i32* %lastpc.addr, align 4
  %cmp240 = icmp sle i32 %117, %118
  br i1 %cmp240, label %if.then.242, label %if.end.244

if.then.242:                                      ; preds = %land.lhs.true.239
  %119 = load i32, i32* %b, align 4
  %120 = load i32, i32* %pc, align 4
  %add243 = add nsw i32 %120, %119
  store i32 %add243, i32* %pc, align 4
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.242, %land.lhs.true.239, %land.lhs.true.236, %sw.bb.230
  br label %sw.epilog.396

sw.bb.245:                                        ; preds = %if.end.135, %if.end.135
  %121 = load i32, i32* %b, align 4
  %cmp246 = icmp ne i32 %121, 0
  br i1 %cmp246, label %if.then.248, label %if.end.257

if.then.248:                                      ; preds = %sw.bb.245
  %122 = load i32, i32* %a, align 4
  %123 = load i32, i32* %b, align 4
  %add249 = add nsw i32 %122, %123
  %sub250 = sub nsw i32 %add249, 1
  %124 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize251 = getelementptr inbounds %struct.Proto, %struct.Proto* %124, i32 0, i32 22
  %125 = load i8, i8* %maxstacksize251, align 1
  %conv252 = zext i8 %125 to i32
  %cmp253 = icmp slt i32 %sub250, %conv252
  br i1 %cmp253, label %if.end.256, label %if.then.255

if.then.255:                                      ; preds = %if.then.248
  store i32 0, i32* %retval
  br label %return

if.end.256:                                       ; preds = %if.then.248
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %sw.bb.245
  %126 = load i32, i32* %c, align 4
  %dec = add nsw i32 %126, -1
  store i32 %dec, i32* %c, align 4
  %127 = load i32, i32* %c, align 4
  %cmp258 = icmp eq i32 %127, -1
  br i1 %cmp258, label %if.then.260, label %if.else

if.then.260:                                      ; preds = %if.end.257
  %128 = load i32, i32* %pc, align 4
  %add261 = add nsw i32 %128, 1
  %idxprom262 = sext i32 %add261 to i64
  %129 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %code263 = getelementptr inbounds %struct.Proto, %struct.Proto* %129, i32 0, i32 4
  %130 = load i32*, i32** %code263, align 8
  %arrayidx264 = getelementptr inbounds i32, i32* %130, i64 %idxprom262
  %131 = load i32, i32* %arrayidx264, align 4
  %call265 = call i32 @luaG_checkopenop(i32 %131)
  %tobool266 = icmp ne i32 %call265, 0
  br i1 %tobool266, label %if.end.268, label %if.then.267

if.then.267:                                      ; preds = %if.then.260
  store i32 0, i32* %retval
  br label %return

if.end.268:                                       ; preds = %if.then.260
  br label %if.end.281

if.else:                                          ; preds = %if.end.257
  %132 = load i32, i32* %c, align 4
  %cmp269 = icmp ne i32 %132, 0
  br i1 %cmp269, label %if.then.271, label %if.end.280

if.then.271:                                      ; preds = %if.else
  %133 = load i32, i32* %a, align 4
  %134 = load i32, i32* %c, align 4
  %add272 = add nsw i32 %133, %134
  %sub273 = sub nsw i32 %add272, 1
  %135 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize274 = getelementptr inbounds %struct.Proto, %struct.Proto* %135, i32 0, i32 22
  %136 = load i8, i8* %maxstacksize274, align 1
  %conv275 = zext i8 %136 to i32
  %cmp276 = icmp slt i32 %sub273, %conv275
  br i1 %cmp276, label %if.end.279, label %if.then.278

if.then.278:                                      ; preds = %if.then.271
  store i32 0, i32* %retval
  br label %return

if.end.279:                                       ; preds = %if.then.271
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.else
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.end.268
  %137 = load i32, i32* %reg.addr, align 4
  %138 = load i32, i32* %a, align 4
  %cmp282 = icmp sge i32 %137, %138
  br i1 %cmp282, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %if.end.281
  %139 = load i32, i32* %pc, align 4
  store i32 %139, i32* %last, align 4
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.284, %if.end.281
  br label %sw.epilog.396

sw.bb.286:                                        ; preds = %if.end.135
  %140 = load i32, i32* %b, align 4
  %dec287 = add nsw i32 %140, -1
  store i32 %dec287, i32* %b, align 4
  %141 = load i32, i32* %b, align 4
  %cmp288 = icmp sgt i32 %141, 0
  br i1 %cmp288, label %if.then.290, label %if.end.299

if.then.290:                                      ; preds = %sw.bb.286
  %142 = load i32, i32* %a, align 4
  %143 = load i32, i32* %b, align 4
  %add291 = add nsw i32 %142, %143
  %sub292 = sub nsw i32 %add291, 1
  %144 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize293 = getelementptr inbounds %struct.Proto, %struct.Proto* %144, i32 0, i32 22
  %145 = load i8, i8* %maxstacksize293, align 1
  %conv294 = zext i8 %145 to i32
  %cmp295 = icmp slt i32 %sub292, %conv294
  br i1 %cmp295, label %if.end.298, label %if.then.297

if.then.297:                                      ; preds = %if.then.290
  store i32 0, i32* %retval
  br label %return

if.end.298:                                       ; preds = %if.then.290
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %sw.bb.286
  br label %sw.epilog.396

sw.bb.300:                                        ; preds = %if.end.135
  %146 = load i32, i32* %b, align 4
  %cmp301 = icmp sgt i32 %146, 0
  br i1 %cmp301, label %if.then.303, label %if.end.311

if.then.303:                                      ; preds = %sw.bb.300
  %147 = load i32, i32* %a, align 4
  %148 = load i32, i32* %b, align 4
  %add304 = add nsw i32 %147, %148
  %149 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize305 = getelementptr inbounds %struct.Proto, %struct.Proto* %149, i32 0, i32 22
  %150 = load i8, i8* %maxstacksize305, align 1
  %conv306 = zext i8 %150 to i32
  %cmp307 = icmp slt i32 %add304, %conv306
  br i1 %cmp307, label %if.end.310, label %if.then.309

if.then.309:                                      ; preds = %if.then.303
  store i32 0, i32* %retval
  br label %return

if.end.310:                                       ; preds = %if.then.303
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %sw.bb.300
  %151 = load i32, i32* %c, align 4
  %cmp312 = icmp eq i32 %151, 0
  br i1 %cmp312, label %if.then.314, label %if.end.322

if.then.314:                                      ; preds = %if.end.311
  %152 = load i32, i32* %pc, align 4
  %inc315 = add nsw i32 %152, 1
  store i32 %inc315, i32* %pc, align 4
  %153 = load i32, i32* %pc, align 4
  %154 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizecode316 = getelementptr inbounds %struct.Proto, %struct.Proto* %154, i32 0, i32 12
  %155 = load i32, i32* %sizecode316, align 4
  %sub317 = sub nsw i32 %155, 1
  %cmp318 = icmp slt i32 %153, %sub317
  br i1 %cmp318, label %if.end.321, label %if.then.320

if.then.320:                                      ; preds = %if.then.314
  store i32 0, i32* %retval
  br label %return

if.end.321:                                       ; preds = %if.then.314
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end.311
  br label %sw.epilog.396

sw.bb.323:                                        ; preds = %if.end.135
  %156 = load i32, i32* %b, align 4
  %157 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizep = getelementptr inbounds %struct.Proto, %struct.Proto* %157, i32 0, i32 14
  %158 = load i32, i32* %sizep, align 4
  %cmp325 = icmp slt i32 %156, %158
  br i1 %cmp325, label %if.end.328, label %if.then.327

if.then.327:                                      ; preds = %sw.bb.323
  store i32 0, i32* %retval
  br label %return

if.end.328:                                       ; preds = %sw.bb.323
  %159 = load i32, i32* %b, align 4
  %idxprom329 = sext i32 %159 to i64
  %160 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %p = getelementptr inbounds %struct.Proto, %struct.Proto* %160, i32 0, i32 5
  %161 = load %struct.Proto**, %struct.Proto*** %p, align 8
  %arrayidx330 = getelementptr inbounds %struct.Proto*, %struct.Proto** %161, i64 %idxprom329
  %162 = load %struct.Proto*, %struct.Proto** %arrayidx330, align 8
  %nups331 = getelementptr inbounds %struct.Proto, %struct.Proto* %162, i32 0, i32 19
  %163 = load i8, i8* %nups331, align 1
  %conv332 = zext i8 %163 to i32
  store i32 %conv332, i32* %nup, align 4
  %164 = load i32, i32* %pc, align 4
  %165 = load i32, i32* %nup, align 4
  %add333 = add nsw i32 %164, %165
  %166 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizecode334 = getelementptr inbounds %struct.Proto, %struct.Proto* %166, i32 0, i32 12
  %167 = load i32, i32* %sizecode334, align 4
  %cmp335 = icmp slt i32 %add333, %167
  br i1 %cmp335, label %if.end.338, label %if.then.337

if.then.337:                                      ; preds = %if.end.328
  store i32 0, i32* %retval
  br label %return

if.end.338:                                       ; preds = %if.end.328
  store i32 1, i32* %j324, align 4
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.356, %if.end.338
  %168 = load i32, i32* %j324, align 4
  %169 = load i32, i32* %nup, align 4
  %cmp340 = icmp sle i32 %168, %169
  br i1 %cmp340, label %for.body.342, label %for.end.358

for.body.342:                                     ; preds = %for.cond.339
  %170 = load i32, i32* %pc, align 4
  %171 = load i32, i32* %j324, align 4
  %add343 = add nsw i32 %170, %171
  %idxprom344 = sext i32 %add343 to i64
  %172 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %code345 = getelementptr inbounds %struct.Proto, %struct.Proto* %172, i32 0, i32 4
  %173 = load i32*, i32** %code345, align 8
  %arrayidx346 = getelementptr inbounds i32, i32* %173, i64 %idxprom344
  %174 = load i32, i32* %arrayidx346, align 4
  %shr347 = lshr i32 %174, 0
  %and348 = and i32 %shr347, 63
  store i32 %and348, i32* %op1, align 4
  %175 = load i32, i32* %op1, align 4
  %cmp349 = icmp eq i32 %175, 4
  br i1 %cmp349, label %if.end.355, label %lor.lhs.false.351

lor.lhs.false.351:                                ; preds = %for.body.342
  %176 = load i32, i32* %op1, align 4
  %cmp352 = icmp eq i32 %176, 0
  br i1 %cmp352, label %if.end.355, label %if.then.354

if.then.354:                                      ; preds = %lor.lhs.false.351
  store i32 0, i32* %retval
  br label %return

if.end.355:                                       ; preds = %lor.lhs.false.351, %for.body.342
  br label %for.inc.356

for.inc.356:                                      ; preds = %if.end.355
  %177 = load i32, i32* %j324, align 4
  %inc357 = add nsw i32 %177, 1
  store i32 %inc357, i32* %j324, align 4
  br label %for.cond.339

for.end.358:                                      ; preds = %for.cond.339
  %178 = load i32, i32* %reg.addr, align 4
  %cmp359 = icmp ne i32 %178, 255
  br i1 %cmp359, label %if.then.361, label %if.end.363

if.then.361:                                      ; preds = %for.end.358
  %179 = load i32, i32* %nup, align 4
  %180 = load i32, i32* %pc, align 4
  %add362 = add nsw i32 %180, %179
  store i32 %add362, i32* %pc, align 4
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.361, %for.end.358
  br label %sw.epilog.396

sw.bb.364:                                        ; preds = %if.end.135
  %181 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %is_vararg = getelementptr inbounds %struct.Proto, %struct.Proto* %181, i32 0, i32 21
  %182 = load i8, i8* %is_vararg, align 1
  %conv365 = zext i8 %182 to i32
  %and366 = and i32 %conv365, 2
  %tobool367 = icmp ne i32 %and366, 0
  br i1 %tobool367, label %land.lhs.true.368, label %if.then.373

land.lhs.true.368:                                ; preds = %sw.bb.364
  %183 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %is_vararg369 = getelementptr inbounds %struct.Proto, %struct.Proto* %183, i32 0, i32 21
  %184 = load i8, i8* %is_vararg369, align 1
  %conv370 = zext i8 %184 to i32
  %and371 = and i32 %conv370, 4
  %tobool372 = icmp ne i32 %and371, 0
  br i1 %tobool372, label %if.then.373, label %if.end.374

if.then.373:                                      ; preds = %land.lhs.true.368, %sw.bb.364
  store i32 0, i32* %retval
  br label %return

if.end.374:                                       ; preds = %land.lhs.true.368
  %185 = load i32, i32* %b, align 4
  %dec375 = add nsw i32 %185, -1
  store i32 %dec375, i32* %b, align 4
  %186 = load i32, i32* %b, align 4
  %cmp376 = icmp eq i32 %186, -1
  br i1 %cmp376, label %if.then.378, label %if.end.387

if.then.378:                                      ; preds = %if.end.374
  %187 = load i32, i32* %pc, align 4
  %add379 = add nsw i32 %187, 1
  %idxprom380 = sext i32 %add379 to i64
  %188 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %code381 = getelementptr inbounds %struct.Proto, %struct.Proto* %188, i32 0, i32 4
  %189 = load i32*, i32** %code381, align 8
  %arrayidx382 = getelementptr inbounds i32, i32* %189, i64 %idxprom380
  %190 = load i32, i32* %arrayidx382, align 4
  %call383 = call i32 @luaG_checkopenop(i32 %190)
  %tobool384 = icmp ne i32 %call383, 0
  br i1 %tobool384, label %if.end.386, label %if.then.385

if.then.385:                                      ; preds = %if.then.378
  store i32 0, i32* %retval
  br label %return

if.end.386:                                       ; preds = %if.then.378
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %if.end.374
  %191 = load i32, i32* %a, align 4
  %192 = load i32, i32* %b, align 4
  %add388 = add nsw i32 %191, %192
  %sub389 = sub nsw i32 %add388, 1
  %193 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize390 = getelementptr inbounds %struct.Proto, %struct.Proto* %193, i32 0, i32 22
  %194 = load i8, i8* %maxstacksize390, align 1
  %conv391 = zext i8 %194 to i32
  %cmp392 = icmp slt i32 %sub389, %conv391
  br i1 %cmp392, label %if.end.395, label %if.then.394

if.then.394:                                      ; preds = %if.end.387
  store i32 0, i32* %retval
  br label %return

if.end.395:                                       ; preds = %if.end.387
  br label %sw.epilog.396

sw.default:                                       ; preds = %if.end.135
  br label %sw.epilog.396

sw.epilog.396:                                    ; preds = %sw.default, %if.end.395, %if.end.363, %if.end.322, %if.end.299, %if.end.285, %if.end.244, %if.end.221, %if.end.203, %if.end.198, %if.end.185, %if.end.178, %if.end.172, %if.end.164
  br label %for.inc.397

for.inc.397:                                      ; preds = %sw.epilog.396
  %195 = load i32, i32* %pc, align 4
  %inc398 = add nsw i32 %195, 1
  store i32 %inc398, i32* %pc, align 4
  br label %for.cond

for.end.399:                                      ; preds = %for.cond
  %196 = load i32, i32* %last, align 4
  %idxprom400 = sext i32 %196 to i64
  %197 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %code401 = getelementptr inbounds %struct.Proto, %struct.Proto* %197, i32 0, i32 4
  %198 = load i32*, i32** %code401, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %198, i64 %idxprom400
  %199 = load i32, i32* %arrayidx402, align 4
  store i32 %199, i32* %retval
  br label %return

return:                                           ; preds = %for.end.399, %if.then.394, %if.then.385, %if.then.373, %if.then.354, %if.then.337, %if.then.327, %if.then.320, %if.then.309, %if.then.297, %if.then.278, %if.then.267, %if.then.255, %if.then.228, %if.then.215, %if.then.207, %if.then.202, %if.then.192, %if.then.184, %if.then.177, %if.then.162, %if.then.144, %if.then.133, %if.then.123, %if.then.98, %if.then.70, %if.then.49, %if.then.34, %if.then.25, %if.then.8, %if.then.4, %if.then
  %200 = load i32, i32* %retval
  ret i32 %200
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_typeerror(%struct.lua_State* %L, %struct.lua_TValue* %o, i8* %op) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %o.addr = alloca %struct.lua_TValue*, align 8
  %op.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %t = alloca i8*, align 8
  %kind = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %o, %struct.lua_TValue** %o.addr, align 8
  store i8* %op, i8** %op.addr, align 8
  store i8* null, i8** %name, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %t, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 7
  %4 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %call = call i32 @isinstack(%struct.CallInfo* %4, %struct.lua_TValue* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 7
  %8 = load %struct.CallInfo*, %struct.CallInfo** %ci1, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 5
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.lua_TValue* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.lua_TValue* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  %call2 = call i8* @getobjname(%struct.lua_State* %6, %struct.CallInfo* %8, i32 %conv, i8** %name)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call2, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %kind, align 8
  %12 = load i8*, i8** %kind, align 8
  %tobool3 = icmp ne i8* %12, null
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i8*, i8** %op.addr, align 8
  %15 = load i8*, i8** %kind, align 8
  %16 = load i8*, i8** %name, align 8
  %17 = load i8*, i8** %t, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* %14, i8* %15, i8* %16, i8* %17)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load i8*, i8** %op.addr, align 8
  %20 = load i8*, i8** %t, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* %19, i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @isinstack(%struct.CallInfo* %ci, %struct.lua_TValue* %o) #0 {
entry:
  %retval = alloca i32, align 4
  %ci.addr = alloca %struct.CallInfo*, align 8
  %o.addr = alloca %struct.lua_TValue*, align 8
  %p = alloca %struct.lua_TValue*, align 8
  store %struct.CallInfo* %ci, %struct.CallInfo** %ci.addr, align 8
  store %struct.lua_TValue* %o, %struct.lua_TValue** %o.addr, align 8
  %0 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i32 0, i32 0
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %top = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i32 0, i32 2
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %cmp = icmp ult %struct.lua_TValue* %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %cmp1 = icmp eq %struct.lua_TValue* %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i8* @getobjname(%struct.lua_State* %L, %struct.CallInfo* %ci, i32 %stackpos, i8** %name) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %ci.addr = alloca %struct.CallInfo*, align 8
  %stackpos.addr = alloca i32, align 4
  %name.addr = alloca i8**, align 8
  %p = alloca %struct.Proto*, align 8
  %pc = alloca i32, align 4
  %i = alloca i32, align 4
  %g = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %k25 = alloca i32, align 4
  %u = alloca i32, align 4
  %k38 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.CallInfo* %ci, %struct.CallInfo** %ci.addr, align 8
  store i32 %stackpos, i32* %stackpos.addr, align 4
  store i8** %name, i8*** %name.addr, align 8
  %0 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i32 0, i32 1
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i32 0, i32 1
  %2 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func1 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i32 0, i32 1
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %func1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %5 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %6 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.end.42, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func2 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i32 0, i32 1
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %func2, align 8
  %value3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %gc4 = bitcast %union.Value* %value3 to %union.GCObject**
  %9 = load %union.GCObject*, %union.GCObject** %gc4, align 8
  %cl5 = bitcast %union.GCObject* %9 to %union.Closure*
  %l = bitcast %union.Closure* %cl5 to %struct.LClosure*
  %p6 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %10 = load %struct.Proto*, %struct.Proto** %p6, align 8
  store %struct.Proto* %10, %struct.Proto** %p, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %call = call i32 @currentpc(%struct.lua_State* %11, %struct.CallInfo* %12)
  store i32 %call, i32* %pc, align 4
  %13 = load %struct.Proto*, %struct.Proto** %p, align 8
  %14 = load i32, i32* %stackpos.addr, align 4
  %add = add nsw i32 %14, 1
  %15 = load i32, i32* %pc, align 4
  %call7 = call i8* @luaF_getlocalname(%struct.Proto* %13, i32 %add, i32 %15)
  %16 = load i8**, i8*** %name.addr, align 8
  store i8* %call7, i8** %16, align 8
  %17 = load i8**, i8*** %name.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %tobool8 = icmp ne i8* %18, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %19 = load %struct.Proto*, %struct.Proto** %p, align 8
  %20 = load i32, i32* %pc, align 4
  %21 = load i32, i32* %stackpos.addr, align 4
  %call10 = call i32 @symbexec(%struct.Proto* %19, i32 %20, i32 %21)
  store i32 %call10, i32* %i, align 4
  %22 = load i32, i32* %i, align 4
  %shr = lshr i32 %22, 0
  %and = and i32 %shr, 63
  switch i32 %and, label %sw.default [
    i32 5, label %sw.bb
    i32 0, label %sw.bb.15
    i32 6, label %sw.bb.24
    i32 4, label %sw.bb.29
    i32 11, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %shr11 = lshr i32 %23, 14
  %and12 = and i32 %shr11, 262143
  store i32 %and12, i32* %g, align 4
  %24 = load i32, i32* %g, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.Proto*, %struct.Proto** %p, align 8
  %k = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 3
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 %idxprom
  %value13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 0
  %gc14 = bitcast %union.Value* %value13 to %union.GCObject**
  %27 = load %union.GCObject*, %union.GCObject** %gc14, align 8
  %ts = bitcast %union.GCObject* %27 to %union.TString*
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %ts, i64 1
  %28 = bitcast %union.TString* %add.ptr to i8*
  %29 = load i8**, i8*** %name.addr, align 8
  store i8* %28, i8** %29, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.15:                                         ; preds = %if.end
  %30 = load i32, i32* %i, align 4
  %shr16 = lshr i32 %30, 6
  %and17 = and i32 %shr16, 255
  store i32 %and17, i32* %a, align 4
  %31 = load i32, i32* %i, align 4
  %shr18 = lshr i32 %31, 23
  %and19 = and i32 %shr18, 511
  store i32 %and19, i32* %b, align 4
  %32 = load i32, i32* %b, align 4
  %33 = load i32, i32* %a, align 4
  %cmp20 = icmp slt i32 %32, %33
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %sw.bb.15
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %35 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %36 = load i32, i32* %b, align 4
  %37 = load i8**, i8*** %name.addr, align 8
  %call22 = call i8* @getobjname(%struct.lua_State* %34, %struct.CallInfo* %35, i32 %36, i8** %37)
  store i8* %call22, i8** %retval
  br label %return

if.end.23:                                        ; preds = %sw.bb.15
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end
  %38 = load i32, i32* %i, align 4
  %shr26 = lshr i32 %38, 14
  %and27 = and i32 %shr26, 511
  store i32 %and27, i32* %k25, align 4
  %39 = load %struct.Proto*, %struct.Proto** %p, align 8
  %40 = load i32, i32* %k25, align 4
  %call28 = call i8* @kname(%struct.Proto* %39, i32 %40)
  %41 = load i8**, i8*** %name.addr, align 8
  store i8* %call28, i8** %41, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.29:                                         ; preds = %if.end
  %42 = load i32, i32* %i, align 4
  %shr30 = lshr i32 %42, 23
  %and31 = and i32 %shr30, 511
  store i32 %and31, i32* %u, align 4
  %43 = load %struct.Proto*, %struct.Proto** %p, align 8
  %upvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 8
  %44 = load %union.TString**, %union.TString*** %upvalues, align 8
  %tobool32 = icmp ne %union.TString** %44, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.29
  %45 = load i32, i32* %u, align 4
  %idxprom33 = sext i32 %45 to i64
  %46 = load %struct.Proto*, %struct.Proto** %p, align 8
  %upvalues34 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 8
  %47 = load %union.TString**, %union.TString*** %upvalues34, align 8
  %arrayidx35 = getelementptr inbounds %union.TString*, %union.TString** %47, i64 %idxprom33
  %48 = load %union.TString*, %union.TString** %arrayidx35, align 8
  %add.ptr36 = getelementptr inbounds %union.TString, %union.TString* %48, i64 1
  %49 = bitcast %union.TString* %add.ptr36 to i8*
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %49, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), %cond.false ]
  %50 = load i8**, i8*** %name.addr, align 8
  store i8* %cond, i8** %50, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.37:                                         ; preds = %if.end
  %51 = load i32, i32* %i, align 4
  %shr39 = lshr i32 %51, 14
  %and40 = and i32 %shr39, 511
  store i32 %and40, i32* %k38, align 4
  %52 = load %struct.Proto*, %struct.Proto** %p, align 8
  %53 = load i32, i32* %k38, align 4
  %call41 = call i8* @kname(%struct.Proto* %52, i32 %53)
  %54 = load i8**, i8*** %name.addr, align 8
  store i8* %call41, i8** %54, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.23
  br label %if.end.42

if.end.42:                                        ; preds = %sw.epilog, %land.lhs.true, %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.42, %sw.bb.37, %cond.end, %sw.bb.24, %if.then.21, %sw.bb, %if.then.9
  %55 = load i8*, i8** %retval
  ret i8* %55
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_runerror(%struct.lua_State* %L, i8* %fmt, ...) #0 {
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
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %call = call i8* @luaO_pushvfstring(%struct.lua_State* %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  call void @addinfo(%struct.lua_State* %0, i8* %call)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaG_errormsg(%struct.lua_State* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_concaterror(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %p1.addr = alloca %struct.lua_TValue*, align 8
  %p2.addr = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %p1.addr, align 8
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %p2.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt1, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %p2.addr, align 8
  store %struct.lua_TValue* %4, %struct.lua_TValue** %p1.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  call void @luaG_typeerror(%struct.lua_State* %5, %struct.lua_TValue* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_aritherror(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %p1.addr = alloca %struct.lua_TValue*, align 8
  %p2.addr = alloca %struct.lua_TValue*, align 8
  %temp = alloca %struct.lua_TValue, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %p1.addr, align 8
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %p2.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  %call = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %0, %struct.lua_TValue* %temp)
  %cmp = icmp eq %struct.lua_TValue* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %p2.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %p2.addr, align 8
  call void @luaG_typeerror(%struct.lua_State* %2, %struct.lua_TValue* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

declare hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue*, %struct.lua_TValue*) #1

; Function Attrs: nounwind uwtable
define hidden i32 @luaG_ordererror(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %p1.addr = alloca %struct.lua_TValue*, align 8
  %p2.addr = alloca %struct.lua_TValue*, align 8
  %t1 = alloca i8*, align 8
  %t2 = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %p1.addr, align 8
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %p2.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %t1, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %p2.addr, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 1
  %4 = load i32, i32* %tt1, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i32 0, i64 %idxprom2
  %5 = load i8*, i8** %arrayidx3, align 8
  store i8* %5, i8** %t2, align 8
  %6 = load i8*, i8** %t1, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %7 to i32
  %8 = load i8*, i8** %t2, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, %conv6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load i8*, i8** %t1, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i8*, i8** %t1, align 8
  %14 = load i8*, i8** %t2, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* %13, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_errormsg(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %errfunc1 = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %o210 = alloca %struct.lua_TValue*, align 8
  %o111 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errfunc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 27
  %1 = load i64, i64* %errfunc, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 10
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errfunc2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 27
  %6 = load i64, i64* %errfunc2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %6
  %7 = bitcast i8* %add.ptr to %struct.lua_TValue*
  store %struct.lua_TValue* %7, %struct.lua_TValue** %errfunc1, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %errfunc1, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %9 = load i32, i32* %tt, align 4
  %cmp3 = icmp eq i32 %9, 6
  br i1 %cmp3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_throw(%struct.lua_State* %10, i32 5)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 -1
  store %struct.lua_TValue* %add.ptr5, %struct.lua_TValue** %o2, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 4
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %top6, align 8
  store %struct.lua_TValue* %14, %struct.lua_TValue** %o1, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %17 = bitcast %union.Value* %value to i8*
  %18 = bitcast %union.Value* %value7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 1
  %20 = load i32, i32* %tt8, align 4
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 1
  store i32 %20, i32* %tt9, align 4
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %errfunc1, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %o210, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 4
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %top12, align 8
  %add.ptr13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 -1
  store %struct.lua_TValue* %add.ptr13, %struct.lua_TValue** %o111, align 8
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %o111, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %o210, align 8
  %value15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 0
  %27 = bitcast %union.Value* %value14 to i8*
  %28 = bitcast %union.Value* %value15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %o210, align 8
  %tt16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 1
  %30 = load i32, i32* %tt16, align 4
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %o111, align 8
  %tt17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 1
  store i32 %30, i32* %tt17, align 4
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 9
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %34 = bitcast %struct.lua_TValue* %33 to i8*
  %35 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 4
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %top18, align 8
  %37 = bitcast %struct.lua_TValue* %36 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp19 = icmp sle i64 %sub.ptr.sub, 16
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %38, i32 1)
  br label %if.end.21

if.else:                                          ; preds = %if.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %39 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 4
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %top22, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top22, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 4
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %top23, align 8
  %add.ptr24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 -2
  call void @luaD_call(%struct.lua_State* %41, %struct.lua_TValue* %add.ptr24, i32 1)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.21, %entry
  %44 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_throw(%struct.lua_State* %44, i32 2)
  ret void
}

declare hidden void @luaD_throw(%struct.lua_State*, i32) #1

declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @addinfo(%struct.lua_State* %L, i8* %msg) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %msg.addr = alloca i8*, align 8
  %ci = alloca %struct.CallInfo*, align 8
  %buff = alloca [60 x i8], align 16
  %line = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 7
  %1 = load %struct.CallInfo*, %struct.CallInfo** %ci1, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %ci, align 8
  %2 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2, i32 0, i32 1
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 1
  %4 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %4, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func2 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i32 0, i32 1
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %func2, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %7 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %7 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %8 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %call = call i32 @currentline(%struct.lua_State* %9, %struct.CallInfo* %10)
  store i32 %call, i32* %line, align 4
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %buff, i32 0, i32 0
  %11 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %call3 = call %struct.Proto* @getluaproto(%struct.CallInfo* %11)
  %source = getelementptr inbounds %struct.Proto, %struct.Proto* %call3, i32 0, i32 9
  %12 = load %union.TString*, %union.TString** %source, align 8
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %12, i64 1
  %13 = bitcast %union.TString* %add.ptr to i8*
  call void @luaO_chunkid(i8* %arraydecay, i8* %13, i64 60)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %arraydecay4 = getelementptr inbounds [60 x i8], [60 x i8]* %buff, i32 0, i32 0
  %15 = load i32, i32* %line, align 4
  %16 = load i8*, i8** %msg.addr, align 8
  %call5 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay4, i32 %15, i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.Proto* @getluaproto(%struct.CallInfo* %ci) #0 {
entry:
  %ci.addr = alloca %struct.CallInfo*, align 8
  store %struct.CallInfo* %ci, %struct.CallInfo** %ci.addr, align 8
  %0 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i32 0, i32 1
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i32 0, i32 1
  %2 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func1 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i32 0, i32 1
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %func1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %5 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %6 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func2 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i32 0, i32 1
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %func2, align 8
  %value3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %gc4 = bitcast %union.Value* %value3 to %union.GCObject**
  %9 = load %union.GCObject*, %union.GCObject** %gc4, align 8
  %cl5 = bitcast %union.GCObject* %9 to %union.Closure*
  %l = bitcast %union.Closure* %cl5 to %struct.LClosure*
  %p = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %10 = load %struct.Proto*, %struct.Proto** %p, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Proto* [ %10, %cond.true ], [ null, %cond.false ]
  ret %struct.Proto* %cond
}

declare hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @currentpc(%struct.lua_State* %L, %struct.CallInfo* %ci) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %ci.addr = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.CallInfo* %ci, %struct.CallInfo** %ci.addr, align 8
  %0 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i32 0, i32 1
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i32 0, i32 1
  %2 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func1 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i32 0, i32 1
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %func1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %5 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %6 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %7 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %9 = load %struct.CallInfo*, %struct.CallInfo** %ci2, align 8
  %cmp3 = icmp eq %struct.CallInfo* %7, %9
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 8
  %11 = load i32*, i32** %savedpc, align 8
  %12 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %savedpc5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 3
  store i32* %11, i32** %savedpc5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %13 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %savedpc7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %13, i32 0, i32 3
  %14 = load i32*, i32** %savedpc7, align 8
  %15 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %15, i32 0, i32 1
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %func8, align 8
  %value9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %gc10 = bitcast %union.Value* %value9 to %union.GCObject**
  %17 = load %union.GCObject*, %union.GCObject** %gc10, align 8
  %cl11 = bitcast %union.GCObject* %17 to %union.Closure*
  %l = bitcast %union.Closure* %cl11 to %struct.LClosure*
  %p = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %18 = load %struct.Proto*, %struct.Proto** %p, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 4
  %19 = load i32*, i32** %code, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @info_tailcall(%struct.lua_Debug* %ar) #0 {
entry:
  %ar.addr = alloca %struct.lua_Debug*, align 8
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  %0 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %namewhat = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %0, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8** %namewhat, align 8
  %1 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %name = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8** %name, align 8
  %2 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %what = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8** %what, align 8
  %3 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %currentline = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i32 0, i32 5
  store i32 -1, i32* %currentline, align 4
  %4 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %linedefined = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 7
  store i32 -1, i32* %linedefined, align 4
  %5 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %lastlinedefined = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %5, i32 0, i32 8
  store i32 -1, i32* %lastlinedefined, align 4
  %6 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %source = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %6, i32 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8** %source, align 8
  %7 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %short_src = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %7, i32 0, i32 9
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %short_src, i32 0, i32 0
  %8 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %source1 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 4
  %9 = load i8*, i8** %source1, align 8
  call void @luaO_chunkid(i8* %arraydecay, i8* %9, i64 60)
  %10 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %nups = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %10, i32 0, i32 6
  store i32 0, i32* %nups, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @funcinfo(%struct.lua_Debug* %ar, %union.Closure* %cl) #0 {
entry:
  %ar.addr = alloca %struct.lua_Debug*, align 8
  %cl.addr = alloca %union.Closure*, align 8
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  store %union.Closure* %cl, %union.Closure** %cl.addr, align 8
  %0 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %c = bitcast %union.Closure* %0 to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %1 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %source = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8** %source, align 8
  %3 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %linedefined = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i32 0, i32 7
  store i32 -1, i32* %linedefined, align 4
  %4 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %lastlinedefined = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 8
  store i32 -1, i32* %lastlinedefined, align 4
  %5 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %what = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8** %what, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %l = bitcast %union.Closure* %6 to %struct.LClosure*
  %p = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %7 = load %struct.Proto*, %struct.Proto** %p, align 8
  %source1 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 9
  %8 = load %union.TString*, %union.TString** %source1, align 8
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %8, i64 1
  %9 = bitcast %union.TString* %add.ptr to i8*
  %10 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %source2 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %10, i32 0, i32 4
  store i8* %9, i8** %source2, align 8
  %11 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %l3 = bitcast %union.Closure* %11 to %struct.LClosure*
  %p4 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l3, i32 0, i32 7
  %12 = load %struct.Proto*, %struct.Proto** %p4, align 8
  %linedefined5 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 16
  %13 = load i32, i32* %linedefined5, align 4
  %14 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %linedefined6 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %14, i32 0, i32 7
  store i32 %13, i32* %linedefined6, align 4
  %15 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %l7 = bitcast %union.Closure* %15 to %struct.LClosure*
  %p8 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l7, i32 0, i32 7
  %16 = load %struct.Proto*, %struct.Proto** %p8, align 8
  %lastlinedefined9 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 17
  %17 = load i32, i32* %lastlinedefined9, align 4
  %18 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %lastlinedefined10 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %18, i32 0, i32 8
  store i32 %17, i32* %lastlinedefined10, align 4
  %19 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %linedefined11 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %19, i32 0, i32 7
  %20 = load i32, i32* %linedefined11, align 4
  %cmp = icmp eq i32 %20, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)
  %21 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %what12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %21, i32 0, i32 3
  store i8* %cond, i8** %what12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %short_src = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %22, i32 0, i32 9
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %short_src, i32 0, i32 0
  %23 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8
  %source13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %23, i32 0, i32 4
  %24 = load i8*, i8** %source13, align 8
  call void @luaO_chunkid(i8* %arraydecay, i8* %24, i64 60)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @currentline(%struct.lua_State* %L, %struct.CallInfo* %ci) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %ci.addr = alloca %struct.CallInfo*, align 8
  %pc = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.CallInfo* %ci, %struct.CallInfo** %ci.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %call = call i32 @currentpc(%struct.lua_State* %0, %struct.CallInfo* %1)
  store i32 %call, i32* %pc, align 4
  %2 = load i32, i32* %pc, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i32 0, i32 1
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %5 to %union.Closure*
  %l = bitcast %union.Closure* %cl to %struct.LClosure*
  %p = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %6 = load %struct.Proto*, %struct.Proto** %p, align 8
  %lineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 6
  %7 = load i32*, i32** %lineinfo, align 8
  %tobool = icmp ne i32* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %8 = load i32, i32* %pc, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func1 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i32 0, i32 1
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %func1, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %gc3 = bitcast %union.Value* %value2 to %union.GCObject**
  %11 = load %union.GCObject*, %union.GCObject** %gc3, align 8
  %cl4 = bitcast %union.GCObject* %11 to %union.Closure*
  %l5 = bitcast %union.Closure* %cl4 to %struct.LClosure*
  %p6 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l5, i32 0, i32 7
  %12 = load %struct.Proto*, %struct.Proto** %p6, align 8
  %lineinfo7 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 6
  %13 = load i32*, i32** %lineinfo7, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i8* @getfuncname(%struct.lua_State* %L, %struct.CallInfo* %ci, i8** %name) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %ci.addr = alloca %struct.CallInfo*, align 8
  %name.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.CallInfo* %ci, %struct.CallInfo** %ci.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  %0 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %0, i32 0, i32 1
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i32 0, i32 1
  %2 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func1 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i32 0, i32 1
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %func1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %5 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %6 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %tailcalls = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i32 0, i32 5
  %8 = load i32, i32* %tailcalls, align 4
  %cmp3 = icmp sgt i32 %8, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %9 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 -1
  %func4 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %add.ptr, i32 0, i32 1
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %func4, align 8
  %tt5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %11 = load i32, i32* %tt5, align 4
  %cmp6 = icmp eq i32 %11, 6
  br i1 %cmp6, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %12 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %add.ptr8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i64 -1
  %func9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %add.ptr8, i32 0, i32 1
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %func9, align 8
  %value10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %gc11 = bitcast %union.Value* %value10 to %union.GCObject**
  %14 = load %union.GCObject*, %union.GCObject** %gc11, align 8
  %cl12 = bitcast %union.GCObject* %14 to %union.Closure*
  %c13 = bitcast %union.Closure* %cl12 to %struct.CClosure*
  %isC14 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c13, i32 0, i32 3
  %15 = load i8, i8* %isC14, align 1
  %tobool15 = icmp ne i8 %15, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7, %lor.lhs.false, %land.lhs.true.2
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7
  %16 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i32 -1
  store %struct.CallInfo* %incdec.ptr, %struct.CallInfo** %ci.addr, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %call = call i32 @currentpc(%struct.lua_State* %17, %struct.CallInfo* %18)
  %idxprom = sext i32 %call to i64
  %19 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %func16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %19, i32 0, i32 1
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %func16, align 8
  %value17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %gc18 = bitcast %union.Value* %value17 to %union.GCObject**
  %21 = load %union.GCObject*, %union.GCObject** %gc18, align 8
  %cl19 = bitcast %union.GCObject* %21 to %union.Closure*
  %l = bitcast %union.Closure* %cl19 to %struct.LClosure*
  %p = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %22 = load %struct.Proto*, %struct.Proto** %p, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 4
  %23 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %23, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  store i32 %24, i32* %i, align 4
  %25 = load i32, i32* %i, align 4
  %shr = lshr i32 %25, 0
  %and = and i32 %shr, 63
  %cmp20 = icmp eq i32 %and, 28
  br i1 %cmp20, label %if.then.29, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %shr22 = lshr i32 %26, 0
  %and23 = and i32 %shr22, 63
  %cmp24 = icmp eq i32 %and23, 29
  br i1 %cmp24, label %if.then.29, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.21
  %27 = load i32, i32* %i, align 4
  %shr26 = lshr i32 %27, 0
  %and27 = and i32 %shr26, 63
  %cmp28 = icmp eq i32 %and27, 33
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %lor.lhs.false.25, %lor.lhs.false.21, %if.end
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %29 = load %struct.CallInfo*, %struct.CallInfo** %ci.addr, align 8
  %30 = load i32, i32* %i, align 4
  %shr30 = lshr i32 %30, 6
  %and31 = and i32 %shr30, 255
  %31 = load i8**, i8*** %name.addr, align 8
  %call32 = call i8* @getobjname(%struct.lua_State* %28, %struct.CallInfo* %29, i32 %and31, i8** %31)
  store i8* %call32, i8** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.25
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.29, %if.then
  %32 = load i8*, i8** %retval
  ret i8* %32
}

declare hidden void @luaO_chunkid(i8*, i8*, i64) #1

declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) #1

declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @precheck(%struct.Proto* %pt) #0 {
entry:
  %retval = alloca i32, align 4
  %pt.addr = alloca %struct.Proto*, align 8
  store %struct.Proto* %pt, %struct.Proto** %pt.addr, align 8
  %0 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i32 0, i32 22
  %1 = load i8, i8* %maxstacksize, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 250
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %numparams = getelementptr inbounds %struct.Proto, %struct.Proto* %2, i32 0, i32 20
  %3 = load i8, i8* %numparams, align 1
  %conv2 = zext i8 %3 to i32
  %4 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %is_vararg = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i32 0, i32 21
  %5 = load i8, i8* %is_vararg, align 1
  %conv3 = zext i8 %5 to i32
  %and = and i32 %conv3, 1
  %add = add nsw i32 %conv2, %and
  %6 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize4 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 22
  %7 = load i8, i8* %maxstacksize4, align 1
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp sle i32 %add, %conv5
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %is_vararg10 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 21
  %9 = load i8, i8* %is_vararg10, align 1
  %conv11 = zext i8 %9 to i32
  %and12 = and i32 %conv11, 4
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end.18

lor.lhs.false:                                    ; preds = %if.end.9
  %10 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %is_vararg13 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 21
  %11 = load i8, i8* %is_vararg13, align 1
  %conv14 = zext i8 %11 to i32
  %and15 = and i32 %conv14, 1
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false, %if.end.9
  %12 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizeupvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 10
  %13 = load i32, i32* %sizeupvalues, align 4
  %14 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %nups = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 19
  %15 = load i8, i8* %nups, align 1
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp sle i32 %13, %conv19
  br i1 %cmp20, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %16 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizelineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 13
  %17 = load i32, i32* %sizelineinfo, align 4
  %18 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizecode = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 12
  %19 = load i32, i32* %sizecode, align 4
  %cmp24 = icmp eq i32 %17, %19
  br i1 %cmp24, label %if.end.31, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.end.23
  %20 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizelineinfo27 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 13
  %21 = load i32, i32* %sizelineinfo27, align 4
  %cmp28 = icmp eq i32 %21, 0
  br i1 %cmp28, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false.26
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false.26, %if.end.23
  %22 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizecode32 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 12
  %23 = load i32, i32* %sizecode32, align 4
  %cmp33 = icmp sgt i32 %23, 0
  br i1 %cmp33, label %land.lhs.true, label %if.then.39

land.lhs.true:                                    ; preds = %if.end.31
  %24 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizecode35 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 12
  %25 = load i32, i32* %sizecode35, align 4
  %sub = sub nsw i32 %25, 1
  %idxprom = sext i32 %sub to i64
  %26 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 4
  %27 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %28, 0
  %and36 = and i32 %shr, 63
  %cmp37 = icmp eq i32 %and36, 30
  br i1 %cmp37, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true, %if.end.31
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.39, %if.then.30, %if.then.22, %if.then.17, %if.then.8, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @checkArgMode(%struct.Proto* %pt, i32 %r, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %pt.addr = alloca %struct.Proto*, align 8
  %r.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store %struct.Proto* %pt, %struct.Proto** %pt.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %r.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load i32, i32* %r.addr, align 4
  %3 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i32 0, i32 22
  %4 = load i8, i8* %maxstacksize, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp slt i32 %2, %conv
  br i1 %cmp3, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %5 = load i32, i32* %r.addr, align 4
  %and = and i32 %5, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.7
  %6 = load i32, i32* %r.addr, align 4
  %and8 = and i32 %6, -257
  %7 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %sizek = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 11
  %8 = load i32, i32* %sizek, align 4
  %cmp9 = icmp slt i32 %and8, %8
  br i1 %cmp9, label %if.end.16, label %if.then.15

cond.false:                                       ; preds = %sw.bb.7
  %9 = load i32, i32* %r.addr, align 4
  %10 = load %struct.Proto*, %struct.Proto** %pt.addr, align 8
  %maxstacksize11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 22
  %11 = load i8, i8* %maxstacksize11, align 1
  %conv12 = zext i8 %11 to i32
  %cmp13 = icmp slt i32 %9, %conv12
  br i1 %cmp13, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %cond.false, %cond.true
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %cond.false, %cond.true
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.16, %if.end.6, %sw.bb.1, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.15, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i8* @kname(%struct.Proto* %p, i32 %c) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.Proto*, align 8
  %c.addr = alloca i32, align 4
  store %struct.Proto* %p, %struct.Proto** %p.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %and = and i32 %0, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %and1 = and i32 %1, -257
  %idxprom = sext i32 %and1 to i64
  %2 = load %struct.Proto*, %struct.Proto** %p.addr, align 8
  %k = getelementptr inbounds %struct.Proto, %struct.Proto* %2, i32 0, i32 3
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 %idxprom
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 1
  %4 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %c.addr, align 4
  %and2 = and i32 %5, -257
  %idxprom3 = sext i32 %and2 to i64
  %6 = load %struct.Proto*, %struct.Proto** %p.addr, align 8
  %k4 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 3
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %k4, align 8
  %arrayidx5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %idxprom3
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx5, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %8 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %8 to %union.TString*
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %ts, i64 1
  %9 = bitcast %union.TString* %add.ptr to i8*
  store i8* %9, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
