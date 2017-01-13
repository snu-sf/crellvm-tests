; ModuleID = './MultiSource.Applications.lua/27.ltable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { %struct.lua_TValue, %union.TKey }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%struct.GCheader = type { %union.GCObject*, i8, i8 }

@dummynode_ = internal constant %struct.Node zeroinitializer, align 8
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str = private unnamed_addr constant [19 x i8] c"table index is nil\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"table index is NaN\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"table overflow\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @luaH_next(%struct.lua_State* %L, %struct.Table* %t, %struct.lua_TValue* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %key.addr = alloca %struct.lua_TValue*, align 8
  %i = alloca i32, align 4
  %i_o = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %o223 = alloca %struct.lua_TValue*, align 8
  %o127 = alloca %struct.lua_TValue*, align 8
  %o232 = alloca %struct.lua_TValue*, align 8
  %o137 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %key.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call = call i32 @findindex(%struct.lua_State* %0, %struct.Table* %1, %struct.lua_TValue* %2)
  store i32 %call, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %5, i32 0, i32 10
  %6 = load i32, i32* %sizearray, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 6
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %array, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %idxprom
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 1
  %10 = load i32, i32* %tt, align 4
  %cmp1 = icmp eq i32 %10, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  store %struct.lua_TValue* %11, %struct.lua_TValue** %i_o, align 8
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %12, 1
  %conv = sitofp i32 %add to double
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  store double %conv, double* %n, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  store i32 3, i32* %tt2, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %15 to i64
  %16 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array4 = getelementptr inbounds %struct.Table, %struct.Table* %16, i32 0, i32 6
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %array4, align 8
  %arrayidx5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %idxprom3
  store %struct.lua_TValue* %arrayidx5, %struct.lua_TValue** %o2, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o1, align 8
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %21 = bitcast %union.Value* %value6 to i8*
  %22 = bitcast %union.Value* %value7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 8, i32 8, i1 false)
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 1
  %24 = load i32, i32* %tt8, align 4
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 1
  store i32 %24, i32* %tt9, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %26, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray11 = getelementptr inbounds %struct.Table, %struct.Table* %27, i32 0, i32 10
  %28 = load i32, i32* %sizearray11, align 4
  %29 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %29, %28
  store i32 %sub, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.44, %for.end
  %30 = load i32, i32* %i, align 4
  %31 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %31, i32 0, i32 4
  %32 = load i8, i8* %lsizenode, align 1
  %conv13 = zext i8 %32 to i32
  %shl = shl i32 1, %conv13
  %cmp14 = icmp slt i32 %30, %shl
  br i1 %cmp14, label %for.body.16, label %for.end.46

for.body.16:                                      ; preds = %for.cond.12
  %33 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %33 to i64
  %34 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %34, i32 0, i32 7
  %35 = load %struct.Node*, %struct.Node** %node, align 8
  %arrayidx18 = getelementptr inbounds %struct.Node, %struct.Node* %35, i64 %idxprom17
  %i_val = getelementptr inbounds %struct.Node, %struct.Node* %arrayidx18, i32 0, i32 0
  %tt19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val, i32 0, i32 1
  %36 = load i32, i32* %tt19, align 4
  %cmp20 = icmp eq i32 %36, 0
  br i1 %cmp20, label %if.end.43, label %if.then.22

if.then.22:                                       ; preds = %for.body.16
  %37 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %37 to i64
  %38 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node25 = getelementptr inbounds %struct.Table, %struct.Table* %38, i32 0, i32 7
  %39 = load %struct.Node*, %struct.Node** %node25, align 8
  %arrayidx26 = getelementptr inbounds %struct.Node, %struct.Node* %39, i64 %idxprom24
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %arrayidx26, i32 0, i32 1
  %tvk = bitcast %union.TKey* %i_key to %struct.lua_TValue*
  store %struct.lua_TValue* %tvk, %struct.lua_TValue** %o223, align 8
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  store %struct.lua_TValue* %40, %struct.lua_TValue** %o127, align 8
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %o127, align 8
  %value28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 0
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %o223, align 8
  %value29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 0
  %43 = bitcast %union.Value* %value28 to i8*
  %44 = bitcast %union.Value* %value29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 8, i32 8, i1 false)
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %o223, align 8
  %tt30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 1
  %46 = load i32, i32* %tt30, align 4
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %o127, align 8
  %tt31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 1
  store i32 %46, i32* %tt31, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %48 to i64
  %49 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node34 = getelementptr inbounds %struct.Table, %struct.Table* %49, i32 0, i32 7
  %50 = load %struct.Node*, %struct.Node** %node34, align 8
  %arrayidx35 = getelementptr inbounds %struct.Node, %struct.Node* %50, i64 %idxprom33
  %i_val36 = getelementptr inbounds %struct.Node, %struct.Node* %arrayidx35, i32 0, i32 0
  store %struct.lua_TValue* %i_val36, %struct.lua_TValue** %o232, align 8
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %add.ptr38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i64 1
  store %struct.lua_TValue* %add.ptr38, %struct.lua_TValue** %o137, align 8
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %o137, align 8
  %value39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i32 0, i32 0
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %o232, align 8
  %value40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 0, i32 0
  %54 = bitcast %union.Value* %value39 to i8*
  %55 = bitcast %union.Value* %value40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 8, i32 8, i1 false)
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %o232, align 8
  %tt41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i32 0, i32 1
  %57 = load i32, i32* %tt41, align 4
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %o137, align 8
  %tt42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 1
  store i32 %57, i32* %tt42, align 4
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %for.body.16
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %59 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %59, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.12

for.end.46:                                       ; preds = %for.cond.12
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.46, %if.then.22, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @findindex(%struct.lua_State* %L, %struct.Table* %t, %struct.lua_TValue* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %key.addr = alloca %struct.lua_TValue*, align 8
  %i = alloca i32, align 4
  %n = alloca %struct.Node*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %key.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call = call i32 @arrayindex(%struct.lua_TValue* %2)
  store i32 %call, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 0, %3
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %5, i32 0, i32 10
  %6 = load i32, i32* %sizearray, align 4
  %cmp2 = icmp sle i32 %4, %6
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %8 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call4 = call %struct.Node* @mainposition(%struct.Table* %8, %struct.lua_TValue* %9)
  store %struct.Node* %call4, %struct.Node** %n, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %10 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %10, i32 0, i32 1
  %tvk = bitcast %union.TKey* %i_key to %struct.lua_TValue*
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call5 = call i32 @luaO_rawequalObj(%struct.lua_TValue* %tvk, %struct.lua_TValue* %11)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %12 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key6 = getelementptr inbounds %struct.Node, %struct.Node* %12, i32 0, i32 1
  %nk = bitcast %union.TKey* %i_key6 to %struct.anon.0*
  %tt7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk, i32 0, i32 1
  %13 = load i32, i32* %tt7, align 4
  %cmp8 = icmp eq i32 %13, 11
  br i1 %cmp8, label %land.lhs.true.9, label %if.else.20

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %tt10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  %15 = load i32, i32* %tt10, align 4
  %cmp11 = icmp sge i32 %15, 4
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.20

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %16 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key13 = getelementptr inbounds %struct.Node, %struct.Node* %16, i32 0, i32 1
  %nk14 = bitcast %union.TKey* %i_key13 to %struct.anon.0*
  %value = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk14, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %17 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %gc16 = bitcast %union.Value* %value15 to %union.GCObject**
  %19 = load %union.GCObject*, %union.GCObject** %gc16, align 8
  %cmp17 = icmp eq %union.GCObject* %17, %19
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %land.lhs.true.12, %do.body
  %20 = load %struct.Node*, %struct.Node** %n, align 8
  %21 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %21, i32 0, i32 7
  %22 = load %struct.Node*, %struct.Node** %node, align 8
  %arrayidx = getelementptr inbounds %struct.Node, %struct.Node* %22, i64 0
  %sub.ptr.lhs.cast = ptrtoint %struct.Node* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Node* %arrayidx to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %i, align 4
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray19 = getelementptr inbounds %struct.Table, %struct.Table* %24, i32 0, i32 10
  %25 = load i32, i32* %sizearray19, align 4
  %add = add nsw i32 %23, %25
  store i32 %add, i32* %retval
  br label %return

if.else.20:                                       ; preds = %land.lhs.true.12, %land.lhs.true.9, %lor.lhs.false
  %26 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key21 = getelementptr inbounds %struct.Node, %struct.Node* %26, i32 0, i32 1
  %nk22 = bitcast %union.TKey* %i_key21 to %struct.anon.0*
  %next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk22, i32 0, i32 2
  %27 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %27, %struct.Node** %n, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  %28 = load %struct.Node*, %struct.Node** %n, align 8
  %tobool24 = icmp ne %struct.Node* %28, null
  br i1 %tobool24, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.18, %if.then.3, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define hidden void @luaH_resizearray(%struct.lua_State* %L, %struct.Table* %t, i32 %nasize) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %nasize.addr = alloca i32, align 4
  %nsize = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store i32 %nasize, i32* %nasize.addr, align 4
  %0 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 7
  %1 = load %struct.Node*, %struct.Node** %node, align 8
  %cmp = icmp eq %struct.Node* %1, @dummynode_
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %2, i32 0, i32 4
  %3 = load i8, i8* %lsizenode, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 1, %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl, %cond.false ]
  store i32 %cond, i32* %nsize, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %6 = load i32, i32* %nasize.addr, align 4
  %7 = load i32, i32* %nsize, align 4
  call void @resize(%struct.lua_State* %4, %struct.Table* %5, i32 %6, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @resize(%struct.lua_State* %L, %struct.Table* %t, i32 %nasize, i32 %nhsize) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %nasize.addr = alloca i32, align 4
  %nhsize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %oldasize = alloca i32, align 4
  %oldhsize = alloca i32, align 4
  %nold = alloca %struct.Node*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %old = alloca %struct.Node*, align 8
  %o238 = alloca %struct.lua_TValue*, align 8
  %o140 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store i32 %nasize, i32* %nasize.addr, align 4
  store i32 %nhsize, i32* %nhsize.addr, align 4
  %0 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 10
  %1 = load i32, i32* %sizearray, align 4
  store i32 %1, i32* %oldasize, align 4
  %2 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %2, i32 0, i32 4
  %3 = load i8, i8* %lsizenode, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %oldhsize, align 4
  %4 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %4, i32 0, i32 7
  %5 = load %struct.Node*, %struct.Node** %node, align 8
  store %struct.Node* %5, %struct.Node** %nold, align 8
  %6 = load i32, i32* %nasize.addr, align 4
  %7 = load i32, i32* %oldasize, align 4
  %cmp = icmp sgt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %10 = load i32, i32* %nasize.addr, align 4
  call void @setarrayvector(%struct.lua_State* %8, %struct.Table* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %13 = load i32, i32* %nhsize.addr, align 4
  call void @setnodevector(%struct.lua_State* %11, %struct.Table* %12, i32 %13)
  %14 = load i32, i32* %nasize.addr, align 4
  %15 = load i32, i32* %oldasize, align 4
  %cmp2 = icmp slt i32 %14, %15
  br i1 %cmp2, label %if.then.4, label %if.end.29

if.then.4:                                        ; preds = %if.end
  %16 = load i32, i32* %nasize.addr, align 4
  %17 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray5 = getelementptr inbounds %struct.Table, %struct.Table* %17, i32 0, i32 10
  store i32 %16, i32* %sizearray5, align 4
  %18 = load i32, i32* %nasize.addr, align 4
  store i32 %18, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %oldasize, align 4
  %cmp6 = icmp slt i32 %19, %20
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array = getelementptr inbounds %struct.Table, %struct.Table* %22, i32 0, i32 6
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %array, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %idxprom
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 1
  %24 = load i32, i32* %tt, align 4
  %cmp8 = icmp eq i32 %24, 0
  br i1 %cmp8, label %if.end.17, label %if.then.10

if.then.10:                                       ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %25 to i64
  %26 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array12 = getelementptr inbounds %struct.Table, %struct.Table* %26, i32 0, i32 6
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %array12, align 8
  %arrayidx13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 %idxprom11
  store %struct.lua_TValue* %arrayidx13, %struct.lua_TValue** %o2, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %29 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %30 = load i32, i32* %i, align 4
  %add = add nsw i32 %30, 1
  %call = call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %28, %struct.Table* %29, i32 %add)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o1, align 8
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 0
  %33 = bitcast %union.Value* %value to i8*
  %34 = bitcast %union.Value* %value14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 8, i32 8, i1 false)
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 1
  %36 = load i32, i32* %tt15, align 4
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 1
  store i32 %36, i32* %tt16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %nasize.addr, align 4
  %add18 = add nsw i32 %39, 1
  %conv19 = sext i32 %add18 to i64
  %cmp20 = icmp ule i64 %conv19, 1152921504606846975
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %41 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array22 = getelementptr inbounds %struct.Table, %struct.Table* %41, i32 0, i32 6
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %array22, align 8
  %43 = bitcast %struct.lua_TValue* %42 to i8*
  %44 = load i32, i32* %oldasize, align 4
  %conv23 = sext i32 %44 to i64
  %mul = mul i64 %conv23, 16
  %45 = load i32, i32* %nasize.addr, align 4
  %conv24 = sext i32 %45 to i64
  %mul25 = mul i64 %conv24, 16
  %call26 = call i8* @luaM_realloc_(%struct.lua_State* %40, i8* %43, i64 %mul, i64 %mul25)
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %46 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call27 = call i8* @luaM_toobig(%struct.lua_State* %46)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call26, %cond.true ], [ %call27, %cond.false ]
  %47 = bitcast i8* %cond to %struct.lua_TValue*
  %48 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array28 = getelementptr inbounds %struct.Table, %struct.Table* %48, i32 0, i32 6
  store %struct.lua_TValue* %47, %struct.lua_TValue** %array28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %cond.end, %if.end
  %49 = load i32, i32* %oldhsize, align 4
  %shl = shl i32 1, %49
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.47, %if.end.29
  %50 = load i32, i32* %i, align 4
  %cmp31 = icmp sge i32 %50, 0
  br i1 %cmp31, label %for.body.33, label %for.end.48

for.body.33:                                      ; preds = %for.cond.30
  %51 = load %struct.Node*, %struct.Node** %nold, align 8
  %52 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 %idx.ext
  store %struct.Node* %add.ptr, %struct.Node** %old, align 8
  %53 = load %struct.Node*, %struct.Node** %old, align 8
  %i_val = getelementptr inbounds %struct.Node, %struct.Node* %53, i32 0, i32 0
  %tt34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val, i32 0, i32 1
  %54 = load i32, i32* %tt34, align 4
  %cmp35 = icmp eq i32 %54, 0
  br i1 %cmp35, label %if.end.46, label %if.then.37

if.then.37:                                       ; preds = %for.body.33
  %55 = load %struct.Node*, %struct.Node** %old, align 8
  %i_val39 = getelementptr inbounds %struct.Node, %struct.Node* %55, i32 0, i32 0
  store %struct.lua_TValue* %i_val39, %struct.lua_TValue** %o238, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %57 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %58 = load %struct.Node*, %struct.Node** %old, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %58, i32 0, i32 1
  %tvk = bitcast %union.TKey* %i_key to %struct.lua_TValue*
  %call41 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %56, %struct.Table* %57, %struct.lua_TValue* %tvk)
  store %struct.lua_TValue* %call41, %struct.lua_TValue** %o140, align 8
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %o140, align 8
  %value42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 0, i32 0
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %o238, align 8
  %value43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 0, i32 0
  %61 = bitcast %union.Value* %value42 to i8*
  %62 = bitcast %union.Value* %value43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 8, i32 8, i1 false)
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %o238, align 8
  %tt44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i32 0, i32 1
  %64 = load i32, i32* %tt44, align 4
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %o140, align 8
  %tt45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i32 0, i32 1
  store i32 %64, i32* %tt45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.37, %for.body.33
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %66 = load i32, i32* %i, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.30

for.end.48:                                       ; preds = %for.cond.30
  %67 = load %struct.Node*, %struct.Node** %nold, align 8
  %cmp49 = icmp ne %struct.Node* %67, @dummynode_
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %for.end.48
  %68 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %69 = load %struct.Node*, %struct.Node** %nold, align 8
  %70 = bitcast %struct.Node* %69 to i8*
  %71 = load i32, i32* %oldhsize, align 4
  %shl52 = shl i32 1, %71
  %conv53 = sext i32 %shl52 to i64
  %mul54 = mul i64 %conv53, 40
  %call55 = call i8* @luaM_realloc_(%struct.lua_State* %68, i8* %70, i64 %mul54, i64 0)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %for.end.48
  ret void
}

; Function Attrs: nounwind uwtable
define hidden %struct.Table* @luaH_new(%struct.lua_State* %L, i32 %narray, i32 %nhash) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narray.addr = alloca i32, align 4
  %nhash.addr = alloca i32, align 4
  %t = alloca %struct.Table*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narray, i32* %narray.addr, align 4
  store i32 %nhash, i32* %nhash.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 64)
  %1 = bitcast i8* %call to %struct.Table*
  store %struct.Table* %1, %struct.Table** %t, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.Table*, %struct.Table** %t, align 8
  %4 = bitcast %struct.Table* %3 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* %2, %union.GCObject* %4, i8 zeroext 5)
  %5 = load %struct.Table*, %struct.Table** %t, align 8
  %metatable = getelementptr inbounds %struct.Table, %struct.Table* %5, i32 0, i32 5
  store %struct.Table* null, %struct.Table** %metatable, align 8
  %6 = load %struct.Table*, %struct.Table** %t, align 8
  %flags = getelementptr inbounds %struct.Table, %struct.Table* %6, i32 0, i32 3
  store i8 -1, i8* %flags, align 1
  %7 = load %struct.Table*, %struct.Table** %t, align 8
  %array = getelementptr inbounds %struct.Table, %struct.Table* %7, i32 0, i32 6
  store %struct.lua_TValue* null, %struct.lua_TValue** %array, align 8
  %8 = load %struct.Table*, %struct.Table** %t, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 10
  store i32 0, i32* %sizearray, align 4
  %9 = load %struct.Table*, %struct.Table** %t, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %9, i32 0, i32 4
  store i8 0, i8* %lsizenode, align 1
  %10 = load %struct.Table*, %struct.Table** %t, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %10, i32 0, i32 7
  store %struct.Node* @dummynode_, %struct.Node** %node, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load %struct.Table*, %struct.Table** %t, align 8
  %13 = load i32, i32* %narray.addr, align 4
  call void @setarrayvector(%struct.lua_State* %11, %struct.Table* %12, i32 %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load %struct.Table*, %struct.Table** %t, align 8
  %16 = load i32, i32* %nhash.addr, align 4
  call void @setnodevector(%struct.lua_State* %14, %struct.Table* %15, i32 %16)
  %17 = load %struct.Table*, %struct.Table** %t, align 8
  ret %struct.Table* %17
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #2

declare hidden void @luaC_link(%struct.lua_State*, %union.GCObject*, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @setarrayvector(%struct.lua_State* %L, %struct.Table* %t, i32 %size) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %cmp = icmp ule i64 %conv, 1152921504606846975
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array = getelementptr inbounds %struct.Table, %struct.Table* %2, i32 0, i32 6
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %array, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*
  %5 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %5, i32 0, i32 10
  %6 = load i32, i32* %sizearray, align 4
  %conv2 = sext i32 %6 to i64
  %mul = mul i64 %conv2, 16
  %7 = load i32, i32* %size.addr, align 4
  %conv3 = sext i32 %7 to i64
  %mul4 = mul i64 %conv3, 16
  %call = call i8* @luaM_realloc_(%struct.lua_State* %1, i8* %4, i64 %mul, i64 %mul4)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i8* @luaM_toobig(%struct.lua_State* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call5, %cond.false ]
  %9 = bitcast i8* %cond to %struct.lua_TValue*
  %10 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array6 = getelementptr inbounds %struct.Table, %struct.Table* %10, i32 0, i32 6
  store %struct.lua_TValue* %9, %struct.lua_TValue** %array6, align 8
  %11 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray7 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 10
  %12 = load i32, i32* %sizearray7, align 4
  store i32 %12, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %size.addr, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array10 = getelementptr inbounds %struct.Table, %struct.Table* %16, i32 0, i32 6
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %array10, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %idxprom
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %size.addr, align 4
  %20 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray11 = getelementptr inbounds %struct.Table, %struct.Table* %20, i32 0, i32 10
  store i32 %19, i32* %sizearray11, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setnodevector(%struct.lua_State* %L, %struct.Table* %t, i32 %size) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %size.addr = alloca i32, align 4
  %lsize = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca %struct.Node*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %1, i32 0, i32 7
  store %struct.Node* @dummynode_, %struct.Node** %node, align 8
  store i32 0, i32* %lsize, align 4
  br label %if.end.16

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %2, 1
  %call = call i32 @luaO_log2(i32 %sub)
  %add = add nsw i32 %call, 1
  store i32 %add, i32* %lsize, align 4
  %3 = load i32, i32* %lsize, align 4
  %cmp1 = icmp sgt i32 %3, 26
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %5 = load i32, i32* %lsize, align 4
  %shl = shl i32 1, %5
  store i32 %shl, i32* %size.addr, align 4
  %6 = load i32, i32* %size.addr, align 4
  %add3 = add nsw i32 %6, 1
  %conv = sext i32 %add3 to i64
  %cmp4 = icmp ule i64 %conv, 461168601842738790
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %size.addr, align 4
  %conv6 = sext i32 %8 to i64
  %mul = mul i64 %conv6, 40
  %call7 = call i8* @luaM_realloc_(%struct.lua_State* %7, i8* null, i64 0, i64 %mul)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call8 = call i8* @luaM_toobig(%struct.lua_State* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call7, %cond.true ], [ %call8, %cond.false ]
  %10 = bitcast i8* %cond to %struct.Node*
  %11 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node9 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 7
  store %struct.Node* %10, %struct.Node** %node9, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %size.addr, align 4
  %cmp10 = icmp slt i32 %12, %13
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node12 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 7
  %16 = load %struct.Node*, %struct.Node** %node12, align 8
  %arrayidx = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 %idxprom
  store %struct.Node* %arrayidx, %struct.Node** %n, align 8
  %17 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %17, i32 0, i32 1
  %nk = bitcast %union.TKey* %i_key to %struct.anon.0*
  %next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk, i32 0, i32 2
  store %struct.Node* null, %struct.Node** %next, align 8
  %18 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key13 = getelementptr inbounds %struct.Node, %struct.Node* %18, i32 0, i32 1
  %nk14 = bitcast %union.TKey* %i_key13 to %struct.anon.0*
  %tt = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk14, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  %19 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val = getelementptr inbounds %struct.Node, %struct.Node* %19, i32 0, i32 0
  %tt15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val, i32 0, i32 1
  store i32 0, i32* %tt15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.then
  %21 = load i32, i32* %lsize, align 4
  %conv17 = trunc i32 %21 to i8
  %22 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %22, i32 0, i32 4
  store i8 %conv17, i8* %lsizenode, align 1
  %23 = load i32, i32* %size.addr, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node19 = getelementptr inbounds %struct.Table, %struct.Table* %24, i32 0, i32 7
  %25 = load %struct.Node*, %struct.Node** %node19, align 8
  %arrayidx20 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 %idxprom18
  %26 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lastfree = getelementptr inbounds %struct.Table, %struct.Table* %26, i32 0, i32 8
  store %struct.Node* %arrayidx20, %struct.Node** %lastfree, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaH_free(%struct.lua_State* %L, %struct.Table* %t) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  %0 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 7
  %1 = load %struct.Node*, %struct.Node** %node, align 8
  %cmp = icmp ne %struct.Node* %1, @dummynode_
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node1 = getelementptr inbounds %struct.Table, %struct.Table* %3, i32 0, i32 7
  %4 = load %struct.Node*, %struct.Node** %node1, align 8
  %5 = bitcast %struct.Node* %4 to i8*
  %6 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %6, i32 0, i32 4
  %7 = load i8, i8* %lsizenode, align 1
  %conv = zext i8 %7 to i32
  %shl = shl i32 1, %conv
  %conv2 = sext i32 %shl to i64
  %mul = mul i64 %conv2, 40
  %call = call i8* @luaM_realloc_(%struct.lua_State* %2, i8* %5, i64 %mul, i64 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array = getelementptr inbounds %struct.Table, %struct.Table* %9, i32 0, i32 6
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %array, align 8
  %11 = bitcast %struct.lua_TValue* %10 to i8*
  %12 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 10
  %13 = load i32, i32* %sizearray, align 4
  %conv3 = sext i32 %13 to i64
  %mul4 = mul i64 %conv3, 16
  %call5 = call i8* @luaM_realloc_(%struct.lua_State* %8, i8* %11, i64 %mul4, i64 0)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %16 = bitcast %struct.Table* %15 to i8*
  %call6 = call i8* @luaM_realloc_(%struct.lua_State* %14, i8* %16, i64 64, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden %struct.lua_TValue* @luaH_getnum(%struct.Table* %t, i32 %key) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %key.addr = alloca i32, align 4
  %nk = alloca double, align 8
  %n = alloca %struct.Node*, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %1, i32 0, i32 10
  %2 = load i32, i32* %sizearray, align 4
  %cmp = icmp ult i32 %sub, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %key.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub1 to i64
  %4 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array = getelementptr inbounds %struct.Table, %struct.Table* %4, i32 0, i32 6
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %array, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 %idxprom
  store %struct.lua_TValue* %arrayidx, %struct.lua_TValue** %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %key.addr, align 4
  %conv = sitofp i32 %6 to double
  store double %conv, double* %nk, align 8
  %7 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %8 = load double, double* %nk, align 8
  %call = call %struct.Node* @hashnum(%struct.Table* %7, double %8)
  store %struct.Node* %call, %struct.Node** %n, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %9 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %9, i32 0, i32 1
  %nk2 = bitcast %union.TKey* %i_key to %struct.anon.0*
  %tt = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk2, i32 0, i32 1
  %10 = load i32, i32* %tt, align 4
  %cmp3 = icmp eq i32 %10, 3
  br i1 %cmp3, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %do.body
  %11 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key5 = getelementptr inbounds %struct.Node, %struct.Node* %11, i32 0, i32 1
  %nk6 = bitcast %union.TKey* %i_key5 to %struct.anon.0*
  %value = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk6, i32 0, i32 0
  %n7 = bitcast %union.Value* %value to double*
  %12 = load double, double* %n7, align 8
  %13 = load double, double* %nk, align 8
  %cmp8 = fcmp oeq double %12, %13
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  %14 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val = getelementptr inbounds %struct.Node, %struct.Node* %14, i32 0, i32 0
  store %struct.lua_TValue* %i_val, %struct.lua_TValue** %retval
  br label %return

if.else.11:                                       ; preds = %land.lhs.true, %do.body
  %15 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key12 = getelementptr inbounds %struct.Node, %struct.Node* %15, i32 0, i32 1
  %nk13 = bitcast %union.TKey* %i_key12 to %struct.anon.0*
  %next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk13, i32 0, i32 2
  %16 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %16, %struct.Node** %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %17 = load %struct.Node*, %struct.Node** %n, align 8
  %tobool = icmp ne %struct.Node* %17, null
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.10, %if.then
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %18
}

; Function Attrs: nounwind uwtable
define internal %struct.Node* @hashnum(%struct.Table* %t, double %n) #0 {
entry:
  %retval = alloca %struct.Node*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %n.addr = alloca double, align 8
  %a = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store double %n, double* %n.addr, align 8
  %0 = load double, double* %n.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %1, i32 0, i32 7
  %2 = load %struct.Node*, %struct.Node** %node, align 8
  %arrayidx = getelementptr inbounds %struct.Node, %struct.Node* %2, i64 0
  store %struct.Node* %arrayidx, %struct.Node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = bitcast [2 x i32]* %a to i8*
  %4 = bitcast double* %n.addr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 4, i1 false)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %5, 2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %a, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %a, i32 0, i64 0
  %8 = load i32, i32* %arrayidx3, align 4
  %add = add i32 %8, %7
  store i32 %add, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %a, i32 0, i64 0
  %10 = load i32, i32* %arrayidx4, align 4
  %11 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 4
  %12 = load i8, i8* %lsizenode, align 1
  %conv = zext i8 %12 to i32
  %shl = shl i32 1, %conv
  %sub = sub nsw i32 %shl, 1
  %or = or i32 %sub, 1
  %rem = urem i32 %10, %or
  %idxprom5 = zext i32 %rem to i64
  %13 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node6 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 7
  %14 = load %struct.Node*, %struct.Node** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.Node, %struct.Node* %14, i64 %idxprom5
  store %struct.Node* %arrayidx7, %struct.Node** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load %struct.Node*, %struct.Node** %retval
  ret %struct.Node* %15
}

; Function Attrs: nounwind uwtable
define hidden %struct.lua_TValue* @luaH_getstr(%struct.Table* %t, %union.TString* %key) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %key.addr = alloca %union.TString*, align 8
  %n = alloca %struct.Node*, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store %union.TString* %key, %union.TString** %key.addr, align 8
  %0 = load %union.TString*, %union.TString** %key.addr, align 8
  %tsv = bitcast %union.TString* %0 to %struct.anon.1*
  %hash = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 4
  %1 = load i32, i32* %hash, align 4
  %2 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %2, i32 0, i32 4
  %3 = load i8, i8* %lsizenode, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 1, %conv
  %sub = sub nsw i32 %shl, 1
  %and = and i32 %1, %sub
  %idxprom = sext i32 %and to i64
  %4 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %4, i32 0, i32 7
  %5 = load %struct.Node*, %struct.Node** %node, align 8
  %arrayidx = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 %idxprom
  store %struct.Node* %arrayidx, %struct.Node** %n, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %6 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %6, i32 0, i32 1
  %nk = bitcast %union.TKey* %i_key to %struct.anon.0*
  %tt = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk, i32 0, i32 1
  %7 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %8 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key2 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 1
  %nk3 = bitcast %union.TKey* %i_key2 to %struct.anon.0*
  %value = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk3, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %9 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %9 to %union.TString*
  %10 = load %union.TString*, %union.TString** %key.addr, align 8
  %cmp4 = icmp eq %union.TString* %ts, %10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val = getelementptr inbounds %struct.Node, %struct.Node* %11, i32 0, i32 0
  store %struct.lua_TValue* %i_val, %struct.lua_TValue** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %do.body
  %12 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key6 = getelementptr inbounds %struct.Node, %struct.Node* %12, i32 0, i32 1
  %nk7 = bitcast %union.TKey* %i_key6 to %struct.anon.0*
  %next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk7, i32 0, i32 2
  %13 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %13, %struct.Node** %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %14 = load %struct.Node*, %struct.Node** %n, align 8
  %tobool = icmp ne %struct.Node* %14, null
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %15
}

; Function Attrs: nounwind uwtable
define hidden %struct.lua_TValue* @luaH_get(%struct.Table* %t, %struct.lua_TValue* %key) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %key.addr = alloca %struct.lua_TValue*, align 8
  %k = alloca i32, align 4
  %n = alloca double, align 8
  %n10 = alloca %struct.Node*, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %key.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.1
    i32 3, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %4 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %4 to %union.TString*
  %call = call %struct.lua_TValue* @luaH_getstr(%struct.Table* %2, %union.TString* %ts)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %n4 = bitcast %union.Value* %value3 to double*
  %6 = load double, double* %n4, align 8
  store double %6, double* %n, align 8
  %7 = load double, double* %n, align 8
  %conv = fptosi double %7 to i32
  store i32 %conv, i32* %k, align 4
  %8 = load i32, i32* %k, align 4
  %conv5 = sitofp i32 %8 to double
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %n7 = bitcast %union.Value* %value6 to double*
  %10 = load double, double* %n7, align 8
  %cmp = fcmp oeq double %conv5, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %11 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %12 = load i32, i32* %k, align 4
  %call9 = call %struct.lua_TValue* @luaH_getnum(%struct.Table* %11, i32 %12)
  store %struct.lua_TValue* %call9, %struct.lua_TValue** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %13 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call11 = call %struct.Node* @mainposition(%struct.Table* %13, %struct.lua_TValue* %14)
  store %struct.Node* %call11, %struct.Node** %n10, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.default
  %15 = load %struct.Node*, %struct.Node** %n10, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %15, i32 0, i32 1
  %tvk = bitcast %union.TKey* %i_key to %struct.lua_TValue*
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call12 = call i32 @luaO_rawequalObj(%struct.lua_TValue* %tvk, %struct.lua_TValue* %16)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  %17 = load %struct.Node*, %struct.Node** %n10, align 8
  %i_val = getelementptr inbounds %struct.Node, %struct.Node* %17, i32 0, i32 0
  store %struct.lua_TValue* %i_val, %struct.lua_TValue** %retval
  br label %return

if.else:                                          ; preds = %do.body
  %18 = load %struct.Node*, %struct.Node** %n10, align 8
  %i_key14 = getelementptr inbounds %struct.Node, %struct.Node* %18, i32 0, i32 1
  %nk = bitcast %union.TKey* %i_key14 to %struct.anon.0*
  %next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk, i32 0, i32 2
  %19 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %19, %struct.Node** %n10, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  %20 = load %struct.Node*, %struct.Node** %n10, align 8
  %tobool16 = icmp ne %struct.Node* %20, null
  br i1 %tobool16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.13, %if.then, %sw.bb.1, %sw.bb
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %21
}

; Function Attrs: nounwind uwtable
define internal %struct.Node* @mainposition(%struct.Table* %t, %struct.lua_TValue* %key) #0 {
entry:
  %retval = alloca %struct.Node*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %key.addr = alloca %struct.lua_TValue*, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %key.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.1
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  %4 = load double, double* %n, align 8
  %call = call %struct.Node* @hashnum(%struct.Table* %2, double %4)
  store %struct.Node* %call, %struct.Node** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %gc = bitcast %union.Value* %value2 to %union.GCObject**
  %6 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %6 to %union.TString*
  %tsv = bitcast %union.TString* %ts to %struct.anon.1*
  %hash = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 4
  %7 = load i32, i32* %hash, align 4
  %8 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 4
  %9 = load i8, i8* %lsizenode, align 1
  %conv = zext i8 %9 to i32
  %shl = shl i32 1, %conv
  %sub = sub nsw i32 %shl, 1
  %and = and i32 %7, %sub
  %idxprom = sext i32 %and to i64
  %10 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %10, i32 0, i32 7
  %11 = load %struct.Node*, %struct.Node** %node, align 8
  %arrayidx = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %idxprom
  store %struct.Node* %arrayidx, %struct.Node** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %b = bitcast %union.Value* %value4 to i32*
  %13 = load i32, i32* %b, align 4
  %14 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode5 = getelementptr inbounds %struct.Table, %struct.Table* %14, i32 0, i32 4
  %15 = load i8, i8* %lsizenode5, align 1
  %conv6 = zext i8 %15 to i32
  %shl7 = shl i32 1, %conv6
  %sub8 = sub nsw i32 %shl7, 1
  %and9 = and i32 %13, %sub8
  %idxprom10 = sext i32 %and9 to i64
  %16 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node11 = getelementptr inbounds %struct.Table, %struct.Table* %16, i32 0, i32 7
  %17 = load %struct.Node*, %struct.Node** %node11, align 8
  %arrayidx12 = getelementptr inbounds %struct.Node, %struct.Node* %17, i64 %idxprom10
  store %struct.Node* %arrayidx12, %struct.Node** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %p = bitcast %union.Value* %value14 to i8**
  %19 = load i8*, i8** %p, align 8
  %20 = ptrtoint i8* %19 to i64
  %conv15 = trunc i64 %20 to i32
  %21 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode16 = getelementptr inbounds %struct.Table, %struct.Table* %21, i32 0, i32 4
  %22 = load i8, i8* %lsizenode16, align 1
  %conv17 = zext i8 %22 to i32
  %shl18 = shl i32 1, %conv17
  %sub19 = sub nsw i32 %shl18, 1
  %or = or i32 %sub19, 1
  %rem = urem i32 %conv15, %or
  %idxprom20 = zext i32 %rem to i64
  %23 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node21 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 7
  %24 = load %struct.Node*, %struct.Node** %node21, align 8
  %arrayidx22 = getelementptr inbounds %struct.Node, %struct.Node* %24, i64 %idxprom20
  store %struct.Node* %arrayidx22, %struct.Node** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %gc24 = bitcast %union.Value* %value23 to %union.GCObject**
  %26 = load %union.GCObject*, %union.GCObject** %gc24, align 8
  %27 = ptrtoint %union.GCObject* %26 to i64
  %conv25 = trunc i64 %27 to i32
  %28 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode26 = getelementptr inbounds %struct.Table, %struct.Table* %28, i32 0, i32 4
  %29 = load i8, i8* %lsizenode26, align 1
  %conv27 = zext i8 %29 to i32
  %shl28 = shl i32 1, %conv27
  %sub29 = sub nsw i32 %shl28, 1
  %or30 = or i32 %sub29, 1
  %rem31 = urem i32 %conv25, %or30
  %idxprom32 = zext i32 %rem31 to i64
  %30 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node33 = getelementptr inbounds %struct.Table, %struct.Table* %30, i32 0, i32 7
  %31 = load %struct.Node*, %struct.Node** %node33, align 8
  %arrayidx34 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 %idxprom32
  store %struct.Node* %arrayidx34, %struct.Node** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.13, %sw.bb.3, %sw.bb.1, %sw.bb
  %32 = load %struct.Node*, %struct.Node** %retval
  ret %struct.Node* %32
}

declare hidden i32 @luaO_rawequalObj(%struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind uwtable
define hidden %struct.lua_TValue* @luaH_set(%struct.lua_State* %L, %struct.Table* %t, %struct.lua_TValue* %key) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %key.addr = alloca %struct.lua_TValue*, align 8
  %p = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %key.addr, align 8
  %0 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call = call %struct.lua_TValue* @luaH_get(%struct.Table* %0, %struct.lua_TValue* %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %p, align 8
  %2 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %flags = getelementptr inbounds %struct.Table, %struct.Table* %2, i32 0, i32 3
  store i8 0, i8* %flags, align 1
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %cmp = icmp ne %struct.lua_TValue* %3, @luaO_nilobject_
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  store %struct.lua_TValue* %4, %struct.lua_TValue** %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 1
  %6 = load i32, i32* %tt, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  br label %if.end.10

if.else.3:                                        ; preds = %if.else
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %tt4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %9 = load i32, i32* %tt4, align 4
  %cmp5 = icmp eq i32 %9, 3
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else.3
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  %11 = load double, double* %n, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %n7 = bitcast %union.Value* %value6 to double*
  %13 = load double, double* %n7, align 8
  %cmp8 = fcmp oeq double %11, %13
  br i1 %cmp8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.else.3
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.2
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call11 = call %struct.lua_TValue* @newkey(%struct.lua_State* %15, %struct.Table* %16, %struct.lua_TValue* %17)
  store %struct.lua_TValue* %call11, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %18
}

declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.lua_TValue* @newkey(%struct.lua_State* %L, %struct.Table* %t, %struct.lua_TValue* %key) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %key.addr = alloca %struct.lua_TValue*, align 8
  %mp = alloca %struct.Node*, align 8
  %othern = alloca %struct.Node*, align 8
  %n = alloca %struct.Node*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %key.addr, align 8
  %0 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call = call %struct.Node* @mainposition(%struct.Table* %0, %struct.lua_TValue* %1)
  store %struct.Node* %call, %struct.Node** %mp, align 8
  %2 = load %struct.Node*, %struct.Node** %mp, align 8
  %i_val = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 0
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.Node*, %struct.Node** %mp, align 8
  %cmp1 = icmp eq %struct.Node* %4, @dummynode_
  br i1 %cmp1, label %if.then, label %if.end.32

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %call2 = call %struct.Node* @getfreepos(%struct.Table* %5)
  store %struct.Node* %call2, %struct.Node** %n, align 8
  %6 = load %struct.Node*, %struct.Node** %n, align 8
  %cmp3 = icmp eq %struct.Node* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  call void @rehash(%struct.lua_State* %7, %struct.Table* %8, %struct.lua_TValue* %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call5 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %10, %struct.Table* %11, %struct.lua_TValue* %12)
  store %struct.lua_TValue* %call5, %struct.lua_TValue** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %13 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %14 = load %struct.Node*, %struct.Node** %mp, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %14, i32 0, i32 1
  %tvk = bitcast %union.TKey* %i_key to %struct.lua_TValue*
  %call6 = call %struct.Node* @mainposition(%struct.Table* %13, %struct.lua_TValue* %tvk)
  store %struct.Node* %call6, %struct.Node** %othern, align 8
  %15 = load %struct.Node*, %struct.Node** %othern, align 8
  %16 = load %struct.Node*, %struct.Node** %mp, align 8
  %cmp7 = icmp ne %struct.Node* %15, %16
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.8
  %17 = load %struct.Node*, %struct.Node** %othern, align 8
  %i_key9 = getelementptr inbounds %struct.Node, %struct.Node* %17, i32 0, i32 1
  %nk = bitcast %union.TKey* %i_key9 to %struct.anon.0*
  %next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk, i32 0, i32 2
  %18 = load %struct.Node*, %struct.Node** %next, align 8
  %19 = load %struct.Node*, %struct.Node** %mp, align 8
  %cmp10 = icmp ne %struct.Node* %18, %19
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct.Node*, %struct.Node** %othern, align 8
  %i_key11 = getelementptr inbounds %struct.Node, %struct.Node* %20, i32 0, i32 1
  %nk12 = bitcast %union.TKey* %i_key11 to %struct.anon.0*
  %next13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk12, i32 0, i32 2
  %21 = load %struct.Node*, %struct.Node** %next13, align 8
  store %struct.Node* %21, %struct.Node** %othern, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load %struct.Node*, %struct.Node** %n, align 8
  %23 = load %struct.Node*, %struct.Node** %othern, align 8
  %i_key14 = getelementptr inbounds %struct.Node, %struct.Node* %23, i32 0, i32 1
  %nk15 = bitcast %union.TKey* %i_key14 to %struct.anon.0*
  %next16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk15, i32 0, i32 2
  store %struct.Node* %22, %struct.Node** %next16, align 8
  %24 = load %struct.Node*, %struct.Node** %n, align 8
  %25 = load %struct.Node*, %struct.Node** %mp, align 8
  %26 = bitcast %struct.Node* %24 to i8*
  %27 = bitcast %struct.Node* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 40, i32 8, i1 false)
  %28 = load %struct.Node*, %struct.Node** %mp, align 8
  %i_key17 = getelementptr inbounds %struct.Node, %struct.Node* %28, i32 0, i32 1
  %nk18 = bitcast %union.TKey* %i_key17 to %struct.anon.0*
  %next19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk18, i32 0, i32 2
  store %struct.Node* null, %struct.Node** %next19, align 8
  %29 = load %struct.Node*, %struct.Node** %mp, align 8
  %i_val20 = getelementptr inbounds %struct.Node, %struct.Node* %29, i32 0, i32 0
  %tt21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val20, i32 0, i32 1
  store i32 0, i32* %tt21, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %30 = load %struct.Node*, %struct.Node** %mp, align 8
  %i_key22 = getelementptr inbounds %struct.Node, %struct.Node* %30, i32 0, i32 1
  %nk23 = bitcast %union.TKey* %i_key22 to %struct.anon.0*
  %next24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk23, i32 0, i32 2
  %31 = load %struct.Node*, %struct.Node** %next24, align 8
  %32 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key25 = getelementptr inbounds %struct.Node, %struct.Node* %32, i32 0, i32 1
  %nk26 = bitcast %union.TKey* %i_key25 to %struct.anon.0*
  %next27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk26, i32 0, i32 2
  store %struct.Node* %31, %struct.Node** %next27, align 8
  %33 = load %struct.Node*, %struct.Node** %n, align 8
  %34 = load %struct.Node*, %struct.Node** %mp, align 8
  %i_key28 = getelementptr inbounds %struct.Node, %struct.Node* %34, i32 0, i32 1
  %nk29 = bitcast %union.TKey* %i_key28 to %struct.anon.0*
  %next30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk29, i32 0, i32 2
  store %struct.Node* %33, %struct.Node** %next30, align 8
  %35 = load %struct.Node*, %struct.Node** %n, align 8
  store %struct.Node* %35, %struct.Node** %mp, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %while.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %lor.lhs.false
  %36 = load %struct.Node*, %struct.Node** %mp, align 8
  %i_key33 = getelementptr inbounds %struct.Node, %struct.Node* %36, i32 0, i32 1
  %nk34 = bitcast %union.TKey* %i_key33 to %struct.anon.0*
  %value = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk34, i32 0, i32 0
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 0
  %38 = bitcast %union.Value* %value to i8*
  %39 = bitcast %union.Value* %value35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 8, i32 8, i1 false)
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %tt36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i32 0, i32 1
  %41 = load i32, i32* %tt36, align 4
  %42 = load %struct.Node*, %struct.Node** %mp, align 8
  %i_key37 = getelementptr inbounds %struct.Node, %struct.Node* %42, i32 0, i32 1
  %nk38 = bitcast %union.TKey* %i_key37 to %struct.anon.0*
  %tt39 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk38, i32 0, i32 1
  store i32 %41, i32* %tt39, align 4
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %tt40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 1
  %44 = load i32, i32* %tt40, align 4
  %cmp41 = icmp sge i32 %44, 4
  br i1 %cmp41, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.32
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 0
  %gc = bitcast %union.Value* %value42 to %union.GCObject**
  %46 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %gch = bitcast %union.GCObject* %46 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %47 = load i8, i8* %marked, align 1
  %conv = zext i8 %47 to i32
  %and = and i32 %conv, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true.43, label %if.end.50

land.lhs.true.43:                                 ; preds = %land.lhs.true
  %48 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %49 = bitcast %struct.Table* %48 to %union.GCObject*
  %gch44 = bitcast %union.GCObject* %49 to %struct.GCheader*
  %marked45 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch44, i32 0, i32 2
  %50 = load i8, i8* %marked45, align 1
  %conv46 = zext i8 %50 to i32
  %and47 = and i32 %conv46, 4
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.43
  %51 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %52 = load %struct.Table*, %struct.Table** %t.addr, align 8
  call void @luaC_barrierback(%struct.lua_State* %51, %struct.Table* %52)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %land.lhs.true.43, %land.lhs.true, %if.end.32
  %53 = load %struct.Node*, %struct.Node** %mp, align 8
  %i_val51 = getelementptr inbounds %struct.Node, %struct.Node* %53, i32 0, i32 0
  store %struct.lua_TValue* %i_val51, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.4
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %54
}

; Function Attrs: nounwind uwtable
define hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %L, %struct.Table* %t, i32 %key) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %key.addr = alloca i32, align 4
  %p = alloca %struct.lua_TValue*, align 8
  %k = alloca %struct.lua_TValue, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  %0 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %1 = load i32, i32* %key.addr, align 4
  %call = call %struct.lua_TValue* @luaH_getnum(%struct.Table* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %p, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %cmp = icmp ne %struct.lua_TValue* %2, @luaO_nilobject_
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.lua_TValue* %k, %struct.lua_TValue** %i_o, align 8
  %4 = load i32, i32* %key.addr, align 4
  %conv = sitofp i32 %4 to double
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  store double %conv, double* %n, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 1
  store i32 3, i32* %tt, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %call1 = call %struct.lua_TValue* @newkey(%struct.lua_State* %7, %struct.Table* %8, %struct.lua_TValue* %k)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %9
}

; Function Attrs: nounwind uwtable
define hidden %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %L, %struct.Table* %t, %union.TString* %key) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %key.addr = alloca %union.TString*, align 8
  %p = alloca %struct.lua_TValue*, align 8
  %k = alloca %struct.lua_TValue, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store %union.TString* %key, %union.TString** %key.addr, align 8
  %0 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %1 = load %union.TString*, %union.TString** %key.addr, align 8
  %call = call %struct.lua_TValue* @luaH_getstr(%struct.Table* %0, %union.TString* %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %p, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %cmp = icmp ne %struct.lua_TValue* %2, @luaO_nilobject_
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.lua_TValue* %k, %struct.lua_TValue** %i_o, align 8
  %4 = load %union.TString*, %union.TString** %key.addr, align 8
  %5 = bitcast %union.TString* %4 to %union.GCObject*
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %5, %union.GCObject** %gc, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 1
  store i32 4, i32* %tt, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %call1 = call %struct.lua_TValue* @newkey(%struct.lua_State* %8, %struct.Table* %9, %struct.lua_TValue* %k)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %10
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaH_getn(%struct.Table* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.Table*, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  %0 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 10
  %1 = load i32, i32* %sizearray, align 4
  store i32 %1, i32* %j, align 4
  %2 = load i32, i32* %j, align 4
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %j, align 4
  %sub = sub i32 %3, 1
  %idxprom = zext i32 %sub to i64
  %4 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array = getelementptr inbounds %struct.Table, %struct.Table* %4, i32 0, i32 6
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %array, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 %idxprom
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 1
  %6 = load i32, i32* %tt, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.else.11

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %i, align 4
  %sub2 = sub i32 %7, %8
  %cmp3 = icmp ugt i32 %sub2, 1
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %add = add i32 %9, %10
  %div = udiv i32 %add, 2
  store i32 %div, i32* %m, align 4
  %11 = load i32, i32* %m, align 4
  %sub4 = sub i32 %11, 1
  %idxprom5 = zext i32 %sub4 to i64
  %12 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array6 = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 6
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %array6, align 8
  %arrayidx7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 %idxprom5
  %tt8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx7, i32 0, i32 1
  %14 = load i32, i32* %tt8, align 4
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %while.body
  %15 = load i32, i32* %m, align 4
  store i32 %15, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %16 = load i32, i32* %m, align 4
  store i32 %16, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %retval
  br label %return

if.else.11:                                       ; preds = %land.lhs.true, %entry
  %18 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 7
  %19 = load %struct.Node*, %struct.Node** %node, align 8
  %cmp12 = icmp eq %struct.Node* %19, @dummynode_
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.11
  %20 = load i32, i32* %j, align 4
  store i32 %20, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.11
  %21 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %22 = load i32, i32* %j, align 4
  %call = call i32 @unbound_search(%struct.Table* %21, i32 %22)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.13, %while.end
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @unbound_search(%struct.Table* %t, i32 %j) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.Table*, align 8
  %j.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %j.addr, align 4
  store i32 %0, i32* %i, align 4
  %1 = load i32, i32* %j.addr, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %j.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %3 = load i32, i32* %j.addr, align 4
  %call = call %struct.lua_TValue* @luaH_getnum(%struct.Table* %2, i32 %3)
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %call, i32 0, i32 1
  %4 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %4, 0
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %while.body, label %while.end.9

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %j.addr, align 4
  store i32 %5, i32* %i, align 4
  %6 = load i32, i32* %j.addr, align 4
  %mul = mul i32 %6, 2
  store i32 %mul, i32* %j.addr, align 4
  %7 = load i32, i32* %j.addr, align 4
  %cmp1 = icmp ugt i32 %7, 2147483645
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %i, align 4
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.7, %if.then
  %8 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call3 = call %struct.lua_TValue* @luaH_getnum(%struct.Table* %8, i32 %9)
  %tt4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %call3, i32 0, i32 1
  %10 = load i32, i32* %tt4, align 4
  %cmp5 = icmp eq i32 %10, 0
  %lnot6 = xor i1 %cmp5, true
  br i1 %lnot6, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.2
  %11 = load i32, i32* %i, align 4
  %inc8 = add i32 %11, 1
  store i32 %inc8, i32* %i, align 4
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  %12 = load i32, i32* %i, align 4
  %sub = sub i32 %12, 1
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end.9:                                      ; preds = %while.cond
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end.18, %while.end.9
  %13 = load i32, i32* %j.addr, align 4
  %14 = load i32, i32* %i, align 4
  %sub11 = sub i32 %13, %14
  %cmp12 = icmp ugt i32 %sub11, 1
  br i1 %cmp12, label %while.body.13, label %while.end.19

while.body.13:                                    ; preds = %while.cond.10
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j.addr, align 4
  %add = add i32 %15, %16
  %div = udiv i32 %add, 2
  store i32 %div, i32* %m, align 4
  %17 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %18 = load i32, i32* %m, align 4
  %call14 = call %struct.lua_TValue* @luaH_getnum(%struct.Table* %17, i32 %18)
  %tt15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %call14, i32 0, i32 1
  %19 = load i32, i32* %tt15, align 4
  %cmp16 = icmp eq i32 %19, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %while.body.13
  %20 = load i32, i32* %m, align 4
  store i32 %20, i32* %j.addr, align 4
  br label %if.end.18

if.else:                                          ; preds = %while.body.13
  %21 = load i32, i32* %m, align 4
  store i32 %21, i32* %i, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %while.cond.10

while.end.19:                                     ; preds = %while.cond.10
  %22 = load i32, i32* %i, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %while.end.19, %while.end
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @arrayindex(%struct.lua_TValue* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct.lua_TValue*, align 8
  %n = alloca double, align 8
  %k = alloca i32, align 4
  store %struct.lua_TValue* %key, %struct.lua_TValue** %key.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 0
  %n1 = bitcast %union.Value* %value to double*
  %3 = load double, double* %n1, align 8
  store double %3, double* %n, align 8
  %4 = load double, double* %n, align 8
  %conv = fptosi double %4 to i32
  store i32 %conv, i32* %k, align 4
  %5 = load i32, i32* %k, align 4
  %conv2 = sitofp i32 %5 to double
  %6 = load double, double* %n, align 8
  %cmp3 = fcmp oeq double %conv2, %6
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %7 = load i32, i32* %k, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare hidden i8* @luaM_toobig(%struct.lua_State*) #2

declare hidden i32 @luaO_log2(i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.Node* @getfreepos(%struct.Table* %t) #0 {
entry:
  %retval = alloca %struct.Node*, align 8
  %t.addr = alloca %struct.Table*, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lastfree = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 8
  %1 = load %struct.Node*, %struct.Node** %lastfree, align 8
  %incdec.ptr = getelementptr inbounds %struct.Node, %struct.Node* %1, i32 -1
  store %struct.Node* %incdec.ptr, %struct.Node** %lastfree, align 8
  %2 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %2, i32 0, i32 7
  %3 = load %struct.Node*, %struct.Node** %node, align 8
  %cmp = icmp ugt %struct.Node* %1, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lastfree1 = getelementptr inbounds %struct.Table, %struct.Table* %4, i32 0, i32 8
  %5 = load %struct.Node*, %struct.Node** %lastfree1, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 1
  %nk = bitcast %union.TKey* %i_key to %struct.anon.0*
  %tt = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk, i32 0, i32 1
  %6 = load i32, i32* %tt, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lastfree3 = getelementptr inbounds %struct.Table, %struct.Table* %7, i32 0, i32 8
  %8 = load %struct.Node*, %struct.Node** %lastfree3, align 8
  store %struct.Node* %8, %struct.Node** %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.Node* null, %struct.Node** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load %struct.Node*, %struct.Node** %retval
  ret %struct.Node* %9
}

; Function Attrs: nounwind uwtable
define internal void @rehash(%struct.lua_State* %L, %struct.Table* %t, %struct.lua_TValue* %ek) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %ek.addr = alloca %struct.lua_TValue*, align 8
  %nasize = alloca i32, align 4
  %na = alloca i32, align 4
  %nums = alloca [27 x i32], align 16
  %i = alloca i32, align 4
  %totaluse = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store %struct.lua_TValue* %ek, %struct.lua_TValue** %ek.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [27 x i32], [27 x i32]* %nums, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %arraydecay = getelementptr inbounds [27 x i32], [27 x i32]* %nums, i32 0, i32 0
  %call = call i32 @numusearray(%struct.Table* %3, i32* %arraydecay)
  store i32 %call, i32* %nasize, align 4
  %4 = load i32, i32* %nasize, align 4
  store i32 %4, i32* %totaluse, align 4
  %5 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %arraydecay1 = getelementptr inbounds [27 x i32], [27 x i32]* %nums, i32 0, i32 0
  %call2 = call i32 @numusehash(%struct.Table* %5, i32* %arraydecay1, i32* %nasize)
  %6 = load i32, i32* %totaluse, align 4
  %add = add nsw i32 %6, %call2
  store i32 %add, i32* %totaluse, align 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %ek.addr, align 8
  %arraydecay3 = getelementptr inbounds [27 x i32], [27 x i32]* %nums, i32 0, i32 0
  %call4 = call i32 @countint(%struct.lua_TValue* %7, i32* %arraydecay3)
  %8 = load i32, i32* %nasize, align 4
  %add5 = add nsw i32 %8, %call4
  store i32 %add5, i32* %nasize, align 4
  %9 = load i32, i32* %totaluse, align 4
  %inc6 = add nsw i32 %9, 1
  store i32 %inc6, i32* %totaluse, align 4
  %arraydecay7 = getelementptr inbounds [27 x i32], [27 x i32]* %nums, i32 0, i32 0
  %call8 = call i32 @computesizes(i32* %arraydecay7, i32* %nasize)
  store i32 %call8, i32* %na, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %12 = load i32, i32* %nasize, align 4
  %13 = load i32, i32* %totaluse, align 4
  %14 = load i32, i32* %na, align 4
  %sub = sub nsw i32 %13, %14
  call void @resize(%struct.lua_State* %10, %struct.Table* %11, i32 %12, i32 %sub)
  ret void
}

declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) #2

; Function Attrs: nounwind uwtable
define internal i32 @numusearray(%struct.Table* %t, i32* %nums) #0 {
entry:
  %t.addr = alloca %struct.Table*, align 8
  %nums.addr = alloca i32*, align 8
  %lg = alloca i32, align 4
  %ttlg = alloca i32, align 4
  %ause = alloca i32, align 4
  %i = alloca i32, align 4
  %lc = alloca i32, align 4
  %lim = alloca i32, align 4
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store i32* %nums, i32** %nums.addr, align 8
  store i32 0, i32* %ause, align 4
  store i32 1, i32* %i, align 4
  store i32 0, i32* %lg, align 4
  store i32 1, i32* %ttlg, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i32, i32* %lg, align 4
  %cmp = icmp sle i32 %0, 26
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %lc, align 4
  %1 = load i32, i32* %ttlg, align 4
  store i32 %1, i32* %lim, align 4
  %2 = load i32, i32* %lim, align 4
  %3 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %3, i32 0, i32 10
  %4 = load i32, i32* %sizearray, align 4
  %cmp1 = icmp sgt i32 %2, %4
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %5 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %sizearray2 = getelementptr inbounds %struct.Table, %struct.Table* %5, i32 0, i32 10
  %6 = load i32, i32* %sizearray2, align 4
  store i32 %6, i32* %lim, align 4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %lim, align 4
  %cmp3 = icmp sgt i32 %7, %8
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  br label %for.end.18

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %for.body
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.end.5
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %lim, align 4
  %cmp7 = icmp sle i32 %9, %10
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %12 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %array = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 6
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %array, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 %idxprom
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 1
  %14 = load i32, i32* %tt, align 4
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %for.body.8
  %15 = load i32, i32* %lc, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %lc, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %16 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %17 = load i32, i32* %lc, align 4
  %18 = load i32, i32* %lg, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load i32*, i32** %nums.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %19, i64 %idxprom13
  %20 = load i32, i32* %arrayidx14, align 4
  %add = add nsw i32 %20, %17
  store i32 %add, i32* %arrayidx14, align 4
  %21 = load i32, i32* %lc, align 4
  %22 = load i32, i32* %ause, align 4
  %add15 = add nsw i32 %22, %21
  store i32 %add15, i32* %ause, align 4
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %23 = load i32, i32* %lg, align 4
  %inc17 = add nsw i32 %23, 1
  store i32 %inc17, i32* %lg, align 4
  %24 = load i32, i32* %ttlg, align 4
  %mul = mul nsw i32 %24, 2
  store i32 %mul, i32* %ttlg, align 4
  br label %for.cond

for.end.18:                                       ; preds = %if.then.4, %for.cond
  %25 = load i32, i32* %ause, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @numusehash(%struct.Table* %t, i32* %nums, i32* %pnasize) #0 {
entry:
  %t.addr = alloca %struct.Table*, align 8
  %nums.addr = alloca i32*, align 8
  %pnasize.addr = alloca i32*, align 8
  %totaluse = alloca i32, align 4
  %ause = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca %struct.Node*, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  store i32* %nums, i32** %nums.addr, align 8
  store i32* %pnasize, i32** %pnasize.addr, align 8
  store i32 0, i32* %totaluse, align 4
  store i32 0, i32* %ause, align 4
  %0 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 4
  %1 = load i8, i8* %lsizenode, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 1, %conv
  store i32 %shl, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %4, i32 0, i32 7
  %5 = load %struct.Node*, %struct.Node** %node, align 8
  %arrayidx = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 %idxprom
  store %struct.Node* %arrayidx, %struct.Node** %n, align 8
  %6 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val = getelementptr inbounds %struct.Node, %struct.Node* %6, i32 0, i32 0
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val, i32 0, i32 1
  %7 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %8 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 1
  %tvk = bitcast %union.TKey* %i_key to %struct.lua_TValue*
  %9 = load i32*, i32** %nums.addr, align 8
  %call = call i32 @countint(%struct.lua_TValue* %tvk, i32* %9)
  %10 = load i32, i32* %ause, align 4
  %add = add nsw i32 %10, %call
  store i32 %add, i32* %ause, align 4
  %11 = load i32, i32* %totaluse, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %totaluse, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %ause, align 4
  %13 = load i32*, i32** %pnasize.addr, align 8
  %14 = load i32, i32* %13, align 4
  %add2 = add nsw i32 %14, %12
  store i32 %add2, i32* %13, align 4
  %15 = load i32, i32* %totaluse, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @countint(%struct.lua_TValue* %key, i32* %nums) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct.lua_TValue*, align 8
  %nums.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  store %struct.lua_TValue* %key, %struct.lua_TValue** %key.addr, align 8
  store i32* %nums, i32** %nums.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %key.addr, align 8
  %call = call i32 @arrayindex(%struct.lua_TValue* %0)
  store i32 %call, i32* %k, align 4
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %k, align 4
  %cmp1 = icmp sle i32 %2, 67108864
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %3, 1
  %call2 = call i32 @luaO_log2(i32 %sub)
  %add = add nsw i32 %call2, 1
  %idxprom = sext i32 %add to i64
  %4 = load i32*, i32** %nums.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %arrayidx, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @computesizes(i32* %nums, i32* %narray) #0 {
entry:
  %nums.addr = alloca i32*, align 8
  %narray.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %twotoi = alloca i32, align 4
  %a = alloca i32, align 4
  %na = alloca i32, align 4
  %n = alloca i32, align 4
  store i32* %nums, i32** %nums.addr, align 8
  store i32* %narray, i32** %narray.addr, align 8
  store i32 0, i32* %a, align 4
  store i32 0, i32* %na, align 4
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  store i32 1, i32* %twotoi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %twotoi, align 4
  %div = sdiv i32 %0, 2
  %1 = load i32*, i32** %narray.addr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp slt i32 %div, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %nums.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %nums.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %9 = load i32, i32* %a, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %a, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %twotoi, align 4
  %div4 = sdiv i32 %11, 2
  %cmp5 = icmp sgt i32 %10, %div4
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %12 = load i32, i32* %twotoi, align 4
  store i32 %12, i32* %n, align 4
  %13 = load i32, i32* %a, align 4
  store i32 %13, i32* %na, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.body
  %14 = load i32, i32* %a, align 4
  %15 = load i32*, i32** %narray.addr, align 8
  %16 = load i32, i32* %15, align 4
  %cmp8 = icmp eq i32 %14, %16
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  br label %for.end

if.end.10:                                        ; preds = %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  %18 = load i32, i32* %twotoi, align 4
  %mul = mul nsw i32 %18, 2
  store i32 %mul, i32* %twotoi, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %19 = load i32, i32* %n, align 4
  %20 = load i32*, i32** %narray.addr, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %na, align 4
  ret i32 %21
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
