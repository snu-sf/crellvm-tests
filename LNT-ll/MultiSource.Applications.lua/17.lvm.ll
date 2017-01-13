; ModuleID = './MultiSource.Applications.lua/17.lvm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, {}*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.1 }
%struct.anon.1 = type { %union.Value, i32, %struct.Node* }
%union.TString = type { %struct.anon }
%struct.anon = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%union.Udata = type { %struct.anon.0 }
%struct.anon.0 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }

@.str = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"loop in gettable\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"loop in settable\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"get length of\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"'for' initial value must be a number\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"'for' limit must be a number\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"'for' step must be a number\00", align 1

; Function Attrs: nounwind uwtable
define hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %obj, %struct.lua_TValue* %n) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %obj.addr = alloca %struct.lua_TValue*, align 8
  %n.addr = alloca %struct.lua_TValue*, align 8
  %num = alloca double, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_TValue* %obj, %struct.lua_TValue** %obj.addr, align 8
  store %struct.lua_TValue* %n, %struct.lua_TValue** %n.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %obj.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %obj.addr, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %obj.addr, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 1
  %4 = load i32, i32* %tt1, align 4
  %cmp2 = icmp eq i32 %4, 4
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %obj.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %6 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %6 to %union.TString*
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %ts, i64 1
  %7 = bitcast %union.TString* %add.ptr to i8*
  %call = call i32 @luaO_str2d(i8* %7, double* %num)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %n.addr, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %i_o, align 8
  %9 = load double, double* %num, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %n5 = bitcast %union.Value* %value4 to double*
  store double %9, double* %n5, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  store i32 3, i32* %tt6, align 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %n.addr, align 8
  store %struct.lua_TValue* %12, %struct.lua_TValue** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  store %struct.lua_TValue* null, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.3, %if.then
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %13
}

declare hidden i32 @luaO_str2d(i8*, double*) #1

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_tostring(%struct.lua_State* %L, %struct.lua_TValue* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %obj.addr = alloca %struct.lua_TValue*, align 8
  %s = alloca [32 x i8], align 16
  %n = alloca double, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %obj, %struct.lua_TValue** %obj.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %obj.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %obj.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 0
  %n1 = bitcast %union.Value* %value to double*
  %3 = load double, double* %n1, align 8
  store double %3, double* %n, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %s, i32 0, i32 0
  %4 = load double, double* %n, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), double %4) #4
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %obj.addr, align 8
  store %struct.lua_TValue* %5, %struct.lua_TValue** %i_o, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %s, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %s, i32 0, i32 0
  %call4 = call i64 @strlen(i8* %arraydecay3) #6
  %call5 = call %union.TString* @luaS_newlstr(%struct.lua_State* %6, i8* %arraydecay2, i64 %call4)
  %7 = bitcast %union.TString* %call5 to %union.GCObject*
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %gc = bitcast %union.Value* %value6 to %union.GCObject**
  store %union.GCObject* %7, %union.GCObject** %gc, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  store i32 4, i32* %tt7, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define hidden void @luaV_gettable(%struct.lua_State* %L, %struct.lua_TValue* %t, %struct.lua_TValue* %key, %struct.lua_TValue* %val) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.lua_TValue*, align 8
  %key.addr = alloca %struct.lua_TValue*, align 8
  %val.addr = alloca %struct.lua_TValue*, align 8
  %loop = alloca i32, align 4
  %tm = alloca %struct.lua_TValue*, align 8
  %h = alloca %struct.Table*, align 8
  %res = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %t, %struct.lua_TValue** %t.addr, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %key.addr, align 8
  store %struct.lua_TValue* %val, %struct.lua_TValue** %val.addr, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %loop, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %t.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i32 0, i32 1
  %2 = load i32, i32* %tt, align 4
  %cmp1 = icmp eq i32 %2, 5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %t.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %4 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h2 = bitcast %union.GCObject* %4 to %struct.Table*
  store %struct.Table* %h2, %struct.Table** %h, align 8
  %5 = load %struct.Table*, %struct.Table** %h, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call = call %struct.lua_TValue* @luaH_get(%struct.Table* %5, %struct.lua_TValue* %6)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %res, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %res, align 8
  %tt3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 1
  %8 = load i32, i32* %tt3, align 4
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.then
  %9 = load %struct.Table*, %struct.Table** %h, align 8
  %metatable = getelementptr inbounds %struct.Table, %struct.Table* %9, i32 0, i32 5
  %10 = load %struct.Table*, %struct.Table** %metatable, align 8
  %cmp5 = icmp eq %struct.Table* %10, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end.11

cond.false:                                       ; preds = %lor.lhs.false
  %11 = load %struct.Table*, %struct.Table** %h, align 8
  %metatable6 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 5
  %12 = load %struct.Table*, %struct.Table** %metatable6, align 8
  %flags = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 3
  %13 = load i8, i8* %flags, align 1
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %14 = load %struct.Table*, %struct.Table** %h, align 8
  %metatable9 = getelementptr inbounds %struct.Table, %struct.Table* %14, i32 0, i32 5
  %15 = load %struct.Table*, %struct.Table** %metatable9, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %17 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %tmname = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 24
  %arrayidx = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %tmname, i32 0, i64 0
  %18 = load %union.TString*, %union.TString** %arrayidx, align 8
  %call10 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %15, i32 0, %union.TString* %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi %struct.lua_TValue* [ null, %cond.true.7 ], [ %call10, %cond.false.8 ]
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.end, %cond.true
  %cond12 = phi %struct.lua_TValue* [ null, %cond.true ], [ %cond, %cond.end ]
  store %struct.lua_TValue* %cond12, %struct.lua_TValue** %tm, align 8
  %cmp13 = icmp eq %struct.lua_TValue* %cond12, null
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %cond.end.11, %if.then
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %res, align 8
  store %struct.lua_TValue* %19, %struct.lua_TValue** %o2, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %val.addr, align 8
  store %struct.lua_TValue* %20, %struct.lua_TValue** %o1, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 0
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %23 = bitcast %union.Value* %value16 to i8*
  %24 = bitcast %union.Value* %value17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 8, i1 false)
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 1
  %26 = load i32, i32* %tt18, align 4
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  store i32 %26, i32* %tt19, align 4
  br label %return

if.end:                                           ; preds = %cond.end.11
  br label %if.end.26

if.else:                                          ; preds = %for.body
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %t.addr, align 8
  %call20 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %28, %struct.lua_TValue* %29, i32 0)
  store %struct.lua_TValue* %call20, %struct.lua_TValue** %tm, align 8
  %tt21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %call20, i32 0, i32 1
  %30 = load i32, i32* %tt21, align 4
  %cmp22 = icmp eq i32 %30, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %t.addr, align 8
  call void @luaG_typeerror(%struct.lua_State* %31, %struct.lua_TValue* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %tt27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  %34 = load i32, i32* %tt27, align 4
  %cmp28 = icmp eq i32 %34, 6
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  %35 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %val.addr, align 8
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %t.addr, align 8
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  call void @callTMres(%struct.lua_State* %35, %struct.lua_TValue* %36, %struct.lua_TValue* %37, %struct.lua_TValue* %38, %struct.lua_TValue* %39)
  br label %return

if.end.31:                                        ; preds = %if.end.26
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  store %struct.lua_TValue* %40, %struct.lua_TValue** %t.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %41 = load i32, i32* %loop, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end, %if.then.30, %if.then.15
  ret void
}

declare hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) #1

declare hidden %struct.lua_TValue* @luaT_gettm(%struct.Table*, i32, %union.TString*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) #1

declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @callTMres(%struct.lua_State* %L, %struct.lua_TValue* %res, %struct.lua_TValue* %f, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %res.addr = alloca %struct.lua_TValue*, align 8
  %f.addr = alloca %struct.lua_TValue*, align 8
  %p1.addr = alloca %struct.lua_TValue*, align 8
  %p2.addr = alloca %struct.lua_TValue*, align 8
  %result = alloca i64, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %o23 = alloca %struct.lua_TValue*, align 8
  %o14 = alloca %struct.lua_TValue*, align 8
  %o210 = alloca %struct.lua_TValue*, align 8
  %o111 = alloca %struct.lua_TValue*, align 8
  %o229 = alloca %struct.lua_TValue*, align 8
  %o131 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %res, %struct.lua_TValue** %res.addr, align 8
  store %struct.lua_TValue* %f, %struct.lua_TValue** %f.addr, align 8
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %p1.addr, align 8
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %p2.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %res.addr, align 8
  %1 = bitcast %struct.lua_TValue* %0 to i8*
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 10
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %result, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %f.addr, align 8
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %7, %struct.lua_TValue** %o1, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %10 = bitcast %union.Value* %value to i8*
  %11 = bitcast %union.Value* %value1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %13 = load i32, i32* %tt, align 4
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  store i32 %13, i32* %tt2, align 4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  store %struct.lua_TValue* %15, %struct.lua_TValue** %o23, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top5, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o14, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %o14, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %o23, align 8
  %value7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %20 = bitcast %union.Value* %value6 to i8*
  %21 = bitcast %union.Value* %value7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 8, i1 false)
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %o23, align 8
  %tt8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 1
  %23 = load i32, i32* %tt8, align 4
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %o14, align 8
  %tt9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 1
  store i32 %23, i32* %tt9, align 4
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %p2.addr, align 8
  store %struct.lua_TValue* %25, %struct.lua_TValue** %o210, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 4
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %top12, align 8
  %add.ptr13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 2
  store %struct.lua_TValue* %add.ptr13, %struct.lua_TValue** %o111, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %o111, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 0
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %o210, align 8
  %value15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 0
  %30 = bitcast %union.Value* %value14 to i8*
  %31 = bitcast %union.Value* %value15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %o210, align 8
  %tt16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 1
  %33 = load i32, i32* %tt16, align 4
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %o111, align 8
  %tt17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 1
  store i32 %33, i32* %tt17, align 4
  %35 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 9
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %37 = bitcast %struct.lua_TValue* %36 to i8*
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 4
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %top18, align 8
  %40 = bitcast %struct.lua_TValue* %39 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %40 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %cmp = icmp sle i64 %sub.ptr.sub21, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %41 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %41, i32 3)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 4
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %top22, align 8
  %add.ptr23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 3
  store %struct.lua_TValue* %add.ptr23, %struct.lua_TValue** %top22, align 8
  %44 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 4
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %top24, align 8
  %add.ptr25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 -3
  call void @luaD_call(%struct.lua_State* %44, %struct.lua_TValue* %add.ptr25, i32 1)
  %47 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 10
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %stack26, align 8
  %49 = bitcast %struct.lua_TValue* %48 to i8*
  %50 = load i64, i64* %result, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %49, i64 %50
  %51 = bitcast i8* %add.ptr27 to %struct.lua_TValue*
  store %struct.lua_TValue* %51, %struct.lua_TValue** %res.addr, align 8
  %52 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 4
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %top28, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 -1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top28, align 8
  %54 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 4
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %top30, align 8
  store %struct.lua_TValue* %55, %struct.lua_TValue** %o229, align 8
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %res.addr, align 8
  store %struct.lua_TValue* %56, %struct.lua_TValue** %o131, align 8
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %o131, align 8
  %value32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 0
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %o229, align 8
  %value33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 0
  %59 = bitcast %union.Value* %value32 to i8*
  %60 = bitcast %union.Value* %value33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 8, i32 8, i1 false)
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %o229, align 8
  %tt34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 0, i32 1
  %62 = load i32, i32* %tt34, align 4
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %o131, align 8
  %tt35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i32 0, i32 1
  store i32 %62, i32* %tt35, align 4
  ret void
}

declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define hidden void @luaV_settable(%struct.lua_State* %L, %struct.lua_TValue* %t, %struct.lua_TValue* %key, %struct.lua_TValue* %val) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.lua_TValue*, align 8
  %key.addr = alloca %struct.lua_TValue*, align 8
  %val.addr = alloca %struct.lua_TValue*, align 8
  %loop = alloca i32, align 4
  %tm = alloca %struct.lua_TValue*, align 8
  %h = alloca %struct.Table*, align 8
  %oldval = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %t, %struct.lua_TValue** %t.addr, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %key.addr, align 8
  store %struct.lua_TValue* %val, %struct.lua_TValue** %val.addr, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %loop, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %t.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i32 0, i32 1
  %2 = load i32, i32* %tt, align 4
  %cmp1 = icmp eq i32 %2, 5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %t.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %4 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h2 = bitcast %union.GCObject* %4 to %struct.Table*
  store %struct.Table* %h2, %struct.Table** %h, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.Table*, %struct.Table** %h, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %5, %struct.Table* %6, %struct.lua_TValue* %7)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %oldval, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %oldval, align 8
  %tt3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %9 = load i32, i32* %tt3, align 4
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.then
  %10 = load %struct.Table*, %struct.Table** %h, align 8
  %metatable = getelementptr inbounds %struct.Table, %struct.Table* %10, i32 0, i32 5
  %11 = load %struct.Table*, %struct.Table** %metatable, align 8
  %cmp5 = icmp eq %struct.Table* %11, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end.11

cond.false:                                       ; preds = %lor.lhs.false
  %12 = load %struct.Table*, %struct.Table** %h, align 8
  %metatable6 = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 5
  %13 = load %struct.Table*, %struct.Table** %metatable6, align 8
  %flags = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 3
  %14 = load i8, i8* %flags, align 1
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %15 = load %struct.Table*, %struct.Table** %h, align 8
  %metatable9 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 5
  %16 = load %struct.Table*, %struct.Table** %metatable9, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 6
  %18 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %tmname = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 24
  %arrayidx = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %tmname, i32 0, i64 1
  %19 = load %union.TString*, %union.TString** %arrayidx, align 8
  %call10 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %16, i32 1, %union.TString* %19)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi %struct.lua_TValue* [ null, %cond.true.7 ], [ %call10, %cond.false.8 ]
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.end, %cond.true
  %cond12 = phi %struct.lua_TValue* [ null, %cond.true ], [ %cond, %cond.end ]
  store %struct.lua_TValue* %cond12, %struct.lua_TValue** %tm, align 8
  %cmp13 = icmp eq %struct.lua_TValue* %cond12, null
  br i1 %cmp13, label %if.then.15, label %if.end.35

if.then.15:                                       ; preds = %cond.end.11, %if.then
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %val.addr, align 8
  store %struct.lua_TValue* %20, %struct.lua_TValue** %o2, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %oldval, align 8
  store %struct.lua_TValue* %21, %struct.lua_TValue** %o1, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %24 = bitcast %union.Value* %value16 to i8*
  %25 = bitcast %union.Value* %value17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  %27 = load i32, i32* %tt18, align 4
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  store i32 %27, i32* %tt19, align 4
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %val.addr, align 8
  %tt20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 1
  %30 = load i32, i32* %tt20, align 4
  %cmp21 = icmp sge i32 %30, 4
  br i1 %cmp21, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.15
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %val.addr, align 8
  %value23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %gc24 = bitcast %union.Value* %value23 to %union.GCObject**
  %32 = load %union.GCObject*, %union.GCObject** %gc24, align 8
  %gch = bitcast %union.GCObject* %32 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %33 = load i8, i8* %marked, align 1
  %conv25 = zext i8 %33 to i32
  %and26 = and i32 %conv25, 3
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %land.lhs.true
  %34 = load %struct.Table*, %struct.Table** %h, align 8
  %35 = bitcast %struct.Table* %34 to %union.GCObject*
  %gch29 = bitcast %union.GCObject* %35 to %struct.GCheader*
  %marked30 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch29, i32 0, i32 2
  %36 = load i8, i8* %marked30, align 1
  %conv31 = zext i8 %36 to i32
  %and32 = and i32 %conv31, 4
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %land.lhs.true.28
  %37 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %38 = load %struct.Table*, %struct.Table** %h, align 8
  call void @luaC_barrierback(%struct.lua_State* %37, %struct.Table* %38)
  br label %if.end

if.end:                                           ; preds = %if.then.34, %land.lhs.true.28, %land.lhs.true, %if.then.15
  br label %return

if.end.35:                                        ; preds = %cond.end.11
  br label %if.end.42

if.else:                                          ; preds = %for.body
  %39 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %t.addr, align 8
  %call36 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %39, %struct.lua_TValue* %40, i32 1)
  store %struct.lua_TValue* %call36, %struct.lua_TValue** %tm, align 8
  %tt37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %call36, i32 0, i32 1
  %41 = load i32, i32* %tt37, align 4
  %cmp38 = icmp eq i32 %41, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.else
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %t.addr, align 8
  call void @luaG_typeerror(%struct.lua_State* %42, %struct.lua_TValue* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.35
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %tt43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i32 0, i32 1
  %45 = load i32, i32* %tt43, align 4
  %cmp44 = icmp eq i32 %45, 6
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  %46 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %t.addr, align 8
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %val.addr, align 8
  call void @callTM(%struct.lua_State* %46, %struct.lua_TValue* %47, %struct.lua_TValue* %48, %struct.lua_TValue* %49, %struct.lua_TValue* %50)
  br label %return

if.end.47:                                        ; preds = %if.end.42
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  store %struct.lua_TValue* %51, %struct.lua_TValue** %t.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %52 = load i32, i32* %loop, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end, %if.then.46, %if.end
  ret void
}

declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #1

declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) #1

; Function Attrs: nounwind uwtable
define internal void @callTM(%struct.lua_State* %L, %struct.lua_TValue* %f, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2, %struct.lua_TValue* %p3) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %struct.lua_TValue*, align 8
  %p1.addr = alloca %struct.lua_TValue*, align 8
  %p2.addr = alloca %struct.lua_TValue*, align 8
  %p3.addr = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %o23 = alloca %struct.lua_TValue*, align 8
  %o14 = alloca %struct.lua_TValue*, align 8
  %o210 = alloca %struct.lua_TValue*, align 8
  %o111 = alloca %struct.lua_TValue*, align 8
  %o218 = alloca %struct.lua_TValue*, align 8
  %o119 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %f, %struct.lua_TValue** %f.addr, align 8
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %p1.addr, align 8
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %p2.addr, align 8
  store %struct.lua_TValue* %p3, %struct.lua_TValue** %p3.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %f.addr, align 8
  store %struct.lua_TValue* %0, %struct.lua_TValue** %o2, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 4
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %o1, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %5 = bitcast %union.Value* %value to i8*
  %6 = bitcast %union.Value* %value1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 1
  %8 = load i32, i32* %tt, align 4
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  store i32 %8, i32* %tt2, align 4
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  store %struct.lua_TValue* %10, %struct.lua_TValue** %o23, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top5, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o14, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %o14, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %o23, align 8
  %value7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %15 = bitcast %union.Value* %value6 to i8*
  %16 = bitcast %union.Value* %value7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %o23, align 8
  %tt8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 1
  %18 = load i32, i32* %tt8, align 4
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %o14, align 8
  %tt9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 1
  store i32 %18, i32* %tt9, align 4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %p2.addr, align 8
  store %struct.lua_TValue* %20, %struct.lua_TValue** %o210, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 4
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %top12, align 8
  %add.ptr13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i64 2
  store %struct.lua_TValue* %add.ptr13, %struct.lua_TValue** %o111, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %o111, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %o210, align 8
  %value15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 0
  %25 = bitcast %union.Value* %value14 to i8*
  %26 = bitcast %union.Value* %value15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 8, i32 8, i1 false)
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %o210, align 8
  %tt16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  %28 = load i32, i32* %tt16, align 4
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %o111, align 8
  %tt17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 1
  store i32 %28, i32* %tt17, align 4
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %p3.addr, align 8
  store %struct.lua_TValue* %30, %struct.lua_TValue** %o218, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 4
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %top20, align 8
  %add.ptr21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 3
  store %struct.lua_TValue* %add.ptr21, %struct.lua_TValue** %o119, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %o119, align 8
  %value22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %o218, align 8
  %value23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 0
  %35 = bitcast %union.Value* %value22 to i8*
  %36 = bitcast %union.Value* %value23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 8, i1 false)
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %o218, align 8
  %tt24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 1
  %38 = load i32, i32* %tt24, align 4
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %o119, align 8
  %tt25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 1
  store i32 %38, i32* %tt25, align 4
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 9
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %42 = bitcast %struct.lua_TValue* %41 to i8*
  %43 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 4
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %top26, align 8
  %45 = bitcast %struct.lua_TValue* %44 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sle i64 %sub.ptr.sub, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %46 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %46, i32 4)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %47 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 4
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %top27, align 8
  %add.ptr28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 4
  store %struct.lua_TValue* %add.ptr28, %struct.lua_TValue** %top27, align 8
  %49 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %50 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 4
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %top29, align 8
  %add.ptr30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i64 -4
  call void @luaD_call(%struct.lua_State* %49, %struct.lua_TValue* %add.ptr30, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_lessthan(%struct.lua_State* %L, %struct.lua_TValue* %l, %struct.lua_TValue* %r) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %l.addr = alloca %struct.lua_TValue*, align 8
  %r.addr = alloca %struct.lua_TValue*, align 8
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %l, %struct.lua_TValue** %l.addr, align 8
  store %struct.lua_TValue* %r, %struct.lua_TValue** %r.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %call = call i32 @luaG_ordererror(%struct.lua_State* %4, %struct.lua_TValue* %5, %struct.lua_TValue* %6)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %tt2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 1
  %8 = load i32, i32* %tt2, align 4
  %cmp3 = icmp eq i32 %8, 3
  br i1 %cmp3, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %if.else
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  %10 = load double, double* %n, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %value5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %n6 = bitcast %union.Value* %value5 to double*
  %12 = load double, double* %n6, align 8
  %cmp7 = fcmp olt double %10, %12
  %conv = zext i1 %cmp7 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %tt9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %14 = load i32, i32* %tt9, align 4
  %cmp10 = icmp eq i32 %14, 4
  br i1 %cmp10, label %if.then.12, label %if.else.20

if.then.12:                                       ; preds = %if.else.8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %value13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %gc = bitcast %union.Value* %value13 to %union.GCObject**
  %16 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %16 to %union.TString*
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %gc15 = bitcast %union.Value* %value14 to %union.GCObject**
  %18 = load %union.GCObject*, %union.GCObject** %gc15, align 8
  %ts16 = bitcast %union.GCObject* %18 to %union.TString*
  %call17 = call i32 @l_strcmp(%union.TString* %ts, %union.TString* %ts16)
  %cmp18 = icmp slt i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  store i32 %conv19, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.else.8
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %call21 = call i32 @call_orderTM(%struct.lua_State* %19, %struct.lua_TValue* %20, %struct.lua_TValue* %21, i32 13)
  store i32 %call21, i32* %res, align 4
  %cmp22 = icmp ne i32 %call21, -1
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.else.20
  %22 = load i32, i32* %res, align 4
  store i32 %22, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %call28 = call i32 @luaG_ordererror(%struct.lua_State* %23, %struct.lua_TValue* %24, %struct.lua_TValue* %25)
  store i32 %call28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.24, %if.then.12, %if.then.4, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare hidden i32 @luaG_ordererror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #1

; Function Attrs: nounwind uwtable
define internal i32 @l_strcmp(%union.TString* %ls, %union.TString* %rs) #0 {
entry:
  %retval = alloca i32, align 4
  %ls.addr = alloca %union.TString*, align 8
  %rs.addr = alloca %union.TString*, align 8
  %l = alloca i8*, align 8
  %ll = alloca i64, align 8
  %r = alloca i8*, align 8
  %lr = alloca i64, align 8
  %temp = alloca i32, align 4
  %len4 = alloca i64, align 8
  store %union.TString* %ls, %union.TString** %ls.addr, align 8
  store %union.TString* %rs, %union.TString** %rs.addr, align 8
  %0 = load %union.TString*, %union.TString** %ls.addr, align 8
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %0, i64 1
  %1 = bitcast %union.TString* %add.ptr to i8*
  store i8* %1, i8** %l, align 8
  %2 = load %union.TString*, %union.TString** %ls.addr, align 8
  %tsv = bitcast %union.TString* %2 to %struct.anon*
  %len = getelementptr inbounds %struct.anon, %struct.anon* %tsv, i32 0, i32 5
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %ll, align 8
  %4 = load %union.TString*, %union.TString** %rs.addr, align 8
  %add.ptr1 = getelementptr inbounds %union.TString, %union.TString* %4, i64 1
  %5 = bitcast %union.TString* %add.ptr1 to i8*
  store i8* %5, i8** %r, align 8
  %6 = load %union.TString*, %union.TString** %rs.addr, align 8
  %tsv2 = bitcast %union.TString* %6 to %struct.anon*
  %len3 = getelementptr inbounds %struct.anon, %struct.anon* %tsv2, i32 0, i32 5
  %7 = load i64, i64* %len3, align 8
  store i64 %7, i64* %lr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.16, %entry
  %8 = load i8*, i8** %l, align 8
  %9 = load i8*, i8** %r, align 8
  %call = call i32 @strcoll(i8* %8, i8* %9) #6
  store i32 %call, i32* %temp, align 4
  %10 = load i32, i32* %temp, align 4
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %11 = load i32, i32* %temp, align 4
  store i32 %11, i32* %retval
  br label %return

if.else:                                          ; preds = %for.cond
  %12 = load i8*, i8** %l, align 8
  %call5 = call i64 @strlen(i8* %12) #6
  store i64 %call5, i64* %len4, align 8
  %13 = load i64, i64* %len4, align 8
  %14 = load i64, i64* %lr, align 8
  %cmp6 = icmp eq i64 %13, %14
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %15 = load i64, i64* %len4, align 8
  %16 = load i64, i64* %ll, align 8
  %cmp8 = icmp eq i64 %15, %16
  %cond = select i1 %cmp8, i32 0, i32 1
  store i32 %cond, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.else
  %17 = load i64, i64* %len4, align 8
  %18 = load i64, i64* %ll, align 8
  %cmp10 = icmp eq i64 %17, %18
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else.9
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end
  %19 = load i64, i64* %len4, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %len4, align 8
  %20 = load i64, i64* %len4, align 8
  %21 = load i8*, i8** %l, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %add.ptr13, i8** %l, align 8
  %22 = load i64, i64* %len4, align 8
  %23 = load i64, i64* %ll, align 8
  %sub = sub i64 %23, %22
  store i64 %sub, i64* %ll, align 8
  %24 = load i64, i64* %len4, align 8
  %25 = load i8*, i8** %r, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %25, i64 %24
  store i8* %add.ptr14, i8** %r, align 8
  %26 = load i64, i64* %len4, align 8
  %27 = load i64, i64* %lr, align 8
  %sub15 = sub i64 %27, %26
  store i64 %sub15, i64* %lr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.12
  br label %for.cond

return:                                           ; preds = %if.then.11, %if.then.7, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @call_orderTM(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2, i32 %event) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %p1.addr = alloca %struct.lua_TValue*, align 8
  %p2.addr = alloca %struct.lua_TValue*, align 8
  %event.addr = alloca i32, align 4
  %tm1 = alloca %struct.lua_TValue*, align 8
  %tm2 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %p1.addr, align 8
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %p2.addr, align 8
  store i32 %event, i32* %event.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  %2 = load i32, i32* %event.addr, align 4
  %call = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* %1, i32 %2)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %tm1, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %tm1, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 1
  %4 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %p2.addr, align 8
  %7 = load i32, i32* %event.addr, align 4
  %call1 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %5, %struct.lua_TValue* %6, i32 %7)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %tm2, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %tm1, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %tm2, align 8
  %call2 = call i32 @luaO_rawequalObj(%struct.lua_TValue* %8, %struct.lua_TValue* %9)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %tm1, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %p2.addr, align 8
  call void @callTMres(%struct.lua_State* %10, %struct.lua_TValue* %12, %struct.lua_TValue* %13, %struct.lua_TValue* %14, %struct.lua_TValue* %15)
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top5, align 8
  %tt6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 1
  %18 = load i32, i32* %tt6, align 4
  %cmp7 = icmp eq i32 %18, 0
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.4
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %top8, align 8
  %tt9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 1
  %21 = load i32, i32* %tt9, align 4
  %cmp10 = icmp eq i32 %21, 1
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 4
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %top11, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %b = bitcast %union.Value* %value to i32*
  %24 = load i32, i32* %b, align 4
  %cmp12 = icmp eq i32 %24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %25 = phi i1 [ false, %lor.rhs ], [ %cmp12, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.end.4
  %26 = phi i1 [ true, %if.end.4 ], [ %25, %land.end ]
  %lnot = xor i1 %26, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.3, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_equalval(%struct.lua_State* %L, %struct.lua_TValue* %t1, %struct.lua_TValue* %t2) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %t1.addr = alloca %struct.lua_TValue*, align 8
  %t2.addr = alloca %struct.lua_TValue*, align 8
  %tm = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %t1, %struct.lua_TValue** %t1.addr, align 8
  store %struct.lua_TValue* %t2, %struct.lua_TValue** %t2.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.1
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.10
    i32 7, label %sw.bb.16
    i32 5, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  %3 = load double, double* %n, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %n3 = bitcast %union.Value* %value2 to double*
  %5 = load double, double* %n3, align 8
  %cmp = fcmp oeq double %3, %5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %b = bitcast %union.Value* %value5 to i32*
  %7 = load i32, i32* %b, align 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %b7 = bitcast %union.Value* %value6 to i32*
  %9 = load i32, i32* %b7, align 4
  %cmp8 = icmp eq i32 %7, %9
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %p = bitcast %union.Value* %value11 to i8**
  %11 = load i8*, i8** %p, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %p13 = bitcast %union.Value* %value12 to i8**
  %13 = load i8*, i8** %p13, align 8
  %cmp14 = icmp eq i8* %11, %13
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %gc = bitcast %union.Value* %value17 to %union.GCObject**
  %15 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %u = bitcast %union.GCObject* %15 to %union.Udata*
  %uv = bitcast %union.Udata* %u to %struct.anon.0*
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %gc19 = bitcast %union.Value* %value18 to %union.GCObject**
  %17 = load %union.GCObject*, %union.GCObject** %gc19, align 8
  %u20 = bitcast %union.GCObject* %17 to %union.Udata*
  %uv21 = bitcast %union.Udata* %u20 to %struct.anon.0*
  %cmp22 = icmp eq %struct.anon.0* %uv, %uv21
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.16
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.16
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %gc25 = bitcast %union.Value* %value24 to %union.GCObject**
  %20 = load %union.GCObject*, %union.GCObject** %gc25, align 8
  %u26 = bitcast %union.GCObject* %20 to %union.Udata*
  %uv27 = bitcast %union.Udata* %u26 to %struct.anon.0*
  %metatable = getelementptr inbounds %struct.anon.0, %struct.anon.0* %uv27, i32 0, i32 3
  %21 = load %struct.Table*, %struct.Table** %metatable, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %gc29 = bitcast %union.Value* %value28 to %union.GCObject**
  %23 = load %union.GCObject*, %union.GCObject** %gc29, align 8
  %u30 = bitcast %union.GCObject* %23 to %union.Udata*
  %uv31 = bitcast %union.Udata* %u30 to %struct.anon.0*
  %metatable32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %uv31, i32 0, i32 3
  %24 = load %struct.Table*, %struct.Table** %metatable32, align 8
  %call = call %struct.lua_TValue* @get_compTM(%struct.lua_State* %18, %struct.Table* %21, %struct.Table* %24, i32 4)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %tm, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %gc35 = bitcast %union.Value* %value34 to %union.GCObject**
  %26 = load %union.GCObject*, %union.GCObject** %gc35, align 8
  %h = bitcast %union.GCObject* %26 to %struct.Table*
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 0
  %gc37 = bitcast %union.Value* %value36 to %union.GCObject**
  %28 = load %union.GCObject*, %union.GCObject** %gc37, align 8
  %h38 = bitcast %union.GCObject* %28 to %struct.Table*
  %cmp39 = icmp eq %struct.Table* %h, %h38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %sw.bb.33
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %sw.bb.33
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 0
  %gc44 = bitcast %union.Value* %value43 to %union.GCObject**
  %31 = load %union.GCObject*, %union.GCObject** %gc44, align 8
  %h45 = bitcast %union.GCObject* %31 to %struct.Table*
  %metatable46 = getelementptr inbounds %struct.Table, %struct.Table* %h45, i32 0, i32 5
  %32 = load %struct.Table*, %struct.Table** %metatable46, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %gc48 = bitcast %union.Value* %value47 to %union.GCObject**
  %34 = load %union.GCObject*, %union.GCObject** %gc48, align 8
  %h49 = bitcast %union.GCObject* %34 to %struct.Table*
  %metatable50 = getelementptr inbounds %struct.Table, %struct.Table* %h49, i32 0, i32 5
  %35 = load %struct.Table*, %struct.Table** %metatable50, align 8
  %call51 = call %struct.lua_TValue* @get_compTM(%struct.lua_State* %29, %struct.Table* %32, %struct.Table* %35, i32 4)
  store %struct.lua_TValue* %call51, %struct.lua_TValue** %tm, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 0
  %gc53 = bitcast %union.Value* %value52 to %union.GCObject**
  %37 = load %union.GCObject*, %union.GCObject** %gc53, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i32 0, i32 0
  %gc55 = bitcast %union.Value* %value54 to %union.GCObject**
  %39 = load %union.GCObject*, %union.GCObject** %gc55, align 8
  %cmp56 = icmp eq %union.GCObject* %37, %39
  %conv57 = zext i1 %cmp56 to i32
  store i32 %conv57, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.42, %if.end
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %cmp58 = icmp eq %struct.lua_TValue* %40, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %sw.epilog
  %41 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 4
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  call void @callTMres(%struct.lua_State* %41, %struct.lua_TValue* %43, %struct.lua_TValue* %44, %struct.lua_TValue* %45, %struct.lua_TValue* %46)
  %47 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 4
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %top62, align 8
  %tt63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 1
  %49 = load i32, i32* %tt63, align 4
  %cmp64 = icmp eq i32 %49, 0
  br i1 %cmp64, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.61
  %50 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 4
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %top66, align 8
  %tt67 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i32 0, i32 1
  %52 = load i32, i32* %tt67, align 4
  %cmp68 = icmp eq i32 %52, 1
  br i1 %cmp68, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %53 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 4
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %top70, align 8
  %value71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i32 0, i32 0
  %b72 = bitcast %union.Value* %value71 to i32*
  %55 = load i32, i32* %b72, align 4
  %cmp73 = icmp eq i32 %55, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %56 = phi i1 [ false, %lor.rhs ], [ %cmp73, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.end.61
  %57 = phi i1 [ true, %if.end.61 ], [ %56, %land.end ]
  %lnot = xor i1 %57, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.60, %sw.default, %if.then.41, %if.then, %sw.bb.10, %sw.bb.4, %sw.bb.1, %sw.bb
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal %struct.lua_TValue* @get_compTM(%struct.lua_State* %L, %struct.Table* %mt1, %struct.Table* %mt2, i32 %event) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %mt1.addr = alloca %struct.Table*, align 8
  %mt2.addr = alloca %struct.Table*, align 8
  %event.addr = alloca i32, align 4
  %tm1 = alloca %struct.lua_TValue*, align 8
  %tm2 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %mt1, %struct.Table** %mt1.addr, align 8
  store %struct.Table* %mt2, %struct.Table** %mt2.addr, align 8
  store i32 %event, i32* %event.addr, align 4
  %0 = load %struct.Table*, %struct.Table** %mt1.addr, align 8
  %cmp = icmp eq %struct.Table* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.3

cond.false:                                       ; preds = %entry
  %1 = load %struct.Table*, %struct.Table** %mt1.addr, align 8
  %flags = getelementptr inbounds %struct.Table, %struct.Table* %1, i32 0, i32 3
  %2 = load i8, i8* %flags, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %event.addr, align 4
  %shl = shl i32 1, %3
  %and = and i32 %conv, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true.1, label %cond.false.2

cond.true.1:                                      ; preds = %cond.false
  br label %cond.end

cond.false.2:                                     ; preds = %cond.false
  %4 = load %struct.Table*, %struct.Table** %mt1.addr, align 8
  %5 = load i32, i32* %event.addr, align 4
  %6 = load i32, i32* %event.addr, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %tmname = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 24
  %arrayidx = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %tmname, i32 0, i64 %idxprom
  %9 = load %union.TString*, %union.TString** %arrayidx, align 8
  %call = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %4, i32 %5, %union.TString* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.2, %cond.true.1
  %cond = phi %struct.lua_TValue* [ null, %cond.true.1 ], [ %call, %cond.false.2 ]
  br label %cond.end.3

cond.end.3:                                       ; preds = %cond.end, %cond.true
  %cond4 = phi %struct.lua_TValue* [ null, %cond.true ], [ %cond, %cond.end ]
  store %struct.lua_TValue* %cond4, %struct.lua_TValue** %tm1, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %tm1, align 8
  %cmp5 = icmp eq %struct.lua_TValue* %10, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.3
  store %struct.lua_TValue* null, %struct.lua_TValue** %retval
  br label %return

if.end:                                           ; preds = %cond.end.3
  %11 = load %struct.Table*, %struct.Table** %mt1.addr, align 8
  %12 = load %struct.Table*, %struct.Table** %mt2.addr, align 8
  %cmp7 = icmp eq %struct.Table* %11, %12
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %tm1, align 8
  store %struct.lua_TValue* %13, %struct.lua_TValue** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %14 = load %struct.Table*, %struct.Table** %mt2.addr, align 8
  %cmp11 = icmp eq %struct.Table* %14, null
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.end.10
  br label %cond.end.29

cond.false.14:                                    ; preds = %if.end.10
  %15 = load %struct.Table*, %struct.Table** %mt2.addr, align 8
  %flags15 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 3
  %16 = load i8, i8* %flags15, align 1
  %conv16 = zext i8 %16 to i32
  %17 = load i32, i32* %event.addr, align 4
  %shl17 = shl i32 1, %17
  %and18 = and i32 %conv16, %shl17
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false.14
  br label %cond.end.27

cond.false.21:                                    ; preds = %cond.false.14
  %18 = load %struct.Table*, %struct.Table** %mt2.addr, align 8
  %19 = load i32, i32* %event.addr, align 4
  %20 = load i32, i32* %event.addr, align 4
  %idxprom22 = zext i32 %20 to i64
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 6
  %22 = load %struct.global_State*, %struct.global_State** %l_G23, align 8
  %tmname24 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i32 0, i32 24
  %arrayidx25 = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %tmname24, i32 0, i64 %idxprom22
  %23 = load %union.TString*, %union.TString** %arrayidx25, align 8
  %call26 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %18, i32 %19, %union.TString* %23)
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.21, %cond.true.20
  %cond28 = phi %struct.lua_TValue* [ null, %cond.true.20 ], [ %call26, %cond.false.21 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.true.13
  %cond30 = phi %struct.lua_TValue* [ null, %cond.true.13 ], [ %cond28, %cond.end.27 ]
  store %struct.lua_TValue* %cond30, %struct.lua_TValue** %tm2, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %tm2, align 8
  %cmp31 = icmp eq %struct.lua_TValue* %24, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %cond.end.29
  store %struct.lua_TValue* null, %struct.lua_TValue** %retval
  br label %return

if.end.34:                                        ; preds = %cond.end.29
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %tm1, align 8
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %tm2, align 8
  %call35 = call i32 @luaO_rawequalObj(%struct.lua_TValue* %25, %struct.lua_TValue* %26)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %tm1, align 8
  store %struct.lua_TValue* %27, %struct.lua_TValue** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.34
  store %struct.lua_TValue* null, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.37, %if.then.33, %if.then.9, %if.then
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %28
}

; Function Attrs: nounwind uwtable
define hidden void @luaV_concat(%struct.lua_State* %L, i32 %total, i32 %last) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %total.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  %top = alloca %struct.lua_TValue*, align 8
  %n = alloca i32, align 4
  %tl = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %i = alloca i32, align 4
  %l = alloca i64, align 8
  %l67 = alloca i64, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %total, i32* %total.addr, align 4
  store i32 %last, i32* %last.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 5
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %2 = load i32, i32* %last.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr, i64 1
  store %struct.lua_TValue* %add.ptr1, %struct.lua_TValue** %top, align 8
  store i32 2, i32* %n, align 4
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 -2
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr2, i32 0, i32 1
  %4 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %lor.lhs.false.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 -2
  %tt4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr3, i32 0, i32 1
  %6 = load i32, i32* %tt4, align 4
  %cmp5 = icmp eq i32 %6, 3
  br i1 %cmp5, label %lor.lhs.false.6, label %if.then

lor.lhs.false.6:                                  ; preds = %lor.lhs.false, %do.body
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 -1
  %tt8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr7, i32 0, i32 1
  %8 = load i32, i32* %tt8, align 4
  %cmp9 = icmp eq i32 %8, 4
  br i1 %cmp9, label %if.else, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i64 -1
  %call = call i32 @luaV_tostring(%struct.lua_State* %9, %struct.lua_TValue* %add.ptr11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 -2
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 -1
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 -2
  %call15 = call i32 @call_binTM(%struct.lua_State* %11, %struct.lua_TValue* %add.ptr12, %struct.lua_TValue* %add.ptr13, %struct.lua_TValue* %add.ptr14, i32 15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %if.then
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 -2
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 -1
  call void @luaG_concaterror(%struct.lua_State* %15, %struct.lua_TValue* %add.ptr18, %struct.lua_TValue* %add.ptr19)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  br label %if.end.95

if.else:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false.6
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 -1
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr20, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %19 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %19 to %union.TString*
  %tsv = bitcast %union.TString* %ts to %struct.anon*
  %len = getelementptr inbounds %struct.anon, %struct.anon* %tsv, i32 0, i32 5
  %20 = load i64, i64* %len, align 8
  %cmp21 = icmp eq i64 %20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.29

if.then.22:                                       ; preds = %if.else
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -2
  %tt24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr23, i32 0, i32 1
  %22 = load i32, i32* %tt24, align 4
  %cmp25 = icmp eq i32 %22, 4
  br i1 %cmp25, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.22
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 -2
  %call27 = call i32 @luaV_tostring(%struct.lua_State* %23, %struct.lua_TValue* %add.ptr26)
  %tobool28 = icmp ne i32 %call27, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.22
  %25 = phi i1 [ true, %if.then.22 ], [ %tobool28, %lor.rhs ]
  %lor.ext = zext i1 %25 to i32
  br label %if.end.94

if.else.29:                                       ; preds = %if.else
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 -1
  %value31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr30, i32 0, i32 0
  %gc32 = bitcast %union.Value* %value31 to %union.GCObject**
  %27 = load %union.GCObject*, %union.GCObject** %gc32, align 8
  %ts33 = bitcast %union.GCObject* %27 to %union.TString*
  %tsv34 = bitcast %union.TString* %ts33 to %struct.anon*
  %len35 = getelementptr inbounds %struct.anon, %struct.anon* %tsv34, i32 0, i32 5
  %28 = load i64, i64* %len35, align 8
  store i64 %28, i64* %tl, align 8
  store i32 1, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.29
  %29 = load i32, i32* %n, align 4
  %30 = load i32, i32* %total.addr, align 4
  %cmp36 = icmp slt i32 %29, %30
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %32 = load i32, i32* %n, align 4
  %idx.ext37 = sext i32 %32 to i64
  %idx.neg = sub i64 0, %idx.ext37
  %add.ptr38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 %idx.neg
  %add.ptr39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr38, i64 -1
  %tt40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr39, i32 0, i32 1
  %33 = load i32, i32* %tt40, align 4
  %cmp41 = icmp eq i32 %33, 4
  br i1 %cmp41, label %lor.end.49, label %lor.rhs.42

lor.rhs.42:                                       ; preds = %land.rhs
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %36 = load i32, i32* %n, align 4
  %idx.ext43 = sext i32 %36 to i64
  %idx.neg44 = sub i64 0, %idx.ext43
  %add.ptr45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 %idx.neg44
  %add.ptr46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr45, i64 -1
  %call47 = call i32 @luaV_tostring(%struct.lua_State* %34, %struct.lua_TValue* %add.ptr46)
  %tobool48 = icmp ne i32 %call47, 0
  br label %lor.end.49

lor.end.49:                                       ; preds = %lor.rhs.42, %land.rhs
  %37 = phi i1 [ true, %land.rhs ], [ %tobool48, %lor.rhs.42 ]
  br label %land.end

land.end:                                         ; preds = %lor.end.49, %for.cond
  %38 = phi i1 [ false, %for.cond ], [ %37, %lor.end.49 ]
  br i1 %38, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %40 = load i32, i32* %n, align 4
  %idx.ext51 = sext i32 %40 to i64
  %idx.neg52 = sub i64 0, %idx.ext51
  %add.ptr53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 %idx.neg52
  %add.ptr54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr53, i64 -1
  %value55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr54, i32 0, i32 0
  %gc56 = bitcast %union.Value* %value55 to %union.GCObject**
  %41 = load %union.GCObject*, %union.GCObject** %gc56, align 8
  %ts57 = bitcast %union.GCObject* %41 to %union.TString*
  %tsv58 = bitcast %union.TString* %ts57 to %struct.anon*
  %len59 = getelementptr inbounds %struct.anon, %struct.anon* %tsv58, i32 0, i32 5
  %42 = load i64, i64* %len59, align 8
  store i64 %42, i64* %l, align 8
  %43 = load i64, i64* %l, align 8
  %44 = load i64, i64* %tl, align 8
  %sub = sub i64 -3, %44
  %cmp60 = icmp uge i64 %43, %sub
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.body
  %45 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %for.body
  %46 = load i64, i64* %l, align 8
  %47 = load i64, i64* %tl, align 8
  %add = add i64 %47, %46
  store i64 %add, i64* %tl, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %48 = load i32, i32* %n, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %49 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %50 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 6
  %51 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %buff = getelementptr inbounds %struct.global_State, %struct.global_State* %51, i32 0, i32 12
  %52 = load i64, i64* %tl, align 8
  %call63 = call i8* @luaZ_openspace(%struct.lua_State* %49, %struct.Mbuffer* %buff, i64 %52)
  store i8* %call63, i8** %buffer, align 8
  store i64 0, i64* %tl, align 8
  %53 = load i32, i32* %n, align 4
  store i32 %53, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.85, %for.end
  %54 = load i32, i32* %i, align 4
  %cmp65 = icmp sgt i32 %54, 0
  br i1 %cmp65, label %for.body.66, label %for.end.86

for.body.66:                                      ; preds = %for.cond.64
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %56 = load i32, i32* %i, align 4
  %idx.ext68 = sext i32 %56 to i64
  %idx.neg69 = sub i64 0, %idx.ext68
  %add.ptr70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 %idx.neg69
  %value71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr70, i32 0, i32 0
  %gc72 = bitcast %union.Value* %value71 to %union.GCObject**
  %57 = load %union.GCObject*, %union.GCObject** %gc72, align 8
  %ts73 = bitcast %union.GCObject* %57 to %union.TString*
  %tsv74 = bitcast %union.TString* %ts73 to %struct.anon*
  %len75 = getelementptr inbounds %struct.anon, %struct.anon* %tsv74, i32 0, i32 5
  %58 = load i64, i64* %len75, align 8
  store i64 %58, i64* %l67, align 8
  %59 = load i8*, i8** %buffer, align 8
  %60 = load i64, i64* %tl, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %59, i64 %60
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %62 = load i32, i32* %i, align 4
  %idx.ext77 = sext i32 %62 to i64
  %idx.neg78 = sub i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 %idx.neg78
  %value80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr79, i32 0, i32 0
  %gc81 = bitcast %union.Value* %value80 to %union.GCObject**
  %63 = load %union.GCObject*, %union.GCObject** %gc81, align 8
  %ts82 = bitcast %union.GCObject* %63 to %union.TString*
  %add.ptr83 = getelementptr inbounds %union.TString, %union.TString* %ts82, i64 1
  %64 = bitcast %union.TString* %add.ptr83 to i8*
  %65 = load i64, i64* %l67, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr76, i8* %64, i64 %65, i32 1, i1 false)
  %66 = load i64, i64* %l67, align 8
  %67 = load i64, i64* %tl, align 8
  %add84 = add i64 %67, %66
  store i64 %add84, i64* %tl, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.66
  %68 = load i32, i32* %i, align 4
  %dec = add nsw i32 %68, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.64

for.end.86:                                       ; preds = %for.cond.64
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %70 = load i32, i32* %n, align 4
  %idx.ext87 = sext i32 %70 to i64
  %idx.neg88 = sub i64 0, %idx.ext87
  %add.ptr89 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 %idx.neg88
  store %struct.lua_TValue* %add.ptr89, %struct.lua_TValue** %i_o, align 8
  %71 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %72 = load i8*, i8** %buffer, align 8
  %73 = load i64, i64* %tl, align 8
  %call90 = call %union.TString* @luaS_newlstr(%struct.lua_State* %71, i8* %72, i64 %73)
  %74 = bitcast %union.TString* %call90 to %union.GCObject*
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value91 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i32 0, i32 0
  %gc92 = bitcast %union.Value* %value91 to %union.GCObject**
  store %union.GCObject* %74, %union.GCObject** %gc92, align 8
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt93 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i32 0, i32 1
  store i32 4, i32* %tt93, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %for.end.86, %lor.end
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end
  %77 = load i32, i32* %n, align 4
  %sub96 = sub nsw i32 %77, 1
  %78 = load i32, i32* %total.addr, align 4
  %sub97 = sub nsw i32 %78, %sub96
  store i32 %sub97, i32* %total.addr, align 4
  %79 = load i32, i32* %n, align 4
  %sub98 = sub nsw i32 %79, 1
  %80 = load i32, i32* %last.addr, align 4
  %sub99 = sub nsw i32 %80, %sub98
  store i32 %sub99, i32* %last.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.95
  %81 = load i32, i32* %total.addr, align 4
  %cmp100 = icmp sgt i32 %81, 1
  br i1 %cmp100, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @call_binTM(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2, %struct.lua_TValue* %res, i32 %event) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %p1.addr = alloca %struct.lua_TValue*, align 8
  %p2.addr = alloca %struct.lua_TValue*, align 8
  %res.addr = alloca %struct.lua_TValue*, align 8
  %event.addr = alloca i32, align 4
  %tm = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %p1.addr, align 8
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %p2.addr, align 8
  store %struct.lua_TValue* %res, %struct.lua_TValue** %res.addr, align 8
  store i32 %event, i32* %event.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  %2 = load i32, i32* %event.addr, align 4
  %call = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* %1, i32 %2)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %tm, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 1
  %4 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %p2.addr, align 8
  %7 = load i32, i32* %event.addr, align 4
  %call1 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %5, %struct.lua_TValue* %6, i32 %7)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %tm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %tt2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %9 = load i32, i32* %tt2, align 4
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %res.addr, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %p1.addr, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %p2.addr, align 8
  call void @callTMres(%struct.lua_State* %10, %struct.lua_TValue* %11, %struct.lua_TValue* %12, %struct.lua_TValue* %13, %struct.lua_TValue* %14)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare hidden void @luaG_concaterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #1

declare hidden i8* @luaZ_openspace(%struct.lua_State*, %struct.Mbuffer*, i64) #1

; Function Attrs: nounwind uwtable
define hidden void @luaV_execute(%struct.lua_State* %L, i32 %nexeccalls) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %nexeccalls.addr = alloca i32, align 4
  %cl = alloca %struct.LClosure*, align 8
  %base = alloca %struct.lua_TValue*, align 8
  %k = alloca %struct.lua_TValue*, align 8
  %pc = alloca i32*, align 8
  %i = alloca i32, align 4
  %ra = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %o228 = alloca %struct.lua_TValue*, align 8
  %o133 = alloca %struct.lua_TValue*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  %rb = alloca %struct.lua_TValue*, align 8
  %b59 = alloca i32, align 4
  %o262 = alloca %struct.lua_TValue*, align 8
  %o163 = alloca %struct.lua_TValue*, align 8
  %g = alloca %struct.lua_TValue, align 8
  %rb69 = alloca %struct.lua_TValue*, align 8
  %i_o74 = alloca %struct.lua_TValue*, align 8
  %g101 = alloca %struct.lua_TValue, align 8
  %i_o102 = alloca %struct.lua_TValue*, align 8
  %uv = alloca %struct.UpVal*, align 8
  %o2119 = alloca %struct.lua_TValue*, align 8
  %o1120 = alloca %struct.lua_TValue*, align 8
  %b183 = alloca i32, align 4
  %c = alloca i32, align 4
  %i_o188 = alloca %struct.lua_TValue*, align 8
  %rb202 = alloca %struct.lua_TValue*, align 8
  %o2207 = alloca %struct.lua_TValue*, align 8
  %o1208 = alloca %struct.lua_TValue*, align 8
  %rb234 = alloca %struct.lua_TValue*, align 8
  %rc = alloca %struct.lua_TValue*, align 8
  %nb = alloca double, align 8
  %nc = alloca double, align 8
  %i_o280 = alloca %struct.lua_TValue*, align 8
  %rb288 = alloca %struct.lua_TValue*, align 8
  %rc306 = alloca %struct.lua_TValue*, align 8
  %nb332 = alloca double, align 8
  %nc335 = alloca double, align 8
  %i_o338 = alloca %struct.lua_TValue*, align 8
  %rb347 = alloca %struct.lua_TValue*, align 8
  %rc365 = alloca %struct.lua_TValue*, align 8
  %nb391 = alloca double, align 8
  %nc394 = alloca double, align 8
  %i_o397 = alloca %struct.lua_TValue*, align 8
  %rb406 = alloca %struct.lua_TValue*, align 8
  %rc424 = alloca %struct.lua_TValue*, align 8
  %nb450 = alloca double, align 8
  %nc453 = alloca double, align 8
  %i_o456 = alloca %struct.lua_TValue*, align 8
  %rb465 = alloca %struct.lua_TValue*, align 8
  %rc483 = alloca %struct.lua_TValue*, align 8
  %nb509 = alloca double, align 8
  %nc512 = alloca double, align 8
  %i_o515 = alloca %struct.lua_TValue*, align 8
  %rb528 = alloca %struct.lua_TValue*, align 8
  %rc546 = alloca %struct.lua_TValue*, align 8
  %nb572 = alloca double, align 8
  %nc575 = alloca double, align 8
  %i_o578 = alloca %struct.lua_TValue*, align 8
  %rb588 = alloca %struct.lua_TValue*, align 8
  %nb597 = alloca double, align 8
  %i_o600 = alloca %struct.lua_TValue*, align 8
  %res = alloca i32, align 4
  %i_o632 = alloca %struct.lua_TValue*, align 8
  %rb637 = alloca %struct.lua_TValue*, align 8
  %i_o644 = alloca %struct.lua_TValue*, align 8
  %i_o653 = alloca %struct.lua_TValue*, align 8
  %b667 = alloca i32, align 4
  %c670 = alloca i32, align 4
  %o2685 = alloca %struct.lua_TValue*, align 8
  %o1688 = alloca %struct.lua_TValue*, align 8
  %rb704 = alloca %struct.lua_TValue*, align 8
  %rc722 = alloca %struct.lua_TValue*, align 8
  %rb892 = alloca %struct.lua_TValue*, align 8
  %o2918 = alloca %struct.lua_TValue*, align 8
  %o1919 = alloca %struct.lua_TValue*, align 8
  %b932 = alloca i32, align 4
  %nresults = alloca i32, align 4
  %b958 = alloca i32, align 4
  %ci971 = alloca %struct.CallInfo*, align 8
  %aux = alloca i32, align 4
  %func974 = alloca %struct.lua_TValue*, align 8
  %pfunc = alloca %struct.lua_TValue*, align 8
  %o2994 = alloca %struct.lua_TValue*, align 8
  %o1997 = alloca %struct.lua_TValue*, align 8
  %b1018 = alloca i32, align 4
  %step = alloca double, align 8
  %idx = alloca double, align 8
  %limit = alloca double, align 8
  %i_o1070 = alloca %struct.lua_TValue*, align 8
  %i_o1074 = alloca %struct.lua_TValue*, align 8
  %init = alloca %struct.lua_TValue*, align 8
  %plimit = alloca %struct.lua_TValue*, align 8
  %pstep = alloca %struct.lua_TValue*, align 8
  %i_o1115 = alloca %struct.lua_TValue*, align 8
  %cb = alloca %struct.lua_TValue*, align 8
  %o21131 = alloca %struct.lua_TValue*, align 8
  %o11133 = alloca %struct.lua_TValue*, align 8
  %o21139 = alloca %struct.lua_TValue*, align 8
  %o11141 = alloca %struct.lua_TValue*, align 8
  %o21147 = alloca %struct.lua_TValue*, align 8
  %o11148 = alloca %struct.lua_TValue*, align 8
  %o21171 = alloca %struct.lua_TValue*, align 8
  %o11172 = alloca %struct.lua_TValue*, align 8
  %n1186 = alloca i32, align 4
  %c1189 = alloca i32, align 4
  %last = alloca i32, align 4
  %h1192 = alloca %struct.Table*, align 8
  %val = alloca %struct.lua_TValue*, align 8
  %o21233 = alloca %struct.lua_TValue*, align 8
  %o11234 = alloca %struct.lua_TValue*, align 8
  %p1265 = alloca %struct.Proto*, align 8
  %ncl = alloca %union.Closure*, align 8
  %nup = alloca i32, align 4
  %j = alloca i32, align 4
  %i_o1310 = alloca %struct.lua_TValue*, align 8
  %b1325 = alloca i32, align 4
  %j1329 = alloca i32, align 4
  %ci1330 = alloca %struct.CallInfo*, align 8
  %n1332 = alloca i32, align 4
  %o21375 = alloca %struct.lua_TValue*, align 8
  %o11381 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %nexeccalls, i32* %nexeccalls.addr, align 4
  br label %reentry

reentry:                                          ; preds = %if.end.1045, %for.end, %sw.bb.946, %entry
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 8
  %1 = load i32*, i32** %savedpc, align 8
  store i32* %1, i32** %pc, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 7
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i32 0, i32 1
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl1 = bitcast %union.GCObject* %5 to %union.Closure*
  %l = bitcast %union.Closure* %cl1 to %struct.LClosure*
  store %struct.LClosure* %l, %struct.LClosure** %cl, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 5
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %base2, align 8
  store %struct.lua_TValue* %7, %struct.lua_TValue** %base, align 8
  %8 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %p = getelementptr inbounds %struct.LClosure, %struct.LClosure* %8, i32 0, i32 7
  %9 = load %struct.Proto*, %struct.Proto** %p, align 8
  %k3 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 3
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %k3, align 8
  store %struct.lua_TValue* %10, %struct.lua_TValue** %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.1396, %for.end.1395, %if.end.1322, %sw.bb.1263, %for.end.1262, %if.end.1183, %if.end.1114, %if.end.1079, %sw.bb.1014, %if.end.954, %if.end.929, %if.end.889, %if.end.859, %if.end.809, %if.end.759, %sw.bb.697, %if.end.683, %sw.epilog, %lor.end, %if.end.608, %if.end.586, %if.end.526, %if.end.463, %if.end.404, %if.end.345, %if.end.286, %cond.end.230, %if.end.199, %cond.end.179, %if.end.144, %sw.bb.100, %cond.end, %sw.bb.68, %sw.bb.58, %do.end, %if.end.48, %sw.bb.27, %sw.bb, %reentry
  %11 = load i32*, i32** %pc, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %pc, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %i, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 17
  %14 = load i8, i8* %hookmask, align 1
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.cond
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookcount = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 20
  %16 = load i32, i32* %hookcount, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %hookcount, align 4
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 17
  %18 = load i8, i8* %hookmask5, align 1
  %conv6 = zext i8 %18 to i32
  %and7 = and i32 %conv6, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then, label %if.end.15

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %20 = load i32*, i32** %pc, align 8
  call void @traceexec(%struct.lua_State* %19, i32* %20)
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 3
  %22 = load i8, i8* %status, align 1
  %conv9 = zext i8 %22 to i32
  %cmp10 = icmp eq i32 %conv9, 1
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %23 = load i32*, i32** %pc, align 8
  %add.ptr = getelementptr inbounds i32, i32* %23, i64 -1
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 8
  store i32* %add.ptr, i32** %savedpc13, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 5
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %base14, align 8
  store %struct.lua_TValue* %26, %struct.lua_TValue** %base, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %lor.lhs.false, %for.cond
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %28 = load i32, i32* %i, align 4
  %shr = lshr i32 %28, 6
  %and16 = and i32 %shr, 255
  %idx.ext = sext i32 %and16 to i64
  %add.ptr17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 %idx.ext
  store %struct.lua_TValue* %add.ptr17, %struct.lua_TValue** %ra, align 8
  %29 = load i32, i32* %i, align 4
  %shr18 = lshr i32 %29, 0
  %and19 = and i32 %shr18, 63
  switch i32 %and19, label %sw.epilog.1396 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.27
    i32 2, label %sw.bb.38
    i32 3, label %sw.bb.49
    i32 4, label %sw.bb.58
    i32 5, label %sw.bb.68
    i32 6, label %sw.bb.80
    i32 7, label %sw.bb.100
    i32 8, label %sw.bb.113
    i32 9, label %sw.bb.145
    i32 10, label %sw.bb.182
    i32 11, label %sw.bb.201
    i32 12, label %sw.bb.233
    i32 13, label %sw.bb.287
    i32 14, label %sw.bb.346
    i32 15, label %sw.bb.405
    i32 16, label %sw.bb.464
    i32 17, label %sw.bb.527
    i32 18, label %sw.bb.587
    i32 19, label %sw.bb.609
    i32 20, label %sw.bb.636
    i32 21, label %sw.bb.666
    i32 22, label %sw.bb.697
    i32 23, label %sw.bb.703
    i32 24, label %sw.bb.762
    i32 25, label %sw.bb.812
    i32 26, label %sw.bb.862
    i32 27, label %sw.bb.891
    i32 28, label %sw.bb.931
    i32 29, label %sw.bb.957
    i32 30, label %sw.bb.1017
    i32 31, label %sw.bb.1046
    i32 32, label %sw.bb.1080
    i32 33, label %sw.bb.1129
    i32 34, label %sw.bb.1185
    i32 35, label %sw.bb.1263
    i32 36, label %sw.bb.1264
    i32 37, label %sw.bb.1324
  ]

sw.bb:                                            ; preds = %if.end.15
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %31 = load i32, i32* %i, align 4
  %shr20 = lshr i32 %31, 23
  %and21 = and i32 %shr20, 511
  %idx.ext22 = sext i32 %and21 to i64
  %add.ptr23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i64 %idx.ext22
  store %struct.lua_TValue* %add.ptr23, %struct.lua_TValue** %o2, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %32, %struct.lua_TValue** %o1, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 0
  %35 = bitcast %union.Value* %value24 to i8*
  %36 = bitcast %union.Value* %value25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 8, i1 false)
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 1
  %38 = load i32, i32* %tt, align 4
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 1
  store i32 %38, i32* %tt26, align 4
  br label %for.cond

sw.bb.27:                                         ; preds = %if.end.15
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %41 = load i32, i32* %i, align 4
  %shr29 = lshr i32 %41, 14
  %and30 = and i32 %shr29, 262143
  %idx.ext31 = sext i32 %and30 to i64
  %add.ptr32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i64 %idx.ext31
  store %struct.lua_TValue* %add.ptr32, %struct.lua_TValue** %o228, align 8
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %42, %struct.lua_TValue** %o133, align 8
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %o133, align 8
  %value34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 0
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %o228, align 8
  %value35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i32 0, i32 0
  %45 = bitcast %union.Value* %value34 to i8*
  %46 = bitcast %union.Value* %value35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 8, i1 false)
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %o228, align 8
  %tt36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 1
  %48 = load i32, i32* %tt36, align 4
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %o133, align 8
  %tt37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i32 0, i32 1
  store i32 %48, i32* %tt37, align 4
  br label %for.cond

sw.bb.38:                                         ; preds = %if.end.15
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %50, %struct.lua_TValue** %i_o, align 8
  %51 = load i32, i32* %i, align 4
  %shr39 = lshr i32 %51, 23
  %and40 = and i32 %shr39, 511
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i32 0, i32 0
  %b = bitcast %union.Value* %value41 to i32*
  store i32 %and40, i32* %b, align 4
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 0, i32 1
  store i32 1, i32* %tt42, align 4
  %54 = load i32, i32* %i, align 4
  %shr43 = lshr i32 %54, 14
  %and44 = and i32 %shr43, 511
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %sw.bb.38
  %55 = load i32*, i32** %pc, align 8
  %incdec.ptr47 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %incdec.ptr47, i32** %pc, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %sw.bb.38
  br label %for.cond

sw.bb.49:                                         ; preds = %if.end.15
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %57 = load i32, i32* %i, align 4
  %shr50 = lshr i32 %57, 23
  %and51 = and i32 %shr50, 511
  %idx.ext52 = sext i32 %and51 to i64
  %add.ptr53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i64 %idx.ext52
  store %struct.lua_TValue* %add.ptr53, %struct.lua_TValue** %rb, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb.49
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %rb, align 8
  %incdec.ptr54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 -1
  store %struct.lua_TValue* %incdec.ptr54, %struct.lua_TValue** %rb, align 8
  %tt55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 1
  store i32 0, i32* %tt55, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %rb, align 8
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %cmp56 = icmp uge %struct.lua_TValue* %59, %60
  br i1 %cmp56, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond

sw.bb.58:                                         ; preds = %if.end.15
  %61 = load i32, i32* %i, align 4
  %shr60 = lshr i32 %61, 23
  %and61 = and i32 %shr60, 511
  store i32 %and61, i32* %b59, align 4
  %62 = load i32, i32* %b59, align 4
  %idxprom = sext i32 %62 to i64
  %63 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %upvals = getelementptr inbounds %struct.LClosure, %struct.LClosure* %63, i32 0, i32 8
  %arrayidx = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %upvals, i32 0, i64 %idxprom
  %64 = load %struct.UpVal*, %struct.UpVal** %arrayidx, align 8
  %v = getelementptr inbounds %struct.UpVal, %struct.UpVal* %64, i32 0, i32 3
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %v, align 8
  store %struct.lua_TValue* %65, %struct.lua_TValue** %o262, align 8
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %66, %struct.lua_TValue** %o163, align 8
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %o163, align 8
  %value64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i32 0, i32 0
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %o262, align 8
  %value65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i32 0, i32 0
  %69 = bitcast %union.Value* %value64 to i8*
  %70 = bitcast %union.Value* %value65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 8, i32 8, i1 false)
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %o262, align 8
  %tt66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i32 0, i32 1
  %72 = load i32, i32* %tt66, align 4
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %o163, align 8
  %tt67 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i32 0, i32 1
  store i32 %72, i32* %tt67, align 4
  br label %for.cond

sw.bb.68:                                         ; preds = %if.end.15
  %74 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %75 = load i32, i32* %i, align 4
  %shr70 = lshr i32 %75, 14
  %and71 = and i32 %shr70, 262143
  %idx.ext72 = sext i32 %and71 to i64
  %add.ptr73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %74, i64 %idx.ext72
  store %struct.lua_TValue* %add.ptr73, %struct.lua_TValue** %rb69, align 8
  store %struct.lua_TValue* %g, %struct.lua_TValue** %i_o74, align 8
  %76 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %env = getelementptr inbounds %struct.LClosure, %struct.LClosure* %76, i32 0, i32 6
  %77 = load %struct.Table*, %struct.Table** %env, align 8
  %78 = bitcast %struct.Table* %77 to %union.GCObject*
  %79 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o74, align 8
  %value75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %79, i32 0, i32 0
  %gc76 = bitcast %union.Value* %value75 to %union.GCObject**
  store %union.GCObject* %78, %union.GCObject** %gc76, align 8
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o74, align 8
  %tt77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i32 0, i32 1
  store i32 5, i32* %tt77, align 4
  %81 = load i32*, i32** %pc, align 8
  %82 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc78 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %82, i32 0, i32 8
  store i32* %81, i32** %savedpc78, align 8
  %83 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %84 = load %struct.lua_TValue*, %struct.lua_TValue** %rb69, align 8
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  call void @luaV_gettable(%struct.lua_State* %83, %struct.lua_TValue* %g, %struct.lua_TValue* %84, %struct.lua_TValue* %85)
  %86 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %86, i32 0, i32 5
  %87 = load %struct.lua_TValue*, %struct.lua_TValue** %base79, align 8
  store %struct.lua_TValue* %87, %struct.lua_TValue** %base, align 8
  br label %for.cond

sw.bb.80:                                         ; preds = %if.end.15
  %88 = load i32*, i32** %pc, align 8
  %89 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %89, i32 0, i32 8
  store i32* %88, i32** %savedpc81, align 8
  %90 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %91 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %92 = load i32, i32* %i, align 4
  %shr82 = lshr i32 %92, 23
  %and83 = and i32 %shr82, 511
  %idx.ext84 = sext i32 %and83 to i64
  %add.ptr85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i64 %idx.ext84
  %93 = load i32, i32* %i, align 4
  %shr86 = lshr i32 %93, 14
  %and87 = and i32 %shr86, 511
  %and88 = and i32 %and87, 256
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.80
  %94 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %95 = load i32, i32* %i, align 4
  %shr90 = lshr i32 %95, 14
  %and91 = and i32 %shr90, 511
  %and92 = and i32 %and91, -257
  %idx.ext93 = sext i32 %and92 to i64
  %add.ptr94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %94, i64 %idx.ext93
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.80
  %96 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %97 = load i32, i32* %i, align 4
  %shr95 = lshr i32 %97, 14
  %and96 = and i32 %shr95, 511
  %idx.ext97 = sext i32 %and96 to i64
  %add.ptr98 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %96, i64 %idx.ext97
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lua_TValue* [ %add.ptr94, %cond.true ], [ %add.ptr98, %cond.false ]
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  call void @luaV_gettable(%struct.lua_State* %90, %struct.lua_TValue* %add.ptr85, %struct.lua_TValue* %cond, %struct.lua_TValue* %98)
  %99 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %99, i32 0, i32 5
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %base99, align 8
  store %struct.lua_TValue* %100, %struct.lua_TValue** %base, align 8
  br label %for.cond

sw.bb.100:                                        ; preds = %if.end.15
  store %struct.lua_TValue* %g101, %struct.lua_TValue** %i_o102, align 8
  %101 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %env103 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %101, i32 0, i32 6
  %102 = load %struct.Table*, %struct.Table** %env103, align 8
  %103 = bitcast %struct.Table* %102 to %union.GCObject*
  %104 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o102, align 8
  %value104 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %104, i32 0, i32 0
  %gc105 = bitcast %union.Value* %value104 to %union.GCObject**
  store %union.GCObject* %103, %union.GCObject** %gc105, align 8
  %105 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o102, align 8
  %tt106 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %105, i32 0, i32 1
  store i32 5, i32* %tt106, align 4
  %106 = load i32*, i32** %pc, align 8
  %107 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc107 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %107, i32 0, i32 8
  store i32* %106, i32** %savedpc107, align 8
  %108 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %109 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %110 = load i32, i32* %i, align 4
  %shr108 = lshr i32 %110, 14
  %and109 = and i32 %shr108, 262143
  %idx.ext110 = sext i32 %and109 to i64
  %add.ptr111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %109, i64 %idx.ext110
  %111 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  call void @luaV_settable(%struct.lua_State* %108, %struct.lua_TValue* %g101, %struct.lua_TValue* %add.ptr111, %struct.lua_TValue* %111)
  %112 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base112 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %112, i32 0, i32 5
  %113 = load %struct.lua_TValue*, %struct.lua_TValue** %base112, align 8
  store %struct.lua_TValue* %113, %struct.lua_TValue** %base, align 8
  br label %for.cond

sw.bb.113:                                        ; preds = %if.end.15
  %114 = load i32, i32* %i, align 4
  %shr114 = lshr i32 %114, 23
  %and115 = and i32 %shr114, 511
  %idxprom116 = sext i32 %and115 to i64
  %115 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %upvals117 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %115, i32 0, i32 8
  %arrayidx118 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %upvals117, i32 0, i64 %idxprom116
  %116 = load %struct.UpVal*, %struct.UpVal** %arrayidx118, align 8
  store %struct.UpVal* %116, %struct.UpVal** %uv, align 8
  %117 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %117, %struct.lua_TValue** %o2119, align 8
  %118 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %v121 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %118, i32 0, i32 3
  %119 = load %struct.lua_TValue*, %struct.lua_TValue** %v121, align 8
  store %struct.lua_TValue* %119, %struct.lua_TValue** %o1120, align 8
  %120 = load %struct.lua_TValue*, %struct.lua_TValue** %o1120, align 8
  %value122 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %120, i32 0, i32 0
  %121 = load %struct.lua_TValue*, %struct.lua_TValue** %o2119, align 8
  %value123 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %121, i32 0, i32 0
  %122 = bitcast %union.Value* %value122 to i8*
  %123 = bitcast %union.Value* %value123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 8, i32 8, i1 false)
  %124 = load %struct.lua_TValue*, %struct.lua_TValue** %o2119, align 8
  %tt124 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %124, i32 0, i32 1
  %125 = load i32, i32* %tt124, align 4
  %126 = load %struct.lua_TValue*, %struct.lua_TValue** %o1120, align 8
  %tt125 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %126, i32 0, i32 1
  store i32 %125, i32* %tt125, align 4
  %127 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %tt126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %127, i32 0, i32 1
  %128 = load i32, i32* %tt126, align 4
  %cmp127 = icmp sge i32 %128, 4
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.144

land.lhs.true.129:                                ; preds = %sw.bb.113
  %129 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %value130 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %129, i32 0, i32 0
  %gc131 = bitcast %union.Value* %value130 to %union.GCObject**
  %130 = load %union.GCObject*, %union.GCObject** %gc131, align 8
  %gch = bitcast %union.GCObject* %130 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %131 = load i8, i8* %marked, align 1
  %conv132 = zext i8 %131 to i32
  %and133 = and i32 %conv132, 3
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.144

land.lhs.true.135:                                ; preds = %land.lhs.true.129
  %132 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %133 = bitcast %struct.UpVal* %132 to %union.GCObject*
  %gch136 = bitcast %union.GCObject* %133 to %struct.GCheader*
  %marked137 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch136, i32 0, i32 2
  %134 = load i8, i8* %marked137, align 1
  %conv138 = zext i8 %134 to i32
  %and139 = and i32 %conv138, 4
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %land.lhs.true.135
  %135 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %136 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %137 = bitcast %struct.UpVal* %136 to %union.GCObject*
  %138 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %value142 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %138, i32 0, i32 0
  %gc143 = bitcast %union.Value* %value142 to %union.GCObject**
  %139 = load %union.GCObject*, %union.GCObject** %gc143, align 8
  call void @luaC_barrierf(%struct.lua_State* %135, %union.GCObject* %137, %union.GCObject* %139)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.141, %land.lhs.true.135, %land.lhs.true.129, %sw.bb.113
  br label %for.cond

sw.bb.145:                                        ; preds = %if.end.15
  %140 = load i32*, i32** %pc, align 8
  %141 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc146 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %141, i32 0, i32 8
  store i32* %140, i32** %savedpc146, align 8
  %142 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %143 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %144 = load i32, i32* %i, align 4
  %shr147 = lshr i32 %144, 23
  %and148 = and i32 %shr147, 511
  %and149 = and i32 %and148, 256
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %cond.true.151, label %cond.false.157

cond.true.151:                                    ; preds = %sw.bb.145
  %145 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %146 = load i32, i32* %i, align 4
  %shr152 = lshr i32 %146, 23
  %and153 = and i32 %shr152, 511
  %and154 = and i32 %and153, -257
  %idx.ext155 = sext i32 %and154 to i64
  %add.ptr156 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %145, i64 %idx.ext155
  br label %cond.end.162

cond.false.157:                                   ; preds = %sw.bb.145
  %147 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %148 = load i32, i32* %i, align 4
  %shr158 = lshr i32 %148, 23
  %and159 = and i32 %shr158, 511
  %idx.ext160 = sext i32 %and159 to i64
  %add.ptr161 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %147, i64 %idx.ext160
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.157, %cond.true.151
  %cond163 = phi %struct.lua_TValue* [ %add.ptr156, %cond.true.151 ], [ %add.ptr161, %cond.false.157 ]
  %149 = load i32, i32* %i, align 4
  %shr164 = lshr i32 %149, 14
  %and165 = and i32 %shr164, 511
  %and166 = and i32 %and165, 256
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %cond.true.168, label %cond.false.174

cond.true.168:                                    ; preds = %cond.end.162
  %150 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %151 = load i32, i32* %i, align 4
  %shr169 = lshr i32 %151, 14
  %and170 = and i32 %shr169, 511
  %and171 = and i32 %and170, -257
  %idx.ext172 = sext i32 %and171 to i64
  %add.ptr173 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %150, i64 %idx.ext172
  br label %cond.end.179

cond.false.174:                                   ; preds = %cond.end.162
  %152 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %153 = load i32, i32* %i, align 4
  %shr175 = lshr i32 %153, 14
  %and176 = and i32 %shr175, 511
  %idx.ext177 = sext i32 %and176 to i64
  %add.ptr178 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %152, i64 %idx.ext177
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.174, %cond.true.168
  %cond180 = phi %struct.lua_TValue* [ %add.ptr173, %cond.true.168 ], [ %add.ptr178, %cond.false.174 ]
  call void @luaV_settable(%struct.lua_State* %142, %struct.lua_TValue* %143, %struct.lua_TValue* %cond163, %struct.lua_TValue* %cond180)
  %154 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base181 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %154, i32 0, i32 5
  %155 = load %struct.lua_TValue*, %struct.lua_TValue** %base181, align 8
  store %struct.lua_TValue* %155, %struct.lua_TValue** %base, align 8
  br label %for.cond

sw.bb.182:                                        ; preds = %if.end.15
  %156 = load i32, i32* %i, align 4
  %shr184 = lshr i32 %156, 23
  %and185 = and i32 %shr184, 511
  store i32 %and185, i32* %b183, align 4
  %157 = load i32, i32* %i, align 4
  %shr186 = lshr i32 %157, 14
  %and187 = and i32 %shr186, 511
  store i32 %and187, i32* %c, align 4
  %158 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %158, %struct.lua_TValue** %i_o188, align 8
  %159 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %160 = load i32, i32* %b183, align 4
  %call = call i32 @luaO_fb2int(i32 %160)
  %161 = load i32, i32* %c, align 4
  %call189 = call i32 @luaO_fb2int(i32 %161)
  %call190 = call %struct.Table* @luaH_new(%struct.lua_State* %159, i32 %call, i32 %call189)
  %162 = bitcast %struct.Table* %call190 to %union.GCObject*
  %163 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o188, align 8
  %value191 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %163, i32 0, i32 0
  %gc192 = bitcast %union.Value* %value191 to %union.GCObject**
  store %union.GCObject* %162, %union.GCObject** %gc192, align 8
  %164 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o188, align 8
  %tt193 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %164, i32 0, i32 1
  store i32 5, i32* %tt193, align 4
  %165 = load i32*, i32** %pc, align 8
  %166 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc194 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %166, i32 0, i32 8
  store i32* %165, i32** %savedpc194, align 8
  %167 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %167, i32 0, i32 6
  %168 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %168, i32 0, i32 14
  %169 = load i64, i64* %totalbytes, align 8
  %170 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G195 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %170, i32 0, i32 6
  %171 = load %struct.global_State*, %struct.global_State** %l_G195, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %171, i32 0, i32 13
  %172 = load i64, i64* %GCthreshold, align 8
  %cmp196 = icmp uge i64 %169, %172
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %sw.bb.182
  %173 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %173)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %sw.bb.182
  %174 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base200 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %174, i32 0, i32 5
  %175 = load %struct.lua_TValue*, %struct.lua_TValue** %base200, align 8
  store %struct.lua_TValue* %175, %struct.lua_TValue** %base, align 8
  br label %for.cond

sw.bb.201:                                        ; preds = %if.end.15
  %176 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %177 = load i32, i32* %i, align 4
  %shr203 = lshr i32 %177, 23
  %and204 = and i32 %shr203, 511
  %idx.ext205 = sext i32 %and204 to i64
  %add.ptr206 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %176, i64 %idx.ext205
  store %struct.lua_TValue* %add.ptr206, %struct.lua_TValue** %rb202, align 8
  %178 = load %struct.lua_TValue*, %struct.lua_TValue** %rb202, align 8
  store %struct.lua_TValue* %178, %struct.lua_TValue** %o2207, align 8
  %179 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr209 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %179, i64 1
  store %struct.lua_TValue* %add.ptr209, %struct.lua_TValue** %o1208, align 8
  %180 = load %struct.lua_TValue*, %struct.lua_TValue** %o1208, align 8
  %value210 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %180, i32 0, i32 0
  %181 = load %struct.lua_TValue*, %struct.lua_TValue** %o2207, align 8
  %value211 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %181, i32 0, i32 0
  %182 = bitcast %union.Value* %value210 to i8*
  %183 = bitcast %union.Value* %value211 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* %183, i64 8, i32 8, i1 false)
  %184 = load %struct.lua_TValue*, %struct.lua_TValue** %o2207, align 8
  %tt212 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %184, i32 0, i32 1
  %185 = load i32, i32* %tt212, align 4
  %186 = load %struct.lua_TValue*, %struct.lua_TValue** %o1208, align 8
  %tt213 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %186, i32 0, i32 1
  store i32 %185, i32* %tt213, align 4
  %187 = load i32*, i32** %pc, align 8
  %188 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc214 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %188, i32 0, i32 8
  store i32* %187, i32** %savedpc214, align 8
  %189 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %190 = load %struct.lua_TValue*, %struct.lua_TValue** %rb202, align 8
  %191 = load i32, i32* %i, align 4
  %shr215 = lshr i32 %191, 14
  %and216 = and i32 %shr215, 511
  %and217 = and i32 %and216, 256
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %cond.true.219, label %cond.false.225

cond.true.219:                                    ; preds = %sw.bb.201
  %192 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %193 = load i32, i32* %i, align 4
  %shr220 = lshr i32 %193, 14
  %and221 = and i32 %shr220, 511
  %and222 = and i32 %and221, -257
  %idx.ext223 = sext i32 %and222 to i64
  %add.ptr224 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %192, i64 %idx.ext223
  br label %cond.end.230

cond.false.225:                                   ; preds = %sw.bb.201
  %194 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %195 = load i32, i32* %i, align 4
  %shr226 = lshr i32 %195, 14
  %and227 = and i32 %shr226, 511
  %idx.ext228 = sext i32 %and227 to i64
  %add.ptr229 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %194, i64 %idx.ext228
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.225, %cond.true.219
  %cond231 = phi %struct.lua_TValue* [ %add.ptr224, %cond.true.219 ], [ %add.ptr229, %cond.false.225 ]
  %196 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  call void @luaV_gettable(%struct.lua_State* %189, %struct.lua_TValue* %190, %struct.lua_TValue* %cond231, %struct.lua_TValue* %196)
  %197 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base232 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %197, i32 0, i32 5
  %198 = load %struct.lua_TValue*, %struct.lua_TValue** %base232, align 8
  store %struct.lua_TValue* %198, %struct.lua_TValue** %base, align 8
  br label %for.cond

sw.bb.233:                                        ; preds = %if.end.15
  %199 = load i32, i32* %i, align 4
  %shr235 = lshr i32 %199, 23
  %and236 = and i32 %shr235, 511
  %and237 = and i32 %and236, 256
  %tobool238 = icmp ne i32 %and237, 0
  br i1 %tobool238, label %cond.true.239, label %cond.false.245

cond.true.239:                                    ; preds = %sw.bb.233
  %200 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %201 = load i32, i32* %i, align 4
  %shr240 = lshr i32 %201, 23
  %and241 = and i32 %shr240, 511
  %and242 = and i32 %and241, -257
  %idx.ext243 = sext i32 %and242 to i64
  %add.ptr244 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %200, i64 %idx.ext243
  br label %cond.end.250

cond.false.245:                                   ; preds = %sw.bb.233
  %202 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %203 = load i32, i32* %i, align 4
  %shr246 = lshr i32 %203, 23
  %and247 = and i32 %shr246, 511
  %idx.ext248 = sext i32 %and247 to i64
  %add.ptr249 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %202, i64 %idx.ext248
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.245, %cond.true.239
  %cond251 = phi %struct.lua_TValue* [ %add.ptr244, %cond.true.239 ], [ %add.ptr249, %cond.false.245 ]
  store %struct.lua_TValue* %cond251, %struct.lua_TValue** %rb234, align 8
  %204 = load i32, i32* %i, align 4
  %shr252 = lshr i32 %204, 14
  %and253 = and i32 %shr252, 511
  %and254 = and i32 %and253, 256
  %tobool255 = icmp ne i32 %and254, 0
  br i1 %tobool255, label %cond.true.256, label %cond.false.262

cond.true.256:                                    ; preds = %cond.end.250
  %205 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %206 = load i32, i32* %i, align 4
  %shr257 = lshr i32 %206, 14
  %and258 = and i32 %shr257, 511
  %and259 = and i32 %and258, -257
  %idx.ext260 = sext i32 %and259 to i64
  %add.ptr261 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %205, i64 %idx.ext260
  br label %cond.end.267

cond.false.262:                                   ; preds = %cond.end.250
  %207 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %208 = load i32, i32* %i, align 4
  %shr263 = lshr i32 %208, 14
  %and264 = and i32 %shr263, 511
  %idx.ext265 = sext i32 %and264 to i64
  %add.ptr266 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %207, i64 %idx.ext265
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.false.262, %cond.true.256
  %cond268 = phi %struct.lua_TValue* [ %add.ptr261, %cond.true.256 ], [ %add.ptr266, %cond.false.262 ]
  store %struct.lua_TValue* %cond268, %struct.lua_TValue** %rc, align 8
  %209 = load %struct.lua_TValue*, %struct.lua_TValue** %rb234, align 8
  %tt269 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %209, i32 0, i32 1
  %210 = load i32, i32* %tt269, align 4
  %cmp270 = icmp eq i32 %210, 3
  br i1 %cmp270, label %land.lhs.true.272, label %if.else

land.lhs.true.272:                                ; preds = %cond.end.267
  %211 = load %struct.lua_TValue*, %struct.lua_TValue** %rc, align 8
  %tt273 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %211, i32 0, i32 1
  %212 = load i32, i32* %tt273, align 4
  %cmp274 = icmp eq i32 %212, 3
  br i1 %cmp274, label %if.then.276, label %if.else

if.then.276:                                      ; preds = %land.lhs.true.272
  %213 = load %struct.lua_TValue*, %struct.lua_TValue** %rb234, align 8
  %value277 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %213, i32 0, i32 0
  %n = bitcast %union.Value* %value277 to double*
  %214 = load double, double* %n, align 8
  store double %214, double* %nb, align 8
  %215 = load %struct.lua_TValue*, %struct.lua_TValue** %rc, align 8
  %value278 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %215, i32 0, i32 0
  %n279 = bitcast %union.Value* %value278 to double*
  %216 = load double, double* %n279, align 8
  store double %216, double* %nc, align 8
  %217 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %217, %struct.lua_TValue** %i_o280, align 8
  %218 = load double, double* %nb, align 8
  %219 = load double, double* %nc, align 8
  %add = fadd double %218, %219
  %220 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o280, align 8
  %value281 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %220, i32 0, i32 0
  %n282 = bitcast %union.Value* %value281 to double*
  store double %add, double* %n282, align 8
  %221 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o280, align 8
  %tt283 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %221, i32 0, i32 1
  store i32 3, i32* %tt283, align 4
  br label %if.end.286

if.else:                                          ; preds = %land.lhs.true.272, %cond.end.267
  %222 = load i32*, i32** %pc, align 8
  %223 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc284 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %223, i32 0, i32 8
  store i32* %222, i32** %savedpc284, align 8
  %224 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %225 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %226 = load %struct.lua_TValue*, %struct.lua_TValue** %rb234, align 8
  %227 = load %struct.lua_TValue*, %struct.lua_TValue** %rc, align 8
  call void @Arith(%struct.lua_State* %224, %struct.lua_TValue* %225, %struct.lua_TValue* %226, %struct.lua_TValue* %227, i32 5)
  %228 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base285 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %228, i32 0, i32 5
  %229 = load %struct.lua_TValue*, %struct.lua_TValue** %base285, align 8
  store %struct.lua_TValue* %229, %struct.lua_TValue** %base, align 8
  br label %if.end.286

if.end.286:                                       ; preds = %if.else, %if.then.276
  br label %for.cond

sw.bb.287:                                        ; preds = %if.end.15
  %230 = load i32, i32* %i, align 4
  %shr289 = lshr i32 %230, 23
  %and290 = and i32 %shr289, 511
  %and291 = and i32 %and290, 256
  %tobool292 = icmp ne i32 %and291, 0
  br i1 %tobool292, label %cond.true.293, label %cond.false.299

cond.true.293:                                    ; preds = %sw.bb.287
  %231 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %232 = load i32, i32* %i, align 4
  %shr294 = lshr i32 %232, 23
  %and295 = and i32 %shr294, 511
  %and296 = and i32 %and295, -257
  %idx.ext297 = sext i32 %and296 to i64
  %add.ptr298 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %231, i64 %idx.ext297
  br label %cond.end.304

cond.false.299:                                   ; preds = %sw.bb.287
  %233 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %234 = load i32, i32* %i, align 4
  %shr300 = lshr i32 %234, 23
  %and301 = and i32 %shr300, 511
  %idx.ext302 = sext i32 %and301 to i64
  %add.ptr303 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %233, i64 %idx.ext302
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.false.299, %cond.true.293
  %cond305 = phi %struct.lua_TValue* [ %add.ptr298, %cond.true.293 ], [ %add.ptr303, %cond.false.299 ]
  store %struct.lua_TValue* %cond305, %struct.lua_TValue** %rb288, align 8
  %235 = load i32, i32* %i, align 4
  %shr307 = lshr i32 %235, 14
  %and308 = and i32 %shr307, 511
  %and309 = and i32 %and308, 256
  %tobool310 = icmp ne i32 %and309, 0
  br i1 %tobool310, label %cond.true.311, label %cond.false.317

cond.true.311:                                    ; preds = %cond.end.304
  %236 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %237 = load i32, i32* %i, align 4
  %shr312 = lshr i32 %237, 14
  %and313 = and i32 %shr312, 511
  %and314 = and i32 %and313, -257
  %idx.ext315 = sext i32 %and314 to i64
  %add.ptr316 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %236, i64 %idx.ext315
  br label %cond.end.322

cond.false.317:                                   ; preds = %cond.end.304
  %238 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %239 = load i32, i32* %i, align 4
  %shr318 = lshr i32 %239, 14
  %and319 = and i32 %shr318, 511
  %idx.ext320 = sext i32 %and319 to i64
  %add.ptr321 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %238, i64 %idx.ext320
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.317, %cond.true.311
  %cond323 = phi %struct.lua_TValue* [ %add.ptr316, %cond.true.311 ], [ %add.ptr321, %cond.false.317 ]
  store %struct.lua_TValue* %cond323, %struct.lua_TValue** %rc306, align 8
  %240 = load %struct.lua_TValue*, %struct.lua_TValue** %rb288, align 8
  %tt324 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %240, i32 0, i32 1
  %241 = load i32, i32* %tt324, align 4
  %cmp325 = icmp eq i32 %241, 3
  br i1 %cmp325, label %land.lhs.true.327, label %if.else.342

land.lhs.true.327:                                ; preds = %cond.end.322
  %242 = load %struct.lua_TValue*, %struct.lua_TValue** %rc306, align 8
  %tt328 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %242, i32 0, i32 1
  %243 = load i32, i32* %tt328, align 4
  %cmp329 = icmp eq i32 %243, 3
  br i1 %cmp329, label %if.then.331, label %if.else.342

if.then.331:                                      ; preds = %land.lhs.true.327
  %244 = load %struct.lua_TValue*, %struct.lua_TValue** %rb288, align 8
  %value333 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %244, i32 0, i32 0
  %n334 = bitcast %union.Value* %value333 to double*
  %245 = load double, double* %n334, align 8
  store double %245, double* %nb332, align 8
  %246 = load %struct.lua_TValue*, %struct.lua_TValue** %rc306, align 8
  %value336 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %246, i32 0, i32 0
  %n337 = bitcast %union.Value* %value336 to double*
  %247 = load double, double* %n337, align 8
  store double %247, double* %nc335, align 8
  %248 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %248, %struct.lua_TValue** %i_o338, align 8
  %249 = load double, double* %nb332, align 8
  %250 = load double, double* %nc335, align 8
  %sub = fsub double %249, %250
  %251 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o338, align 8
  %value339 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %251, i32 0, i32 0
  %n340 = bitcast %union.Value* %value339 to double*
  store double %sub, double* %n340, align 8
  %252 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o338, align 8
  %tt341 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %252, i32 0, i32 1
  store i32 3, i32* %tt341, align 4
  br label %if.end.345

if.else.342:                                      ; preds = %land.lhs.true.327, %cond.end.322
  %253 = load i32*, i32** %pc, align 8
  %254 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc343 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %254, i32 0, i32 8
  store i32* %253, i32** %savedpc343, align 8
  %255 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %256 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %257 = load %struct.lua_TValue*, %struct.lua_TValue** %rb288, align 8
  %258 = load %struct.lua_TValue*, %struct.lua_TValue** %rc306, align 8
  call void @Arith(%struct.lua_State* %255, %struct.lua_TValue* %256, %struct.lua_TValue* %257, %struct.lua_TValue* %258, i32 6)
  %259 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base344 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %259, i32 0, i32 5
  %260 = load %struct.lua_TValue*, %struct.lua_TValue** %base344, align 8
  store %struct.lua_TValue* %260, %struct.lua_TValue** %base, align 8
  br label %if.end.345

if.end.345:                                       ; preds = %if.else.342, %if.then.331
  br label %for.cond

sw.bb.346:                                        ; preds = %if.end.15
  %261 = load i32, i32* %i, align 4
  %shr348 = lshr i32 %261, 23
  %and349 = and i32 %shr348, 511
  %and350 = and i32 %and349, 256
  %tobool351 = icmp ne i32 %and350, 0
  br i1 %tobool351, label %cond.true.352, label %cond.false.358

cond.true.352:                                    ; preds = %sw.bb.346
  %262 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %263 = load i32, i32* %i, align 4
  %shr353 = lshr i32 %263, 23
  %and354 = and i32 %shr353, 511
  %and355 = and i32 %and354, -257
  %idx.ext356 = sext i32 %and355 to i64
  %add.ptr357 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %262, i64 %idx.ext356
  br label %cond.end.363

cond.false.358:                                   ; preds = %sw.bb.346
  %264 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %265 = load i32, i32* %i, align 4
  %shr359 = lshr i32 %265, 23
  %and360 = and i32 %shr359, 511
  %idx.ext361 = sext i32 %and360 to i64
  %add.ptr362 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %264, i64 %idx.ext361
  br label %cond.end.363

cond.end.363:                                     ; preds = %cond.false.358, %cond.true.352
  %cond364 = phi %struct.lua_TValue* [ %add.ptr357, %cond.true.352 ], [ %add.ptr362, %cond.false.358 ]
  store %struct.lua_TValue* %cond364, %struct.lua_TValue** %rb347, align 8
  %266 = load i32, i32* %i, align 4
  %shr366 = lshr i32 %266, 14
  %and367 = and i32 %shr366, 511
  %and368 = and i32 %and367, 256
  %tobool369 = icmp ne i32 %and368, 0
  br i1 %tobool369, label %cond.true.370, label %cond.false.376

cond.true.370:                                    ; preds = %cond.end.363
  %267 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %268 = load i32, i32* %i, align 4
  %shr371 = lshr i32 %268, 14
  %and372 = and i32 %shr371, 511
  %and373 = and i32 %and372, -257
  %idx.ext374 = sext i32 %and373 to i64
  %add.ptr375 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %267, i64 %idx.ext374
  br label %cond.end.381

cond.false.376:                                   ; preds = %cond.end.363
  %269 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %270 = load i32, i32* %i, align 4
  %shr377 = lshr i32 %270, 14
  %and378 = and i32 %shr377, 511
  %idx.ext379 = sext i32 %and378 to i64
  %add.ptr380 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %269, i64 %idx.ext379
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.376, %cond.true.370
  %cond382 = phi %struct.lua_TValue* [ %add.ptr375, %cond.true.370 ], [ %add.ptr380, %cond.false.376 ]
  store %struct.lua_TValue* %cond382, %struct.lua_TValue** %rc365, align 8
  %271 = load %struct.lua_TValue*, %struct.lua_TValue** %rb347, align 8
  %tt383 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %271, i32 0, i32 1
  %272 = load i32, i32* %tt383, align 4
  %cmp384 = icmp eq i32 %272, 3
  br i1 %cmp384, label %land.lhs.true.386, label %if.else.401

land.lhs.true.386:                                ; preds = %cond.end.381
  %273 = load %struct.lua_TValue*, %struct.lua_TValue** %rc365, align 8
  %tt387 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %273, i32 0, i32 1
  %274 = load i32, i32* %tt387, align 4
  %cmp388 = icmp eq i32 %274, 3
  br i1 %cmp388, label %if.then.390, label %if.else.401

if.then.390:                                      ; preds = %land.lhs.true.386
  %275 = load %struct.lua_TValue*, %struct.lua_TValue** %rb347, align 8
  %value392 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %275, i32 0, i32 0
  %n393 = bitcast %union.Value* %value392 to double*
  %276 = load double, double* %n393, align 8
  store double %276, double* %nb391, align 8
  %277 = load %struct.lua_TValue*, %struct.lua_TValue** %rc365, align 8
  %value395 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %277, i32 0, i32 0
  %n396 = bitcast %union.Value* %value395 to double*
  %278 = load double, double* %n396, align 8
  store double %278, double* %nc394, align 8
  %279 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %279, %struct.lua_TValue** %i_o397, align 8
  %280 = load double, double* %nb391, align 8
  %281 = load double, double* %nc394, align 8
  %mul = fmul double %280, %281
  %282 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o397, align 8
  %value398 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %282, i32 0, i32 0
  %n399 = bitcast %union.Value* %value398 to double*
  store double %mul, double* %n399, align 8
  %283 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o397, align 8
  %tt400 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %283, i32 0, i32 1
  store i32 3, i32* %tt400, align 4
  br label %if.end.404

if.else.401:                                      ; preds = %land.lhs.true.386, %cond.end.381
  %284 = load i32*, i32** %pc, align 8
  %285 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc402 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %285, i32 0, i32 8
  store i32* %284, i32** %savedpc402, align 8
  %286 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %287 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %288 = load %struct.lua_TValue*, %struct.lua_TValue** %rb347, align 8
  %289 = load %struct.lua_TValue*, %struct.lua_TValue** %rc365, align 8
  call void @Arith(%struct.lua_State* %286, %struct.lua_TValue* %287, %struct.lua_TValue* %288, %struct.lua_TValue* %289, i32 7)
  %290 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base403 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %290, i32 0, i32 5
  %291 = load %struct.lua_TValue*, %struct.lua_TValue** %base403, align 8
  store %struct.lua_TValue* %291, %struct.lua_TValue** %base, align 8
  br label %if.end.404

if.end.404:                                       ; preds = %if.else.401, %if.then.390
  br label %for.cond

sw.bb.405:                                        ; preds = %if.end.15
  %292 = load i32, i32* %i, align 4
  %shr407 = lshr i32 %292, 23
  %and408 = and i32 %shr407, 511
  %and409 = and i32 %and408, 256
  %tobool410 = icmp ne i32 %and409, 0
  br i1 %tobool410, label %cond.true.411, label %cond.false.417

cond.true.411:                                    ; preds = %sw.bb.405
  %293 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %294 = load i32, i32* %i, align 4
  %shr412 = lshr i32 %294, 23
  %and413 = and i32 %shr412, 511
  %and414 = and i32 %and413, -257
  %idx.ext415 = sext i32 %and414 to i64
  %add.ptr416 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %293, i64 %idx.ext415
  br label %cond.end.422

cond.false.417:                                   ; preds = %sw.bb.405
  %295 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %296 = load i32, i32* %i, align 4
  %shr418 = lshr i32 %296, 23
  %and419 = and i32 %shr418, 511
  %idx.ext420 = sext i32 %and419 to i64
  %add.ptr421 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %295, i64 %idx.ext420
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.false.417, %cond.true.411
  %cond423 = phi %struct.lua_TValue* [ %add.ptr416, %cond.true.411 ], [ %add.ptr421, %cond.false.417 ]
  store %struct.lua_TValue* %cond423, %struct.lua_TValue** %rb406, align 8
  %297 = load i32, i32* %i, align 4
  %shr425 = lshr i32 %297, 14
  %and426 = and i32 %shr425, 511
  %and427 = and i32 %and426, 256
  %tobool428 = icmp ne i32 %and427, 0
  br i1 %tobool428, label %cond.true.429, label %cond.false.435

cond.true.429:                                    ; preds = %cond.end.422
  %298 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %299 = load i32, i32* %i, align 4
  %shr430 = lshr i32 %299, 14
  %and431 = and i32 %shr430, 511
  %and432 = and i32 %and431, -257
  %idx.ext433 = sext i32 %and432 to i64
  %add.ptr434 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %298, i64 %idx.ext433
  br label %cond.end.440

cond.false.435:                                   ; preds = %cond.end.422
  %300 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %301 = load i32, i32* %i, align 4
  %shr436 = lshr i32 %301, 14
  %and437 = and i32 %shr436, 511
  %idx.ext438 = sext i32 %and437 to i64
  %add.ptr439 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %300, i64 %idx.ext438
  br label %cond.end.440

cond.end.440:                                     ; preds = %cond.false.435, %cond.true.429
  %cond441 = phi %struct.lua_TValue* [ %add.ptr434, %cond.true.429 ], [ %add.ptr439, %cond.false.435 ]
  store %struct.lua_TValue* %cond441, %struct.lua_TValue** %rc424, align 8
  %302 = load %struct.lua_TValue*, %struct.lua_TValue** %rb406, align 8
  %tt442 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %302, i32 0, i32 1
  %303 = load i32, i32* %tt442, align 4
  %cmp443 = icmp eq i32 %303, 3
  br i1 %cmp443, label %land.lhs.true.445, label %if.else.460

land.lhs.true.445:                                ; preds = %cond.end.440
  %304 = load %struct.lua_TValue*, %struct.lua_TValue** %rc424, align 8
  %tt446 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %304, i32 0, i32 1
  %305 = load i32, i32* %tt446, align 4
  %cmp447 = icmp eq i32 %305, 3
  br i1 %cmp447, label %if.then.449, label %if.else.460

if.then.449:                                      ; preds = %land.lhs.true.445
  %306 = load %struct.lua_TValue*, %struct.lua_TValue** %rb406, align 8
  %value451 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %306, i32 0, i32 0
  %n452 = bitcast %union.Value* %value451 to double*
  %307 = load double, double* %n452, align 8
  store double %307, double* %nb450, align 8
  %308 = load %struct.lua_TValue*, %struct.lua_TValue** %rc424, align 8
  %value454 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %308, i32 0, i32 0
  %n455 = bitcast %union.Value* %value454 to double*
  %309 = load double, double* %n455, align 8
  store double %309, double* %nc453, align 8
  %310 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %310, %struct.lua_TValue** %i_o456, align 8
  %311 = load double, double* %nb450, align 8
  %312 = load double, double* %nc453, align 8
  %div = fdiv double %311, %312
  %313 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o456, align 8
  %value457 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %313, i32 0, i32 0
  %n458 = bitcast %union.Value* %value457 to double*
  store double %div, double* %n458, align 8
  %314 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o456, align 8
  %tt459 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %314, i32 0, i32 1
  store i32 3, i32* %tt459, align 4
  br label %if.end.463

if.else.460:                                      ; preds = %land.lhs.true.445, %cond.end.440
  %315 = load i32*, i32** %pc, align 8
  %316 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc461 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %316, i32 0, i32 8
  store i32* %315, i32** %savedpc461, align 8
  %317 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %318 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %319 = load %struct.lua_TValue*, %struct.lua_TValue** %rb406, align 8
  %320 = load %struct.lua_TValue*, %struct.lua_TValue** %rc424, align 8
  call void @Arith(%struct.lua_State* %317, %struct.lua_TValue* %318, %struct.lua_TValue* %319, %struct.lua_TValue* %320, i32 8)
  %321 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base462 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %321, i32 0, i32 5
  %322 = load %struct.lua_TValue*, %struct.lua_TValue** %base462, align 8
  store %struct.lua_TValue* %322, %struct.lua_TValue** %base, align 8
  br label %if.end.463

if.end.463:                                       ; preds = %if.else.460, %if.then.449
  br label %for.cond

sw.bb.464:                                        ; preds = %if.end.15
  %323 = load i32, i32* %i, align 4
  %shr466 = lshr i32 %323, 23
  %and467 = and i32 %shr466, 511
  %and468 = and i32 %and467, 256
  %tobool469 = icmp ne i32 %and468, 0
  br i1 %tobool469, label %cond.true.470, label %cond.false.476

cond.true.470:                                    ; preds = %sw.bb.464
  %324 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %325 = load i32, i32* %i, align 4
  %shr471 = lshr i32 %325, 23
  %and472 = and i32 %shr471, 511
  %and473 = and i32 %and472, -257
  %idx.ext474 = sext i32 %and473 to i64
  %add.ptr475 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %324, i64 %idx.ext474
  br label %cond.end.481

cond.false.476:                                   ; preds = %sw.bb.464
  %326 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %327 = load i32, i32* %i, align 4
  %shr477 = lshr i32 %327, 23
  %and478 = and i32 %shr477, 511
  %idx.ext479 = sext i32 %and478 to i64
  %add.ptr480 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %326, i64 %idx.ext479
  br label %cond.end.481

cond.end.481:                                     ; preds = %cond.false.476, %cond.true.470
  %cond482 = phi %struct.lua_TValue* [ %add.ptr475, %cond.true.470 ], [ %add.ptr480, %cond.false.476 ]
  store %struct.lua_TValue* %cond482, %struct.lua_TValue** %rb465, align 8
  %328 = load i32, i32* %i, align 4
  %shr484 = lshr i32 %328, 14
  %and485 = and i32 %shr484, 511
  %and486 = and i32 %and485, 256
  %tobool487 = icmp ne i32 %and486, 0
  br i1 %tobool487, label %cond.true.488, label %cond.false.494

cond.true.488:                                    ; preds = %cond.end.481
  %329 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %330 = load i32, i32* %i, align 4
  %shr489 = lshr i32 %330, 14
  %and490 = and i32 %shr489, 511
  %and491 = and i32 %and490, -257
  %idx.ext492 = sext i32 %and491 to i64
  %add.ptr493 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %329, i64 %idx.ext492
  br label %cond.end.499

cond.false.494:                                   ; preds = %cond.end.481
  %331 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %332 = load i32, i32* %i, align 4
  %shr495 = lshr i32 %332, 14
  %and496 = and i32 %shr495, 511
  %idx.ext497 = sext i32 %and496 to i64
  %add.ptr498 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %331, i64 %idx.ext497
  br label %cond.end.499

cond.end.499:                                     ; preds = %cond.false.494, %cond.true.488
  %cond500 = phi %struct.lua_TValue* [ %add.ptr493, %cond.true.488 ], [ %add.ptr498, %cond.false.494 ]
  store %struct.lua_TValue* %cond500, %struct.lua_TValue** %rc483, align 8
  %333 = load %struct.lua_TValue*, %struct.lua_TValue** %rb465, align 8
  %tt501 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %333, i32 0, i32 1
  %334 = load i32, i32* %tt501, align 4
  %cmp502 = icmp eq i32 %334, 3
  br i1 %cmp502, label %land.lhs.true.504, label %if.else.523

land.lhs.true.504:                                ; preds = %cond.end.499
  %335 = load %struct.lua_TValue*, %struct.lua_TValue** %rc483, align 8
  %tt505 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %335, i32 0, i32 1
  %336 = load i32, i32* %tt505, align 4
  %cmp506 = icmp eq i32 %336, 3
  br i1 %cmp506, label %if.then.508, label %if.else.523

if.then.508:                                      ; preds = %land.lhs.true.504
  %337 = load %struct.lua_TValue*, %struct.lua_TValue** %rb465, align 8
  %value510 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %337, i32 0, i32 0
  %n511 = bitcast %union.Value* %value510 to double*
  %338 = load double, double* %n511, align 8
  store double %338, double* %nb509, align 8
  %339 = load %struct.lua_TValue*, %struct.lua_TValue** %rc483, align 8
  %value513 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %339, i32 0, i32 0
  %n514 = bitcast %union.Value* %value513 to double*
  %340 = load double, double* %n514, align 8
  store double %340, double* %nc512, align 8
  %341 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %341, %struct.lua_TValue** %i_o515, align 8
  %342 = load double, double* %nb509, align 8
  %343 = load double, double* %nb509, align 8
  %344 = load double, double* %nc512, align 8
  %div516 = fdiv double %343, %344
  %call517 = call double @floor(double %div516) #7
  %345 = load double, double* %nc512, align 8
  %mul518 = fmul double %call517, %345
  %sub519 = fsub double %342, %mul518
  %346 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o515, align 8
  %value520 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %346, i32 0, i32 0
  %n521 = bitcast %union.Value* %value520 to double*
  store double %sub519, double* %n521, align 8
  %347 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o515, align 8
  %tt522 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %347, i32 0, i32 1
  store i32 3, i32* %tt522, align 4
  br label %if.end.526

if.else.523:                                      ; preds = %land.lhs.true.504, %cond.end.499
  %348 = load i32*, i32** %pc, align 8
  %349 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc524 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %349, i32 0, i32 8
  store i32* %348, i32** %savedpc524, align 8
  %350 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %351 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %352 = load %struct.lua_TValue*, %struct.lua_TValue** %rb465, align 8
  %353 = load %struct.lua_TValue*, %struct.lua_TValue** %rc483, align 8
  call void @Arith(%struct.lua_State* %350, %struct.lua_TValue* %351, %struct.lua_TValue* %352, %struct.lua_TValue* %353, i32 9)
  %354 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base525 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %354, i32 0, i32 5
  %355 = load %struct.lua_TValue*, %struct.lua_TValue** %base525, align 8
  store %struct.lua_TValue* %355, %struct.lua_TValue** %base, align 8
  br label %if.end.526

if.end.526:                                       ; preds = %if.else.523, %if.then.508
  br label %for.cond

sw.bb.527:                                        ; preds = %if.end.15
  %356 = load i32, i32* %i, align 4
  %shr529 = lshr i32 %356, 23
  %and530 = and i32 %shr529, 511
  %and531 = and i32 %and530, 256
  %tobool532 = icmp ne i32 %and531, 0
  br i1 %tobool532, label %cond.true.533, label %cond.false.539

cond.true.533:                                    ; preds = %sw.bb.527
  %357 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %358 = load i32, i32* %i, align 4
  %shr534 = lshr i32 %358, 23
  %and535 = and i32 %shr534, 511
  %and536 = and i32 %and535, -257
  %idx.ext537 = sext i32 %and536 to i64
  %add.ptr538 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %357, i64 %idx.ext537
  br label %cond.end.544

cond.false.539:                                   ; preds = %sw.bb.527
  %359 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %360 = load i32, i32* %i, align 4
  %shr540 = lshr i32 %360, 23
  %and541 = and i32 %shr540, 511
  %idx.ext542 = sext i32 %and541 to i64
  %add.ptr543 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %359, i64 %idx.ext542
  br label %cond.end.544

cond.end.544:                                     ; preds = %cond.false.539, %cond.true.533
  %cond545 = phi %struct.lua_TValue* [ %add.ptr538, %cond.true.533 ], [ %add.ptr543, %cond.false.539 ]
  store %struct.lua_TValue* %cond545, %struct.lua_TValue** %rb528, align 8
  %361 = load i32, i32* %i, align 4
  %shr547 = lshr i32 %361, 14
  %and548 = and i32 %shr547, 511
  %and549 = and i32 %and548, 256
  %tobool550 = icmp ne i32 %and549, 0
  br i1 %tobool550, label %cond.true.551, label %cond.false.557

cond.true.551:                                    ; preds = %cond.end.544
  %362 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %363 = load i32, i32* %i, align 4
  %shr552 = lshr i32 %363, 14
  %and553 = and i32 %shr552, 511
  %and554 = and i32 %and553, -257
  %idx.ext555 = sext i32 %and554 to i64
  %add.ptr556 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %362, i64 %idx.ext555
  br label %cond.end.562

cond.false.557:                                   ; preds = %cond.end.544
  %364 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %365 = load i32, i32* %i, align 4
  %shr558 = lshr i32 %365, 14
  %and559 = and i32 %shr558, 511
  %idx.ext560 = sext i32 %and559 to i64
  %add.ptr561 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %364, i64 %idx.ext560
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.false.557, %cond.true.551
  %cond563 = phi %struct.lua_TValue* [ %add.ptr556, %cond.true.551 ], [ %add.ptr561, %cond.false.557 ]
  store %struct.lua_TValue* %cond563, %struct.lua_TValue** %rc546, align 8
  %366 = load %struct.lua_TValue*, %struct.lua_TValue** %rb528, align 8
  %tt564 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %366, i32 0, i32 1
  %367 = load i32, i32* %tt564, align 4
  %cmp565 = icmp eq i32 %367, 3
  br i1 %cmp565, label %land.lhs.true.567, label %if.else.583

land.lhs.true.567:                                ; preds = %cond.end.562
  %368 = load %struct.lua_TValue*, %struct.lua_TValue** %rc546, align 8
  %tt568 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %368, i32 0, i32 1
  %369 = load i32, i32* %tt568, align 4
  %cmp569 = icmp eq i32 %369, 3
  br i1 %cmp569, label %if.then.571, label %if.else.583

if.then.571:                                      ; preds = %land.lhs.true.567
  %370 = load %struct.lua_TValue*, %struct.lua_TValue** %rb528, align 8
  %value573 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %370, i32 0, i32 0
  %n574 = bitcast %union.Value* %value573 to double*
  %371 = load double, double* %n574, align 8
  store double %371, double* %nb572, align 8
  %372 = load %struct.lua_TValue*, %struct.lua_TValue** %rc546, align 8
  %value576 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %372, i32 0, i32 0
  %n577 = bitcast %union.Value* %value576 to double*
  %373 = load double, double* %n577, align 8
  store double %373, double* %nc575, align 8
  %374 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %374, %struct.lua_TValue** %i_o578, align 8
  %375 = load double, double* %nb572, align 8
  %376 = load double, double* %nc575, align 8
  %call579 = call double @pow(double %375, double %376) #4
  %377 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o578, align 8
  %value580 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %377, i32 0, i32 0
  %n581 = bitcast %union.Value* %value580 to double*
  store double %call579, double* %n581, align 8
  %378 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o578, align 8
  %tt582 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %378, i32 0, i32 1
  store i32 3, i32* %tt582, align 4
  br label %if.end.586

if.else.583:                                      ; preds = %land.lhs.true.567, %cond.end.562
  %379 = load i32*, i32** %pc, align 8
  %380 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc584 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %380, i32 0, i32 8
  store i32* %379, i32** %savedpc584, align 8
  %381 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %382 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %383 = load %struct.lua_TValue*, %struct.lua_TValue** %rb528, align 8
  %384 = load %struct.lua_TValue*, %struct.lua_TValue** %rc546, align 8
  call void @Arith(%struct.lua_State* %381, %struct.lua_TValue* %382, %struct.lua_TValue* %383, %struct.lua_TValue* %384, i32 10)
  %385 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base585 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %385, i32 0, i32 5
  %386 = load %struct.lua_TValue*, %struct.lua_TValue** %base585, align 8
  store %struct.lua_TValue* %386, %struct.lua_TValue** %base, align 8
  br label %if.end.586

if.end.586:                                       ; preds = %if.else.583, %if.then.571
  br label %for.cond

sw.bb.587:                                        ; preds = %if.end.15
  %387 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %388 = load i32, i32* %i, align 4
  %shr589 = lshr i32 %388, 23
  %and590 = and i32 %shr589, 511
  %idx.ext591 = sext i32 %and590 to i64
  %add.ptr592 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %387, i64 %idx.ext591
  store %struct.lua_TValue* %add.ptr592, %struct.lua_TValue** %rb588, align 8
  %389 = load %struct.lua_TValue*, %struct.lua_TValue** %rb588, align 8
  %tt593 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %389, i32 0, i32 1
  %390 = load i32, i32* %tt593, align 4
  %cmp594 = icmp eq i32 %390, 3
  br i1 %cmp594, label %if.then.596, label %if.else.605

if.then.596:                                      ; preds = %sw.bb.587
  %391 = load %struct.lua_TValue*, %struct.lua_TValue** %rb588, align 8
  %value598 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %391, i32 0, i32 0
  %n599 = bitcast %union.Value* %value598 to double*
  %392 = load double, double* %n599, align 8
  store double %392, double* %nb597, align 8
  %393 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %393, %struct.lua_TValue** %i_o600, align 8
  %394 = load double, double* %nb597, align 8
  %sub601 = fsub double -0.000000e+00, %394
  %395 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o600, align 8
  %value602 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %395, i32 0, i32 0
  %n603 = bitcast %union.Value* %value602 to double*
  store double %sub601, double* %n603, align 8
  %396 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o600, align 8
  %tt604 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %396, i32 0, i32 1
  store i32 3, i32* %tt604, align 4
  br label %if.end.608

if.else.605:                                      ; preds = %sw.bb.587
  %397 = load i32*, i32** %pc, align 8
  %398 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc606 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %398, i32 0, i32 8
  store i32* %397, i32** %savedpc606, align 8
  %399 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %400 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %401 = load %struct.lua_TValue*, %struct.lua_TValue** %rb588, align 8
  %402 = load %struct.lua_TValue*, %struct.lua_TValue** %rb588, align 8
  call void @Arith(%struct.lua_State* %399, %struct.lua_TValue* %400, %struct.lua_TValue* %401, %struct.lua_TValue* %402, i32 11)
  %403 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base607 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %403, i32 0, i32 5
  %404 = load %struct.lua_TValue*, %struct.lua_TValue** %base607, align 8
  store %struct.lua_TValue* %404, %struct.lua_TValue** %base, align 8
  br label %if.end.608

if.end.608:                                       ; preds = %if.else.605, %if.then.596
  br label %for.cond

sw.bb.609:                                        ; preds = %if.end.15
  %405 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %406 = load i32, i32* %i, align 4
  %shr610 = lshr i32 %406, 23
  %and611 = and i32 %shr610, 511
  %idx.ext612 = sext i32 %and611 to i64
  %add.ptr613 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %405, i64 %idx.ext612
  %tt614 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr613, i32 0, i32 1
  %407 = load i32, i32* %tt614, align 4
  %cmp615 = icmp eq i32 %407, 0
  br i1 %cmp615, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.609
  %408 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %409 = load i32, i32* %i, align 4
  %shr617 = lshr i32 %409, 23
  %and618 = and i32 %shr617, 511
  %idx.ext619 = sext i32 %and618 to i64
  %add.ptr620 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %408, i64 %idx.ext619
  %tt621 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr620, i32 0, i32 1
  %410 = load i32, i32* %tt621, align 4
  %cmp622 = icmp eq i32 %410, 1
  br i1 %cmp622, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %411 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %412 = load i32, i32* %i, align 4
  %shr624 = lshr i32 %412, 23
  %and625 = and i32 %shr624, 511
  %idx.ext626 = sext i32 %and625 to i64
  %add.ptr627 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %411, i64 %idx.ext626
  %value628 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr627, i32 0, i32 0
  %b629 = bitcast %union.Value* %value628 to i32*
  %413 = load i32, i32* %b629, align 4
  %cmp630 = icmp eq i32 %413, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %414 = phi i1 [ false, %lor.rhs ], [ %cmp630, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %sw.bb.609
  %415 = phi i1 [ true, %sw.bb.609 ], [ %414, %land.end ]
  %lor.ext = zext i1 %415 to i32
  store i32 %lor.ext, i32* %res, align 4
  %416 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %416, %struct.lua_TValue** %i_o632, align 8
  %417 = load i32, i32* %res, align 4
  %418 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o632, align 8
  %value633 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %418, i32 0, i32 0
  %b634 = bitcast %union.Value* %value633 to i32*
  store i32 %417, i32* %b634, align 4
  %419 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o632, align 8
  %tt635 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %419, i32 0, i32 1
  store i32 1, i32* %tt635, align 4
  br label %for.cond

sw.bb.636:                                        ; preds = %if.end.15
  %420 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %421 = load i32, i32* %i, align 4
  %shr638 = lshr i32 %421, 23
  %and639 = and i32 %shr638, 511
  %idx.ext640 = sext i32 %and639 to i64
  %add.ptr641 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %420, i64 %idx.ext640
  store %struct.lua_TValue* %add.ptr641, %struct.lua_TValue** %rb637, align 8
  %422 = load %struct.lua_TValue*, %struct.lua_TValue** %rb637, align 8
  %tt642 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %422, i32 0, i32 1
  %423 = load i32, i32* %tt642, align 4
  switch i32 %423, label %sw.default [
    i32 5, label %sw.bb.643
    i32 4, label %sw.bb.652
  ]

sw.bb.643:                                        ; preds = %sw.bb.636
  %424 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %424, %struct.lua_TValue** %i_o644, align 8
  %425 = load %struct.lua_TValue*, %struct.lua_TValue** %rb637, align 8
  %value645 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %425, i32 0, i32 0
  %gc646 = bitcast %union.Value* %value645 to %union.GCObject**
  %426 = load %union.GCObject*, %union.GCObject** %gc646, align 8
  %h = bitcast %union.GCObject* %426 to %struct.Table*
  %call647 = call i32 @luaH_getn(%struct.Table* %h)
  %conv648 = sitofp i32 %call647 to double
  %427 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o644, align 8
  %value649 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %427, i32 0, i32 0
  %n650 = bitcast %union.Value* %value649 to double*
  store double %conv648, double* %n650, align 8
  %428 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o644, align 8
  %tt651 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %428, i32 0, i32 1
  store i32 3, i32* %tt651, align 4
  br label %sw.epilog

sw.bb.652:                                        ; preds = %sw.bb.636
  %429 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %429, %struct.lua_TValue** %i_o653, align 8
  %430 = load %struct.lua_TValue*, %struct.lua_TValue** %rb637, align 8
  %value654 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %430, i32 0, i32 0
  %gc655 = bitcast %union.Value* %value654 to %union.GCObject**
  %431 = load %union.GCObject*, %union.GCObject** %gc655, align 8
  %ts = bitcast %union.GCObject* %431 to %union.TString*
  %tsv = bitcast %union.TString* %ts to %struct.anon*
  %len = getelementptr inbounds %struct.anon, %struct.anon* %tsv, i32 0, i32 5
  %432 = load i64, i64* %len, align 8
  %conv656 = uitofp i64 %432 to double
  %433 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o653, align 8
  %value657 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %433, i32 0, i32 0
  %n658 = bitcast %union.Value* %value657 to double*
  store double %conv656, double* %n658, align 8
  %434 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o653, align 8
  %tt659 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %434, i32 0, i32 1
  store i32 3, i32* %tt659, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.636
  %435 = load i32*, i32** %pc, align 8
  %436 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc660 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %436, i32 0, i32 8
  store i32* %435, i32** %savedpc660, align 8
  %437 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %438 = load %struct.lua_TValue*, %struct.lua_TValue** %rb637, align 8
  %439 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %call661 = call i32 @call_binTM(%struct.lua_State* %437, %struct.lua_TValue* %438, %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue* %439, i32 12)
  %tobool662 = icmp ne i32 %call661, 0
  br i1 %tobool662, label %if.end.664, label %if.then.663

if.then.663:                                      ; preds = %sw.default
  %440 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %441 = load %struct.lua_TValue*, %struct.lua_TValue** %rb637, align 8
  call void @luaG_typeerror(%struct.lua_State* %440, %struct.lua_TValue* %441, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.664

if.end.664:                                       ; preds = %if.then.663, %sw.default
  %442 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base665 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %442, i32 0, i32 5
  %443 = load %struct.lua_TValue*, %struct.lua_TValue** %base665, align 8
  store %struct.lua_TValue* %443, %struct.lua_TValue** %base, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.664, %sw.bb.652, %sw.bb.643
  br label %for.cond

sw.bb.666:                                        ; preds = %if.end.15
  %444 = load i32, i32* %i, align 4
  %shr668 = lshr i32 %444, 23
  %and669 = and i32 %shr668, 511
  store i32 %and669, i32* %b667, align 4
  %445 = load i32, i32* %i, align 4
  %shr671 = lshr i32 %445, 14
  %and672 = and i32 %shr671, 511
  store i32 %and672, i32* %c670, align 4
  %446 = load i32*, i32** %pc, align 8
  %447 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc673 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %447, i32 0, i32 8
  store i32* %446, i32** %savedpc673, align 8
  %448 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %449 = load i32, i32* %c670, align 4
  %450 = load i32, i32* %b667, align 4
  %sub674 = sub nsw i32 %449, %450
  %add675 = add nsw i32 %sub674, 1
  %451 = load i32, i32* %c670, align 4
  call void @luaV_concat(%struct.lua_State* %448, i32 %add675, i32 %451)
  %452 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G676 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %452, i32 0, i32 6
  %453 = load %struct.global_State*, %struct.global_State** %l_G676, align 8
  %totalbytes677 = getelementptr inbounds %struct.global_State, %struct.global_State* %453, i32 0, i32 14
  %454 = load i64, i64* %totalbytes677, align 8
  %455 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G678 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %455, i32 0, i32 6
  %456 = load %struct.global_State*, %struct.global_State** %l_G678, align 8
  %GCthreshold679 = getelementptr inbounds %struct.global_State, %struct.global_State* %456, i32 0, i32 13
  %457 = load i64, i64* %GCthreshold679, align 8
  %cmp680 = icmp uge i64 %454, %457
  br i1 %cmp680, label %if.then.682, label %if.end.683

if.then.682:                                      ; preds = %sw.bb.666
  %458 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %458)
  br label %if.end.683

if.end.683:                                       ; preds = %if.then.682, %sw.bb.666
  %459 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base684 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %459, i32 0, i32 5
  %460 = load %struct.lua_TValue*, %struct.lua_TValue** %base684, align 8
  store %struct.lua_TValue* %460, %struct.lua_TValue** %base, align 8
  %461 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %462 = load i32, i32* %b667, align 4
  %idx.ext686 = sext i32 %462 to i64
  %add.ptr687 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %461, i64 %idx.ext686
  store %struct.lua_TValue* %add.ptr687, %struct.lua_TValue** %o2685, align 8
  %463 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %464 = load i32, i32* %i, align 4
  %shr689 = lshr i32 %464, 6
  %and690 = and i32 %shr689, 255
  %idx.ext691 = sext i32 %and690 to i64
  %add.ptr692 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %463, i64 %idx.ext691
  store %struct.lua_TValue* %add.ptr692, %struct.lua_TValue** %o1688, align 8
  %465 = load %struct.lua_TValue*, %struct.lua_TValue** %o1688, align 8
  %value693 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %465, i32 0, i32 0
  %466 = load %struct.lua_TValue*, %struct.lua_TValue** %o2685, align 8
  %value694 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %466, i32 0, i32 0
  %467 = bitcast %union.Value* %value693 to i8*
  %468 = bitcast %union.Value* %value694 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %467, i8* %468, i64 8, i32 8, i1 false)
  %469 = load %struct.lua_TValue*, %struct.lua_TValue** %o2685, align 8
  %tt695 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %469, i32 0, i32 1
  %470 = load i32, i32* %tt695, align 4
  %471 = load %struct.lua_TValue*, %struct.lua_TValue** %o1688, align 8
  %tt696 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %471, i32 0, i32 1
  store i32 %470, i32* %tt696, align 4
  br label %for.cond

sw.bb.697:                                        ; preds = %if.end.15
  %472 = load i32, i32* %i, align 4
  %shr698 = lshr i32 %472, 14
  %and699 = and i32 %shr698, 262143
  %sub700 = sub nsw i32 %and699, 131071
  %473 = load i32*, i32** %pc, align 8
  %idx.ext701 = sext i32 %sub700 to i64
  %add.ptr702 = getelementptr inbounds i32, i32* %473, i64 %idx.ext701
  store i32* %add.ptr702, i32** %pc, align 8
  br label %for.cond

sw.bb.703:                                        ; preds = %if.end.15
  %474 = load i32, i32* %i, align 4
  %shr705 = lshr i32 %474, 23
  %and706 = and i32 %shr705, 511
  %and707 = and i32 %and706, 256
  %tobool708 = icmp ne i32 %and707, 0
  br i1 %tobool708, label %cond.true.709, label %cond.false.715

cond.true.709:                                    ; preds = %sw.bb.703
  %475 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %476 = load i32, i32* %i, align 4
  %shr710 = lshr i32 %476, 23
  %and711 = and i32 %shr710, 511
  %and712 = and i32 %and711, -257
  %idx.ext713 = sext i32 %and712 to i64
  %add.ptr714 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %475, i64 %idx.ext713
  br label %cond.end.720

cond.false.715:                                   ; preds = %sw.bb.703
  %477 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %478 = load i32, i32* %i, align 4
  %shr716 = lshr i32 %478, 23
  %and717 = and i32 %shr716, 511
  %idx.ext718 = sext i32 %and717 to i64
  %add.ptr719 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %477, i64 %idx.ext718
  br label %cond.end.720

cond.end.720:                                     ; preds = %cond.false.715, %cond.true.709
  %cond721 = phi %struct.lua_TValue* [ %add.ptr714, %cond.true.709 ], [ %add.ptr719, %cond.false.715 ]
  store %struct.lua_TValue* %cond721, %struct.lua_TValue** %rb704, align 8
  %479 = load i32, i32* %i, align 4
  %shr723 = lshr i32 %479, 14
  %and724 = and i32 %shr723, 511
  %and725 = and i32 %and724, 256
  %tobool726 = icmp ne i32 %and725, 0
  br i1 %tobool726, label %cond.true.727, label %cond.false.733

cond.true.727:                                    ; preds = %cond.end.720
  %480 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %481 = load i32, i32* %i, align 4
  %shr728 = lshr i32 %481, 14
  %and729 = and i32 %shr728, 511
  %and730 = and i32 %and729, -257
  %idx.ext731 = sext i32 %and730 to i64
  %add.ptr732 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %480, i64 %idx.ext731
  br label %cond.end.738

cond.false.733:                                   ; preds = %cond.end.720
  %482 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %483 = load i32, i32* %i, align 4
  %shr734 = lshr i32 %483, 14
  %and735 = and i32 %shr734, 511
  %idx.ext736 = sext i32 %and735 to i64
  %add.ptr737 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %482, i64 %idx.ext736
  br label %cond.end.738

cond.end.738:                                     ; preds = %cond.false.733, %cond.true.727
  %cond739 = phi %struct.lua_TValue* [ %add.ptr732, %cond.true.727 ], [ %add.ptr737, %cond.false.733 ]
  store %struct.lua_TValue* %cond739, %struct.lua_TValue** %rc722, align 8
  %484 = load i32*, i32** %pc, align 8
  %485 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc740 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %485, i32 0, i32 8
  store i32* %484, i32** %savedpc740, align 8
  %486 = load %struct.lua_TValue*, %struct.lua_TValue** %rb704, align 8
  %tt741 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %486, i32 0, i32 1
  %487 = load i32, i32* %tt741, align 4
  %488 = load %struct.lua_TValue*, %struct.lua_TValue** %rc722, align 8
  %tt742 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %488, i32 0, i32 1
  %489 = load i32, i32* %tt742, align 4
  %cmp743 = icmp eq i32 %487, %489
  br i1 %cmp743, label %land.rhs.745, label %land.end.748

land.rhs.745:                                     ; preds = %cond.end.738
  %490 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %491 = load %struct.lua_TValue*, %struct.lua_TValue** %rb704, align 8
  %492 = load %struct.lua_TValue*, %struct.lua_TValue** %rc722, align 8
  %call746 = call i32 @luaV_equalval(%struct.lua_State* %490, %struct.lua_TValue* %491, %struct.lua_TValue* %492)
  %tobool747 = icmp ne i32 %call746, 0
  br label %land.end.748

land.end.748:                                     ; preds = %land.rhs.745, %cond.end.738
  %493 = phi i1 [ false, %cond.end.738 ], [ %tobool747, %land.rhs.745 ]
  %land.ext = zext i1 %493 to i32
  %494 = load i32, i32* %i, align 4
  %shr749 = lshr i32 %494, 6
  %and750 = and i32 %shr749, 255
  %cmp751 = icmp eq i32 %land.ext, %and750
  br i1 %cmp751, label %if.then.753, label %if.end.759

if.then.753:                                      ; preds = %land.end.748
  %495 = load i32*, i32** %pc, align 8
  %496 = load i32, i32* %495, align 4
  %shr754 = lshr i32 %496, 14
  %and755 = and i32 %shr754, 262143
  %sub756 = sub nsw i32 %and755, 131071
  %497 = load i32*, i32** %pc, align 8
  %idx.ext757 = sext i32 %sub756 to i64
  %add.ptr758 = getelementptr inbounds i32, i32* %497, i64 %idx.ext757
  store i32* %add.ptr758, i32** %pc, align 8
  br label %if.end.759

if.end.759:                                       ; preds = %if.then.753, %land.end.748
  %498 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base760 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %498, i32 0, i32 5
  %499 = load %struct.lua_TValue*, %struct.lua_TValue** %base760, align 8
  store %struct.lua_TValue* %499, %struct.lua_TValue** %base, align 8
  %500 = load i32*, i32** %pc, align 8
  %incdec.ptr761 = getelementptr inbounds i32, i32* %500, i32 1
  store i32* %incdec.ptr761, i32** %pc, align 8
  br label %for.cond

sw.bb.762:                                        ; preds = %if.end.15
  %501 = load i32*, i32** %pc, align 8
  %502 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc763 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %502, i32 0, i32 8
  store i32* %501, i32** %savedpc763, align 8
  %503 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %504 = load i32, i32* %i, align 4
  %shr764 = lshr i32 %504, 23
  %and765 = and i32 %shr764, 511
  %and766 = and i32 %and765, 256
  %tobool767 = icmp ne i32 %and766, 0
  br i1 %tobool767, label %cond.true.768, label %cond.false.774

cond.true.768:                                    ; preds = %sw.bb.762
  %505 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %506 = load i32, i32* %i, align 4
  %shr769 = lshr i32 %506, 23
  %and770 = and i32 %shr769, 511
  %and771 = and i32 %and770, -257
  %idx.ext772 = sext i32 %and771 to i64
  %add.ptr773 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %505, i64 %idx.ext772
  br label %cond.end.779

cond.false.774:                                   ; preds = %sw.bb.762
  %507 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %508 = load i32, i32* %i, align 4
  %shr775 = lshr i32 %508, 23
  %and776 = and i32 %shr775, 511
  %idx.ext777 = sext i32 %and776 to i64
  %add.ptr778 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %507, i64 %idx.ext777
  br label %cond.end.779

cond.end.779:                                     ; preds = %cond.false.774, %cond.true.768
  %cond780 = phi %struct.lua_TValue* [ %add.ptr773, %cond.true.768 ], [ %add.ptr778, %cond.false.774 ]
  %509 = load i32, i32* %i, align 4
  %shr781 = lshr i32 %509, 14
  %and782 = and i32 %shr781, 511
  %and783 = and i32 %and782, 256
  %tobool784 = icmp ne i32 %and783, 0
  br i1 %tobool784, label %cond.true.785, label %cond.false.791

cond.true.785:                                    ; preds = %cond.end.779
  %510 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %511 = load i32, i32* %i, align 4
  %shr786 = lshr i32 %511, 14
  %and787 = and i32 %shr786, 511
  %and788 = and i32 %and787, -257
  %idx.ext789 = sext i32 %and788 to i64
  %add.ptr790 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %510, i64 %idx.ext789
  br label %cond.end.796

cond.false.791:                                   ; preds = %cond.end.779
  %512 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %513 = load i32, i32* %i, align 4
  %shr792 = lshr i32 %513, 14
  %and793 = and i32 %shr792, 511
  %idx.ext794 = sext i32 %and793 to i64
  %add.ptr795 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %512, i64 %idx.ext794
  br label %cond.end.796

cond.end.796:                                     ; preds = %cond.false.791, %cond.true.785
  %cond797 = phi %struct.lua_TValue* [ %add.ptr790, %cond.true.785 ], [ %add.ptr795, %cond.false.791 ]
  %call798 = call i32 @luaV_lessthan(%struct.lua_State* %503, %struct.lua_TValue* %cond780, %struct.lua_TValue* %cond797)
  %514 = load i32, i32* %i, align 4
  %shr799 = lshr i32 %514, 6
  %and800 = and i32 %shr799, 255
  %cmp801 = icmp eq i32 %call798, %and800
  br i1 %cmp801, label %if.then.803, label %if.end.809

if.then.803:                                      ; preds = %cond.end.796
  %515 = load i32*, i32** %pc, align 8
  %516 = load i32, i32* %515, align 4
  %shr804 = lshr i32 %516, 14
  %and805 = and i32 %shr804, 262143
  %sub806 = sub nsw i32 %and805, 131071
  %517 = load i32*, i32** %pc, align 8
  %idx.ext807 = sext i32 %sub806 to i64
  %add.ptr808 = getelementptr inbounds i32, i32* %517, i64 %idx.ext807
  store i32* %add.ptr808, i32** %pc, align 8
  br label %if.end.809

if.end.809:                                       ; preds = %if.then.803, %cond.end.796
  %518 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base810 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %518, i32 0, i32 5
  %519 = load %struct.lua_TValue*, %struct.lua_TValue** %base810, align 8
  store %struct.lua_TValue* %519, %struct.lua_TValue** %base, align 8
  %520 = load i32*, i32** %pc, align 8
  %incdec.ptr811 = getelementptr inbounds i32, i32* %520, i32 1
  store i32* %incdec.ptr811, i32** %pc, align 8
  br label %for.cond

sw.bb.812:                                        ; preds = %if.end.15
  %521 = load i32*, i32** %pc, align 8
  %522 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc813 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %522, i32 0, i32 8
  store i32* %521, i32** %savedpc813, align 8
  %523 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %524 = load i32, i32* %i, align 4
  %shr814 = lshr i32 %524, 23
  %and815 = and i32 %shr814, 511
  %and816 = and i32 %and815, 256
  %tobool817 = icmp ne i32 %and816, 0
  br i1 %tobool817, label %cond.true.818, label %cond.false.824

cond.true.818:                                    ; preds = %sw.bb.812
  %525 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %526 = load i32, i32* %i, align 4
  %shr819 = lshr i32 %526, 23
  %and820 = and i32 %shr819, 511
  %and821 = and i32 %and820, -257
  %idx.ext822 = sext i32 %and821 to i64
  %add.ptr823 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %525, i64 %idx.ext822
  br label %cond.end.829

cond.false.824:                                   ; preds = %sw.bb.812
  %527 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %528 = load i32, i32* %i, align 4
  %shr825 = lshr i32 %528, 23
  %and826 = and i32 %shr825, 511
  %idx.ext827 = sext i32 %and826 to i64
  %add.ptr828 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %527, i64 %idx.ext827
  br label %cond.end.829

cond.end.829:                                     ; preds = %cond.false.824, %cond.true.818
  %cond830 = phi %struct.lua_TValue* [ %add.ptr823, %cond.true.818 ], [ %add.ptr828, %cond.false.824 ]
  %529 = load i32, i32* %i, align 4
  %shr831 = lshr i32 %529, 14
  %and832 = and i32 %shr831, 511
  %and833 = and i32 %and832, 256
  %tobool834 = icmp ne i32 %and833, 0
  br i1 %tobool834, label %cond.true.835, label %cond.false.841

cond.true.835:                                    ; preds = %cond.end.829
  %530 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %531 = load i32, i32* %i, align 4
  %shr836 = lshr i32 %531, 14
  %and837 = and i32 %shr836, 511
  %and838 = and i32 %and837, -257
  %idx.ext839 = sext i32 %and838 to i64
  %add.ptr840 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %530, i64 %idx.ext839
  br label %cond.end.846

cond.false.841:                                   ; preds = %cond.end.829
  %532 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %533 = load i32, i32* %i, align 4
  %shr842 = lshr i32 %533, 14
  %and843 = and i32 %shr842, 511
  %idx.ext844 = sext i32 %and843 to i64
  %add.ptr845 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %532, i64 %idx.ext844
  br label %cond.end.846

cond.end.846:                                     ; preds = %cond.false.841, %cond.true.835
  %cond847 = phi %struct.lua_TValue* [ %add.ptr840, %cond.true.835 ], [ %add.ptr845, %cond.false.841 ]
  %call848 = call i32 @lessequal(%struct.lua_State* %523, %struct.lua_TValue* %cond830, %struct.lua_TValue* %cond847)
  %534 = load i32, i32* %i, align 4
  %shr849 = lshr i32 %534, 6
  %and850 = and i32 %shr849, 255
  %cmp851 = icmp eq i32 %call848, %and850
  br i1 %cmp851, label %if.then.853, label %if.end.859

if.then.853:                                      ; preds = %cond.end.846
  %535 = load i32*, i32** %pc, align 8
  %536 = load i32, i32* %535, align 4
  %shr854 = lshr i32 %536, 14
  %and855 = and i32 %shr854, 262143
  %sub856 = sub nsw i32 %and855, 131071
  %537 = load i32*, i32** %pc, align 8
  %idx.ext857 = sext i32 %sub856 to i64
  %add.ptr858 = getelementptr inbounds i32, i32* %537, i64 %idx.ext857
  store i32* %add.ptr858, i32** %pc, align 8
  br label %if.end.859

if.end.859:                                       ; preds = %if.then.853, %cond.end.846
  %538 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base860 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %538, i32 0, i32 5
  %539 = load %struct.lua_TValue*, %struct.lua_TValue** %base860, align 8
  store %struct.lua_TValue* %539, %struct.lua_TValue** %base, align 8
  %540 = load i32*, i32** %pc, align 8
  %incdec.ptr861 = getelementptr inbounds i32, i32* %540, i32 1
  store i32* %incdec.ptr861, i32** %pc, align 8
  br label %for.cond

sw.bb.862:                                        ; preds = %if.end.15
  %541 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %tt863 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %541, i32 0, i32 1
  %542 = load i32, i32* %tt863, align 4
  %cmp864 = icmp eq i32 %542, 0
  br i1 %cmp864, label %lor.end.877, label %lor.rhs.866

lor.rhs.866:                                      ; preds = %sw.bb.862
  %543 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %tt867 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %543, i32 0, i32 1
  %544 = load i32, i32* %tt867, align 4
  %cmp868 = icmp eq i32 %544, 1
  br i1 %cmp868, label %land.rhs.870, label %land.end.875

land.rhs.870:                                     ; preds = %lor.rhs.866
  %545 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %value871 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %545, i32 0, i32 0
  %b872 = bitcast %union.Value* %value871 to i32*
  %546 = load i32, i32* %b872, align 4
  %cmp873 = icmp eq i32 %546, 0
  br label %land.end.875

land.end.875:                                     ; preds = %land.rhs.870, %lor.rhs.866
  %547 = phi i1 [ false, %lor.rhs.866 ], [ %cmp873, %land.rhs.870 ]
  br label %lor.end.877

lor.end.877:                                      ; preds = %land.end.875, %sw.bb.862
  %548 = phi i1 [ true, %sw.bb.862 ], [ %547, %land.end.875 ]
  %lor.ext878 = zext i1 %548 to i32
  %549 = load i32, i32* %i, align 4
  %shr879 = lshr i32 %549, 14
  %and880 = and i32 %shr879, 511
  %cmp881 = icmp ne i32 %lor.ext878, %and880
  br i1 %cmp881, label %if.then.883, label %if.end.889

if.then.883:                                      ; preds = %lor.end.877
  %550 = load i32*, i32** %pc, align 8
  %551 = load i32, i32* %550, align 4
  %shr884 = lshr i32 %551, 14
  %and885 = and i32 %shr884, 262143
  %sub886 = sub nsw i32 %and885, 131071
  %552 = load i32*, i32** %pc, align 8
  %idx.ext887 = sext i32 %sub886 to i64
  %add.ptr888 = getelementptr inbounds i32, i32* %552, i64 %idx.ext887
  store i32* %add.ptr888, i32** %pc, align 8
  br label %if.end.889

if.end.889:                                       ; preds = %if.then.883, %lor.end.877
  %553 = load i32*, i32** %pc, align 8
  %incdec.ptr890 = getelementptr inbounds i32, i32* %553, i32 1
  store i32* %incdec.ptr890, i32** %pc, align 8
  br label %for.cond

sw.bb.891:                                        ; preds = %if.end.15
  %554 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %555 = load i32, i32* %i, align 4
  %shr893 = lshr i32 %555, 23
  %and894 = and i32 %shr893, 511
  %idx.ext895 = sext i32 %and894 to i64
  %add.ptr896 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %554, i64 %idx.ext895
  store %struct.lua_TValue* %add.ptr896, %struct.lua_TValue** %rb892, align 8
  %556 = load %struct.lua_TValue*, %struct.lua_TValue** %rb892, align 8
  %tt897 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %556, i32 0, i32 1
  %557 = load i32, i32* %tt897, align 4
  %cmp898 = icmp eq i32 %557, 0
  br i1 %cmp898, label %lor.end.911, label %lor.rhs.900

lor.rhs.900:                                      ; preds = %sw.bb.891
  %558 = load %struct.lua_TValue*, %struct.lua_TValue** %rb892, align 8
  %tt901 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %558, i32 0, i32 1
  %559 = load i32, i32* %tt901, align 4
  %cmp902 = icmp eq i32 %559, 1
  br i1 %cmp902, label %land.rhs.904, label %land.end.909

land.rhs.904:                                     ; preds = %lor.rhs.900
  %560 = load %struct.lua_TValue*, %struct.lua_TValue** %rb892, align 8
  %value905 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %560, i32 0, i32 0
  %b906 = bitcast %union.Value* %value905 to i32*
  %561 = load i32, i32* %b906, align 4
  %cmp907 = icmp eq i32 %561, 0
  br label %land.end.909

land.end.909:                                     ; preds = %land.rhs.904, %lor.rhs.900
  %562 = phi i1 [ false, %lor.rhs.900 ], [ %cmp907, %land.rhs.904 ]
  br label %lor.end.911

lor.end.911:                                      ; preds = %land.end.909, %sw.bb.891
  %563 = phi i1 [ true, %sw.bb.891 ], [ %562, %land.end.909 ]
  %lor.ext912 = zext i1 %563 to i32
  %564 = load i32, i32* %i, align 4
  %shr913 = lshr i32 %564, 14
  %and914 = and i32 %shr913, 511
  %cmp915 = icmp ne i32 %lor.ext912, %and914
  br i1 %cmp915, label %if.then.917, label %if.end.929

if.then.917:                                      ; preds = %lor.end.911
  %565 = load %struct.lua_TValue*, %struct.lua_TValue** %rb892, align 8
  store %struct.lua_TValue* %565, %struct.lua_TValue** %o2918, align 8
  %566 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %566, %struct.lua_TValue** %o1919, align 8
  %567 = load %struct.lua_TValue*, %struct.lua_TValue** %o1919, align 8
  %value920 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %567, i32 0, i32 0
  %568 = load %struct.lua_TValue*, %struct.lua_TValue** %o2918, align 8
  %value921 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %568, i32 0, i32 0
  %569 = bitcast %union.Value* %value920 to i8*
  %570 = bitcast %union.Value* %value921 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %569, i8* %570, i64 8, i32 8, i1 false)
  %571 = load %struct.lua_TValue*, %struct.lua_TValue** %o2918, align 8
  %tt922 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %571, i32 0, i32 1
  %572 = load i32, i32* %tt922, align 4
  %573 = load %struct.lua_TValue*, %struct.lua_TValue** %o1919, align 8
  %tt923 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %573, i32 0, i32 1
  store i32 %572, i32* %tt923, align 4
  %574 = load i32*, i32** %pc, align 8
  %575 = load i32, i32* %574, align 4
  %shr924 = lshr i32 %575, 14
  %and925 = and i32 %shr924, 262143
  %sub926 = sub nsw i32 %and925, 131071
  %576 = load i32*, i32** %pc, align 8
  %idx.ext927 = sext i32 %sub926 to i64
  %add.ptr928 = getelementptr inbounds i32, i32* %576, i64 %idx.ext927
  store i32* %add.ptr928, i32** %pc, align 8
  br label %if.end.929

if.end.929:                                       ; preds = %if.then.917, %lor.end.911
  %577 = load i32*, i32** %pc, align 8
  %incdec.ptr930 = getelementptr inbounds i32, i32* %577, i32 1
  store i32* %incdec.ptr930, i32** %pc, align 8
  br label %for.cond

sw.bb.931:                                        ; preds = %if.end.15
  %578 = load i32, i32* %i, align 4
  %shr933 = lshr i32 %578, 23
  %and934 = and i32 %shr933, 511
  store i32 %and934, i32* %b932, align 4
  %579 = load i32, i32* %i, align 4
  %shr935 = lshr i32 %579, 14
  %and936 = and i32 %shr935, 511
  %sub937 = sub nsw i32 %and936, 1
  store i32 %sub937, i32* %nresults, align 4
  %580 = load i32, i32* %b932, align 4
  %cmp938 = icmp ne i32 %580, 0
  br i1 %cmp938, label %if.then.940, label %if.end.943

if.then.940:                                      ; preds = %sw.bb.931
  %581 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %582 = load i32, i32* %b932, align 4
  %idx.ext941 = sext i32 %582 to i64
  %add.ptr942 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %581, i64 %idx.ext941
  %583 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %583, i32 0, i32 4
  store %struct.lua_TValue* %add.ptr942, %struct.lua_TValue** %top, align 8
  br label %if.end.943

if.end.943:                                       ; preds = %if.then.940, %sw.bb.931
  %584 = load i32*, i32** %pc, align 8
  %585 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc944 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %585, i32 0, i32 8
  store i32* %584, i32** %savedpc944, align 8
  %586 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %587 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %588 = load i32, i32* %nresults, align 4
  %call945 = call i32 @luaD_precall(%struct.lua_State* %586, %struct.lua_TValue* %587, i32 %588)
  switch i32 %call945, label %sw.default.956 [
    i32 0, label %sw.bb.946
    i32 1, label %sw.bb.947
  ]

sw.bb.946:                                        ; preds = %if.end.943
  %589 = load i32, i32* %nexeccalls.addr, align 4
  %inc = add nsw i32 %589, 1
  store i32 %inc, i32* %nexeccalls.addr, align 4
  br label %reentry

sw.bb.947:                                        ; preds = %if.end.943
  %590 = load i32, i32* %nresults, align 4
  %cmp948 = icmp sge i32 %590, 0
  br i1 %cmp948, label %if.then.950, label %if.end.954

if.then.950:                                      ; preds = %sw.bb.947
  %591 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci951 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %591, i32 0, i32 7
  %592 = load %struct.CallInfo*, %struct.CallInfo** %ci951, align 8
  %top952 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %592, i32 0, i32 2
  %593 = load %struct.lua_TValue*, %struct.lua_TValue** %top952, align 8
  %594 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top953 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %594, i32 0, i32 4
  store %struct.lua_TValue* %593, %struct.lua_TValue** %top953, align 8
  br label %if.end.954

if.end.954:                                       ; preds = %if.then.950, %sw.bb.947
  %595 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base955 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %595, i32 0, i32 5
  %596 = load %struct.lua_TValue*, %struct.lua_TValue** %base955, align 8
  store %struct.lua_TValue* %596, %struct.lua_TValue** %base, align 8
  br label %for.cond

sw.default.956:                                   ; preds = %if.end.943
  br label %return

sw.bb.957:                                        ; preds = %if.end.15
  %597 = load i32, i32* %i, align 4
  %shr959 = lshr i32 %597, 23
  %and960 = and i32 %shr959, 511
  store i32 %and960, i32* %b958, align 4
  %598 = load i32, i32* %b958, align 4
  %cmp961 = icmp ne i32 %598, 0
  br i1 %cmp961, label %if.then.963, label %if.end.967

if.then.963:                                      ; preds = %sw.bb.957
  %599 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %600 = load i32, i32* %b958, align 4
  %idx.ext964 = sext i32 %600 to i64
  %add.ptr965 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %599, i64 %idx.ext964
  %601 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top966 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %601, i32 0, i32 4
  store %struct.lua_TValue* %add.ptr965, %struct.lua_TValue** %top966, align 8
  br label %if.end.967

if.end.967:                                       ; preds = %if.then.963, %sw.bb.957
  %602 = load i32*, i32** %pc, align 8
  %603 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc968 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %603, i32 0, i32 8
  store i32* %602, i32** %savedpc968, align 8
  %604 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %605 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %call969 = call i32 @luaD_precall(%struct.lua_State* %604, %struct.lua_TValue* %605, i32 -1)
  switch i32 %call969, label %sw.default.1016 [
    i32 0, label %sw.bb.970
    i32 1, label %sw.bb.1014
  ]

sw.bb.970:                                        ; preds = %if.end.967
  %606 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci972 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %606, i32 0, i32 7
  %607 = load %struct.CallInfo*, %struct.CallInfo** %ci972, align 8
  %add.ptr973 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %607, i64 -1
  store %struct.CallInfo* %add.ptr973, %struct.CallInfo** %ci971, align 8
  %608 = load %struct.CallInfo*, %struct.CallInfo** %ci971, align 8
  %func975 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %608, i32 0, i32 1
  %609 = load %struct.lua_TValue*, %struct.lua_TValue** %func975, align 8
  store %struct.lua_TValue* %609, %struct.lua_TValue** %func974, align 8
  %610 = load %struct.CallInfo*, %struct.CallInfo** %ci971, align 8
  %add.ptr976 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %610, i64 1
  %func977 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %add.ptr976, i32 0, i32 1
  %611 = load %struct.lua_TValue*, %struct.lua_TValue** %func977, align 8
  store %struct.lua_TValue* %611, %struct.lua_TValue** %pfunc, align 8
  %612 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %openupval = getelementptr inbounds %struct.lua_State, %struct.lua_State* %612, i32 0, i32 24
  %613 = load %union.GCObject*, %union.GCObject** %openupval, align 8
  %tobool978 = icmp ne %union.GCObject* %613, null
  br i1 %tobool978, label %if.then.979, label %if.end.981

if.then.979:                                      ; preds = %sw.bb.970
  %614 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %615 = load %struct.CallInfo*, %struct.CallInfo** %ci971, align 8
  %base980 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %615, i32 0, i32 0
  %616 = load %struct.lua_TValue*, %struct.lua_TValue** %base980, align 8
  call void @luaF_close(%struct.lua_State* %614, %struct.lua_TValue* %616)
  br label %if.end.981

if.end.981:                                       ; preds = %if.then.979, %sw.bb.970
  %617 = load %struct.CallInfo*, %struct.CallInfo** %ci971, align 8
  %func982 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %617, i32 0, i32 1
  %618 = load %struct.lua_TValue*, %struct.lua_TValue** %func982, align 8
  %619 = load %struct.CallInfo*, %struct.CallInfo** %ci971, align 8
  %add.ptr983 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %619, i64 1
  %base984 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %add.ptr983, i32 0, i32 0
  %620 = load %struct.lua_TValue*, %struct.lua_TValue** %base984, align 8
  %621 = load %struct.lua_TValue*, %struct.lua_TValue** %pfunc, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.lua_TValue* %620 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.lua_TValue* %621 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %add.ptr985 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %618, i64 %sub.ptr.div
  %622 = load %struct.CallInfo*, %struct.CallInfo** %ci971, align 8
  %base986 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %622, i32 0, i32 0
  store %struct.lua_TValue* %add.ptr985, %struct.lua_TValue** %base986, align 8
  %623 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base987 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %623, i32 0, i32 5
  store %struct.lua_TValue* %add.ptr985, %struct.lua_TValue** %base987, align 8
  store i32 0, i32* %aux, align 4
  br label %for.cond.988

for.cond.988:                                     ; preds = %for.inc, %if.end.981
  %624 = load %struct.lua_TValue*, %struct.lua_TValue** %pfunc, align 8
  %625 = load i32, i32* %aux, align 4
  %idx.ext989 = sext i32 %625 to i64
  %add.ptr990 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %624, i64 %idx.ext989
  %626 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top991 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %626, i32 0, i32 4
  %627 = load %struct.lua_TValue*, %struct.lua_TValue** %top991, align 8
  %cmp992 = icmp ult %struct.lua_TValue* %add.ptr990, %627
  br i1 %cmp992, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.988
  %628 = load %struct.lua_TValue*, %struct.lua_TValue** %pfunc, align 8
  %629 = load i32, i32* %aux, align 4
  %idx.ext995 = sext i32 %629 to i64
  %add.ptr996 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %628, i64 %idx.ext995
  store %struct.lua_TValue* %add.ptr996, %struct.lua_TValue** %o2994, align 8
  %630 = load %struct.lua_TValue*, %struct.lua_TValue** %func974, align 8
  %631 = load i32, i32* %aux, align 4
  %idx.ext998 = sext i32 %631 to i64
  %add.ptr999 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %630, i64 %idx.ext998
  store %struct.lua_TValue* %add.ptr999, %struct.lua_TValue** %o1997, align 8
  %632 = load %struct.lua_TValue*, %struct.lua_TValue** %o1997, align 8
  %value1000 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %632, i32 0, i32 0
  %633 = load %struct.lua_TValue*, %struct.lua_TValue** %o2994, align 8
  %value1001 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %633, i32 0, i32 0
  %634 = bitcast %union.Value* %value1000 to i8*
  %635 = bitcast %union.Value* %value1001 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %634, i8* %635, i64 8, i32 8, i1 false)
  %636 = load %struct.lua_TValue*, %struct.lua_TValue** %o2994, align 8
  %tt1002 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %636, i32 0, i32 1
  %637 = load i32, i32* %tt1002, align 4
  %638 = load %struct.lua_TValue*, %struct.lua_TValue** %o1997, align 8
  %tt1003 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %638, i32 0, i32 1
  store i32 %637, i32* %tt1003, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %639 = load i32, i32* %aux, align 4
  %inc1004 = add nsw i32 %639, 1
  store i32 %inc1004, i32* %aux, align 4
  br label %for.cond.988

for.end:                                          ; preds = %for.cond.988
  %640 = load %struct.lua_TValue*, %struct.lua_TValue** %func974, align 8
  %641 = load i32, i32* %aux, align 4
  %idx.ext1005 = sext i32 %641 to i64
  %add.ptr1006 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %640, i64 %idx.ext1005
  %642 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1007 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %642, i32 0, i32 4
  store %struct.lua_TValue* %add.ptr1006, %struct.lua_TValue** %top1007, align 8
  %643 = load %struct.CallInfo*, %struct.CallInfo** %ci971, align 8
  %top1008 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %643, i32 0, i32 2
  store %struct.lua_TValue* %add.ptr1006, %struct.lua_TValue** %top1008, align 8
  %644 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc1009 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %644, i32 0, i32 8
  %645 = load i32*, i32** %savedpc1009, align 8
  %646 = load %struct.CallInfo*, %struct.CallInfo** %ci971, align 8
  %savedpc1010 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %646, i32 0, i32 3
  store i32* %645, i32** %savedpc1010, align 8
  %647 = load %struct.CallInfo*, %struct.CallInfo** %ci971, align 8
  %tailcalls = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %647, i32 0, i32 5
  %648 = load i32, i32* %tailcalls, align 4
  %inc1011 = add nsw i32 %648, 1
  store i32 %inc1011, i32* %tailcalls, align 4
  %649 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1012 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %649, i32 0, i32 7
  %650 = load %struct.CallInfo*, %struct.CallInfo** %ci1012, align 8
  %incdec.ptr1013 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %650, i32 -1
  store %struct.CallInfo* %incdec.ptr1013, %struct.CallInfo** %ci1012, align 8
  br label %reentry

sw.bb.1014:                                       ; preds = %if.end.967
  %651 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base1015 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %651, i32 0, i32 5
  %652 = load %struct.lua_TValue*, %struct.lua_TValue** %base1015, align 8
  store %struct.lua_TValue* %652, %struct.lua_TValue** %base, align 8
  br label %for.cond

sw.default.1016:                                  ; preds = %if.end.967
  br label %return

sw.bb.1017:                                       ; preds = %if.end.15
  %653 = load i32, i32* %i, align 4
  %shr1019 = lshr i32 %653, 23
  %and1020 = and i32 %shr1019, 511
  store i32 %and1020, i32* %b1018, align 4
  %654 = load i32, i32* %b1018, align 4
  %cmp1021 = icmp ne i32 %654, 0
  br i1 %cmp1021, label %if.then.1023, label %if.end.1028

if.then.1023:                                     ; preds = %sw.bb.1017
  %655 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %656 = load i32, i32* %b1018, align 4
  %idx.ext1024 = sext i32 %656 to i64
  %add.ptr1025 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %655, i64 %idx.ext1024
  %add.ptr1026 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr1025, i64 -1
  %657 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1027 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %657, i32 0, i32 4
  store %struct.lua_TValue* %add.ptr1026, %struct.lua_TValue** %top1027, align 8
  br label %if.end.1028

if.end.1028:                                      ; preds = %if.then.1023, %sw.bb.1017
  %658 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %openupval1029 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %658, i32 0, i32 24
  %659 = load %union.GCObject*, %union.GCObject** %openupval1029, align 8
  %tobool1030 = icmp ne %union.GCObject* %659, null
  br i1 %tobool1030, label %if.then.1031, label %if.end.1032

if.then.1031:                                     ; preds = %if.end.1028
  %660 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %661 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  call void @luaF_close(%struct.lua_State* %660, %struct.lua_TValue* %661)
  br label %if.end.1032

if.end.1032:                                      ; preds = %if.then.1031, %if.end.1028
  %662 = load i32*, i32** %pc, align 8
  %663 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc1033 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %663, i32 0, i32 8
  store i32* %662, i32** %savedpc1033, align 8
  %664 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %665 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %call1034 = call i32 @luaD_poscall(%struct.lua_State* %664, %struct.lua_TValue* %665)
  store i32 %call1034, i32* %b1018, align 4
  %666 = load i32, i32* %nexeccalls.addr, align 4
  %dec1035 = add nsw i32 %666, -1
  store i32 %dec1035, i32* %nexeccalls.addr, align 4
  %cmp1036 = icmp eq i32 %dec1035, 0
  br i1 %cmp1036, label %if.then.1038, label %if.else.1039

if.then.1038:                                     ; preds = %if.end.1032
  br label %return

if.else.1039:                                     ; preds = %if.end.1032
  %667 = load i32, i32* %b1018, align 4
  %tobool1040 = icmp ne i32 %667, 0
  br i1 %tobool1040, label %if.then.1041, label %if.end.1045

if.then.1041:                                     ; preds = %if.else.1039
  %668 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1042 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %668, i32 0, i32 7
  %669 = load %struct.CallInfo*, %struct.CallInfo** %ci1042, align 8
  %top1043 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %669, i32 0, i32 2
  %670 = load %struct.lua_TValue*, %struct.lua_TValue** %top1043, align 8
  %671 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1044 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %671, i32 0, i32 4
  store %struct.lua_TValue* %670, %struct.lua_TValue** %top1044, align 8
  br label %if.end.1045

if.end.1045:                                      ; preds = %if.then.1041, %if.else.1039
  br label %reentry

sw.bb.1046:                                       ; preds = %if.end.15
  %672 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr1047 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %672, i64 2
  %value1048 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr1047, i32 0, i32 0
  %n1049 = bitcast %union.Value* %value1048 to double*
  %673 = load double, double* %n1049, align 8
  store double %673, double* %step, align 8
  %674 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %value1050 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %674, i32 0, i32 0
  %n1051 = bitcast %union.Value* %value1050 to double*
  %675 = load double, double* %n1051, align 8
  %676 = load double, double* %step, align 8
  %add1052 = fadd double %675, %676
  store double %add1052, double* %idx, align 8
  %677 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr1053 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %677, i64 1
  %value1054 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr1053, i32 0, i32 0
  %n1055 = bitcast %union.Value* %value1054 to double*
  %678 = load double, double* %n1055, align 8
  store double %678, double* %limit, align 8
  %679 = load double, double* %step, align 8
  %cmp1056 = fcmp olt double 0.000000e+00, %679
  br i1 %cmp1056, label %cond.true.1058, label %cond.false.1061

cond.true.1058:                                   ; preds = %sw.bb.1046
  %680 = load double, double* %idx, align 8
  %681 = load double, double* %limit, align 8
  %cmp1059 = fcmp ole double %680, %681
  br i1 %cmp1059, label %if.then.1064, label %if.end.1079

cond.false.1061:                                  ; preds = %sw.bb.1046
  %682 = load double, double* %limit, align 8
  %683 = load double, double* %idx, align 8
  %cmp1062 = fcmp ole double %682, %683
  br i1 %cmp1062, label %if.then.1064, label %if.end.1079

if.then.1064:                                     ; preds = %cond.false.1061, %cond.true.1058
  %684 = load i32, i32* %i, align 4
  %shr1065 = lshr i32 %684, 14
  %and1066 = and i32 %shr1065, 262143
  %sub1067 = sub nsw i32 %and1066, 131071
  %685 = load i32*, i32** %pc, align 8
  %idx.ext1068 = sext i32 %sub1067 to i64
  %add.ptr1069 = getelementptr inbounds i32, i32* %685, i64 %idx.ext1068
  store i32* %add.ptr1069, i32** %pc, align 8
  %686 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %686, %struct.lua_TValue** %i_o1070, align 8
  %687 = load double, double* %idx, align 8
  %688 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o1070, align 8
  %value1071 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %688, i32 0, i32 0
  %n1072 = bitcast %union.Value* %value1071 to double*
  store double %687, double* %n1072, align 8
  %689 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o1070, align 8
  %tt1073 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %689, i32 0, i32 1
  store i32 3, i32* %tt1073, align 4
  %690 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr1075 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %690, i64 3
  store %struct.lua_TValue* %add.ptr1075, %struct.lua_TValue** %i_o1074, align 8
  %691 = load double, double* %idx, align 8
  %692 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o1074, align 8
  %value1076 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %692, i32 0, i32 0
  %n1077 = bitcast %union.Value* %value1076 to double*
  store double %691, double* %n1077, align 8
  %693 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o1074, align 8
  %tt1078 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %693, i32 0, i32 1
  store i32 3, i32* %tt1078, align 4
  br label %if.end.1079

if.end.1079:                                      ; preds = %if.then.1064, %cond.false.1061, %cond.true.1058
  br label %for.cond

sw.bb.1080:                                       ; preds = %if.end.15
  %694 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %694, %struct.lua_TValue** %init, align 8
  %695 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr1081 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %695, i64 1
  store %struct.lua_TValue* %add.ptr1081, %struct.lua_TValue** %plimit, align 8
  %696 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr1082 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %696, i64 2
  store %struct.lua_TValue* %add.ptr1082, %struct.lua_TValue** %pstep, align 8
  %697 = load i32*, i32** %pc, align 8
  %698 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc1083 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %698, i32 0, i32 8
  store i32* %697, i32** %savedpc1083, align 8
  %699 = load %struct.lua_TValue*, %struct.lua_TValue** %init, align 8
  %tt1084 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %699, i32 0, i32 1
  %700 = load i32, i32* %tt1084, align 4
  %cmp1085 = icmp eq i32 %700, 3
  br i1 %cmp1085, label %if.else.1092, label %lor.lhs.false.1087

lor.lhs.false.1087:                               ; preds = %sw.bb.1080
  %701 = load %struct.lua_TValue*, %struct.lua_TValue** %init, align 8
  %702 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %call1088 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %701, %struct.lua_TValue* %702)
  store %struct.lua_TValue* %call1088, %struct.lua_TValue** %init, align 8
  %cmp1089 = icmp ne %struct.lua_TValue* %call1088, null
  br i1 %cmp1089, label %if.else.1092, label %if.then.1091

if.then.1091:                                     ; preds = %lor.lhs.false.1087
  %703 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %703, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.1114

if.else.1092:                                     ; preds = %lor.lhs.false.1087, %sw.bb.1080
  %704 = load %struct.lua_TValue*, %struct.lua_TValue** %plimit, align 8
  %tt1093 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %704, i32 0, i32 1
  %705 = load i32, i32* %tt1093, align 4
  %cmp1094 = icmp eq i32 %705, 3
  br i1 %cmp1094, label %if.else.1102, label %lor.lhs.false.1096

lor.lhs.false.1096:                               ; preds = %if.else.1092
  %706 = load %struct.lua_TValue*, %struct.lua_TValue** %plimit, align 8
  %707 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr1097 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %707, i64 1
  %call1098 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %706, %struct.lua_TValue* %add.ptr1097)
  store %struct.lua_TValue* %call1098, %struct.lua_TValue** %plimit, align 8
  %cmp1099 = icmp ne %struct.lua_TValue* %call1098, null
  br i1 %cmp1099, label %if.else.1102, label %if.then.1101

if.then.1101:                                     ; preds = %lor.lhs.false.1096
  %708 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %708, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.1113

if.else.1102:                                     ; preds = %lor.lhs.false.1096, %if.else.1092
  %709 = load %struct.lua_TValue*, %struct.lua_TValue** %pstep, align 8
  %tt1103 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %709, i32 0, i32 1
  %710 = load i32, i32* %tt1103, align 4
  %cmp1104 = icmp eq i32 %710, 3
  br i1 %cmp1104, label %if.end.1112, label %lor.lhs.false.1106

lor.lhs.false.1106:                               ; preds = %if.else.1102
  %711 = load %struct.lua_TValue*, %struct.lua_TValue** %pstep, align 8
  %712 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr1107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %712, i64 2
  %call1108 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %711, %struct.lua_TValue* %add.ptr1107)
  store %struct.lua_TValue* %call1108, %struct.lua_TValue** %pstep, align 8
  %cmp1109 = icmp ne %struct.lua_TValue* %call1108, null
  br i1 %cmp1109, label %if.end.1112, label %if.then.1111

if.then.1111:                                     ; preds = %lor.lhs.false.1106
  %713 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %713, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.1112

if.end.1112:                                      ; preds = %if.then.1111, %lor.lhs.false.1106, %if.else.1102
  br label %if.end.1113

if.end.1113:                                      ; preds = %if.end.1112, %if.then.1101
  br label %if.end.1114

if.end.1114:                                      ; preds = %if.end.1113, %if.then.1091
  %714 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %714, %struct.lua_TValue** %i_o1115, align 8
  %715 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %value1116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %715, i32 0, i32 0
  %n1117 = bitcast %union.Value* %value1116 to double*
  %716 = load double, double* %n1117, align 8
  %717 = load %struct.lua_TValue*, %struct.lua_TValue** %pstep, align 8
  %value1118 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %717, i32 0, i32 0
  %n1119 = bitcast %union.Value* %value1118 to double*
  %718 = load double, double* %n1119, align 8
  %sub1120 = fsub double %716, %718
  %719 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o1115, align 8
  %value1121 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %719, i32 0, i32 0
  %n1122 = bitcast %union.Value* %value1121 to double*
  store double %sub1120, double* %n1122, align 8
  %720 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o1115, align 8
  %tt1123 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %720, i32 0, i32 1
  store i32 3, i32* %tt1123, align 4
  %721 = load i32, i32* %i, align 4
  %shr1124 = lshr i32 %721, 14
  %and1125 = and i32 %shr1124, 262143
  %sub1126 = sub nsw i32 %and1125, 131071
  %722 = load i32*, i32** %pc, align 8
  %idx.ext1127 = sext i32 %sub1126 to i64
  %add.ptr1128 = getelementptr inbounds i32, i32* %722, i64 %idx.ext1127
  store i32* %add.ptr1128, i32** %pc, align 8
  br label %for.cond

sw.bb.1129:                                       ; preds = %if.end.15
  %723 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr1130 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %723, i64 3
  store %struct.lua_TValue* %add.ptr1130, %struct.lua_TValue** %cb, align 8
  %724 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr1132 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %724, i64 2
  store %struct.lua_TValue* %add.ptr1132, %struct.lua_TValue** %o21131, align 8
  %725 = load %struct.lua_TValue*, %struct.lua_TValue** %cb, align 8
  %add.ptr1134 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %725, i64 2
  store %struct.lua_TValue* %add.ptr1134, %struct.lua_TValue** %o11133, align 8
  %726 = load %struct.lua_TValue*, %struct.lua_TValue** %o11133, align 8
  %value1135 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %726, i32 0, i32 0
  %727 = load %struct.lua_TValue*, %struct.lua_TValue** %o21131, align 8
  %value1136 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %727, i32 0, i32 0
  %728 = bitcast %union.Value* %value1135 to i8*
  %729 = bitcast %union.Value* %value1136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %728, i8* %729, i64 8, i32 8, i1 false)
  %730 = load %struct.lua_TValue*, %struct.lua_TValue** %o21131, align 8
  %tt1137 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %730, i32 0, i32 1
  %731 = load i32, i32* %tt1137, align 4
  %732 = load %struct.lua_TValue*, %struct.lua_TValue** %o11133, align 8
  %tt1138 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %732, i32 0, i32 1
  store i32 %731, i32* %tt1138, align 4
  %733 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %add.ptr1140 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %733, i64 1
  store %struct.lua_TValue* %add.ptr1140, %struct.lua_TValue** %o21139, align 8
  %734 = load %struct.lua_TValue*, %struct.lua_TValue** %cb, align 8
  %add.ptr1142 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %734, i64 1
  store %struct.lua_TValue* %add.ptr1142, %struct.lua_TValue** %o11141, align 8
  %735 = load %struct.lua_TValue*, %struct.lua_TValue** %o11141, align 8
  %value1143 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %735, i32 0, i32 0
  %736 = load %struct.lua_TValue*, %struct.lua_TValue** %o21139, align 8
  %value1144 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %736, i32 0, i32 0
  %737 = bitcast %union.Value* %value1143 to i8*
  %738 = bitcast %union.Value* %value1144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %737, i8* %738, i64 8, i32 8, i1 false)
  %739 = load %struct.lua_TValue*, %struct.lua_TValue** %o21139, align 8
  %tt1145 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %739, i32 0, i32 1
  %740 = load i32, i32* %tt1145, align 4
  %741 = load %struct.lua_TValue*, %struct.lua_TValue** %o11141, align 8
  %tt1146 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %741, i32 0, i32 1
  store i32 %740, i32* %tt1146, align 4
  %742 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %742, %struct.lua_TValue** %o21147, align 8
  %743 = load %struct.lua_TValue*, %struct.lua_TValue** %cb, align 8
  store %struct.lua_TValue* %743, %struct.lua_TValue** %o11148, align 8
  %744 = load %struct.lua_TValue*, %struct.lua_TValue** %o11148, align 8
  %value1149 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %744, i32 0, i32 0
  %745 = load %struct.lua_TValue*, %struct.lua_TValue** %o21147, align 8
  %value1150 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %745, i32 0, i32 0
  %746 = bitcast %union.Value* %value1149 to i8*
  %747 = bitcast %union.Value* %value1150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %746, i8* %747, i64 8, i32 8, i1 false)
  %748 = load %struct.lua_TValue*, %struct.lua_TValue** %o21147, align 8
  %tt1151 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %748, i32 0, i32 1
  %749 = load i32, i32* %tt1151, align 4
  %750 = load %struct.lua_TValue*, %struct.lua_TValue** %o11148, align 8
  %tt1152 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %750, i32 0, i32 1
  store i32 %749, i32* %tt1152, align 4
  %751 = load %struct.lua_TValue*, %struct.lua_TValue** %cb, align 8
  %add.ptr1153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %751, i64 3
  %752 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1154 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %752, i32 0, i32 4
  store %struct.lua_TValue* %add.ptr1153, %struct.lua_TValue** %top1154, align 8
  %753 = load i32*, i32** %pc, align 8
  %754 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc1155 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %754, i32 0, i32 8
  store i32* %753, i32** %savedpc1155, align 8
  %755 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %756 = load %struct.lua_TValue*, %struct.lua_TValue** %cb, align 8
  %757 = load i32, i32* %i, align 4
  %shr1156 = lshr i32 %757, 14
  %and1157 = and i32 %shr1156, 511
  call void @luaD_call(%struct.lua_State* %755, %struct.lua_TValue* %756, i32 %and1157)
  %758 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base1158 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %758, i32 0, i32 5
  %759 = load %struct.lua_TValue*, %struct.lua_TValue** %base1158, align 8
  store %struct.lua_TValue* %759, %struct.lua_TValue** %base, align 8
  %760 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1159 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %760, i32 0, i32 7
  %761 = load %struct.CallInfo*, %struct.CallInfo** %ci1159, align 8
  %top1160 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %761, i32 0, i32 2
  %762 = load %struct.lua_TValue*, %struct.lua_TValue** %top1160, align 8
  %763 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1161 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %763, i32 0, i32 4
  store %struct.lua_TValue* %762, %struct.lua_TValue** %top1161, align 8
  %764 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %765 = load i32, i32* %i, align 4
  %shr1162 = lshr i32 %765, 6
  %and1163 = and i32 %shr1162, 255
  %idx.ext1164 = sext i32 %and1163 to i64
  %add.ptr1165 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %764, i64 %idx.ext1164
  %add.ptr1166 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr1165, i64 3
  store %struct.lua_TValue* %add.ptr1166, %struct.lua_TValue** %cb, align 8
  %766 = load %struct.lua_TValue*, %struct.lua_TValue** %cb, align 8
  %tt1167 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %766, i32 0, i32 1
  %767 = load i32, i32* %tt1167, align 4
  %cmp1168 = icmp eq i32 %767, 0
  br i1 %cmp1168, label %if.end.1183, label %if.then.1170

if.then.1170:                                     ; preds = %sw.bb.1129
  %768 = load %struct.lua_TValue*, %struct.lua_TValue** %cb, align 8
  store %struct.lua_TValue* %768, %struct.lua_TValue** %o21171, align 8
  %769 = load %struct.lua_TValue*, %struct.lua_TValue** %cb, align 8
  %add.ptr1173 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %769, i64 -1
  store %struct.lua_TValue* %add.ptr1173, %struct.lua_TValue** %o11172, align 8
  %770 = load %struct.lua_TValue*, %struct.lua_TValue** %o11172, align 8
  %value1174 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %770, i32 0, i32 0
  %771 = load %struct.lua_TValue*, %struct.lua_TValue** %o21171, align 8
  %value1175 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %771, i32 0, i32 0
  %772 = bitcast %union.Value* %value1174 to i8*
  %773 = bitcast %union.Value* %value1175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %772, i8* %773, i64 8, i32 8, i1 false)
  %774 = load %struct.lua_TValue*, %struct.lua_TValue** %o21171, align 8
  %tt1176 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %774, i32 0, i32 1
  %775 = load i32, i32* %tt1176, align 4
  %776 = load %struct.lua_TValue*, %struct.lua_TValue** %o11172, align 8
  %tt1177 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %776, i32 0, i32 1
  store i32 %775, i32* %tt1177, align 4
  %777 = load i32*, i32** %pc, align 8
  %778 = load i32, i32* %777, align 4
  %shr1178 = lshr i32 %778, 14
  %and1179 = and i32 %shr1178, 262143
  %sub1180 = sub nsw i32 %and1179, 131071
  %779 = load i32*, i32** %pc, align 8
  %idx.ext1181 = sext i32 %sub1180 to i64
  %add.ptr1182 = getelementptr inbounds i32, i32* %779, i64 %idx.ext1181
  store i32* %add.ptr1182, i32** %pc, align 8
  br label %if.end.1183

if.end.1183:                                      ; preds = %if.then.1170, %sw.bb.1129
  %780 = load i32*, i32** %pc, align 8
  %incdec.ptr1184 = getelementptr inbounds i32, i32* %780, i32 1
  store i32* %incdec.ptr1184, i32** %pc, align 8
  br label %for.cond

sw.bb.1185:                                       ; preds = %if.end.15
  %781 = load i32, i32* %i, align 4
  %shr1187 = lshr i32 %781, 23
  %and1188 = and i32 %shr1187, 511
  store i32 %and1188, i32* %n1186, align 4
  %782 = load i32, i32* %i, align 4
  %shr1190 = lshr i32 %782, 14
  %and1191 = and i32 %shr1190, 511
  store i32 %and1191, i32* %c1189, align 4
  %783 = load i32, i32* %n1186, align 4
  %cmp1193 = icmp eq i32 %783, 0
  br i1 %cmp1193, label %if.then.1195, label %if.end.1206

if.then.1195:                                     ; preds = %sw.bb.1185
  %784 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1196 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %784, i32 0, i32 4
  %785 = load %struct.lua_TValue*, %struct.lua_TValue** %top1196, align 8
  %786 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %sub.ptr.lhs.cast1197 = ptrtoint %struct.lua_TValue* %785 to i64
  %sub.ptr.rhs.cast1198 = ptrtoint %struct.lua_TValue* %786 to i64
  %sub.ptr.sub1199 = sub i64 %sub.ptr.lhs.cast1197, %sub.ptr.rhs.cast1198
  %sub.ptr.div1200 = sdiv exact i64 %sub.ptr.sub1199, 16
  %conv1201 = trunc i64 %sub.ptr.div1200 to i32
  %sub1202 = sub nsw i32 %conv1201, 1
  store i32 %sub1202, i32* %n1186, align 4
  %787 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1203 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %787, i32 0, i32 7
  %788 = load %struct.CallInfo*, %struct.CallInfo** %ci1203, align 8
  %top1204 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %788, i32 0, i32 2
  %789 = load %struct.lua_TValue*, %struct.lua_TValue** %top1204, align 8
  %790 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1205 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %790, i32 0, i32 4
  store %struct.lua_TValue* %789, %struct.lua_TValue** %top1205, align 8
  br label %if.end.1206

if.end.1206:                                      ; preds = %if.then.1195, %sw.bb.1185
  %791 = load i32, i32* %c1189, align 4
  %cmp1207 = icmp eq i32 %791, 0
  br i1 %cmp1207, label %if.then.1209, label %if.end.1211

if.then.1209:                                     ; preds = %if.end.1206
  %792 = load i32*, i32** %pc, align 8
  %incdec.ptr1210 = getelementptr inbounds i32, i32* %792, i32 1
  store i32* %incdec.ptr1210, i32** %pc, align 8
  %793 = load i32, i32* %792, align 4
  store i32 %793, i32* %c1189, align 4
  br label %if.end.1211

if.end.1211:                                      ; preds = %if.then.1209, %if.end.1206
  %794 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %tt1212 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %794, i32 0, i32 1
  %795 = load i32, i32* %tt1212, align 4
  %cmp1213 = icmp eq i32 %795, 5
  br i1 %cmp1213, label %if.end.1216, label %if.then.1215

if.then.1215:                                     ; preds = %if.end.1211
  br label %sw.epilog.1396

if.end.1216:                                      ; preds = %if.end.1211
  %796 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %value1217 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %796, i32 0, i32 0
  %gc1218 = bitcast %union.Value* %value1217 to %union.GCObject**
  %797 = load %union.GCObject*, %union.GCObject** %gc1218, align 8
  %h1219 = bitcast %union.GCObject* %797 to %struct.Table*
  store %struct.Table* %h1219, %struct.Table** %h1192, align 8
  %798 = load i32, i32* %c1189, align 4
  %sub1220 = sub nsw i32 %798, 1
  %mul1221 = mul nsw i32 %sub1220, 50
  %799 = load i32, i32* %n1186, align 4
  %add1222 = add nsw i32 %mul1221, %799
  store i32 %add1222, i32* %last, align 4
  %800 = load i32, i32* %last, align 4
  %801 = load %struct.Table*, %struct.Table** %h1192, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %801, i32 0, i32 10
  %802 = load i32, i32* %sizearray, align 4
  %cmp1223 = icmp sgt i32 %800, %802
  br i1 %cmp1223, label %if.then.1225, label %if.end.1226

if.then.1225:                                     ; preds = %if.end.1216
  %803 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %804 = load %struct.Table*, %struct.Table** %h1192, align 8
  %805 = load i32, i32* %last, align 4
  call void @luaH_resizearray(%struct.lua_State* %803, %struct.Table* %804, i32 %805)
  br label %if.end.1226

if.end.1226:                                      ; preds = %if.then.1225, %if.end.1216
  br label %for.cond.1227

for.cond.1227:                                    ; preds = %for.inc.1260, %if.end.1226
  %806 = load i32, i32* %n1186, align 4
  %cmp1228 = icmp sgt i32 %806, 0
  br i1 %cmp1228, label %for.body.1230, label %for.end.1262

for.body.1230:                                    ; preds = %for.cond.1227
  %807 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %808 = load i32, i32* %n1186, align 4
  %idx.ext1231 = sext i32 %808 to i64
  %add.ptr1232 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %807, i64 %idx.ext1231
  store %struct.lua_TValue* %add.ptr1232, %struct.lua_TValue** %val, align 8
  %809 = load %struct.lua_TValue*, %struct.lua_TValue** %val, align 8
  store %struct.lua_TValue* %809, %struct.lua_TValue** %o21233, align 8
  %810 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %811 = load %struct.Table*, %struct.Table** %h1192, align 8
  %812 = load i32, i32* %last, align 4
  %dec1235 = add nsw i32 %812, -1
  store i32 %dec1235, i32* %last, align 4
  %call1236 = call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %810, %struct.Table* %811, i32 %812)
  store %struct.lua_TValue* %call1236, %struct.lua_TValue** %o11234, align 8
  %813 = load %struct.lua_TValue*, %struct.lua_TValue** %o11234, align 8
  %value1237 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %813, i32 0, i32 0
  %814 = load %struct.lua_TValue*, %struct.lua_TValue** %o21233, align 8
  %value1238 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %814, i32 0, i32 0
  %815 = bitcast %union.Value* %value1237 to i8*
  %816 = bitcast %union.Value* %value1238 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %815, i8* %816, i64 8, i32 8, i1 false)
  %817 = load %struct.lua_TValue*, %struct.lua_TValue** %o21233, align 8
  %tt1239 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %817, i32 0, i32 1
  %818 = load i32, i32* %tt1239, align 4
  %819 = load %struct.lua_TValue*, %struct.lua_TValue** %o11234, align 8
  %tt1240 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %819, i32 0, i32 1
  store i32 %818, i32* %tt1240, align 4
  %820 = load %struct.lua_TValue*, %struct.lua_TValue** %val, align 8
  %tt1241 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %820, i32 0, i32 1
  %821 = load i32, i32* %tt1241, align 4
  %cmp1242 = icmp sge i32 %821, 4
  br i1 %cmp1242, label %land.lhs.true.1244, label %if.end.1259

land.lhs.true.1244:                               ; preds = %for.body.1230
  %822 = load %struct.lua_TValue*, %struct.lua_TValue** %val, align 8
  %value1245 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %822, i32 0, i32 0
  %gc1246 = bitcast %union.Value* %value1245 to %union.GCObject**
  %823 = load %union.GCObject*, %union.GCObject** %gc1246, align 8
  %gch1247 = bitcast %union.GCObject* %823 to %struct.GCheader*
  %marked1248 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch1247, i32 0, i32 2
  %824 = load i8, i8* %marked1248, align 1
  %conv1249 = zext i8 %824 to i32
  %and1250 = and i32 %conv1249, 3
  %tobool1251 = icmp ne i32 %and1250, 0
  br i1 %tobool1251, label %land.lhs.true.1252, label %if.end.1259

land.lhs.true.1252:                               ; preds = %land.lhs.true.1244
  %825 = load %struct.Table*, %struct.Table** %h1192, align 8
  %826 = bitcast %struct.Table* %825 to %union.GCObject*
  %gch1253 = bitcast %union.GCObject* %826 to %struct.GCheader*
  %marked1254 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch1253, i32 0, i32 2
  %827 = load i8, i8* %marked1254, align 1
  %conv1255 = zext i8 %827 to i32
  %and1256 = and i32 %conv1255, 4
  %tobool1257 = icmp ne i32 %and1256, 0
  br i1 %tobool1257, label %if.then.1258, label %if.end.1259

if.then.1258:                                     ; preds = %land.lhs.true.1252
  %828 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %829 = load %struct.Table*, %struct.Table** %h1192, align 8
  call void @luaC_barrierback(%struct.lua_State* %828, %struct.Table* %829)
  br label %if.end.1259

if.end.1259:                                      ; preds = %if.then.1258, %land.lhs.true.1252, %land.lhs.true.1244, %for.body.1230
  br label %for.inc.1260

for.inc.1260:                                     ; preds = %if.end.1259
  %830 = load i32, i32* %n1186, align 4
  %dec1261 = add nsw i32 %830, -1
  store i32 %dec1261, i32* %n1186, align 4
  br label %for.cond.1227

for.end.1262:                                     ; preds = %for.cond.1227
  br label %for.cond

sw.bb.1263:                                       ; preds = %if.end.15
  %831 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %832 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  call void @luaF_close(%struct.lua_State* %831, %struct.lua_TValue* %832)
  br label %for.cond

sw.bb.1264:                                       ; preds = %if.end.15
  %833 = load i32, i32* %i, align 4
  %shr1266 = lshr i32 %833, 14
  %and1267 = and i32 %shr1266, 262143
  %idxprom1268 = sext i32 %and1267 to i64
  %834 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %p1269 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %834, i32 0, i32 7
  %835 = load %struct.Proto*, %struct.Proto** %p1269, align 8
  %p1270 = getelementptr inbounds %struct.Proto, %struct.Proto* %835, i32 0, i32 5
  %836 = load %struct.Proto**, %struct.Proto*** %p1270, align 8
  %arrayidx1271 = getelementptr inbounds %struct.Proto*, %struct.Proto** %836, i64 %idxprom1268
  %837 = load %struct.Proto*, %struct.Proto** %arrayidx1271, align 8
  store %struct.Proto* %837, %struct.Proto** %p1265, align 8
  %838 = load %struct.Proto*, %struct.Proto** %p1265, align 8
  %nups = getelementptr inbounds %struct.Proto, %struct.Proto* %838, i32 0, i32 19
  %839 = load i8, i8* %nups, align 1
  %conv1272 = zext i8 %839 to i32
  store i32 %conv1272, i32* %nup, align 4
  %840 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %841 = load i32, i32* %nup, align 4
  %842 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %env1273 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %842, i32 0, i32 6
  %843 = load %struct.Table*, %struct.Table** %env1273, align 8
  %call1274 = call %union.Closure* @luaF_newLclosure(%struct.lua_State* %840, i32 %841, %struct.Table* %843)
  store %union.Closure* %call1274, %union.Closure** %ncl, align 8
  %844 = load %struct.Proto*, %struct.Proto** %p1265, align 8
  %845 = load %union.Closure*, %union.Closure** %ncl, align 8
  %l1275 = bitcast %union.Closure* %845 to %struct.LClosure*
  %p1276 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l1275, i32 0, i32 7
  store %struct.Proto* %844, %struct.Proto** %p1276, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1277

for.cond.1277:                                    ; preds = %for.inc.1306, %sw.bb.1264
  %846 = load i32, i32* %j, align 4
  %847 = load i32, i32* %nup, align 4
  %cmp1278 = icmp slt i32 %846, %847
  br i1 %cmp1278, label %for.body.1280, label %for.end.1309

for.body.1280:                                    ; preds = %for.cond.1277
  %848 = load i32*, i32** %pc, align 8
  %849 = load i32, i32* %848, align 4
  %shr1281 = lshr i32 %849, 0
  %and1282 = and i32 %shr1281, 63
  %cmp1283 = icmp eq i32 %and1282, 4
  br i1 %cmp1283, label %if.then.1285, label %if.else.1295

if.then.1285:                                     ; preds = %for.body.1280
  %850 = load i32*, i32** %pc, align 8
  %851 = load i32, i32* %850, align 4
  %shr1286 = lshr i32 %851, 23
  %and1287 = and i32 %shr1286, 511
  %idxprom1288 = sext i32 %and1287 to i64
  %852 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %upvals1289 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %852, i32 0, i32 8
  %arrayidx1290 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %upvals1289, i32 0, i64 %idxprom1288
  %853 = load %struct.UpVal*, %struct.UpVal** %arrayidx1290, align 8
  %854 = load i32, i32* %j, align 4
  %idxprom1291 = sext i32 %854 to i64
  %855 = load %union.Closure*, %union.Closure** %ncl, align 8
  %l1292 = bitcast %union.Closure* %855 to %struct.LClosure*
  %upvals1293 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l1292, i32 0, i32 8
  %arrayidx1294 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %upvals1293, i32 0, i64 %idxprom1291
  store %struct.UpVal* %853, %struct.UpVal** %arrayidx1294, align 8
  br label %if.end.1305

if.else.1295:                                     ; preds = %for.body.1280
  %856 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %857 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %858 = load i32*, i32** %pc, align 8
  %859 = load i32, i32* %858, align 4
  %shr1296 = lshr i32 %859, 23
  %and1297 = and i32 %shr1296, 511
  %idx.ext1298 = sext i32 %and1297 to i64
  %add.ptr1299 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %857, i64 %idx.ext1298
  %call1300 = call %struct.UpVal* @luaF_findupval(%struct.lua_State* %856, %struct.lua_TValue* %add.ptr1299)
  %860 = load i32, i32* %j, align 4
  %idxprom1301 = sext i32 %860 to i64
  %861 = load %union.Closure*, %union.Closure** %ncl, align 8
  %l1302 = bitcast %union.Closure* %861 to %struct.LClosure*
  %upvals1303 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l1302, i32 0, i32 8
  %arrayidx1304 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %upvals1303, i32 0, i64 %idxprom1301
  store %struct.UpVal* %call1300, %struct.UpVal** %arrayidx1304, align 8
  br label %if.end.1305

if.end.1305:                                      ; preds = %if.else.1295, %if.then.1285
  br label %for.inc.1306

for.inc.1306:                                     ; preds = %if.end.1305
  %862 = load i32, i32* %j, align 4
  %inc1307 = add nsw i32 %862, 1
  store i32 %inc1307, i32* %j, align 4
  %863 = load i32*, i32** %pc, align 8
  %incdec.ptr1308 = getelementptr inbounds i32, i32* %863, i32 1
  store i32* %incdec.ptr1308, i32** %pc, align 8
  br label %for.cond.1277

for.end.1309:                                     ; preds = %for.cond.1277
  %864 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  store %struct.lua_TValue* %864, %struct.lua_TValue** %i_o1310, align 8
  %865 = load %union.Closure*, %union.Closure** %ncl, align 8
  %866 = bitcast %union.Closure* %865 to %union.GCObject*
  %867 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o1310, align 8
  %value1311 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %867, i32 0, i32 0
  %gc1312 = bitcast %union.Value* %value1311 to %union.GCObject**
  store %union.GCObject* %866, %union.GCObject** %gc1312, align 8
  %868 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o1310, align 8
  %tt1313 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %868, i32 0, i32 1
  store i32 6, i32* %tt1313, align 4
  %869 = load i32*, i32** %pc, align 8
  %870 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc1314 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %870, i32 0, i32 8
  store i32* %869, i32** %savedpc1314, align 8
  %871 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1315 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %871, i32 0, i32 6
  %872 = load %struct.global_State*, %struct.global_State** %l_G1315, align 8
  %totalbytes1316 = getelementptr inbounds %struct.global_State, %struct.global_State* %872, i32 0, i32 14
  %873 = load i64, i64* %totalbytes1316, align 8
  %874 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1317 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %874, i32 0, i32 6
  %875 = load %struct.global_State*, %struct.global_State** %l_G1317, align 8
  %GCthreshold1318 = getelementptr inbounds %struct.global_State, %struct.global_State* %875, i32 0, i32 13
  %876 = load i64, i64* %GCthreshold1318, align 8
  %cmp1319 = icmp uge i64 %873, %876
  br i1 %cmp1319, label %if.then.1321, label %if.end.1322

if.then.1321:                                     ; preds = %for.end.1309
  %877 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %877)
  br label %if.end.1322

if.end.1322:                                      ; preds = %if.then.1321, %for.end.1309
  %878 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base1323 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %878, i32 0, i32 5
  %879 = load %struct.lua_TValue*, %struct.lua_TValue** %base1323, align 8
  store %struct.lua_TValue* %879, %struct.lua_TValue** %base, align 8
  br label %for.cond

sw.bb.1324:                                       ; preds = %if.end.15
  %880 = load i32, i32* %i, align 4
  %shr1326 = lshr i32 %880, 23
  %and1327 = and i32 %shr1326, 511
  %sub1328 = sub nsw i32 %and1327, 1
  store i32 %sub1328, i32* %b1325, align 4
  %881 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1331 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %881, i32 0, i32 7
  %882 = load %struct.CallInfo*, %struct.CallInfo** %ci1331, align 8
  store %struct.CallInfo* %882, %struct.CallInfo** %ci1330, align 8
  %883 = load %struct.CallInfo*, %struct.CallInfo** %ci1330, align 8
  %base1333 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %883, i32 0, i32 0
  %884 = load %struct.lua_TValue*, %struct.lua_TValue** %base1333, align 8
  %885 = load %struct.CallInfo*, %struct.CallInfo** %ci1330, align 8
  %func1334 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %885, i32 0, i32 1
  %886 = load %struct.lua_TValue*, %struct.lua_TValue** %func1334, align 8
  %sub.ptr.lhs.cast1335 = ptrtoint %struct.lua_TValue* %884 to i64
  %sub.ptr.rhs.cast1336 = ptrtoint %struct.lua_TValue* %886 to i64
  %sub.ptr.sub1337 = sub i64 %sub.ptr.lhs.cast1335, %sub.ptr.rhs.cast1336
  %sub.ptr.div1338 = sdiv exact i64 %sub.ptr.sub1337, 16
  %conv1339 = trunc i64 %sub.ptr.div1338 to i32
  %887 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %p1340 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %887, i32 0, i32 7
  %888 = load %struct.Proto*, %struct.Proto** %p1340, align 8
  %numparams = getelementptr inbounds %struct.Proto, %struct.Proto* %888, i32 0, i32 20
  %889 = load i8, i8* %numparams, align 1
  %conv1341 = zext i8 %889 to i32
  %sub1342 = sub nsw i32 %conv1339, %conv1341
  %sub1343 = sub nsw i32 %sub1342, 1
  store i32 %sub1343, i32* %n1332, align 4
  %890 = load i32, i32* %b1325, align 4
  %cmp1344 = icmp eq i32 %890, -1
  br i1 %cmp1344, label %if.then.1346, label %if.end.1367

if.then.1346:                                     ; preds = %sw.bb.1324
  %891 = load i32*, i32** %pc, align 8
  %892 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc1347 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %892, i32 0, i32 8
  store i32* %891, i32** %savedpc1347, align 8
  %893 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %893, i32 0, i32 9
  %894 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %895 = bitcast %struct.lua_TValue* %894 to i8*
  %896 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1348 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %896, i32 0, i32 4
  %897 = load %struct.lua_TValue*, %struct.lua_TValue** %top1348, align 8
  %898 = bitcast %struct.lua_TValue* %897 to i8*
  %sub.ptr.lhs.cast1349 = ptrtoint i8* %895 to i64
  %sub.ptr.rhs.cast1350 = ptrtoint i8* %898 to i64
  %sub.ptr.sub1351 = sub i64 %sub.ptr.lhs.cast1349, %sub.ptr.rhs.cast1350
  %899 = load i32, i32* %n1332, align 4
  %mul1352 = mul nsw i32 %899, 16
  %conv1353 = sext i32 %mul1352 to i64
  %cmp1354 = icmp sle i64 %sub.ptr.sub1351, %conv1353
  br i1 %cmp1354, label %if.then.1356, label %if.else.1357

if.then.1356:                                     ; preds = %if.then.1346
  %900 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %901 = load i32, i32* %n1332, align 4
  call void @luaD_growstack(%struct.lua_State* %900, i32 %901)
  br label %if.end.1358

if.else.1357:                                     ; preds = %if.then.1346
  br label %if.end.1358

if.end.1358:                                      ; preds = %if.else.1357, %if.then.1356
  %902 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base1359 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %902, i32 0, i32 5
  %903 = load %struct.lua_TValue*, %struct.lua_TValue** %base1359, align 8
  store %struct.lua_TValue* %903, %struct.lua_TValue** %base, align 8
  %904 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %905 = load i32, i32* %i, align 4
  %shr1360 = lshr i32 %905, 6
  %and1361 = and i32 %shr1360, 255
  %idx.ext1362 = sext i32 %and1361 to i64
  %add.ptr1363 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %904, i64 %idx.ext1362
  store %struct.lua_TValue* %add.ptr1363, %struct.lua_TValue** %ra, align 8
  %906 = load i32, i32* %n1332, align 4
  store i32 %906, i32* %b1325, align 4
  %907 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %908 = load i32, i32* %n1332, align 4
  %idx.ext1364 = sext i32 %908 to i64
  %add.ptr1365 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %907, i64 %idx.ext1364
  %909 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1366 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %909, i32 0, i32 4
  store %struct.lua_TValue* %add.ptr1365, %struct.lua_TValue** %top1366, align 8
  br label %if.end.1367

if.end.1367:                                      ; preds = %if.end.1358, %sw.bb.1324
  store i32 0, i32* %j1329, align 4
  br label %for.cond.1368

for.cond.1368:                                    ; preds = %for.inc.1393, %if.end.1367
  %910 = load i32, i32* %j1329, align 4
  %911 = load i32, i32* %b1325, align 4
  %cmp1369 = icmp slt i32 %910, %911
  br i1 %cmp1369, label %for.body.1371, label %for.end.1395

for.body.1371:                                    ; preds = %for.cond.1368
  %912 = load i32, i32* %j1329, align 4
  %913 = load i32, i32* %n1332, align 4
  %cmp1372 = icmp slt i32 %912, %913
  br i1 %cmp1372, label %if.then.1374, label %if.else.1388

if.then.1374:                                     ; preds = %for.body.1371
  %914 = load %struct.CallInfo*, %struct.CallInfo** %ci1330, align 8
  %base1376 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %914, i32 0, i32 0
  %915 = load %struct.lua_TValue*, %struct.lua_TValue** %base1376, align 8
  %916 = load i32, i32* %n1332, align 4
  %idx.ext1377 = sext i32 %916 to i64
  %idx.neg = sub i64 0, %idx.ext1377
  %add.ptr1378 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %915, i64 %idx.neg
  %917 = load i32, i32* %j1329, align 4
  %idx.ext1379 = sext i32 %917 to i64
  %add.ptr1380 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr1378, i64 %idx.ext1379
  store %struct.lua_TValue* %add.ptr1380, %struct.lua_TValue** %o21375, align 8
  %918 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %919 = load i32, i32* %j1329, align 4
  %idx.ext1382 = sext i32 %919 to i64
  %add.ptr1383 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %918, i64 %idx.ext1382
  store %struct.lua_TValue* %add.ptr1383, %struct.lua_TValue** %o11381, align 8
  %920 = load %struct.lua_TValue*, %struct.lua_TValue** %o11381, align 8
  %value1384 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %920, i32 0, i32 0
  %921 = load %struct.lua_TValue*, %struct.lua_TValue** %o21375, align 8
  %value1385 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %921, i32 0, i32 0
  %922 = bitcast %union.Value* %value1384 to i8*
  %923 = bitcast %union.Value* %value1385 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %922, i8* %923, i64 8, i32 8, i1 false)
  %924 = load %struct.lua_TValue*, %struct.lua_TValue** %o21375, align 8
  %tt1386 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %924, i32 0, i32 1
  %925 = load i32, i32* %tt1386, align 4
  %926 = load %struct.lua_TValue*, %struct.lua_TValue** %o11381, align 8
  %tt1387 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %926, i32 0, i32 1
  store i32 %925, i32* %tt1387, align 4
  br label %if.end.1392

if.else.1388:                                     ; preds = %for.body.1371
  %927 = load %struct.lua_TValue*, %struct.lua_TValue** %ra, align 8
  %928 = load i32, i32* %j1329, align 4
  %idx.ext1389 = sext i32 %928 to i64
  %add.ptr1390 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %927, i64 %idx.ext1389
  %tt1391 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr1390, i32 0, i32 1
  store i32 0, i32* %tt1391, align 4
  br label %if.end.1392

if.end.1392:                                      ; preds = %if.else.1388, %if.then.1374
  br label %for.inc.1393

for.inc.1393:                                     ; preds = %if.end.1392
  %929 = load i32, i32* %j1329, align 4
  %inc1394 = add nsw i32 %929, 1
  store i32 %inc1394, i32* %j1329, align 4
  br label %for.cond.1368

for.end.1395:                                     ; preds = %for.cond.1368
  br label %for.cond

sw.epilog.1396:                                   ; preds = %if.end.15, %if.then.1215
  br label %for.cond

return:                                           ; preds = %if.then.1038, %sw.default.1016, %sw.default.956, %if.then.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @traceexec(%struct.lua_State* %L, i32* %pc) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %pc.addr = alloca i32*, align 8
  %mask = alloca i8, align 1
  %oldpc = alloca i32*, align 8
  %p = alloca %struct.Proto*, align 8
  %npc = alloca i32, align 4
  %newline = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32* %pc, i32** %pc.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 17
  %1 = load i8, i8* %hookmask, align 1
  store i8 %1, i8* %mask, align 1
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 8
  %3 = load i32*, i32** %savedpc, align 8
  store i32* %3, i32** %oldpc, align 8
  %4 = load i32*, i32** %pc.addr, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 8
  store i32* %4, i32** %savedpc1, align 8
  %6 = load i8, i8* %mask, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookcount = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 20
  %8 = load i32, i32* %hookcount, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %basehookcount = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 19
  %10 = load i32, i32* %basehookcount, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookcount3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 20
  store i32 %10, i32* %hookcount3, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_callhook(%struct.lua_State* %12, i32 3, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load i8, i8* %mask, align 1
  %conv4 = zext i8 %13 to i32
  %and5 = and i32 %conv4, 4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.37

if.then.7:                                        ; preds = %if.end
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 7
  %15 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %15, i32 0, i32 1
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %17 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %17 to %union.Closure*
  %l = bitcast %union.Closure* %cl to %struct.LClosure*
  %p8 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %18 = load %struct.Proto*, %struct.Proto** %p8, align 8
  store %struct.Proto* %18, %struct.Proto** %p, align 8
  %19 = load i32*, i32** %pc.addr, align 8
  %20 = load %struct.Proto*, %struct.Proto** %p, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 4
  %21 = load i32*, i32** %code, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv9 = trunc i64 %sub.ptr.div to i32
  %sub = sub nsw i32 %conv9, 1
  store i32 %sub, i32* %npc, align 4
  %22 = load %struct.Proto*, %struct.Proto** %p, align 8
  %lineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 6
  %23 = load i32*, i32** %lineinfo, align 8
  %tobool10 = icmp ne i32* %23, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %24 = load i32, i32* %npc, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.Proto*, %struct.Proto** %p, align 8
  %lineinfo11 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 6
  %26 = load i32*, i32** %lineinfo11, align 8
  %arrayidx = getelementptr inbounds i32, i32* %26, i64 %idxprom
  %27 = load i32, i32* %arrayidx, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %newline, align 4
  %28 = load i32, i32* %npc, align 4
  %cmp12 = icmp eq i32 %28, 0
  br i1 %cmp12, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %29 = load i32*, i32** %pc.addr, align 8
  %30 = load i32*, i32** %oldpc, align 8
  %cmp14 = icmp ule i32* %29, %30
  br i1 %cmp14, label %if.then.35, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %31 = load i32, i32* %newline, align 4
  %32 = load %struct.Proto*, %struct.Proto** %p, align 8
  %lineinfo17 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 6
  %33 = load i32*, i32** %lineinfo17, align 8
  %tobool18 = icmp ne i32* %33, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.30

cond.true.19:                                     ; preds = %lor.lhs.false.16
  %34 = load i32*, i32** %oldpc, align 8
  %35 = load %struct.Proto*, %struct.Proto** %p, align 8
  %code20 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i32 0, i32 4
  %36 = load i32*, i32** %code20, align 8
  %sub.ptr.lhs.cast21 = ptrtoint i32* %34 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i32* %36 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %sub.ptr.div24 = sdiv exact i64 %sub.ptr.sub23, 4
  %conv25 = trunc i64 %sub.ptr.div24 to i32
  %sub26 = sub nsw i32 %conv25, 1
  %idxprom27 = sext i32 %sub26 to i64
  %37 = load %struct.Proto*, %struct.Proto** %p, align 8
  %lineinfo28 = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i32 0, i32 6
  %38 = load i32*, i32** %lineinfo28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %38, i64 %idxprom27
  %39 = load i32, i32* %arrayidx29, align 4
  br label %cond.end.31

cond.false.30:                                    ; preds = %lor.lhs.false.16
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.19
  %cond32 = phi i32 [ %39, %cond.true.19 ], [ 0, %cond.false.30 ]
  %cmp33 = icmp ne i32 %31, %cond32
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %cond.end.31, %lor.lhs.false, %cond.end
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %41 = load i32, i32* %newline, align 4
  call void @luaD_callhook(%struct.lua_State* %40, i32 2, i32 %41)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %cond.end.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  ret void
}

declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) #1

declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) #1

declare hidden i32 @luaO_fb2int(i32) #1

declare hidden void @luaC_step(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define internal void @Arith(%struct.lua_State* %L, %struct.lua_TValue* %ra, %struct.lua_TValue* %rb, %struct.lua_TValue* %rc, i32 %op) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ra.addr = alloca %struct.lua_TValue*, align 8
  %rb.addr = alloca %struct.lua_TValue*, align 8
  %rc.addr = alloca %struct.lua_TValue*, align 8
  %op.addr = alloca i32, align 4
  %tempb = alloca %struct.lua_TValue, align 8
  %tempc = alloca %struct.lua_TValue, align 8
  %b = alloca %struct.lua_TValue*, align 8
  %c = alloca %struct.lua_TValue*, align 8
  %nb = alloca double, align 8
  %nc = alloca double, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  %i_o8 = alloca %struct.lua_TValue*, align 8
  %i_o13 = alloca %struct.lua_TValue*, align 8
  %i_o18 = alloca %struct.lua_TValue*, align 8
  %i_o23 = alloca %struct.lua_TValue*, align 8
  %i_o32 = alloca %struct.lua_TValue*, align 8
  %i_o38 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %ra, %struct.lua_TValue** %ra.addr, align 8
  store %struct.lua_TValue* %rb, %struct.lua_TValue** %rb.addr, align 8
  store %struct.lua_TValue* %rc, %struct.lua_TValue** %rc.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %rb.addr, align 8
  %call = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %0, %struct.lua_TValue* %tempb)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %b, align 8
  %cmp = icmp ne %struct.lua_TValue* %call, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %rc.addr, align 8
  %call1 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %1, %struct.lua_TValue* %tempc)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %c, align 8
  %cmp2 = icmp ne %struct.lua_TValue* %call1, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %b, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  %3 = load double, double* %n, align 8
  store double %3, double* %nb, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %c, align 8
  %value3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %n4 = bitcast %union.Value* %value3 to double*
  %5 = load double, double* %n4, align 8
  store double %5, double* %nc, align 8
  %6 = load i32, i32* %op.addr, align 4
  switch i32 %6, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.7
    i32 7, label %sw.bb.12
    i32 8, label %sw.bb.17
    i32 9, label %sw.bb.22
    i32 10, label %sw.bb.31
    i32 11, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %if.then
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %ra.addr, align 8
  store %struct.lua_TValue* %7, %struct.lua_TValue** %i_o, align 8
  %8 = load double, double* %nb, align 8
  %9 = load double, double* %nc, align 8
  %add = fadd double %8, %9
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %n6 = bitcast %union.Value* %value5 to double*
  store double %add, double* %n6, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  store i32 3, i32* %tt, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %ra.addr, align 8
  store %struct.lua_TValue* %12, %struct.lua_TValue** %i_o8, align 8
  %13 = load double, double* %nb, align 8
  %14 = load double, double* %nc, align 8
  %sub = fsub double %13, %14
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o8, align 8
  %value9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %n10 = bitcast %union.Value* %value9 to double*
  store double %sub, double* %n10, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o8, align 8
  %tt11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 1
  store i32 3, i32* %tt11, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %ra.addr, align 8
  store %struct.lua_TValue* %17, %struct.lua_TValue** %i_o13, align 8
  %18 = load double, double* %nb, align 8
  %19 = load double, double* %nc, align 8
  %mul = fmul double %18, %19
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o13, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %n15 = bitcast %union.Value* %value14 to double*
  store double %mul, double* %n15, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o13, align 8
  %tt16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 1
  store i32 3, i32* %tt16, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %ra.addr, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %i_o18, align 8
  %23 = load double, double* %nb, align 8
  %24 = load double, double* %nc, align 8
  %div = fdiv double %23, %24
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o18, align 8
  %value19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %n20 = bitcast %union.Value* %value19 to double*
  store double %div, double* %n20, align 8
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o18, align 8
  %tt21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  store i32 3, i32* %tt21, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %ra.addr, align 8
  store %struct.lua_TValue* %27, %struct.lua_TValue** %i_o23, align 8
  %28 = load double, double* %nb, align 8
  %29 = load double, double* %nb, align 8
  %30 = load double, double* %nc, align 8
  %div24 = fdiv double %29, %30
  %call25 = call double @floor(double %div24) #7
  %31 = load double, double* %nc, align 8
  %mul26 = fmul double %call25, %31
  %sub27 = fsub double %28, %mul26
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o23, align 8
  %value28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 0
  %n29 = bitcast %union.Value* %value28 to double*
  store double %sub27, double* %n29, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o23, align 8
  %tt30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  store i32 3, i32* %tt30, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.then
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %ra.addr, align 8
  store %struct.lua_TValue* %34, %struct.lua_TValue** %i_o32, align 8
  %35 = load double, double* %nb, align 8
  %36 = load double, double* %nc, align 8
  %call33 = call double @pow(double %35, double %36) #4
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o32, align 8
  %value34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 0
  %n35 = bitcast %union.Value* %value34 to double*
  store double %call33, double* %n35, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o32, align 8
  %tt36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i32 0, i32 1
  store i32 3, i32* %tt36, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.then
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %ra.addr, align 8
  store %struct.lua_TValue* %39, %struct.lua_TValue** %i_o38, align 8
  %40 = load double, double* %nb, align 8
  %sub39 = fsub double -0.000000e+00, %40
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o38, align 8
  %value40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 0
  %n41 = bitcast %union.Value* %value40 to double*
  store double %sub39, double* %n41, align 8
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o38, align 8
  %tt42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 1
  store i32 3, i32* %tt42, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.37, %sw.bb.31, %sw.bb.22, %sw.bb.17, %sw.bb.12, %sw.bb.7, %sw.bb
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true, %entry
  %43 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %rb.addr, align 8
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %rc.addr, align 8
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %ra.addr, align 8
  %47 = load i32, i32* %op.addr, align 4
  %call43 = call i32 @call_binTM(%struct.lua_State* %43, %struct.lua_TValue* %44, %struct.lua_TValue* %45, %struct.lua_TValue* %46, i32 %47)
  %tobool = icmp ne i32 %call43, 0
  br i1 %tobool, label %if.end, label %if.then.44

if.then.44:                                       ; preds = %if.else
  %48 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %rb.addr, align 8
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %rc.addr, align 8
  call void @luaG_aritherror(%struct.lua_State* %48, %struct.lua_TValue* %49, %struct.lua_TValue* %50)
  br label %if.end

if.end:                                           ; preds = %if.then.44, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %sw.epilog
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare hidden i32 @luaH_getn(%struct.Table*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lessequal(%struct.lua_State* %L, %struct.lua_TValue* %l, %struct.lua_TValue* %r) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %l.addr = alloca %struct.lua_TValue*, align 8
  %r.addr = alloca %struct.lua_TValue*, align 8
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %l, %struct.lua_TValue** %l.addr, align 8
  store %struct.lua_TValue* %r, %struct.lua_TValue** %r.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %call = call i32 @luaG_ordererror(%struct.lua_State* %4, %struct.lua_TValue* %5, %struct.lua_TValue* %6)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %tt2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 1
  %8 = load i32, i32* %tt2, align 4
  %cmp3 = icmp eq i32 %8, 3
  br i1 %cmp3, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %if.else
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  %10 = load double, double* %n, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %value5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %n6 = bitcast %union.Value* %value5 to double*
  %12 = load double, double* %n6, align 8
  %cmp7 = fcmp ole double %10, %12
  %conv = zext i1 %cmp7 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %tt9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %14 = load i32, i32* %tt9, align 4
  %cmp10 = icmp eq i32 %14, 4
  br i1 %cmp10, label %if.then.12, label %if.else.20

if.then.12:                                       ; preds = %if.else.8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %value13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %gc = bitcast %union.Value* %value13 to %union.GCObject**
  %16 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %16 to %union.TString*
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %gc15 = bitcast %union.Value* %value14 to %union.GCObject**
  %18 = load %union.GCObject*, %union.GCObject** %gc15, align 8
  %ts16 = bitcast %union.GCObject* %18 to %union.TString*
  %call17 = call i32 @l_strcmp(%union.TString* %ts, %union.TString* %ts16)
  %cmp18 = icmp sle i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  store i32 %conv19, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.else.8
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %call21 = call i32 @call_orderTM(%struct.lua_State* %19, %struct.lua_TValue* %20, %struct.lua_TValue* %21, i32 14)
  store i32 %call21, i32* %res, align 4
  %cmp22 = icmp ne i32 %call21, -1
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else.20
  %22 = load i32, i32* %res, align 4
  store i32 %22, i32* %retval
  br label %return

if.else.25:                                       ; preds = %if.else.20
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %call26 = call i32 @call_orderTM(%struct.lua_State* %23, %struct.lua_TValue* %24, %struct.lua_TValue* %25, i32 13)
  store i32 %call26, i32* %res, align 4
  %cmp27 = icmp ne i32 %call26, -1
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else.25
  %26 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %26, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %l.addr, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %r.addr, align 8
  %call34 = call i32 @luaG_ordererror(%struct.lua_State* %27, %struct.lua_TValue* %28, %struct.lua_TValue* %29)
  store i32 %call34, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.29, %if.then.24, %if.then.12, %if.then.4, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare hidden i32 @luaD_precall(%struct.lua_State*, %struct.lua_TValue*, i32) #1

declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) #1

declare hidden i32 @luaD_poscall(%struct.lua_State*, %struct.lua_TValue*) #1

declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #1

declare hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) #1

declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) #1

declare hidden %union.Closure* @luaF_newLclosure(%struct.lua_State*, i32, %struct.Table*) #1

declare hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %struct.lua_TValue*) #1

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8*, i8*) #3

declare hidden i32 @luaO_rawequalObj(%struct.lua_TValue*, %struct.lua_TValue*) #1

declare hidden void @luaD_callhook(%struct.lua_State*, i32, i32) #1

declare hidden void @luaG_aritherror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
