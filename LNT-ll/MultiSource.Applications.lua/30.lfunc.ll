; ModuleID = './MultiSource.Applications.lua/30.lfunc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, {}*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%struct.lua_longjmp = type opaque
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, %struct.Node* }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%struct.anon.0 = type { %struct.UpVal*, %struct.UpVal* }

; Function Attrs: nounwind uwtable
define hidden %union.Closure* @luaF_newCclosure(%struct.lua_State* %L, i32 %nelems, %struct.Table* %e) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %nelems.addr = alloca i32, align 4
  %e.addr = alloca %struct.Table*, align 8
  %c = alloca %union.Closure*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %nelems, i32* %nelems.addr, align 4
  store %struct.Table* %e, %struct.Table** %e.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %nelems.addr, align 4
  %sub = sub nsw i32 %1, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 16, %conv
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 56, %conv1
  %conv2 = sext i32 %add to i64
  %call = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %conv2)
  %2 = bitcast i8* %call to %union.Closure*
  store %union.Closure* %2, %union.Closure** %c, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %union.Closure*, %union.Closure** %c, align 8
  %5 = bitcast %union.Closure* %4 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* %3, %union.GCObject* %5, i8 zeroext 6)
  %6 = load %union.Closure*, %union.Closure** %c, align 8
  %c3 = bitcast %union.Closure* %6 to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c3, i32 0, i32 3
  store i8 1, i8* %isC, align 1
  %7 = load %struct.Table*, %struct.Table** %e.addr, align 8
  %8 = load %union.Closure*, %union.Closure** %c, align 8
  %c4 = bitcast %union.Closure* %8 to %struct.CClosure*
  %env = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c4, i32 0, i32 6
  store %struct.Table* %7, %struct.Table** %env, align 8
  %9 = load i32, i32* %nelems.addr, align 4
  %conv5 = trunc i32 %9 to i8
  %10 = load %union.Closure*, %union.Closure** %c, align 8
  %c6 = bitcast %union.Closure* %10 to %struct.CClosure*
  %nupvalues = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c6, i32 0, i32 4
  store i8 %conv5, i8* %nupvalues, align 1
  %11 = load %union.Closure*, %union.Closure** %c, align 8
  ret %union.Closure* %11
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

declare hidden void @luaC_link(%struct.lua_State*, %union.GCObject*, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define hidden %union.Closure* @luaF_newLclosure(%struct.lua_State* %L, i32 %nelems, %struct.Table* %e) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %nelems.addr = alloca i32, align 4
  %e.addr = alloca %struct.Table*, align 8
  %c = alloca %union.Closure*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %nelems, i32* %nelems.addr, align 4
  store %struct.Table* %e, %struct.Table** %e.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %nelems.addr, align 4
  %sub = sub nsw i32 %1, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 8, %conv
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 48, %conv1
  %conv2 = sext i32 %add to i64
  %call = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %conv2)
  %2 = bitcast i8* %call to %union.Closure*
  store %union.Closure* %2, %union.Closure** %c, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %union.Closure*, %union.Closure** %c, align 8
  %5 = bitcast %union.Closure* %4 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* %3, %union.GCObject* %5, i8 zeroext 6)
  %6 = load %union.Closure*, %union.Closure** %c, align 8
  %l = bitcast %union.Closure* %6 to %struct.LClosure*
  %isC = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 3
  store i8 0, i8* %isC, align 1
  %7 = load %struct.Table*, %struct.Table** %e.addr, align 8
  %8 = load %union.Closure*, %union.Closure** %c, align 8
  %l3 = bitcast %union.Closure* %8 to %struct.LClosure*
  %env = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l3, i32 0, i32 6
  store %struct.Table* %7, %struct.Table** %env, align 8
  %9 = load i32, i32* %nelems.addr, align 4
  %conv4 = trunc i32 %9 to i8
  %10 = load %union.Closure*, %union.Closure** %c, align 8
  %l5 = bitcast %union.Closure* %10 to %struct.LClosure*
  %nupvalues = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l5, i32 0, i32 4
  store i8 %conv4, i8* %nupvalues, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %11 = load i32, i32* %nelems.addr, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %nelems.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %nelems.addr, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %union.Closure*, %union.Closure** %c, align 8
  %l6 = bitcast %union.Closure* %13 to %struct.LClosure*
  %upvals = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l6, i32 0, i32 8
  %arrayidx = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %upvals, i32 0, i64 %idxprom
  store %struct.UpVal* null, %struct.UpVal** %arrayidx, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %union.Closure*, %union.Closure** %c, align 8
  ret %union.Closure* %14
}

; Function Attrs: nounwind uwtable
define hidden %struct.UpVal* @luaF_newupval(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %uv = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 40)
  %1 = bitcast i8* %call to %struct.UpVal*
  store %struct.UpVal* %1, %struct.UpVal** %uv, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %4 = bitcast %struct.UpVal* %3 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* %2, %union.GCObject* %4, i8 zeroext 10)
  %5 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %u = getelementptr inbounds %struct.UpVal, %struct.UpVal* %5, i32 0, i32 4
  %value = bitcast %union.anon* %u to %struct.lua_TValue*
  %6 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %v = getelementptr inbounds %struct.UpVal, %struct.UpVal* %6, i32 0, i32 3
  store %struct.lua_TValue* %value, %struct.lua_TValue** %v, align 8
  %7 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %v1 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %7, i32 0, i32 3
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %v1, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  %9 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  ret %struct.UpVal* %9
}

; Function Attrs: nounwind uwtable
define hidden %struct.UpVal* @luaF_findupval(%struct.lua_State* %L, %struct.lua_TValue* %level) #0 {
entry:
  %retval = alloca %struct.UpVal*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %level.addr = alloca %struct.lua_TValue*, align 8
  %g = alloca %struct.global_State*, align 8
  %pp = alloca %union.GCObject**, align 8
  %p = alloca %struct.UpVal*, align 8
  %uv = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %level, %struct.lua_TValue** %level.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %openupval = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 24
  store %union.GCObject** %openupval, %union.GCObject*** %pp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %3 = load %union.GCObject**, %union.GCObject*** %pp, align 8
  %4 = load %union.GCObject*, %union.GCObject** %3, align 8
  %cmp = icmp ne %union.GCObject* %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %union.GCObject**, %union.GCObject*** %pp, align 8
  %6 = load %union.GCObject*, %union.GCObject** %5, align 8
  %uv1 = bitcast %union.GCObject* %6 to %struct.UpVal*
  store %struct.UpVal* %uv1, %struct.UpVal** %p, align 8
  %v = getelementptr inbounds %struct.UpVal, %struct.UpVal* %uv1, i32 0, i32 3
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %v, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %level.addr, align 8
  %cmp2 = icmp uge %struct.lua_TValue* %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.UpVal*, %struct.UpVal** %p, align 8
  %v3 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %10, i32 0, i32 3
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %v3, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %level.addr, align 8
  %cmp4 = icmp eq %struct.lua_TValue* %11, %12
  br i1 %cmp4, label %if.then, label %if.end.13

if.then:                                          ; preds = %while.body
  %13 = load %struct.UpVal*, %struct.UpVal** %p, align 8
  %14 = bitcast %struct.UpVal* %13 to %union.GCObject*
  %gch = bitcast %union.GCObject* %14 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %15 = load i8, i8* %marked, align 1
  %conv = zext i8 %15 to i32
  %16 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 3
  %17 = load i8, i8* %currentwhite, align 1
  %conv5 = zext i8 %17 to i32
  %xor = xor i32 %conv5, 3
  %and = and i32 %conv, %xor
  %and6 = and i32 %and, 3
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %18 = load %struct.UpVal*, %struct.UpVal** %p, align 8
  %19 = bitcast %struct.UpVal* %18 to %union.GCObject*
  %gch8 = bitcast %union.GCObject* %19 to %struct.GCheader*
  %marked9 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch8, i32 0, i32 2
  %20 = load i8, i8* %marked9, align 1
  %conv10 = zext i8 %20 to i32
  %xor11 = xor i32 %conv10, 3
  %conv12 = trunc i32 %xor11 to i8
  store i8 %conv12, i8* %marked9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %21 = load %struct.UpVal*, %struct.UpVal** %p, align 8
  store %struct.UpVal* %21, %struct.UpVal** %retval
  br label %return

if.end.13:                                        ; preds = %while.body
  %22 = load %struct.UpVal*, %struct.UpVal** %p, align 8
  %next = getelementptr inbounds %struct.UpVal, %struct.UpVal* %22, i32 0, i32 0
  store %union.GCObject** %next, %union.GCObject*** %pp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaM_realloc_(%struct.lua_State* %23, i8* null, i64 0, i64 40)
  %24 = bitcast i8* %call to %struct.UpVal*
  store %struct.UpVal* %24, %struct.UpVal** %uv, align 8
  %25 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %tt = getelementptr inbounds %struct.UpVal, %struct.UpVal* %25, i32 0, i32 1
  store i8 10, i8* %tt, align 1
  %26 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite14 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 3
  %27 = load i8, i8* %currentwhite14, align 1
  %conv15 = zext i8 %27 to i32
  %and16 = and i32 %conv15, 3
  %conv17 = trunc i32 %and16 to i8
  %28 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %marked18 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %28, i32 0, i32 2
  store i8 %conv17, i8* %marked18, align 1
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %level.addr, align 8
  %30 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %v19 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %30, i32 0, i32 3
  store %struct.lua_TValue* %29, %struct.lua_TValue** %v19, align 8
  %31 = load %union.GCObject**, %union.GCObject*** %pp, align 8
  %32 = load %union.GCObject*, %union.GCObject** %31, align 8
  %33 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %next20 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %33, i32 0, i32 0
  store %union.GCObject* %32, %union.GCObject** %next20, align 8
  %34 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %35 = bitcast %struct.UpVal* %34 to %union.GCObject*
  %36 = load %union.GCObject**, %union.GCObject*** %pp, align 8
  store %union.GCObject* %35, %union.GCObject** %36, align 8
  %37 = load %struct.global_State*, %struct.global_State** %g, align 8
  %uvhead = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 22
  %38 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %u = getelementptr inbounds %struct.UpVal, %struct.UpVal* %38, i32 0, i32 4
  %l = bitcast %union.anon* %u to %struct.anon.0*
  %prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l, i32 0, i32 0
  store %struct.UpVal* %uvhead, %struct.UpVal** %prev, align 8
  %39 = load %struct.global_State*, %struct.global_State** %g, align 8
  %uvhead21 = getelementptr inbounds %struct.global_State, %struct.global_State* %39, i32 0, i32 22
  %u22 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %uvhead21, i32 0, i32 4
  %l23 = bitcast %union.anon* %u22 to %struct.anon.0*
  %next24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l23, i32 0, i32 1
  %40 = load %struct.UpVal*, %struct.UpVal** %next24, align 8
  %41 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %u25 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %41, i32 0, i32 4
  %l26 = bitcast %union.anon* %u25 to %struct.anon.0*
  %next27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l26, i32 0, i32 1
  store %struct.UpVal* %40, %struct.UpVal** %next27, align 8
  %42 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %43 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %u28 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %43, i32 0, i32 4
  %l29 = bitcast %union.anon* %u28 to %struct.anon.0*
  %next30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l29, i32 0, i32 1
  %44 = load %struct.UpVal*, %struct.UpVal** %next30, align 8
  %u31 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %44, i32 0, i32 4
  %l32 = bitcast %union.anon* %u31 to %struct.anon.0*
  %prev33 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l32, i32 0, i32 0
  store %struct.UpVal* %42, %struct.UpVal** %prev33, align 8
  %45 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %46 = load %struct.global_State*, %struct.global_State** %g, align 8
  %uvhead34 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 22
  %u35 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %uvhead34, i32 0, i32 4
  %l36 = bitcast %union.anon* %u35 to %struct.anon.0*
  %next37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l36, i32 0, i32 1
  store %struct.UpVal* %45, %struct.UpVal** %next37, align 8
  %47 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  store %struct.UpVal* %47, %struct.UpVal** %retval
  br label %return

return:                                           ; preds = %while.end, %if.end
  %48 = load %struct.UpVal*, %struct.UpVal** %retval
  ret %struct.UpVal* %48
}

; Function Attrs: nounwind uwtable
define hidden void @luaF_freeupval(%struct.lua_State* %L, %struct.UpVal* %uv) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %uv.addr = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.UpVal* %uv, %struct.UpVal** %uv.addr, align 8
  %0 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %v = getelementptr inbounds %struct.UpVal, %struct.UpVal* %0, i32 0, i32 3
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %v, align 8
  %2 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %u = getelementptr inbounds %struct.UpVal, %struct.UpVal* %2, i32 0, i32 4
  %value = bitcast %union.anon* %u to %struct.lua_TValue*
  %cmp = icmp ne %struct.lua_TValue* %1, %value
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  call void @unlinkupval(%struct.UpVal* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %6 = bitcast %struct.UpVal* %5 to i8*
  %call = call i8* @luaM_realloc_(%struct.lua_State* %4, i8* %6, i64 40, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unlinkupval(%struct.UpVal* %uv) #0 {
entry:
  %uv.addr = alloca %struct.UpVal*, align 8
  store %struct.UpVal* %uv, %struct.UpVal** %uv.addr, align 8
  %0 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %u = getelementptr inbounds %struct.UpVal, %struct.UpVal* %0, i32 0, i32 4
  %l = bitcast %union.anon* %u to %struct.anon.0*
  %prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l, i32 0, i32 0
  %1 = load %struct.UpVal*, %struct.UpVal** %prev, align 8
  %2 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %u1 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %2, i32 0, i32 4
  %l2 = bitcast %union.anon* %u1 to %struct.anon.0*
  %next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l2, i32 0, i32 1
  %3 = load %struct.UpVal*, %struct.UpVal** %next, align 8
  %u3 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %3, i32 0, i32 4
  %l4 = bitcast %union.anon* %u3 to %struct.anon.0*
  %prev5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l4, i32 0, i32 0
  store %struct.UpVal* %1, %struct.UpVal** %prev5, align 8
  %4 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %u6 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %4, i32 0, i32 4
  %l7 = bitcast %union.anon* %u6 to %struct.anon.0*
  %next8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l7, i32 0, i32 1
  %5 = load %struct.UpVal*, %struct.UpVal** %next8, align 8
  %6 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %u9 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %6, i32 0, i32 4
  %l10 = bitcast %union.anon* %u9 to %struct.anon.0*
  %prev11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l10, i32 0, i32 0
  %7 = load %struct.UpVal*, %struct.UpVal** %prev11, align 8
  %u12 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %7, i32 0, i32 4
  %l13 = bitcast %union.anon* %u12 to %struct.anon.0*
  %next14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l13, i32 0, i32 1
  store %struct.UpVal* %5, %struct.UpVal** %next14, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaF_close(%struct.lua_State* %L, %struct.lua_TValue* %level) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %level.addr = alloca %struct.lua_TValue*, align 8
  %uv = alloca %struct.UpVal*, align 8
  %g = alloca %struct.global_State*, align 8
  %o = alloca %union.GCObject*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %level, %struct.lua_TValue** %level.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %openupval = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 24
  %3 = load %union.GCObject*, %union.GCObject** %openupval, align 8
  %cmp = icmp ne %union.GCObject* %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %openupval1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 24
  %5 = load %union.GCObject*, %union.GCObject** %openupval1, align 8
  %uv2 = bitcast %union.GCObject* %5 to %struct.UpVal*
  store %struct.UpVal* %uv2, %struct.UpVal** %uv, align 8
  %v = getelementptr inbounds %struct.UpVal, %struct.UpVal* %uv2, i32 0, i32 3
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %v, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %level.addr, align 8
  %cmp3 = icmp uge %struct.lua_TValue* %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %10 = bitcast %struct.UpVal* %9 to %union.GCObject*
  store %union.GCObject* %10, %union.GCObject** %o, align 8
  %11 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %next = getelementptr inbounds %struct.UpVal, %struct.UpVal* %11, i32 0, i32 0
  %12 = load %union.GCObject*, %union.GCObject** %next, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %openupval4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 24
  store %union.GCObject* %12, %union.GCObject** %openupval4, align 8
  %14 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch = bitcast %union.GCObject* %14 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %15 = load i8, i8* %marked, align 1
  %conv = zext i8 %15 to i32
  %16 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 3
  %17 = load i8, i8* %currentwhite, align 1
  %conv5 = zext i8 %17 to i32
  %xor = xor i32 %conv5, 3
  %and = and i32 %conv, %xor
  %and6 = and i32 %and, 3
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  call void @luaF_freeupval(%struct.lua_State* %18, %struct.UpVal* %19)
  br label %if.end

if.else:                                          ; preds = %while.body
  %20 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  call void @unlinkupval(%struct.UpVal* %20)
  %21 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %v7 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i32 0, i32 3
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %v7, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %o2, align 8
  %23 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %u = getelementptr inbounds %struct.UpVal, %struct.UpVal* %23, i32 0, i32 4
  %value = bitcast %union.anon* %u to %struct.lua_TValue*
  store %struct.lua_TValue* %value, %struct.lua_TValue** %o1, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 0
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %26 = bitcast %union.Value* %value8 to i8*
  %27 = bitcast %union.Value* %value9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false)
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  %29 = load i32, i32* %tt, align 4
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 1
  store i32 %29, i32* %tt10, align 4
  %31 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %u11 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %31, i32 0, i32 4
  %value12 = bitcast %union.anon* %u11 to %struct.lua_TValue*
  %32 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %v13 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %32, i32 0, i32 3
  store %struct.lua_TValue* %value12, %struct.lua_TValue** %v13, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %34 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  call void @luaC_linkupval(%struct.lua_State* %33, %struct.UpVal* %34)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare hidden void @luaC_linkupval(%struct.lua_State*, %struct.UpVal*) #1

; Function Attrs: nounwind uwtable
define hidden %struct.Proto* @luaF_newproto(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f = alloca %struct.Proto*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 120)
  %1 = bitcast i8* %call to %struct.Proto*
  store %struct.Proto* %1, %struct.Proto** %f, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.Proto*, %struct.Proto** %f, align 8
  %4 = bitcast %struct.Proto* %3 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* %2, %union.GCObject* %4, i8 zeroext 9)
  %5 = load %struct.Proto*, %struct.Proto** %f, align 8
  %k = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i32 0, i32 3
  store %struct.lua_TValue* null, %struct.lua_TValue** %k, align 8
  %6 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizek = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 11
  store i32 0, i32* %sizek, align 4
  %7 = load %struct.Proto*, %struct.Proto** %f, align 8
  %p = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 5
  store %struct.Proto** null, %struct.Proto*** %p, align 8
  %8 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizep = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 14
  store i32 0, i32* %sizep, align 4
  %9 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 4
  store i32* null, i32** %code, align 8
  %10 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizecode = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 12
  store i32 0, i32* %sizecode, align 4
  %11 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 13
  store i32 0, i32* %sizelineinfo, align 4
  %12 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizeupvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 10
  store i32 0, i32* %sizeupvalues, align 4
  %13 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 19
  store i8 0, i8* %nups, align 1
  %14 = load %struct.Proto*, %struct.Proto** %f, align 8
  %upvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 8
  store %union.TString** null, %union.TString*** %upvalues, align 8
  %15 = load %struct.Proto*, %struct.Proto** %f, align 8
  %numparams = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i32 0, i32 20
  store i8 0, i8* %numparams, align 1
  %16 = load %struct.Proto*, %struct.Proto** %f, align 8
  %is_vararg = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 21
  store i8 0, i8* %is_vararg, align 1
  %17 = load %struct.Proto*, %struct.Proto** %f, align 8
  %maxstacksize = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 22
  store i8 0, i8* %maxstacksize, align 1
  %18 = load %struct.Proto*, %struct.Proto** %f, align 8
  %lineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 6
  store i32* null, i32** %lineinfo, align 8
  %19 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelocvars = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 15
  store i32 0, i32* %sizelocvars, align 4
  %20 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 7
  store %struct.LocVar* null, %struct.LocVar** %locvars, align 8
  %21 = load %struct.Proto*, %struct.Proto** %f, align 8
  %linedefined = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i32 0, i32 16
  store i32 0, i32* %linedefined, align 4
  %22 = load %struct.Proto*, %struct.Proto** %f, align 8
  %lastlinedefined = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 17
  store i32 0, i32* %lastlinedefined, align 4
  %23 = load %struct.Proto*, %struct.Proto** %f, align 8
  %source = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i32 0, i32 9
  store %union.TString* null, %union.TString** %source, align 8
  %24 = load %struct.Proto*, %struct.Proto** %f, align 8
  ret %struct.Proto* %24
}

; Function Attrs: nounwind uwtable
define hidden void @luaF_freeproto(%struct.lua_State* %L, %struct.Proto* %f) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %struct.Proto*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Proto* %f, %struct.Proto** %f.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i32 0, i32 4
  %2 = load i32*, i32** %code, align 8
  %3 = bitcast i32* %2 to i8*
  %4 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizecode = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i32 0, i32 12
  %5 = load i32, i32* %sizecode, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %3, i64 %mul, i64 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %p = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 5
  %8 = load %struct.Proto**, %struct.Proto*** %p, align 8
  %9 = bitcast %struct.Proto** %8 to i8*
  %10 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizep = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 14
  %11 = load i32, i32* %sizep, align 4
  %conv1 = sext i32 %11 to i64
  %mul2 = mul i64 %conv1, 8
  %call3 = call i8* @luaM_realloc_(%struct.lua_State* %6, i8* %9, i64 %mul2, i64 0)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %k = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 3
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %15 = bitcast %struct.lua_TValue* %14 to i8*
  %16 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizek = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 11
  %17 = load i32, i32* %sizek, align 4
  %conv4 = sext i32 %17 to i64
  %mul5 = mul i64 %conv4, 16
  %call6 = call i8* @luaM_realloc_(%struct.lua_State* %12, i8* %15, i64 %mul5, i64 0)
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %lineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 6
  %20 = load i32*, i32** %lineinfo, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizelineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 13
  %23 = load i32, i32* %sizelineinfo, align 4
  %conv7 = sext i32 %23 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call i8* @luaM_realloc_(%struct.lua_State* %18, i8* %21, i64 %mul8, i64 0)
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %25 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 7
  %26 = load %struct.LocVar*, %struct.LocVar** %locvars, align 8
  %27 = bitcast %struct.LocVar* %26 to i8*
  %28 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizelocvars = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 15
  %29 = load i32, i32* %sizelocvars, align 4
  %conv10 = sext i32 %29 to i64
  %mul11 = mul i64 %conv10, 16
  %call12 = call i8* @luaM_realloc_(%struct.lua_State* %24, i8* %27, i64 %mul11, i64 0)
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %31 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %upvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 8
  %32 = load %union.TString**, %union.TString*** %upvalues, align 8
  %33 = bitcast %union.TString** %32 to i8*
  %34 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizeupvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 10
  %35 = load i32, i32* %sizeupvalues, align 4
  %conv13 = sext i32 %35 to i64
  %mul14 = mul i64 %conv13, 8
  %call15 = call i8* @luaM_realloc_(%struct.lua_State* %30, i8* %33, i64 %mul14, i64 0)
  %36 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %37 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %38 = bitcast %struct.Proto* %37 to i8*
  %call16 = call i8* @luaM_realloc_(%struct.lua_State* %36, i8* %38, i64 120, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaF_freeclosure(%struct.lua_State* %L, %union.Closure* %c) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %c.addr = alloca %union.Closure*, align 8
  %size = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %union.Closure* %c, %union.Closure** %c.addr, align 8
  %0 = load %union.Closure*, %union.Closure** %c.addr, align 8
  %c1 = bitcast %union.Closure* %0 to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c1, i32 0, i32 3
  %1 = load i8, i8* %isC, align 1
  %conv = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %union.Closure*, %union.Closure** %c.addr, align 8
  %c2 = bitcast %union.Closure* %2 to %struct.CClosure*
  %nupvalues = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c2, i32 0, i32 4
  %3 = load i8, i8* %nupvalues, align 1
  %conv3 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv3, 1
  %conv4 = sext i32 %sub to i64
  %mul = mul i64 16, %conv4
  %conv5 = trunc i64 %mul to i32
  %add = add nsw i32 56, %conv5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %union.Closure*, %union.Closure** %c.addr, align 8
  %l = bitcast %union.Closure* %4 to %struct.LClosure*
  %nupvalues6 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 4
  %5 = load i8, i8* %nupvalues6, align 1
  %conv7 = zext i8 %5 to i32
  %sub8 = sub nsw i32 %conv7, 1
  %conv9 = sext i32 %sub8 to i64
  %mul10 = mul i64 8, %conv9
  %conv11 = trunc i64 %mul10 to i32
  %add12 = add nsw i32 48, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %add12, %cond.false ]
  store i32 %cond, i32* %size, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %union.Closure*, %union.Closure** %c.addr, align 8
  %8 = bitcast %union.Closure* %7 to i8*
  %9 = load i32, i32* %size, align 4
  %conv13 = sext i32 %9 to i64
  %call = call i8* @luaM_realloc_(%struct.lua_State* %6, i8* %8, i64 %conv13, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i8* @luaF_getlocalname(%struct.Proto* %f, i32 %local_number, i32 %pc) #0 {
entry:
  %retval = alloca i8*, align 8
  %f.addr = alloca %struct.Proto*, align 8
  %local_number.addr = alloca i32, align 4
  %pc.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Proto* %f, %struct.Proto** %f.addr, align 8
  store i32 %local_number, i32* %local_number.addr, align 4
  store i32 %pc, i32* %pc.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizelocvars = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i32 0, i32 15
  %2 = load i32, i32* %sizelocvars, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i32 0, i32 7
  %5 = load %struct.LocVar*, %struct.LocVar** %locvars, align 8
  %arrayidx = getelementptr inbounds %struct.LocVar, %struct.LocVar* %5, i64 %idxprom
  %startpc = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx, i32 0, i32 1
  %6 = load i32, i32* %startpc, align 4
  %7 = load i32, i32* %pc.addr, align 4
  %cmp1 = icmp sle i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load i32, i32* %pc.addr, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars3 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 7
  %12 = load %struct.LocVar*, %struct.LocVar** %locvars3, align 8
  %arrayidx4 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %12, i64 %idxprom2
  %endpc = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx4, i32 0, i32 2
  %13 = load i32, i32* %endpc, align 4
  %cmp5 = icmp slt i32 %9, %13
  br i1 %cmp5, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %local_number.addr, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %local_number.addr, align 4
  %15 = load i32, i32* %local_number.addr, align 4
  %cmp6 = icmp eq i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars9 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 7
  %18 = load %struct.LocVar*, %struct.LocVar** %locvars9, align 8
  %arrayidx10 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %idxprom8
  %varname = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx10, i32 0, i32 0
  %19 = load %union.TString*, %union.TString** %varname, align 8
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %19, i64 1
  %20 = bitcast %union.TString* %add.ptr to i8*
  store i8* %20, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7
  %22 = load i8*, i8** %retval
  ret i8* %22
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
