; ModuleID = './MultiSource.Applications.lua/9.lgc.bc'
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
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_longjmp = type opaque
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%union.Udata = type { %struct.anon.2 }
%struct.anon.2 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.anon = type { %struct.UpVal*, %struct.UpVal* }

; Function Attrs: nounwind uwtable
define hidden i64 @luaC_separateudata(%struct.lua_State* %L, i32 %all) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %all.addr = alloca i32, align 4
  %g = alloca %struct.global_State*, align 8
  %deadmem = alloca i64, align 8
  %p = alloca %union.GCObject**, align 8
  %curr = alloca %union.GCObject*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %all, i32* %all.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  store i64 0, i64* %deadmem, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %mainthread = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 21
  %3 = load %struct.lua_State*, %struct.lua_State** %mainthread, align 8
  %next = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 0
  store %union.GCObject** %next, %union.GCObject*** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.66, %entry
  %4 = load %union.GCObject**, %union.GCObject*** %p, align 8
  %5 = load %union.GCObject*, %union.GCObject** %4, align 8
  store %union.GCObject* %5, %union.GCObject** %curr, align 8
  %cmp = icmp ne %union.GCObject* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch = bitcast %union.GCObject* %6 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %7 = load i8, i8* %marked, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %8 = load i32, i32* %all.addr, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false, %while.body
  %9 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %u = bitcast %union.GCObject* %9 to %union.Udata*
  %uv = bitcast %union.Udata* %u to %struct.anon.2*
  %marked3 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 2
  %10 = load i8, i8* %marked3, align 1
  %conv4 = zext i8 %10 to i32
  %and5 = and i32 %conv4, 8
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false
  %11 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch7 = bitcast %union.GCObject* %11 to %struct.GCheader*
  %next8 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch7, i32 0, i32 0
  store %union.GCObject** %next8, %union.GCObject*** %p, align 8
  br label %if.end.66

if.else:                                          ; preds = %lor.lhs.false.2
  %12 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %u9 = bitcast %union.GCObject* %12 to %union.Udata*
  %uv10 = bitcast %union.Udata* %u9 to %struct.anon.2*
  %metatable = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv10, i32 0, i32 3
  %13 = load %struct.Table*, %struct.Table** %metatable, align 8
  %cmp11 = icmp eq %struct.Table* %13, null
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end.25

cond.false:                                       ; preds = %if.else
  %14 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %u13 = bitcast %union.GCObject* %14 to %union.Udata*
  %uv14 = bitcast %union.Udata* %u13 to %struct.anon.2*
  %metatable15 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv14, i32 0, i32 3
  %15 = load %struct.Table*, %struct.Table** %metatable15, align 8
  %flags = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 3
  %16 = load i8, i8* %flags, align 1
  %conv16 = zext i8 %16 to i32
  %and17 = and i32 %conv16, 4
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false
  %17 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %u21 = bitcast %union.GCObject* %17 to %union.Udata*
  %uv22 = bitcast %union.Udata* %u21 to %struct.anon.2*
  %metatable23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv22, i32 0, i32 3
  %18 = load %struct.Table*, %struct.Table** %metatable23, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 6
  %20 = load %struct.global_State*, %struct.global_State** %l_G24, align 8
  %tmname = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 24
  %arrayidx = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %tmname, i32 0, i64 2
  %21 = load %union.TString*, %union.TString** %arrayidx, align 8
  %call = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %18, i32 2, %union.TString* %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.19
  %cond = phi %struct.lua_TValue* [ null, %cond.true.19 ], [ %call, %cond.false.20 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end, %cond.true
  %cond26 = phi %struct.lua_TValue* [ null, %cond.true ], [ %cond, %cond.end ]
  %cmp27 = icmp eq %struct.lua_TValue* %cond26, null
  br i1 %cmp27, label %if.then.29, label %if.else.37

if.then.29:                                       ; preds = %cond.end.25
  %22 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %u30 = bitcast %union.GCObject* %22 to %union.Udata*
  %uv31 = bitcast %union.Udata* %u30 to %struct.anon.2*
  %marked32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv31, i32 0, i32 2
  %23 = load i8, i8* %marked32, align 1
  %conv33 = zext i8 %23 to i32
  %or = or i32 %conv33, 8
  %conv34 = trunc i32 %or to i8
  store i8 %conv34, i8* %marked32, align 1
  %24 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch35 = bitcast %union.GCObject* %24 to %struct.GCheader*
  %next36 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch35, i32 0, i32 0
  store %union.GCObject** %next36, %union.GCObject*** %p, align 8
  br label %if.end.65

if.else.37:                                       ; preds = %cond.end.25
  %25 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %u38 = bitcast %union.GCObject* %25 to %union.Udata*
  %uv39 = bitcast %union.Udata* %u38 to %struct.anon.2*
  %len = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv39, i32 0, i32 5
  %26 = load i64, i64* %len, align 8
  %add = add i64 40, %26
  %27 = load i64, i64* %deadmem, align 8
  %add40 = add i64 %27, %add
  store i64 %add40, i64* %deadmem, align 8
  %28 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %u41 = bitcast %union.GCObject* %28 to %union.Udata*
  %uv42 = bitcast %union.Udata* %u41 to %struct.anon.2*
  %marked43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv42, i32 0, i32 2
  %29 = load i8, i8* %marked43, align 1
  %conv44 = zext i8 %29 to i32
  %or45 = or i32 %conv44, 8
  %conv46 = trunc i32 %or45 to i8
  store i8 %conv46, i8* %marked43, align 1
  %30 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch47 = bitcast %union.GCObject* %30 to %struct.GCheader*
  %next48 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch47, i32 0, i32 0
  %31 = load %union.GCObject*, %union.GCObject** %next48, align 8
  %32 = load %union.GCObject**, %union.GCObject*** %p, align 8
  store %union.GCObject* %31, %union.GCObject** %32, align 8
  %33 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 11
  %34 = load %union.GCObject*, %union.GCObject** %tmudata, align 8
  %cmp49 = icmp eq %union.GCObject* %34, null
  br i1 %cmp49, label %if.then.51, label %if.else.55

if.then.51:                                       ; preds = %if.else.37
  %35 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %36 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch52 = bitcast %union.GCObject* %36 to %struct.GCheader*
  %next53 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch52, i32 0, i32 0
  store %union.GCObject* %35, %union.GCObject** %next53, align 8
  %37 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata54 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 11
  store %union.GCObject* %35, %union.GCObject** %tmudata54, align 8
  br label %if.end

if.else.55:                                       ; preds = %if.else.37
  %38 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata56 = getelementptr inbounds %struct.global_State, %struct.global_State* %38, i32 0, i32 11
  %39 = load %union.GCObject*, %union.GCObject** %tmudata56, align 8
  %gch57 = bitcast %union.GCObject* %39 to %struct.GCheader*
  %next58 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch57, i32 0, i32 0
  %40 = load %union.GCObject*, %union.GCObject** %next58, align 8
  %41 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch59 = bitcast %union.GCObject* %41 to %struct.GCheader*
  %next60 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch59, i32 0, i32 0
  store %union.GCObject* %40, %union.GCObject** %next60, align 8
  %42 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %43 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata61 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 11
  %44 = load %union.GCObject*, %union.GCObject** %tmudata61, align 8
  %gch62 = bitcast %union.GCObject* %44 to %struct.GCheader*
  %next63 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch62, i32 0, i32 0
  store %union.GCObject* %42, %union.GCObject** %next63, align 8
  %45 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %46 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata64 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 11
  store %union.GCObject* %45, %union.GCObject** %tmudata64, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.55, %if.then.51
  br label %if.end.65

if.end.65:                                        ; preds = %if.end, %if.then.29
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load i64, i64* %deadmem, align 8
  ret i64 %47
}

declare hidden %struct.lua_TValue* @luaT_gettm(%struct.Table*, i32, %union.TString*) #1

; Function Attrs: nounwind uwtable
define hidden void @luaC_callGCTM(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %tmudata = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 11
  %2 = load %union.GCObject*, %union.GCObject** %tmudata, align 8
  %tobool = icmp ne %union.GCObject* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @GCTM(%struct.lua_State* %3)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GCTM(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %g = alloca %struct.global_State*, align 8
  %o = alloca %union.GCObject*, align 8
  %udata = alloca %union.Udata*, align 8
  %tm = alloca %struct.lua_TValue*, align 8
  %oldah = alloca i8, align 1
  %oldt = alloca i64, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 11
  %3 = load %union.GCObject*, %union.GCObject** %tmudata, align 8
  %gch = bitcast %union.GCObject* %3 to %struct.GCheader*
  %next = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 0
  %4 = load %union.GCObject*, %union.GCObject** %next, align 8
  store %union.GCObject* %4, %union.GCObject** %o, align 8
  %5 = load %union.GCObject*, %union.GCObject** %o, align 8
  %u = bitcast %union.GCObject* %5 to %union.Udata*
  store %union.Udata* %u, %union.Udata** %udata, align 8
  %6 = load %union.GCObject*, %union.GCObject** %o, align 8
  %7 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata1 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 11
  %8 = load %union.GCObject*, %union.GCObject** %tmudata1, align 8
  %cmp = icmp eq %union.GCObject* %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata2 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 11
  store %union.GCObject* null, %union.GCObject** %tmudata2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %union.Udata*, %union.Udata** %udata, align 8
  %uv = bitcast %union.Udata* %10 to %struct.anon.2*
  %next3 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 0
  %11 = load %union.GCObject*, %union.GCObject** %next3, align 8
  %12 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata4 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 11
  %13 = load %union.GCObject*, %union.GCObject** %tmudata4, align 8
  %gch5 = bitcast %union.GCObject* %13 to %struct.GCheader*
  %next6 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch5, i32 0, i32 0
  store %union.GCObject* %11, %union.GCObject** %next6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.global_State*, %struct.global_State** %g, align 8
  %mainthread = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 21
  %15 = load %struct.lua_State*, %struct.lua_State** %mainthread, align 8
  %next7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 0
  %16 = load %union.GCObject*, %union.GCObject** %next7, align 8
  %17 = load %union.Udata*, %union.Udata** %udata, align 8
  %uv8 = bitcast %union.Udata* %17 to %struct.anon.2*
  %next9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv8, i32 0, i32 0
  store %union.GCObject* %16, %union.GCObject** %next9, align 8
  %18 = load %union.GCObject*, %union.GCObject** %o, align 8
  %19 = load %struct.global_State*, %struct.global_State** %g, align 8
  %mainthread10 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 21
  %20 = load %struct.lua_State*, %struct.lua_State** %mainthread10, align 8
  %next11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 0
  store %union.GCObject* %18, %union.GCObject** %next11, align 8
  %21 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch12 = bitcast %union.GCObject* %21 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch12, i32 0, i32 2
  %22 = load i8, i8* %marked, align 1
  %conv = zext i8 %22 to i32
  %and = and i32 %conv, 248
  %23 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 3
  %24 = load i8, i8* %currentwhite, align 1
  %conv13 = zext i8 %24 to i32
  %and14 = and i32 %conv13, 3
  %conv15 = trunc i32 %and14 to i8
  %conv16 = zext i8 %conv15 to i32
  %or = or i32 %and, %conv16
  %conv17 = trunc i32 %or to i8
  %25 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch18 = bitcast %union.GCObject* %25 to %struct.GCheader*
  %marked19 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch18, i32 0, i32 2
  store i8 %conv17, i8* %marked19, align 1
  %26 = load %union.Udata*, %union.Udata** %udata, align 8
  %uv20 = bitcast %union.Udata* %26 to %struct.anon.2*
  %metatable = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv20, i32 0, i32 3
  %27 = load %struct.Table*, %struct.Table** %metatable, align 8
  %cmp21 = icmp eq %struct.Table* %27, null
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.32

cond.false:                                       ; preds = %if.end
  %28 = load %union.Udata*, %union.Udata** %udata, align 8
  %uv23 = bitcast %union.Udata* %28 to %struct.anon.2*
  %metatable24 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv23, i32 0, i32 3
  %29 = load %struct.Table*, %struct.Table** %metatable24, align 8
  %flags = getelementptr inbounds %struct.Table, %struct.Table* %29, i32 0, i32 3
  %30 = load i8, i8* %flags, align 1
  %conv25 = zext i8 %30 to i32
  %and26 = and i32 %conv25, 4
  %tobool = icmp ne i32 %and26, 0
  br i1 %tobool, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false
  br label %cond.end

cond.false.28:                                    ; preds = %cond.false
  %31 = load %union.Udata*, %union.Udata** %udata, align 8
  %uv29 = bitcast %union.Udata* %31 to %struct.anon.2*
  %metatable30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv29, i32 0, i32 3
  %32 = load %struct.Table*, %struct.Table** %metatable30, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 6
  %34 = load %struct.global_State*, %struct.global_State** %l_G31, align 8
  %tmname = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i32 0, i32 24
  %arrayidx = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %tmname, i32 0, i64 2
  %35 = load %union.TString*, %union.TString** %arrayidx, align 8
  %call = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %32, i32 2, %union.TString* %35)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.28, %cond.true.27
  %cond = phi %struct.lua_TValue* [ null, %cond.true.27 ], [ %call, %cond.false.28 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end, %cond.true
  %cond33 = phi %struct.lua_TValue* [ null, %cond.true ], [ %cond, %cond.end ]
  store %struct.lua_TValue* %cond33, %struct.lua_TValue** %tm, align 8
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %cmp34 = icmp ne %struct.lua_TValue* %36, null
  br i1 %cmp34, label %if.then.36, label %if.end.50

if.then.36:                                       ; preds = %cond.end.32
  %37 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %allowhook = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 18
  %38 = load i8, i8* %allowhook, align 1
  store i8 %38, i8* %oldah, align 1
  %39 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %39, i32 0, i32 13
  %40 = load i64, i64* %GCthreshold, align 8
  store i64 %40, i64* %oldt, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %allowhook37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 18
  store i8 0, i8* %allowhook37, align 1
  %42 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i32 0, i32 14
  %43 = load i64, i64* %totalbytes, align 8
  %mul = mul i64 2, %43
  %44 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold38 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 13
  store i64 %mul, i64* %GCthreshold38, align 8
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  store %struct.lua_TValue* %45, %struct.lua_TValue** %o2, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 4
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %47, %struct.lua_TValue** %o1, align 8
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 0
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i32 0, i32 0
  %50 = bitcast %union.Value* %value to i8*
  %51 = bitcast %union.Value* %value39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 8, i32 8, i1 false)
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i32 0, i32 1
  %53 = load i32, i32* %tt, align 4
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i32 0, i32 1
  store i32 %53, i32* %tt40, align 4
  %55 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 4
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %top41, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i64 1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %i_o, align 8
  %57 = load %union.Udata*, %union.Udata** %udata, align 8
  %58 = bitcast %union.Udata* %57 to %union.GCObject*
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 0, i32 0
  %gc = bitcast %union.Value* %value42 to %union.GCObject**
  store %union.GCObject* %58, %union.GCObject** %gc, align 8
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 0, i32 1
  store i32 7, i32* %tt43, align 4
  %61 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 4
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %top44, align 8
  %add.ptr45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 2
  store %struct.lua_TValue* %add.ptr45, %struct.lua_TValue** %top44, align 8
  %63 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %64 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 4
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %top46, align 8
  %add.ptr47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 -2
  call void @luaD_call(%struct.lua_State* %63, %struct.lua_TValue* %add.ptr47, i32 0)
  %66 = load i8, i8* %oldah, align 1
  %67 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %allowhook48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i32 0, i32 18
  store i8 %66, i8* %allowhook48, align 1
  %68 = load i64, i64* %oldt, align 8
  %69 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold49 = getelementptr inbounds %struct.global_State, %struct.global_State* %69, i32 0, i32 13
  store i64 %68, i64* %GCthreshold49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.36, %cond.end.32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_freeall(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %g = alloca %struct.global_State*, align 8
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 3
  store i8 67, i8* %currentwhite, align 1
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 6
  %call = call %union.GCObject** @sweeplist(%struct.lua_State* %3, %union.GCObject** %rootgc, i64 -3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 0
  %size = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt, i32 0, i32 2
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt1 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 0
  %hash = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt1, i32 0, i32 0
  %11 = load %union.GCObject**, %union.GCObject*** %hash, align 8
  %arrayidx = getelementptr inbounds %union.GCObject*, %union.GCObject** %11, i64 %idxprom
  %call2 = call %union.GCObject** @sweeplist(%struct.lua_State* %8, %union.GCObject** %arrayidx, i64 -3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.GCObject** @sweeplist(%struct.lua_State* %L, %union.GCObject** %p, i64 %count) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %p.addr = alloca %union.GCObject**, align 8
  %count.addr = alloca i64, align 8
  %curr = alloca %union.GCObject*, align 8
  %g = alloca %struct.global_State*, align 8
  %deadmask = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %union.GCObject** %p, %union.GCObject*** %p.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 3
  %3 = load i8, i8* %currentwhite, align 1
  %conv = zext i8 %3 to i32
  %xor = xor i32 %conv, 3
  store i32 %xor, i32* %deadmask, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %entry
  %4 = load %union.GCObject**, %union.GCObject*** %p.addr, align 8
  %5 = load %union.GCObject*, %union.GCObject** %4, align 8
  store %union.GCObject* %5, %union.GCObject** %curr, align 8
  %cmp = icmp ne %union.GCObject* %5, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i64, i64* %count.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %count.addr, align 8
  %cmp2 = icmp ugt i64 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch = bitcast %union.GCObject* %8 to %struct.GCheader*
  %tt = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 1
  %9 = load i8, i8* %tt, align 1
  %conv4 = zext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %th = bitcast %union.GCObject* %11 to %struct.lua_State*
  %openupval = getelementptr inbounds %struct.lua_State, %struct.lua_State* %th, i32 0, i32 24
  %call = call %union.GCObject** @sweeplist(%struct.lua_State* %10, %union.GCObject** %openupval, i64 -3)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch7 = bitcast %union.GCObject* %12 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch7, i32 0, i32 2
  %13 = load i8, i8* %marked, align 1
  %conv8 = zext i8 %13 to i32
  %xor9 = xor i32 %conv8, 3
  %14 = load i32, i32* %deadmask, align 4
  %and = and i32 %xor9, %14
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %15 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch11 = bitcast %union.GCObject* %15 to %struct.GCheader*
  %marked12 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch11, i32 0, i32 2
  %16 = load i8, i8* %marked12, align 1
  %conv13 = zext i8 %16 to i32
  %and14 = and i32 %conv13, 248
  %17 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite15 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 3
  %18 = load i8, i8* %currentwhite15, align 1
  %conv16 = zext i8 %18 to i32
  %and17 = and i32 %conv16, 3
  %conv18 = trunc i32 %and17 to i8
  %conv19 = zext i8 %conv18 to i32
  %or = or i32 %and14, %conv19
  %conv20 = trunc i32 %or to i8
  %19 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch21 = bitcast %union.GCObject* %19 to %struct.GCheader*
  %marked22 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch21, i32 0, i32 2
  store i8 %conv20, i8* %marked22, align 1
  %20 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch23 = bitcast %union.GCObject* %20 to %struct.GCheader*
  %next = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch23, i32 0, i32 0
  store %union.GCObject** %next, %union.GCObject*** %p.addr, align 8
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %21 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch24 = bitcast %union.GCObject* %21 to %struct.GCheader*
  %next25 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch24, i32 0, i32 0
  %22 = load %union.GCObject*, %union.GCObject** %next25, align 8
  %23 = load %union.GCObject**, %union.GCObject*** %p.addr, align 8
  store %union.GCObject* %22, %union.GCObject** %23, align 8
  %24 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %25 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 6
  %26 = load %union.GCObject*, %union.GCObject** %rootgc, align 8
  %cmp26 = icmp eq %union.GCObject* %24, %26
  br i1 %cmp26, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.else
  %27 = load %union.GCObject*, %union.GCObject** %curr, align 8
  %gch29 = bitcast %union.GCObject* %27 to %struct.GCheader*
  %next30 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch29, i32 0, i32 0
  %28 = load %union.GCObject*, %union.GCObject** %next30, align 8
  %29 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc31 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 6
  store %union.GCObject* %28, %union.GCObject** %rootgc31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.else
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %31 = load %union.GCObject*, %union.GCObject** %curr, align 8
  call void @freeobj(%struct.lua_State* %30, %union.GCObject* %31)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.10
  br label %while.cond

while.end:                                        ; preds = %land.end
  %32 = load %union.GCObject**, %union.GCObject*** %p.addr, align 8
  ret %union.GCObject** %32
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_step(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %g = alloca %struct.global_State*, align 8
  %lim = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstepmul = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 18
  %3 = load i32, i32* %gcstepmul, align 4
  %mul = mul i32 10, %3
  %conv = zext i32 %mul to i64
  store i64 %conv, i64* %lim, align 8
  %4 = load i64, i64* %lim, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 9223372036854775806, i64* %lim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 14
  %6 = load i64, i64* %totalbytes, align 8
  %7 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 13
  %8 = load i64, i64* %GCthreshold, align 8
  %sub = sub i64 %6, %8
  %9 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcdept = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 16
  %10 = load i64, i64* %gcdept, align 8
  %add = add i64 %10, %sub
  store i64 %add, i64* %gcdept, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @singlestep(%struct.lua_State* %11)
  %12 = load i64, i64* %lim, align 8
  %sub2 = sub nsw i64 %12, %call
  store i64 %sub2, i64* %lim, align 8
  %13 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 4
  %14 = load i8, i8* %gcstate, align 1
  %conv3 = zext i8 %14 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.body
  br label %do.end

if.end.7:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.7
  %15 = load i64, i64* %lim, align 8
  %cmp8 = icmp sgt i64 %15, 0
  br i1 %cmp8, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.6
  %16 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate10 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 4
  %17 = load i8, i8* %gcstate10, align 1
  %conv11 = zext i8 %17 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.else.27

if.then.14:                                       ; preds = %do.end
  %18 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcdept15 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 16
  %19 = load i64, i64* %gcdept15, align 8
  %cmp16 = icmp ult i64 %19, 1024
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.14
  %20 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes19 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 14
  %21 = load i64, i64* %totalbytes19, align 8
  %add20 = add i64 %21, 1024
  %22 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold21 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i32 0, i32 13
  store i64 %add20, i64* %GCthreshold21, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.then.14
  %23 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcdept22 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 16
  %24 = load i64, i64* %gcdept22, align 8
  %sub23 = sub i64 %24, 1024
  store i64 %sub23, i64* %gcdept22, align 8
  %25 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes24 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 14
  %26 = load i64, i64* %totalbytes24, align 8
  %27 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold25 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 13
  store i64 %26, i64* %GCthreshold25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.18
  br label %if.end.31

if.else.27:                                       ; preds = %do.end
  %28 = load %struct.global_State*, %struct.global_State** %g, align 8
  %estimate = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 15
  %29 = load i64, i64* %estimate, align 8
  %div = udiv i64 %29, 100
  %30 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcpause = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 17
  %31 = load i32, i32* %gcpause, align 4
  %conv28 = sext i32 %31 to i64
  %mul29 = mul i64 %div, %conv28
  %32 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold30 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 13
  store i64 %mul29, i64* %GCthreshold30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.27, %if.end.26
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @singlestep(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i64, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %g = alloca %struct.global_State*, align 8
  %old = alloca i64, align 8
  %old12 = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 4
  %3 = load i8, i8* %gcstate, align 1
  %conv = zext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.11
    i32 4, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @markroot(%struct.lua_State* %4)
  store i64 0, i64* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gray = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 8
  %6 = load %union.GCObject*, %union.GCObject** %gray, align 8
  %tobool = icmp ne %union.GCObject* %6, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %7 = load %struct.global_State*, %struct.global_State** %g, align 8
  %call = call i64 @propagatemark(%struct.global_State* %7)
  store i64 %call, i64* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.1
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @atomic(%struct.lua_State* %8)
  store i64 0, i64* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 14
  %10 = load i64, i64* %totalbytes, align 8
  store i64 %10, i64* %old, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepstrgc = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 5
  %13 = load i32, i32* %sweepstrgc, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %sweepstrgc, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 0
  %hash = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt, i32 0, i32 0
  %15 = load %union.GCObject**, %union.GCObject*** %hash, align 8
  %arrayidx = getelementptr inbounds %union.GCObject*, %union.GCObject** %15, i64 %idxprom
  %call3 = call %union.GCObject** @sweeplist(%struct.lua_State* %11, %union.GCObject** %arrayidx, i64 -3)
  %16 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepstrgc4 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 5
  %17 = load i32, i32* %sweepstrgc4, align 4
  %18 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt5 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 0
  %size = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt5, i32 0, i32 2
  %19 = load i32, i32* %size, align 4
  %cmp = icmp sge i32 %17, %19
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %sw.bb.2
  %20 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate8 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 4
  store i8 3, i8* %gcstate8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.7, %sw.bb.2
  %21 = load i64, i64* %old, align 8
  %22 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes9 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i32 0, i32 14
  %23 = load i64, i64* %totalbytes9, align 8
  %sub = sub i64 %21, %23
  %24 = load %struct.global_State*, %struct.global_State** %g, align 8
  %estimate = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 15
  %25 = load i64, i64* %estimate, align 8
  %sub10 = sub i64 %25, %sub
  store i64 %sub10, i64* %estimate, align 8
  store i64 10, i64* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %26 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes13 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 14
  %27 = load i64, i64* %totalbytes13, align 8
  store i64 %27, i64* %old12, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %29 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepgc = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 7
  %30 = load %union.GCObject**, %union.GCObject*** %sweepgc, align 8
  %call14 = call %union.GCObject** @sweeplist(%struct.lua_State* %28, %union.GCObject** %30, i64 40)
  %31 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepgc15 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 7
  store %union.GCObject** %call14, %union.GCObject*** %sweepgc15, align 8
  %32 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepgc16 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 7
  %33 = load %union.GCObject**, %union.GCObject*** %sweepgc16, align 8
  %34 = load %union.GCObject*, %union.GCObject** %33, align 8
  %cmp17 = icmp eq %union.GCObject* %34, null
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %sw.bb.11
  %35 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @checkSizes(%struct.lua_State* %35)
  %36 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate20 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 4
  store i8 4, i8* %gcstate20, align 1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %sw.bb.11
  %37 = load i64, i64* %old12, align 8
  %38 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes22 = getelementptr inbounds %struct.global_State, %struct.global_State* %38, i32 0, i32 14
  %39 = load i64, i64* %totalbytes22, align 8
  %sub23 = sub i64 %37, %39
  %40 = load %struct.global_State*, %struct.global_State** %g, align 8
  %estimate24 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i32 0, i32 15
  %41 = load i64, i64* %estimate24, align 8
  %sub25 = sub i64 %41, %sub23
  store i64 %sub25, i64* %estimate24, align 8
  store i64 400, i64* %retval
  br label %return

sw.bb.26:                                         ; preds = %entry
  %42 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i32 0, i32 11
  %43 = load %union.GCObject*, %union.GCObject** %tmudata, align 8
  %tobool27 = icmp ne %union.GCObject* %43, null
  br i1 %tobool27, label %if.then.28, label %if.else.36

if.then.28:                                       ; preds = %sw.bb.26
  %44 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @GCTM(%struct.lua_State* %44)
  %45 = load %struct.global_State*, %struct.global_State** %g, align 8
  %estimate29 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 15
  %46 = load i64, i64* %estimate29, align 8
  %cmp30 = icmp ugt i64 %46, 100
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.then.28
  %47 = load %struct.global_State*, %struct.global_State** %g, align 8
  %estimate33 = getelementptr inbounds %struct.global_State, %struct.global_State* %47, i32 0, i32 15
  %48 = load i64, i64* %estimate33, align 8
  %sub34 = sub i64 %48, 100
  store i64 %sub34, i64* %estimate33, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.then.28
  store i64 100, i64* %retval
  br label %return

if.else.36:                                       ; preds = %sw.bb.26
  %49 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate37 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 4
  store i8 0, i8* %gcstate37, align 1
  %50 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcdept = getelementptr inbounds %struct.global_State, %struct.global_State* %50, i32 0, i32 16
  store i64 0, i64* %gcdept, align 8
  store i64 0, i64* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else.36, %if.end.35, %if.end.21, %if.end, %if.else, %if.then, %sw.bb
  %51 = load i64, i64* %retval
  ret i64 %51
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_fullgc(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %g = alloca %struct.global_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 4
  %3 = load i8, i8* %gcstate, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp sle i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepstrgc = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 5
  store i32 0, i32* %sweepstrgc, align 4
  %5 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepgc = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 7
  store %union.GCObject** %rootgc, %union.GCObject*** %sweepgc, align 8
  %7 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gray = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 8
  store %union.GCObject* null, %union.GCObject** %gray, align 8
  %8 = load %struct.global_State*, %struct.global_State** %g, align 8
  %grayagain = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 9
  store %union.GCObject* null, %union.GCObject** %grayagain, align 8
  %9 = load %struct.global_State*, %struct.global_State** %g, align 8
  %weak = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 10
  store %union.GCObject* null, %union.GCObject** %weak, align 8
  %10 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate2 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 4
  store i8 2, i8* %gcstate2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate3 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 4
  %12 = load i8, i8* %gcstate3, align 1
  %conv4 = zext i8 %12 to i32
  %cmp5 = icmp ne i32 %conv4, 4
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @singlestep(%struct.lua_State* %13)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @markroot(%struct.lua_State* %14)
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.12, %while.end
  %15 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate8 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 4
  %16 = load i8, i8* %gcstate8, align 1
  %conv9 = zext i8 %16 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %while.body.12, label %while.end.14

while.body.12:                                    ; preds = %while.cond.7
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call13 = call i64 @singlestep(%struct.lua_State* %17)
  br label %while.cond.7

while.end.14:                                     ; preds = %while.cond.7
  %18 = load %struct.global_State*, %struct.global_State** %g, align 8
  %estimate = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 15
  %19 = load i64, i64* %estimate, align 8
  %div = udiv i64 %19, 100
  %20 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcpause = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 17
  %21 = load i32, i32* %gcpause, align 4
  %conv15 = sext i32 %21 to i64
  %mul = mul i64 %div, %conv15
  %22 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i32 0, i32 13
  store i64 %mul, i64* %GCthreshold, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @markroot(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %g = alloca %struct.global_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gray = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 8
  store %union.GCObject* null, %union.GCObject** %gray, align 8
  %3 = load %struct.global_State*, %struct.global_State** %g, align 8
  %grayagain = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i32 0, i32 9
  store %union.GCObject* null, %union.GCObject** %grayagain, align 8
  %4 = load %struct.global_State*, %struct.global_State** %g, align 8
  %weak = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 10
  store %union.GCObject* null, %union.GCObject** %weak, align 8
  %5 = load %struct.global_State*, %struct.global_State** %g, align 8
  %mainthread = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 21
  %6 = load %struct.lua_State*, %struct.lua_State** %mainthread, align 8
  %7 = bitcast %struct.lua_State* %6 to %union.GCObject*
  %gch = bitcast %union.GCObject* %7 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %8 = load i8, i8* %marked, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.global_State*, %struct.global_State** %g, align 8
  %10 = load %struct.global_State*, %struct.global_State** %g, align 8
  %mainthread1 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 21
  %11 = load %struct.lua_State*, %struct.lua_State** %mainthread1, align 8
  %12 = bitcast %struct.lua_State* %11 to %union.GCObject*
  call void @reallymarkobject(%struct.global_State* %9, %union.GCObject* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.global_State*, %struct.global_State** %g, align 8
  %mainthread2 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 21
  %14 = load %struct.lua_State*, %struct.lua_State** %mainthread2, align 8
  %l_gt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 22
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_gt, i32 0, i32 1
  %15 = load i32, i32* %tt, align 4
  %cmp = icmp sge i32 %15, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct.global_State*, %struct.global_State** %g, align 8
  %mainthread4 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 21
  %17 = load %struct.lua_State*, %struct.lua_State** %mainthread4, align 8
  %l_gt5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 22
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_gt5, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %18 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %gch6 = bitcast %union.GCObject* %18 to %struct.GCheader*
  %marked7 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch6, i32 0, i32 2
  %19 = load i8, i8* %marked7, align 1
  %conv8 = zext i8 %19 to i32
  %and9 = and i32 %conv8, 3
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %land.lhs.true
  %20 = load %struct.global_State*, %struct.global_State** %g, align 8
  %21 = load %struct.global_State*, %struct.global_State** %g, align 8
  %mainthread12 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 21
  %22 = load %struct.lua_State*, %struct.lua_State** %mainthread12, align 8
  %l_gt13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 22
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_gt13, i32 0, i32 0
  %gc15 = bitcast %union.Value* %value14 to %union.GCObject**
  %23 = load %union.GCObject*, %union.GCObject** %gc15, align 8
  call void @reallymarkobject(%struct.global_State* %20, %union.GCObject* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %land.lhs.true, %if.end
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 6
  %25 = load %struct.global_State*, %struct.global_State** %l_G17, align 8
  %l_registry = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 20
  %tt18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_registry, i32 0, i32 1
  %26 = load i32, i32* %tt18, align 4
  %cmp19 = icmp sge i32 %26, 4
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.36

land.lhs.true.21:                                 ; preds = %if.end.16
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 6
  %28 = load %struct.global_State*, %struct.global_State** %l_G22, align 8
  %l_registry23 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 20
  %value24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_registry23, i32 0, i32 0
  %gc25 = bitcast %union.Value* %value24 to %union.GCObject**
  %29 = load %union.GCObject*, %union.GCObject** %gc25, align 8
  %gch26 = bitcast %union.GCObject* %29 to %struct.GCheader*
  %marked27 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch26, i32 0, i32 2
  %30 = load i8, i8* %marked27, align 1
  %conv28 = zext i8 %30 to i32
  %and29 = and i32 %conv28, 3
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %land.lhs.true.21
  %31 = load %struct.global_State*, %struct.global_State** %g, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 6
  %33 = load %struct.global_State*, %struct.global_State** %l_G32, align 8
  %l_registry33 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 20
  %value34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_registry33, i32 0, i32 0
  %gc35 = bitcast %union.Value* %value34 to %union.GCObject**
  %34 = load %union.GCObject*, %union.GCObject** %gc35, align 8
  call void @reallymarkobject(%struct.global_State* %31, %union.GCObject* %34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %land.lhs.true.21, %if.end.16
  %35 = load %struct.global_State*, %struct.global_State** %g, align 8
  call void @markmt(%struct.global_State* %35)
  %36 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 4
  store i8 1, i8* %gcstate, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_barrierf(%struct.lua_State* %L, %union.GCObject* %o, %union.GCObject* %v) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %o.addr = alloca %union.GCObject*, align 8
  %v.addr = alloca %union.GCObject*, align 8
  %g = alloca %struct.global_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %union.GCObject* %o, %union.GCObject** %o.addr, align 8
  store %union.GCObject* %v, %union.GCObject** %v.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 4
  %3 = load i8, i8* %gcstate, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.global_State*, %struct.global_State** %g, align 8
  %5 = load %union.GCObject*, %union.GCObject** %v.addr, align 8
  call void @reallymarkobject(%struct.global_State* %4, %union.GCObject* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %gch = bitcast %union.GCObject* %6 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %7 = load i8, i8* %marked, align 1
  %conv2 = zext i8 %7 to i32
  %and = and i32 %conv2, 248
  %8 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 3
  %9 = load i8, i8* %currentwhite, align 1
  %conv3 = zext i8 %9 to i32
  %and4 = and i32 %conv3, 3
  %conv5 = trunc i32 %and4 to i8
  %conv6 = zext i8 %conv5 to i32
  %or = or i32 %and, %conv6
  %conv7 = trunc i32 %or to i8
  %10 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %gch8 = bitcast %union.GCObject* %10 to %struct.GCheader*
  %marked9 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch8, i32 0, i32 2
  store i8 %conv7, i8* %marked9, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reallymarkobject(%struct.global_State* %g, %union.GCObject* %o) #0 {
entry:
  %g.addr = alloca %struct.global_State*, align 8
  %o.addr = alloca %union.GCObject*, align 8
  %mt = alloca %struct.Table*, align 8
  %uv29 = alloca %struct.UpVal*, align 8
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  store %union.GCObject* %o, %union.GCObject** %o.addr, align 8
  %0 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %gch = bitcast %union.GCObject* %0 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %1 = load i8, i8* %marked, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 252
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %marked, align 1
  %2 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %gch2 = bitcast %union.GCObject* %2 to %struct.GCheader*
  %tt = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch2, i32 0, i32 1
  %3 = load i8, i8* %tt, align 1
  %conv3 = zext i8 %3 to i32
  switch i32 %conv3, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb.4
    i32 10, label %sw.bb.28
    i32 6, label %sw.bb.56
    i32 5, label %sw.bb.58
    i32 8, label %sw.bb.62
    i32 9, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %4 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %u = bitcast %union.GCObject* %4 to %union.Udata*
  %uv = bitcast %union.Udata* %u to %struct.anon.2*
  %metatable = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 3
  %5 = load %struct.Table*, %struct.Table** %metatable, align 8
  store %struct.Table* %5, %struct.Table** %mt, align 8
  %6 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %gch5 = bitcast %union.GCObject* %6 to %struct.GCheader*
  %marked6 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch5, i32 0, i32 2
  %7 = load i8, i8* %marked6, align 1
  %conv7 = zext i8 %7 to i32
  %or = or i32 %conv7, 4
  %conv8 = trunc i32 %or to i8
  store i8 %conv8, i8* %marked6, align 1
  %8 = load %struct.Table*, %struct.Table** %mt, align 8
  %tobool = icmp ne %struct.Table* %8, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %sw.bb.4
  %9 = load %struct.Table*, %struct.Table** %mt, align 8
  %10 = bitcast %struct.Table* %9 to %union.GCObject*
  %gch9 = bitcast %union.GCObject* %10 to %struct.GCheader*
  %marked10 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch9, i32 0, i32 2
  %11 = load i8, i8* %marked10, align 1
  %conv11 = zext i8 %11 to i32
  %and12 = and i32 %conv11, 3
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  %12 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %13 = load %struct.Table*, %struct.Table** %mt, align 8
  %14 = bitcast %struct.Table* %13 to %union.GCObject*
  call void @reallymarkobject(%struct.global_State* %12, %union.GCObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %sw.bb.4
  %15 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %u16 = bitcast %union.GCObject* %15 to %union.Udata*
  %uv17 = bitcast %union.Udata* %u16 to %struct.anon.2*
  %env = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv17, i32 0, i32 4
  %16 = load %struct.Table*, %struct.Table** %env, align 8
  %17 = bitcast %struct.Table* %16 to %union.GCObject*
  %gch18 = bitcast %union.GCObject* %17 to %struct.GCheader*
  %marked19 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch18, i32 0, i32 2
  %18 = load i8, i8* %marked19, align 1
  %conv20 = zext i8 %18 to i32
  %and21 = and i32 %conv20, 3
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.15
  %19 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %20 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %u24 = bitcast %union.GCObject* %20 to %union.Udata*
  %uv25 = bitcast %union.Udata* %u24 to %struct.anon.2*
  %env26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv25, i32 0, i32 4
  %21 = load %struct.Table*, %struct.Table** %env26, align 8
  %22 = bitcast %struct.Table* %21 to %union.GCObject*
  call void @reallymarkobject(%struct.global_State* %19, %union.GCObject* %22)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.15
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %23 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %uv30 = bitcast %union.GCObject* %23 to %struct.UpVal*
  store %struct.UpVal* %uv30, %struct.UpVal** %uv29, align 8
  %24 = load %struct.UpVal*, %struct.UpVal** %uv29, align 8
  %v = getelementptr inbounds %struct.UpVal, %struct.UpVal* %24, i32 0, i32 3
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %v, align 8
  %tt31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 1
  %26 = load i32, i32* %tt31, align 4
  %cmp = icmp sge i32 %26, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %sw.bb.28
  %27 = load %struct.UpVal*, %struct.UpVal** %uv29, align 8
  %v33 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %27, i32 0, i32 3
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %v33, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %29 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %gch34 = bitcast %union.GCObject* %29 to %struct.GCheader*
  %marked35 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch34, i32 0, i32 2
  %30 = load i8, i8* %marked35, align 1
  %conv36 = zext i8 %30 to i32
  %and37 = and i32 %conv36, 3
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %land.lhs.true
  %31 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %32 = load %struct.UpVal*, %struct.UpVal** %uv29, align 8
  %v40 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %32, i32 0, i32 3
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %v40, align 8
  %value41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %gc42 = bitcast %union.Value* %value41 to %union.GCObject**
  %34 = load %union.GCObject*, %union.GCObject** %gc42, align 8
  call void @reallymarkobject(%struct.global_State* %31, %union.GCObject* %34)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %land.lhs.true, %sw.bb.28
  %35 = load %struct.UpVal*, %struct.UpVal** %uv29, align 8
  %v44 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %35, i32 0, i32 3
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %v44, align 8
  %37 = load %struct.UpVal*, %struct.UpVal** %uv29, align 8
  %u45 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %37, i32 0, i32 4
  %value46 = bitcast %union.anon* %u45 to %struct.lua_TValue*
  %cmp47 = icmp eq %struct.lua_TValue* %36, %value46
  br i1 %cmp47, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.end.43
  %38 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %gch50 = bitcast %union.GCObject* %38 to %struct.GCheader*
  %marked51 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch50, i32 0, i32 2
  %39 = load i8, i8* %marked51, align 1
  %conv52 = zext i8 %39 to i32
  %or53 = or i32 %conv52, 4
  %conv54 = trunc i32 %or53 to i8
  store i8 %conv54, i8* %marked51, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.49, %if.end.43
  br label %sw.epilog

sw.bb.56:                                         ; preds = %entry
  %40 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i32 0, i32 8
  %41 = load %union.GCObject*, %union.GCObject** %gray, align 8
  %42 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %cl = bitcast %union.GCObject* %42 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %gclist = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 5
  store %union.GCObject* %41, %union.GCObject** %gclist, align 8
  %43 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %44 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray57 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 8
  store %union.GCObject* %43, %union.GCObject** %gray57, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %entry
  %45 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray59 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 8
  %46 = load %union.GCObject*, %union.GCObject** %gray59, align 8
  %47 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %h = bitcast %union.GCObject* %47 to %struct.Table*
  %gclist60 = getelementptr inbounds %struct.Table, %struct.Table* %h, i32 0, i32 9
  store %union.GCObject* %46, %union.GCObject** %gclist60, align 8
  %48 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %49 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray61 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 8
  store %union.GCObject* %48, %union.GCObject** %gray61, align 8
  br label %sw.epilog

sw.bb.62:                                         ; preds = %entry
  %50 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray63 = getelementptr inbounds %struct.global_State, %struct.global_State* %50, i32 0, i32 8
  %51 = load %union.GCObject*, %union.GCObject** %gray63, align 8
  %52 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %th = bitcast %union.GCObject* %52 to %struct.lua_State*
  %gclist64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %th, i32 0, i32 25
  store %union.GCObject* %51, %union.GCObject** %gclist64, align 8
  %53 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %54 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray65 = getelementptr inbounds %struct.global_State, %struct.global_State* %54, i32 0, i32 8
  store %union.GCObject* %53, %union.GCObject** %gray65, align 8
  br label %sw.epilog

sw.bb.66:                                         ; preds = %entry
  %55 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray67 = getelementptr inbounds %struct.global_State, %struct.global_State* %55, i32 0, i32 8
  %56 = load %union.GCObject*, %union.GCObject** %gray67, align 8
  %57 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %p = bitcast %union.GCObject* %57 to %struct.Proto*
  %gclist68 = getelementptr inbounds %struct.Proto, %struct.Proto* %p, i32 0, i32 18
  store %union.GCObject* %56, %union.GCObject** %gclist68, align 8
  %58 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %59 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray69 = getelementptr inbounds %struct.global_State, %struct.global_State* %59, i32 0, i32 8
  store %union.GCObject* %58, %union.GCObject** %gray69, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.27, %if.end.55, %sw.default, %sw.bb.66, %sw.bb.62, %sw.bb.58, %sw.bb.56
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_barrierback(%struct.lua_State* %L, %struct.Table* %t) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca %struct.Table*, align 8
  %g = alloca %struct.global_State*, align 8
  %o = alloca %union.GCObject*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Table* %t, %struct.Table** %t.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %3 = bitcast %struct.Table* %2 to %union.GCObject*
  store %union.GCObject* %3, %union.GCObject** %o, align 8
  %4 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch = bitcast %union.GCObject* %4 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %5 = load i8, i8* %marked, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 251
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %marked, align 1
  %6 = load %struct.global_State*, %struct.global_State** %g, align 8
  %grayagain = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 9
  %7 = load %union.GCObject*, %union.GCObject** %grayagain, align 8
  %8 = load %struct.Table*, %struct.Table** %t.addr, align 8
  %gclist = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 9
  store %union.GCObject* %7, %union.GCObject** %gclist, align 8
  %9 = load %union.GCObject*, %union.GCObject** %o, align 8
  %10 = load %struct.global_State*, %struct.global_State** %g, align 8
  %grayagain2 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 9
  store %union.GCObject* %9, %union.GCObject** %grayagain2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_link(%struct.lua_State* %L, %union.GCObject* %o, i8 zeroext %tt) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %o.addr = alloca %union.GCObject*, align 8
  %tt.addr = alloca i8, align 1
  %g = alloca %struct.global_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %union.GCObject* %o, %union.GCObject** %o.addr, align 8
  store i8 %tt, i8* %tt.addr, align 1
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 6
  %3 = load %union.GCObject*, %union.GCObject** %rootgc, align 8
  %4 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %gch = bitcast %union.GCObject* %4 to %struct.GCheader*
  %next = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 0
  store %union.GCObject* %3, %union.GCObject** %next, align 8
  %5 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %6 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc1 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 6
  store %union.GCObject* %5, %union.GCObject** %rootgc1, align 8
  %7 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 3
  %8 = load i8, i8* %currentwhite, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 3
  %conv2 = trunc i32 %and to i8
  %9 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %gch3 = bitcast %union.GCObject* %9 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch3, i32 0, i32 2
  store i8 %conv2, i8* %marked, align 1
  %10 = load i8, i8* %tt.addr, align 1
  %11 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %gch4 = bitcast %union.GCObject* %11 to %struct.GCheader*
  %tt5 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch4, i32 0, i32 1
  store i8 %10, i8* %tt5, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_linkupval(%struct.lua_State* %L, %struct.UpVal* %uv) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %uv.addr = alloca %struct.UpVal*, align 8
  %g = alloca %struct.global_State*, align 8
  %o = alloca %union.GCObject*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.UpVal* %uv, %struct.UpVal** %uv.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %3 = bitcast %struct.UpVal* %2 to %union.GCObject*
  store %union.GCObject* %3, %union.GCObject** %o, align 8
  %4 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 6
  %5 = load %union.GCObject*, %union.GCObject** %rootgc, align 8
  %6 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch = bitcast %union.GCObject* %6 to %struct.GCheader*
  %next = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 0
  store %union.GCObject* %5, %union.GCObject** %next, align 8
  %7 = load %union.GCObject*, %union.GCObject** %o, align 8
  %8 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc1 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 6
  store %union.GCObject* %7, %union.GCObject** %rootgc1, align 8
  %9 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch2 = bitcast %union.GCObject* %9 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch2, i32 0, i32 2
  %10 = load i8, i8* %marked, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.47, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %11 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch3 = bitcast %union.GCObject* %11 to %struct.GCheader*
  %marked4 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch3, i32 0, i32 2
  %12 = load i8, i8* %marked4, align 1
  %conv5 = zext i8 %12 to i32
  %and6 = and i32 %conv5, 3
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.end.47, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 4
  %14 = load i8, i8* %gcstate, align 1
  %conv8 = zext i8 %14 to i32
  %cmp = icmp eq i32 %conv8, 1
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %15 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch11 = bitcast %union.GCObject* %15 to %struct.GCheader*
  %marked12 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch11, i32 0, i32 2
  %16 = load i8, i8* %marked12, align 1
  %conv13 = zext i8 %16 to i32
  %or = or i32 %conv13, 4
  %conv14 = trunc i32 %or to i8
  store i8 %conv14, i8* %marked12, align 1
  %17 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %v = getelementptr inbounds %struct.UpVal, %struct.UpVal* %17, i32 0, i32 3
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %v, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 1
  %19 = load i32, i32* %tt, align 4
  %cmp15 = icmp sge i32 %19, 4
  br i1 %cmp15, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %if.then.10
  %20 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %v18 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %20, i32 0, i32 3
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %v18, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %22 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %gch19 = bitcast %union.GCObject* %22 to %struct.GCheader*
  %marked20 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch19, i32 0, i32 2
  %23 = load i8, i8* %marked20, align 1
  %conv21 = zext i8 %23 to i32
  %and22 = and i32 %conv21, 3
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true.17
  %24 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %25 = bitcast %struct.UpVal* %24 to %union.GCObject*
  %gch25 = bitcast %union.GCObject* %25 to %struct.GCheader*
  %marked26 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch25, i32 0, i32 2
  %26 = load i8, i8* %marked26, align 1
  %conv27 = zext i8 %26 to i32
  %and28 = and i32 %conv27, 4
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %land.lhs.true.24
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %28 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %29 = bitcast %struct.UpVal* %28 to %union.GCObject*
  %30 = load %struct.UpVal*, %struct.UpVal** %uv.addr, align 8
  %v31 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %30, i32 0, i32 3
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %v31, align 8
  %value32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %gc33 = bitcast %union.Value* %value32 to %union.GCObject**
  %32 = load %union.GCObject*, %union.GCObject** %gc33, align 8
  call void @luaC_barrierf(%struct.lua_State* %27, %union.GCObject* %29, %union.GCObject* %32)
  br label %if.end

if.end:                                           ; preds = %if.then.30, %land.lhs.true.24, %land.lhs.true.17, %if.then.10
  br label %if.end.46

if.else:                                          ; preds = %if.then
  %33 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch34 = bitcast %union.GCObject* %33 to %struct.GCheader*
  %marked35 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch34, i32 0, i32 2
  %34 = load i8, i8* %marked35, align 1
  %conv36 = zext i8 %34 to i32
  %and37 = and i32 %conv36, 248
  %35 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i32 0, i32 3
  %36 = load i8, i8* %currentwhite, align 1
  %conv38 = zext i8 %36 to i32
  %and39 = and i32 %conv38, 3
  %conv40 = trunc i32 %and39 to i8
  %conv41 = zext i8 %conv40 to i32
  %or42 = or i32 %and37, %conv41
  %conv43 = trunc i32 %or42 to i8
  %37 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch44 = bitcast %union.GCObject* %37 to %struct.GCheader*
  %marked45 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch44, i32 0, i32 2
  store i8 %conv43, i8* %marked45, align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.end
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @freeobj(%struct.lua_State* %L, %union.GCObject* %o) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %o.addr = alloca %union.GCObject*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %union.GCObject* %o, %union.GCObject** %o.addr, align 8
  %0 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %gch = bitcast %union.GCObject* %0 to %struct.GCheader*
  %tt = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 1
  %1 = load i8, i8* %tt, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 9, label %sw.bb
    i32 6, label %sw.bb.1
    i32 10, label %sw.bb.2
    i32 5, label %sw.bb.3
    i32 8, label %sw.bb.4
    i32 4, label %sw.bb.5
    i32 7, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %p = bitcast %union.GCObject* %3 to %struct.Proto*
  call void @luaF_freeproto(%struct.lua_State* %2, %struct.Proto* %p)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %cl = bitcast %union.GCObject* %5 to %union.Closure*
  call void @luaF_freeclosure(%struct.lua_State* %4, %union.Closure* %cl)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %uv = bitcast %union.GCObject* %7 to %struct.UpVal*
  call void @luaF_freeupval(%struct.lua_State* %6, %struct.UpVal* %uv)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %h = bitcast %union.GCObject* %9 to %struct.Table*
  call void @luaH_free(%struct.lua_State* %8, %struct.Table* %h)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %th = bitcast %union.GCObject* %11 to %struct.lua_State*
  call void @luaE_freethread(%struct.lua_State* %10, %struct.lua_State* %th)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %13 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %strt = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 0
  %nuse = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt, i32 0, i32 1
  %14 = load i32, i32* %nuse, align 4
  %dec = add i32 %14, -1
  store i32 %dec, i32* %nuse, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %17 = bitcast %union.GCObject* %16 to i8*
  %18 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %ts = bitcast %union.GCObject* %18 to %union.TString*
  %tsv = bitcast %union.TString* %ts to %struct.anon.1*
  %len = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 5
  %19 = load i64, i64* %len, align 8
  %add = add i64 %19, 1
  %mul = mul i64 %add, 1
  %add6 = add i64 24, %mul
  %call = call i8* @luaM_realloc_(%struct.lua_State* %15, i8* %17, i64 %add6, i64 0)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %21 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %22 = bitcast %union.GCObject* %21 to i8*
  %23 = load %union.GCObject*, %union.GCObject** %o.addr, align 8
  %u = bitcast %union.GCObject* %23 to %union.Udata*
  %uv8 = bitcast %union.Udata* %u to %struct.anon.2*
  %len9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv8, i32 0, i32 5
  %24 = load i64, i64* %len9, align 8
  %add10 = add i64 40, %24
  %call11 = call i8* @luaM_realloc_(%struct.lua_State* %20, i8* %22, i64 %add10, i64 0)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

declare hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) #1

declare hidden void @luaF_freeclosure(%struct.lua_State*, %union.Closure*) #1

declare hidden void @luaF_freeupval(%struct.lua_State*, %struct.UpVal*) #1

declare hidden void @luaH_free(%struct.lua_State*, %struct.Table*) #1

declare hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) #1

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @propagatemark(%struct.global_State* %g) #0 {
entry:
  %retval = alloca i64, align 8
  %g.addr = alloca %struct.global_State*, align 8
  %o = alloca %union.GCObject*, align 8
  %h = alloca %struct.Table*, align 8
  %cl = alloca %union.Closure*, align 8
  %th = alloca %struct.lua_State*, align 8
  %p = alloca %struct.Proto*, align 8
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  %0 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i32 0, i32 8
  %1 = load %union.GCObject*, %union.GCObject** %gray, align 8
  store %union.GCObject* %1, %union.GCObject** %o, align 8
  %2 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch = bitcast %union.GCObject* %2 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %3 = load i8, i8* %marked, align 1
  %conv = zext i8 %3 to i32
  %or = or i32 %conv, 4
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, i8* %marked, align 1
  %4 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch2 = bitcast %union.GCObject* %4 to %struct.GCheader*
  %tt = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch2, i32 0, i32 1
  %5 = load i8, i8* %tt, align 1
  %conv3 = zext i8 %5 to i32
  switch i32 %conv3, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.15
    i32 8, label %sw.bb.36
    i32 9, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %union.GCObject*, %union.GCObject** %o, align 8
  %h4 = bitcast %union.GCObject* %6 to %struct.Table*
  store %struct.Table* %h4, %struct.Table** %h, align 8
  %7 = load %struct.Table*, %struct.Table** %h, align 8
  %gclist = getelementptr inbounds %struct.Table, %struct.Table* %7, i32 0, i32 9
  %8 = load %union.GCObject*, %union.GCObject** %gclist, align 8
  %9 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray5 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 8
  store %union.GCObject* %8, %union.GCObject** %gray5, align 8
  %10 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %11 = load %struct.Table*, %struct.Table** %h, align 8
  %call = call i32 @traversetable(%struct.global_State* %10, %struct.Table* %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %12 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch6 = bitcast %union.GCObject* %12 to %struct.GCheader*
  %marked7 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch6, i32 0, i32 2
  %13 = load i8, i8* %marked7, align 1
  %conv8 = zext i8 %13 to i32
  %and = and i32 %conv8, 251
  %conv9 = trunc i32 %and to i8
  store i8 %conv9, i8* %marked7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %14 = load %struct.Table*, %struct.Table** %h, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %14, i32 0, i32 10
  %15 = load i32, i32* %sizearray, align 4
  %conv10 = sext i32 %15 to i64
  %mul = mul i64 16, %conv10
  %add = add i64 64, %mul
  %16 = load %struct.Table*, %struct.Table** %h, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %16, i32 0, i32 4
  %17 = load i8, i8* %lsizenode, align 1
  %conv11 = zext i8 %17 to i32
  %shl = shl i32 1, %conv11
  %conv12 = sext i32 %shl to i64
  %mul13 = mul i64 40, %conv12
  %add14 = add i64 %add, %mul13
  store i64 %add14, i64* %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  %18 = load %union.GCObject*, %union.GCObject** %o, align 8
  %cl16 = bitcast %union.GCObject* %18 to %union.Closure*
  store %union.Closure* %cl16, %union.Closure** %cl, align 8
  %19 = load %union.Closure*, %union.Closure** %cl, align 8
  %c = bitcast %union.Closure* %19 to %struct.CClosure*
  %gclist17 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 5
  %20 = load %union.GCObject*, %union.GCObject** %gclist17, align 8
  %21 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray18 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 8
  store %union.GCObject* %20, %union.GCObject** %gray18, align 8
  %22 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %23 = load %union.Closure*, %union.Closure** %cl, align 8
  call void @traverseclosure(%struct.global_State* %22, %union.Closure* %23)
  %24 = load %union.Closure*, %union.Closure** %cl, align 8
  %c19 = bitcast %union.Closure* %24 to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c19, i32 0, i32 3
  %25 = load i8, i8* %isC, align 1
  %conv20 = zext i8 %25 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.15
  %26 = load %union.Closure*, %union.Closure** %cl, align 8
  %c22 = bitcast %union.Closure* %26 to %struct.CClosure*
  %nupvalues = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c22, i32 0, i32 4
  %27 = load i8, i8* %nupvalues, align 1
  %conv23 = zext i8 %27 to i32
  %sub = sub nsw i32 %conv23, 1
  %conv24 = sext i32 %sub to i64
  %mul25 = mul i64 16, %conv24
  %conv26 = trunc i64 %mul25 to i32
  %add27 = add nsw i32 56, %conv26
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.15
  %28 = load %union.Closure*, %union.Closure** %cl, align 8
  %l = bitcast %union.Closure* %28 to %struct.LClosure*
  %nupvalues28 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 4
  %29 = load i8, i8* %nupvalues28, align 1
  %conv29 = zext i8 %29 to i32
  %sub30 = sub nsw i32 %conv29, 1
  %conv31 = sext i32 %sub30 to i64
  %mul32 = mul i64 8, %conv31
  %conv33 = trunc i64 %mul32 to i32
  %add34 = add nsw i32 48, %conv33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add27, %cond.true ], [ %add34, %cond.false ]
  %conv35 = sext i32 %cond to i64
  store i64 %conv35, i64* %retval
  br label %return

sw.bb.36:                                         ; preds = %entry
  %30 = load %union.GCObject*, %union.GCObject** %o, align 8
  %th37 = bitcast %union.GCObject* %30 to %struct.lua_State*
  store %struct.lua_State* %th37, %struct.lua_State** %th, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %th, align 8
  %gclist38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 25
  %32 = load %union.GCObject*, %union.GCObject** %gclist38, align 8
  %33 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray39 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 8
  store %union.GCObject* %32, %union.GCObject** %gray39, align 8
  %34 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %grayagain = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i32 0, i32 9
  %35 = load %union.GCObject*, %union.GCObject** %grayagain, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %th, align 8
  %gclist40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 25
  store %union.GCObject* %35, %union.GCObject** %gclist40, align 8
  %37 = load %union.GCObject*, %union.GCObject** %o, align 8
  %38 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %grayagain41 = getelementptr inbounds %struct.global_State, %struct.global_State* %38, i32 0, i32 9
  store %union.GCObject* %37, %union.GCObject** %grayagain41, align 8
  %39 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch42 = bitcast %union.GCObject* %39 to %struct.GCheader*
  %marked43 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch42, i32 0, i32 2
  %40 = load i8, i8* %marked43, align 1
  %conv44 = zext i8 %40 to i32
  %and45 = and i32 %conv44, 251
  %conv46 = trunc i32 %and45 to i8
  store i8 %conv46, i8* %marked43, align 1
  %41 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %th, align 8
  call void @traversestack(%struct.global_State* %41, %struct.lua_State* %42)
  %43 = load %struct.lua_State*, %struct.lua_State** %th, align 8
  %stacksize = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 13
  %44 = load i32, i32* %stacksize, align 4
  %conv47 = sext i32 %44 to i64
  %mul48 = mul i64 16, %conv47
  %add49 = add i64 184, %mul48
  %45 = load %struct.lua_State*, %struct.lua_State** %th, align 8
  %size_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 14
  %46 = load i32, i32* %size_ci, align 4
  %conv50 = sext i32 %46 to i64
  %mul51 = mul i64 40, %conv50
  %add52 = add i64 %add49, %mul51
  store i64 %add52, i64* %retval
  br label %return

sw.bb.53:                                         ; preds = %entry
  %47 = load %union.GCObject*, %union.GCObject** %o, align 8
  %p54 = bitcast %union.GCObject* %47 to %struct.Proto*
  store %struct.Proto* %p54, %struct.Proto** %p, align 8
  %48 = load %struct.Proto*, %struct.Proto** %p, align 8
  %gclist55 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 18
  %49 = load %union.GCObject*, %union.GCObject** %gclist55, align 8
  %50 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray56 = getelementptr inbounds %struct.global_State, %struct.global_State* %50, i32 0, i32 8
  store %union.GCObject* %49, %union.GCObject** %gray56, align 8
  %51 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %52 = load %struct.Proto*, %struct.Proto** %p, align 8
  call void @traverseproto(%struct.global_State* %51, %struct.Proto* %52)
  %53 = load %struct.Proto*, %struct.Proto** %p, align 8
  %sizecode = getelementptr inbounds %struct.Proto, %struct.Proto* %53, i32 0, i32 12
  %54 = load i32, i32* %sizecode, align 4
  %conv57 = sext i32 %54 to i64
  %mul58 = mul i64 4, %conv57
  %add59 = add i64 120, %mul58
  %55 = load %struct.Proto*, %struct.Proto** %p, align 8
  %sizep = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i32 0, i32 14
  %56 = load i32, i32* %sizep, align 4
  %conv60 = sext i32 %56 to i64
  %mul61 = mul i64 8, %conv60
  %add62 = add i64 %add59, %mul61
  %57 = load %struct.Proto*, %struct.Proto** %p, align 8
  %sizek = getelementptr inbounds %struct.Proto, %struct.Proto* %57, i32 0, i32 11
  %58 = load i32, i32* %sizek, align 4
  %conv63 = sext i32 %58 to i64
  %mul64 = mul i64 16, %conv63
  %add65 = add i64 %add62, %mul64
  %59 = load %struct.Proto*, %struct.Proto** %p, align 8
  %sizelineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i32 0, i32 13
  %60 = load i32, i32* %sizelineinfo, align 4
  %conv66 = sext i32 %60 to i64
  %mul67 = mul i64 4, %conv66
  %add68 = add i64 %add65, %mul67
  %61 = load %struct.Proto*, %struct.Proto** %p, align 8
  %sizelocvars = getelementptr inbounds %struct.Proto, %struct.Proto* %61, i32 0, i32 15
  %62 = load i32, i32* %sizelocvars, align 4
  %conv69 = sext i32 %62 to i64
  %mul70 = mul i64 16, %conv69
  %add71 = add i64 %add68, %mul70
  %63 = load %struct.Proto*, %struct.Proto** %p, align 8
  %sizeupvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i32 0, i32 10
  %64 = load i32, i32* %sizeupvalues, align 4
  %conv72 = sext i32 %64 to i64
  %mul73 = mul i64 8, %conv72
  %add74 = add i64 %add71, %mul73
  store i64 %add74, i64* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.53, %sw.bb.36, %cond.end, %if.end
  %65 = load i64, i64* %retval
  ret i64 %65
}

; Function Attrs: nounwind uwtable
define internal void @atomic(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %g = alloca %struct.global_State*, align 8
  %udsize = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  call void @remarkupvals(%struct.global_State* %2)
  %3 = load %struct.global_State*, %struct.global_State** %g, align 8
  %call = call i64 @propagateall(%struct.global_State* %3)
  %4 = load %struct.global_State*, %struct.global_State** %g, align 8
  %weak = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 10
  %5 = load %union.GCObject*, %union.GCObject** %weak, align 8
  %6 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gray = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 8
  store %union.GCObject* %5, %union.GCObject** %gray, align 8
  %7 = load %struct.global_State*, %struct.global_State** %g, align 8
  %weak1 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 10
  store %union.GCObject* null, %union.GCObject** %weak1, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = bitcast %struct.lua_State* %8 to %union.GCObject*
  %gch = bitcast %union.GCObject* %9 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %10 = load i8, i8* %marked, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.global_State*, %struct.global_State** %g, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = bitcast %struct.lua_State* %12 to %union.GCObject*
  call void @reallymarkobject(%struct.global_State* %11, %union.GCObject* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.global_State*, %struct.global_State** %g, align 8
  call void @markmt(%struct.global_State* %14)
  %15 = load %struct.global_State*, %struct.global_State** %g, align 8
  %call2 = call i64 @propagateall(%struct.global_State* %15)
  %16 = load %struct.global_State*, %struct.global_State** %g, align 8
  %grayagain = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 9
  %17 = load %union.GCObject*, %union.GCObject** %grayagain, align 8
  %18 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gray3 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 8
  store %union.GCObject* %17, %union.GCObject** %gray3, align 8
  %19 = load %struct.global_State*, %struct.global_State** %g, align 8
  %grayagain4 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 9
  store %union.GCObject* null, %union.GCObject** %grayagain4, align 8
  %20 = load %struct.global_State*, %struct.global_State** %g, align 8
  %call5 = call i64 @propagateall(%struct.global_State* %20)
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i64 @luaC_separateudata(%struct.lua_State* %21, i32 0)
  store i64 %call6, i64* %udsize, align 8
  %22 = load %struct.global_State*, %struct.global_State** %g, align 8
  call void @marktmu(%struct.global_State* %22)
  %23 = load %struct.global_State*, %struct.global_State** %g, align 8
  %call7 = call i64 @propagateall(%struct.global_State* %23)
  %24 = load i64, i64* %udsize, align 8
  %add = add i64 %24, %call7
  store i64 %add, i64* %udsize, align 8
  %25 = load %struct.global_State*, %struct.global_State** %g, align 8
  %weak8 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 10
  %26 = load %union.GCObject*, %union.GCObject** %weak8, align 8
  call void @cleartable(%union.GCObject* %26)
  %27 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 3
  %28 = load i8, i8* %currentwhite, align 1
  %conv9 = zext i8 %28 to i32
  %xor = xor i32 %conv9, 3
  %conv10 = trunc i32 %xor to i8
  %29 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite11 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 3
  store i8 %conv10, i8* %currentwhite11, align 1
  %30 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepstrgc = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 5
  store i32 0, i32* %sweepstrgc, align 4
  %31 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 6
  %32 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepgc = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 7
  store %union.GCObject** %rootgc, %union.GCObject*** %sweepgc, align 8
  %33 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 4
  store i8 2, i8* %gcstate, align 1
  %34 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i32 0, i32 14
  %35 = load i64, i64* %totalbytes, align 8
  %36 = load i64, i64* %udsize, align 8
  %sub = sub i64 %35, %36
  %37 = load %struct.global_State*, %struct.global_State** %g, align 8
  %estimate = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 15
  store i64 %sub, i64* %estimate, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @checkSizes(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %g = alloca %struct.global_State*, align 8
  %newsize = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 0
  %nuse = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt, i32 0, i32 1
  %3 = load i32, i32* %nuse, align 4
  %4 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt1 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 0
  %size = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt1, i32 0, i32 2
  %5 = load i32, i32* %size, align 4
  %div = sdiv i32 %5, 4
  %cmp = icmp ult i32 %3, %div
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt2 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 0
  %size3 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt2, i32 0, i32 2
  %7 = load i32, i32* %size3, align 4
  %cmp4 = icmp sgt i32 %7, 64
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt5 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 0
  %size6 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt5, i32 0, i32 2
  %10 = load i32, i32* %size6, align 4
  %div7 = sdiv i32 %10, 2
  call void @luaS_resize(%struct.lua_State* %8, i32 %div7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 12
  %buffsize = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff, i32 0, i32 2
  %12 = load i64, i64* %buffsize, align 8
  %cmp8 = icmp ugt i64 %12, 64
  br i1 %cmp8, label %if.then.9, label %if.end.23

if.then.9:                                        ; preds = %if.end
  %13 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff10 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 12
  %buffsize11 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff10, i32 0, i32 2
  %14 = load i64, i64* %buffsize11, align 8
  %div12 = udiv i64 %14, 2
  store i64 %div12, i64* %newsize, align 8
  %15 = load i64, i64* %newsize, align 8
  %add = add i64 %15, 1
  %cmp13 = icmp ule i64 %add, -3
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff14 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 12
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff14, i32 0, i32 0
  %18 = load i8*, i8** %buffer, align 8
  %19 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff15 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 12
  %buffsize16 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff15, i32 0, i32 2
  %20 = load i64, i64* %buffsize16, align 8
  %mul = mul i64 %20, 1
  %21 = load i64, i64* %newsize, align 8
  %mul17 = mul i64 %21, 1
  %call = call i8* @luaM_realloc_(%struct.lua_State* %16, i8* %18, i64 %mul, i64 %mul17)
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call18 = call i8* @luaM_toobig(%struct.lua_State* %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call18, %cond.false ]
  %23 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff19 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 12
  %buffer20 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff19, i32 0, i32 0
  store i8* %cond, i8** %buffer20, align 8
  %24 = load i64, i64* %newsize, align 8
  %25 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff21 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 12
  %buffsize22 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff21, i32 0, i32 2
  store i64 %24, i64* %buffsize22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %cond.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @traversetable(%struct.global_State* %g, %struct.Table* %h) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.global_State*, align 8
  %h.addr = alloca %struct.Table*, align 8
  %i = alloca i32, align 4
  %weakkey = alloca i32, align 4
  %weakvalue = alloca i32, align 4
  %mode = alloca %struct.lua_TValue*, align 8
  %n = alloca %struct.Node*, align 8
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  store %struct.Table* %h, %struct.Table** %h.addr, align 8
  store i32 0, i32* %weakkey, align 4
  store i32 0, i32* %weakvalue, align 4
  %0 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %metatable = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 5
  %1 = load %struct.Table*, %struct.Table** %metatable, align 8
  %tobool = icmp ne %struct.Table* %1, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %metatable1 = getelementptr inbounds %struct.Table, %struct.Table* %2, i32 0, i32 5
  %3 = load %struct.Table*, %struct.Table** %metatable1, align 8
  %4 = bitcast %struct.Table* %3 to %union.GCObject*
  %gch = bitcast %union.GCObject* %4 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %5 = load i8, i8* %marked, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 3
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %7 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %metatable4 = getelementptr inbounds %struct.Table, %struct.Table* %7, i32 0, i32 5
  %8 = load %struct.Table*, %struct.Table** %metatable4, align 8
  %9 = bitcast %struct.Table* %8 to %union.GCObject*
  call void @reallymarkobject(%struct.global_State* %6, %union.GCObject* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %metatable6 = getelementptr inbounds %struct.Table, %struct.Table* %10, i32 0, i32 5
  %11 = load %struct.Table*, %struct.Table** %metatable6, align 8
  %cmp = icmp eq %struct.Table* %11, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end.15

cond.false:                                       ; preds = %if.end.5
  %12 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %metatable8 = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 5
  %13 = load %struct.Table*, %struct.Table** %metatable8, align 8
  %flags = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 3
  %14 = load i8, i8* %flags, align 1
  %conv9 = zext i8 %14 to i32
  %and10 = and i32 %conv9, 8
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.false
  br label %cond.end

cond.false.13:                                    ; preds = %cond.false
  %15 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %metatable14 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 5
  %16 = load %struct.Table*, %struct.Table** %metatable14, align 8
  %17 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %tmname = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 24
  %arrayidx = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %tmname, i32 0, i64 3
  %18 = load %union.TString*, %union.TString** %arrayidx, align 8
  %call = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %16, i32 3, %union.TString* %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.13, %cond.true.12
  %cond = phi %struct.lua_TValue* [ null, %cond.true.12 ], [ %call, %cond.false.13 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end, %cond.true
  %cond16 = phi %struct.lua_TValue* [ null, %cond.true ], [ %cond, %cond.end ]
  store %struct.lua_TValue* %cond16, %struct.lua_TValue** %mode, align 8
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %mode, align 8
  %tobool17 = icmp ne %struct.lua_TValue* %19, null
  br i1 %tobool17, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %cond.end.15
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %mode, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 1
  %21 = load i32, i32* %tt, align 4
  %cmp18 = icmp eq i32 %21, 4
  br i1 %cmp18, label %if.then.20, label %if.end.47

if.then.20:                                       ; preds = %land.lhs.true
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %mode, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %23 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %23 to %union.TString*
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %ts, i64 1
  %24 = bitcast %union.TString* %add.ptr to i8*
  %call21 = call i8* @strchr(i8* %24, i32 107) #4
  %cmp22 = icmp ne i8* %call21, null
  %conv23 = zext i1 %cmp22 to i32
  store i32 %conv23, i32* %weakkey, align 4
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %mode, align 8
  %value24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %gc25 = bitcast %union.Value* %value24 to %union.GCObject**
  %26 = load %union.GCObject*, %union.GCObject** %gc25, align 8
  %ts26 = bitcast %union.GCObject* %26 to %union.TString*
  %add.ptr27 = getelementptr inbounds %union.TString, %union.TString* %ts26, i64 1
  %27 = bitcast %union.TString* %add.ptr27 to i8*
  %call28 = call i8* @strchr(i8* %27, i32 118) #4
  %cmp29 = icmp ne i8* %call28, null
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, i32* %weakvalue, align 4
  %28 = load i32, i32* %weakkey, align 4
  %tobool31 = icmp ne i32 %28, 0
  br i1 %tobool31, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %29 = load i32, i32* %weakvalue, align 4
  %tobool32 = icmp ne i32 %29, 0
  br i1 %tobool32, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %lor.lhs.false, %if.then.20
  %30 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %marked34 = getelementptr inbounds %struct.Table, %struct.Table* %30, i32 0, i32 2
  %31 = load i8, i8* %marked34, align 1
  %conv35 = zext i8 %31 to i32
  %and36 = and i32 %conv35, -25
  %conv37 = trunc i32 %and36 to i8
  store i8 %conv37, i8* %marked34, align 1
  %32 = load i32, i32* %weakkey, align 4
  %shl = shl i32 %32, 3
  %33 = load i32, i32* %weakvalue, align 4
  %shl38 = shl i32 %33, 4
  %or = or i32 %shl, %shl38
  %conv39 = trunc i32 %or to i8
  %conv40 = zext i8 %conv39 to i32
  %34 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %marked41 = getelementptr inbounds %struct.Table, %struct.Table* %34, i32 0, i32 2
  %35 = load i8, i8* %marked41, align 1
  %conv42 = zext i8 %35 to i32
  %or43 = or i32 %conv42, %conv40
  %conv44 = trunc i32 %or43 to i8
  store i8 %conv44, i8* %marked41, align 1
  %36 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %weak = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 10
  %37 = load %union.GCObject*, %union.GCObject** %weak, align 8
  %38 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %gclist = getelementptr inbounds %struct.Table, %struct.Table* %38, i32 0, i32 9
  store %union.GCObject* %37, %union.GCObject** %gclist, align 8
  %39 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %40 = bitcast %struct.Table* %39 to %union.GCObject*
  %41 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %weak45 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i32 0, i32 10
  store %union.GCObject* %40, %union.GCObject** %weak45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.33, %lor.lhs.false
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true, %cond.end.15
  %42 = load i32, i32* %weakkey, align 4
  %tobool48 = icmp ne i32 %42, 0
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.52

land.lhs.true.49:                                 ; preds = %if.end.47
  %43 = load i32, i32* %weakvalue, align 4
  %tobool50 = icmp ne i32 %43, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %land.lhs.true.49, %if.end.47
  %44 = load i32, i32* %weakvalue, align 4
  %tobool53 = icmp ne i32 %44, 0
  br i1 %tobool53, label %if.end.78, label %if.then.54

if.then.54:                                       ; preds = %if.end.52
  %45 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %45, i32 0, i32 10
  %46 = load i32, i32* %sizearray, align 4
  store i32 %46, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.77, %if.then.54
  %47 = load i32, i32* %i, align 4
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %i, align 4
  %tobool55 = icmp ne i32 %47, 0
  br i1 %tobool55, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load i32, i32* %i, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %array = getelementptr inbounds %struct.Table, %struct.Table* %49, i32 0, i32 6
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %array, align 8
  %arrayidx56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i64 %idxprom
  %tt57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx56, i32 0, i32 1
  %51 = load i32, i32* %tt57, align 4
  %cmp58 = icmp sge i32 %51, 4
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.77

land.lhs.true.60:                                 ; preds = %while.body
  %52 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %52 to i64
  %53 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %array62 = getelementptr inbounds %struct.Table, %struct.Table* %53, i32 0, i32 6
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %array62, align 8
  %arrayidx63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i64 %idxprom61
  %value64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx63, i32 0, i32 0
  %gc65 = bitcast %union.Value* %value64 to %union.GCObject**
  %55 = load %union.GCObject*, %union.GCObject** %gc65, align 8
  %gch66 = bitcast %union.GCObject* %55 to %struct.GCheader*
  %marked67 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch66, i32 0, i32 2
  %56 = load i8, i8* %marked67, align 1
  %conv68 = zext i8 %56 to i32
  %and69 = and i32 %conv68, 3
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.77

if.then.71:                                       ; preds = %land.lhs.true.60
  %57 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %58 to i64
  %59 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %array73 = getelementptr inbounds %struct.Table, %struct.Table* %59, i32 0, i32 6
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %array73, align 8
  %arrayidx74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 %idxprom72
  %value75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx74, i32 0, i32 0
  %gc76 = bitcast %union.Value* %value75 to %union.GCObject**
  %61 = load %union.GCObject*, %union.GCObject** %gc76, align 8
  call void @reallymarkobject(%struct.global_State* %57, %union.GCObject* %61)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.71, %land.lhs.true.60, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.78

if.end.78:                                        ; preds = %while.end, %if.end.52
  %62 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %62, i32 0, i32 4
  %63 = load i8, i8* %lsizenode, align 1
  %conv79 = zext i8 %63 to i32
  %shl80 = shl i32 1, %conv79
  store i32 %shl80, i32* %i, align 4
  br label %while.cond.81

while.cond.81:                                    ; preds = %if.end.134, %if.end.78
  %64 = load i32, i32* %i, align 4
  %dec82 = add nsw i32 %64, -1
  store i32 %dec82, i32* %i, align 4
  %tobool83 = icmp ne i32 %64, 0
  br i1 %tobool83, label %while.body.84, label %while.end.135

while.body.84:                                    ; preds = %while.cond.81
  %65 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %65 to i64
  %66 = load %struct.Table*, %struct.Table** %h.addr, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %66, i32 0, i32 7
  %67 = load %struct.Node*, %struct.Node** %node, align 8
  %arrayidx86 = getelementptr inbounds %struct.Node, %struct.Node* %67, i64 %idxprom85
  store %struct.Node* %arrayidx86, %struct.Node** %n, align 8
  %68 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val = getelementptr inbounds %struct.Node, %struct.Node* %68, i32 0, i32 0
  %tt87 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val, i32 0, i32 1
  %69 = load i32, i32* %tt87, align 4
  %cmp88 = icmp eq i32 %69, 0
  br i1 %cmp88, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %while.body.84
  %70 = load %struct.Node*, %struct.Node** %n, align 8
  call void @removeentry(%struct.Node* %70)
  br label %if.end.134

if.else:                                          ; preds = %while.body.84
  %71 = load i32, i32* %weakkey, align 4
  %tobool91 = icmp ne i32 %71, 0
  br i1 %tobool91, label %if.end.112, label %if.then.92

if.then.92:                                       ; preds = %if.else
  %72 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %72, i32 0, i32 1
  %nk = bitcast %union.TKey* %i_key to %struct.anon.0*
  %tt93 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk, i32 0, i32 1
  %73 = load i32, i32* %tt93, align 4
  %cmp94 = icmp sge i32 %73, 4
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.111

land.lhs.true.96:                                 ; preds = %if.then.92
  %74 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key97 = getelementptr inbounds %struct.Node, %struct.Node* %74, i32 0, i32 1
  %nk98 = bitcast %union.TKey* %i_key97 to %struct.anon.0*
  %value99 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk98, i32 0, i32 0
  %gc100 = bitcast %union.Value* %value99 to %union.GCObject**
  %75 = load %union.GCObject*, %union.GCObject** %gc100, align 8
  %gch101 = bitcast %union.GCObject* %75 to %struct.GCheader*
  %marked102 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch101, i32 0, i32 2
  %76 = load i8, i8* %marked102, align 1
  %conv103 = zext i8 %76 to i32
  %and104 = and i32 %conv103, 3
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.111

if.then.106:                                      ; preds = %land.lhs.true.96
  %77 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %78 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key107 = getelementptr inbounds %struct.Node, %struct.Node* %78, i32 0, i32 1
  %nk108 = bitcast %union.TKey* %i_key107 to %struct.anon.0*
  %value109 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk108, i32 0, i32 0
  %gc110 = bitcast %union.Value* %value109 to %union.GCObject**
  %79 = load %union.GCObject*, %union.GCObject** %gc110, align 8
  call void @reallymarkobject(%struct.global_State* %77, %union.GCObject* %79)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.106, %land.lhs.true.96, %if.then.92
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.else
  %80 = load i32, i32* %weakvalue, align 4
  %tobool113 = icmp ne i32 %80, 0
  br i1 %tobool113, label %if.end.133, label %if.then.114

if.then.114:                                      ; preds = %if.end.112
  %81 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val115 = getelementptr inbounds %struct.Node, %struct.Node* %81, i32 0, i32 0
  %tt116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val115, i32 0, i32 1
  %82 = load i32, i32* %tt116, align 4
  %cmp117 = icmp sge i32 %82, 4
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.132

land.lhs.true.119:                                ; preds = %if.then.114
  %83 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val120 = getelementptr inbounds %struct.Node, %struct.Node* %83, i32 0, i32 0
  %value121 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val120, i32 0, i32 0
  %gc122 = bitcast %union.Value* %value121 to %union.GCObject**
  %84 = load %union.GCObject*, %union.GCObject** %gc122, align 8
  %gch123 = bitcast %union.GCObject* %84 to %struct.GCheader*
  %marked124 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch123, i32 0, i32 2
  %85 = load i8, i8* %marked124, align 1
  %conv125 = zext i8 %85 to i32
  %and126 = and i32 %conv125, 3
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.132

if.then.128:                                      ; preds = %land.lhs.true.119
  %86 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %87 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val129 = getelementptr inbounds %struct.Node, %struct.Node* %87, i32 0, i32 0
  %value130 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val129, i32 0, i32 0
  %gc131 = bitcast %union.Value* %value130 to %union.GCObject**
  %88 = load %union.GCObject*, %union.GCObject** %gc131, align 8
  call void @reallymarkobject(%struct.global_State* %86, %union.GCObject* %88)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.128, %land.lhs.true.119, %if.then.114
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.112
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.90
  br label %while.cond.81

while.end.135:                                    ; preds = %while.cond.81
  %89 = load i32, i32* %weakkey, align 4
  %tobool136 = icmp ne i32 %89, 0
  br i1 %tobool136, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end.135
  %90 = load i32, i32* %weakvalue, align 4
  %tobool137 = icmp ne i32 %90, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end.135
  %91 = phi i1 [ true, %while.end.135 ], [ %tobool137, %lor.rhs ]
  %lor.ext = zext i1 %91 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.51
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal void @traverseclosure(%struct.global_State* %g, %union.Closure* %cl) #0 {
entry:
  %g.addr = alloca %struct.global_State*, align 8
  %cl.addr = alloca %union.Closure*, align 8
  %i = alloca i32, align 4
  %i29 = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  store %union.Closure* %cl, %union.Closure** %cl.addr, align 8
  %0 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %c = bitcast %union.Closure* %0 to %struct.CClosure*
  %env = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 6
  %1 = load %struct.Table*, %struct.Table** %env, align 8
  %2 = bitcast %struct.Table* %1 to %union.GCObject*
  %gch = bitcast %union.GCObject* %2 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %3 = load i8, i8* %marked, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %5 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %c1 = bitcast %union.Closure* %5 to %struct.CClosure*
  %env2 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c1, i32 0, i32 6
  %6 = load %struct.Table*, %struct.Table** %env2, align 8
  %7 = bitcast %struct.Table* %6 to %union.GCObject*
  call void @reallymarkobject(%struct.global_State* %4, %union.GCObject* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %c3 = bitcast %union.Closure* %8 to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c3, i32 0, i32 3
  %9 = load i8, i8* %isC, align 1
  %tobool4 = icmp ne i8 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %10 = load i32, i32* %i, align 4
  %11 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %c6 = bitcast %union.Closure* %11 to %struct.CClosure*
  %nupvalues = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c6, i32 0, i32 4
  %12 = load i8, i8* %nupvalues, align 1
  %conv7 = zext i8 %12 to i32
  %cmp = icmp slt i32 %10, %conv7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %c9 = bitcast %union.Closure* %14 to %struct.CClosure*
  %upvalue = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c9, i32 0, i32 8
  %arrayidx = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %upvalue, i32 0, i64 %idxprom
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 1
  %15 = load i32, i32* %tt, align 4
  %cmp10 = icmp sge i32 %15, 4
  br i1 %cmp10, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %c13 = bitcast %union.Closure* %17 to %struct.CClosure*
  %upvalue14 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c13, i32 0, i32 8
  %arrayidx15 = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %upvalue14, i32 0, i64 %idxprom12
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx15, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %18 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %gch16 = bitcast %union.GCObject* %18 to %struct.GCheader*
  %marked17 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch16, i32 0, i32 2
  %19 = load i8, i8* %marked17, align 1
  %conv18 = zext i8 %19 to i32
  %and19 = and i32 %conv18, 3
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %land.lhs.true
  %20 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %c23 = bitcast %union.Closure* %22 to %struct.CClosure*
  %upvalue24 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c23, i32 0, i32 8
  %arrayidx25 = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %upvalue24, i32 0, i64 %idxprom22
  %value26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx25, i32 0, i32 0
  %gc27 = bitcast %union.Value* %value26 to %union.GCObject**
  %23 = load %union.GCObject*, %union.GCObject** %gc27, align 8
  call void @reallymarkobject(%struct.global_State* %20, %union.GCObject* %23)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.21, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.63

if.else:                                          ; preds = %if.end
  %25 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %l = bitcast %union.Closure* %25 to %struct.LClosure*
  %p = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %26 = load %struct.Proto*, %struct.Proto** %p, align 8
  %27 = bitcast %struct.Proto* %26 to %union.GCObject*
  %gch30 = bitcast %union.GCObject* %27 to %struct.GCheader*
  %marked31 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch30, i32 0, i32 2
  %28 = load i8, i8* %marked31, align 1
  %conv32 = zext i8 %28 to i32
  %and33 = and i32 %conv32, 3
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.else
  %29 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %30 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %l36 = bitcast %union.Closure* %30 to %struct.LClosure*
  %p37 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l36, i32 0, i32 7
  %31 = load %struct.Proto*, %struct.Proto** %p37, align 8
  %32 = bitcast %struct.Proto* %31 to %union.GCObject*
  call void @reallymarkobject(%struct.global_State* %29, %union.GCObject* %32)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.else
  store i32 0, i32* %i29, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.60, %if.end.38
  %33 = load i32, i32* %i29, align 4
  %34 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %l40 = bitcast %union.Closure* %34 to %struct.LClosure*
  %nupvalues41 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l40, i32 0, i32 4
  %35 = load i8, i8* %nupvalues41, align 1
  %conv42 = zext i8 %35 to i32
  %cmp43 = icmp slt i32 %33, %conv42
  br i1 %cmp43, label %for.body.45, label %for.end.62

for.body.45:                                      ; preds = %for.cond.39
  %36 = load i32, i32* %i29, align 4
  %idxprom46 = sext i32 %36 to i64
  %37 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %l47 = bitcast %union.Closure* %37 to %struct.LClosure*
  %upvals = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l47, i32 0, i32 8
  %arrayidx48 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %upvals, i32 0, i64 %idxprom46
  %38 = load %struct.UpVal*, %struct.UpVal** %arrayidx48, align 8
  %39 = bitcast %struct.UpVal* %38 to %union.GCObject*
  %gch49 = bitcast %union.GCObject* %39 to %struct.GCheader*
  %marked50 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch49, i32 0, i32 2
  %40 = load i8, i8* %marked50, align 1
  %conv51 = zext i8 %40 to i32
  %and52 = and i32 %conv51, 3
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %for.body.45
  %41 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %42 = load i32, i32* %i29, align 4
  %idxprom55 = sext i32 %42 to i64
  %43 = load %union.Closure*, %union.Closure** %cl.addr, align 8
  %l56 = bitcast %union.Closure* %43 to %struct.LClosure*
  %upvals57 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l56, i32 0, i32 8
  %arrayidx58 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %upvals57, i32 0, i64 %idxprom55
  %44 = load %struct.UpVal*, %struct.UpVal** %arrayidx58, align 8
  %45 = bitcast %struct.UpVal* %44 to %union.GCObject*
  call void @reallymarkobject(%struct.global_State* %41, %union.GCObject* %45)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %for.body.45
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %46 = load i32, i32* %i29, align 4
  %inc61 = add nsw i32 %46, 1
  store i32 %inc61, i32* %i29, align 4
  br label %for.cond.39

for.end.62:                                       ; preds = %for.cond.39
  br label %if.end.63

if.end.63:                                        ; preds = %for.end.62, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @traversestack(%struct.global_State* %g, %struct.lua_State* %l) #0 {
entry:
  %g.addr = alloca %struct.global_State*, align 8
  %l.addr = alloca %struct.lua_State*, align 8
  %o = alloca %struct.lua_TValue*, align 8
  %lim = alloca %struct.lua_TValue*, align 8
  %ci = alloca %struct.CallInfo*, align 8
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  store %struct.lua_State* %l, %struct.lua_State** %l.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %l.addr, align 8
  %l_gt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 22
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_gt, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %cmp = icmp sge i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %l.addr, align 8
  %l_gt1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 22
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_gt1, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %3 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %gch = bitcast %union.GCObject* %3 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %4 = load i8, i8* %marked, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %l.addr, align 8
  %l_gt2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 22
  %value3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_gt2, i32 0, i32 0
  %gc4 = bitcast %union.Value* %value3 to %union.GCObject**
  %7 = load %union.GCObject*, %union.GCObject** %gc4, align 8
  call void @reallymarkobject(%struct.global_State* %5, %union.GCObject* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %l.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 4
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %9, %struct.lua_TValue** %lim, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %l.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 12
  %11 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  store %struct.CallInfo* %11, %struct.CallInfo** %ci, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %l.addr, align 8
  %ci5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 7
  %14 = load %struct.CallInfo*, %struct.CallInfo** %ci5, align 8
  %cmp6 = icmp ule %struct.CallInfo* %12, %14
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %lim, align 8
  %16 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %top8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i32 0, i32 2
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top8, align 8
  %cmp9 = icmp ult %struct.lua_TValue* %15, %17
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.body
  %18 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %top12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 2
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %top12, align 8
  store %struct.lua_TValue* %19, %struct.lua_TValue** %lim, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %20 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %incdec.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i32 1
  store %struct.CallInfo* %incdec.ptr, %struct.CallInfo** %ci, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.lua_State*, %struct.lua_State** %l.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 10
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %o, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.34, %for.end
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %l.addr, align 8
  %top15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 4
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %top15, align 8
  %cmp16 = icmp ult %struct.lua_TValue* %23, %25
  br i1 %cmp16, label %for.body.18, label %for.end.36

for.body.18:                                      ; preds = %for.cond.14
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  %27 = load i32, i32* %tt19, align 4
  %cmp20 = icmp sge i32 %27, 4
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.33

land.lhs.true.22:                                 ; preds = %for.body.18
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 0
  %gc24 = bitcast %union.Value* %value23 to %union.GCObject**
  %29 = load %union.GCObject*, %union.GCObject** %gc24, align 8
  %gch25 = bitcast %union.GCObject* %29 to %struct.GCheader*
  %marked26 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch25, i32 0, i32 2
  %30 = load i8, i8* %marked26, align 1
  %conv27 = zext i8 %30 to i32
  %and28 = and i32 %conv27, 3
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %land.lhs.true.22
  %31 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 0
  %gc32 = bitcast %union.Value* %value31 to %union.GCObject**
  %33 = load %union.GCObject*, %union.GCObject** %gc32, align 8
  call void @reallymarkobject(%struct.global_State* %31, %union.GCObject* %33)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %land.lhs.true.22, %for.body.18
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %incdec.ptr35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 1
  store %struct.lua_TValue* %incdec.ptr35, %struct.lua_TValue** %o, align 8
  br label %for.cond.14

for.end.36:                                       ; preds = %for.cond.14
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.42, %for.end.36
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %lim, align 8
  %cmp38 = icmp ule %struct.lua_TValue* %35, %36
  br i1 %cmp38, label %for.body.40, label %for.end.44

for.body.40:                                      ; preds = %for.cond.37
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 1
  store i32 0, i32* %tt41, align 4
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.40
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %incdec.ptr43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i32 1
  store %struct.lua_TValue* %incdec.ptr43, %struct.lua_TValue** %o, align 8
  br label %for.cond.37

for.end.44:                                       ; preds = %for.cond.37
  %39 = load %struct.lua_State*, %struct.lua_State** %l.addr, align 8
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %lim, align 8
  call void @checkstacksizes(%struct.lua_State* %39, %struct.lua_TValue* %40)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @traverseproto(%struct.global_State* %g, %struct.Proto* %f) #0 {
entry:
  %g.addr = alloca %struct.global_State*, align 8
  %f.addr = alloca %struct.Proto*, align 8
  %i = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  store %struct.Proto* %f, %struct.Proto** %f.addr, align 8
  %0 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %source = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i32 0, i32 9
  %1 = load %union.TString*, %union.TString** %source, align 8
  %tobool = icmp ne %union.TString* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %source1 = getelementptr inbounds %struct.Proto, %struct.Proto* %2, i32 0, i32 9
  %3 = load %union.TString*, %union.TString** %source1, align 8
  %tsv = bitcast %union.TString* %3 to %struct.anon.1*
  %marked = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 2
  %4 = load i8, i8* %marked, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 252
  %conv2 = trunc i32 %and to i8
  store i8 %conv2, i8* %marked, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizek = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 11
  %7 = load i32, i32* %sizek, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %k = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 3
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i64 %idxprom
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 1
  %11 = load i32, i32* %tt, align 4
  %cmp4 = icmp sge i32 %11, 4
  br i1 %cmp4, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %k7 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 3
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %k7, align 8
  %arrayidx8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 %idxprom6
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx8, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %15 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %gch = bitcast %union.GCObject* %15 to %struct.GCheader*
  %marked9 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %16 = load i8, i8* %marked9, align 1
  %conv10 = zext i8 %16 to i32
  %and11 = and i32 %conv10, 3
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %land.lhs.true
  %17 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %k15 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 3
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %k15, align 8
  %arrayidx16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %idxprom14
  %value17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx16, i32 0, i32 0
  %gc18 = bitcast %union.Value* %value17 to %union.GCObject**
  %21 = load %union.GCObject*, %union.GCObject** %gc18, align 8
  call void @reallymarkobject(%struct.global_State* %17, %union.GCObject* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.13, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.37, %for.end
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizeupvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 10
  %25 = load i32, i32* %sizeupvalues, align 4
  %cmp21 = icmp slt i32 %23, %25
  br i1 %cmp21, label %for.body.23, label %for.end.39

for.body.23:                                      ; preds = %for.cond.20
  %26 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %upvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 8
  %28 = load %union.TString**, %union.TString*** %upvalues, align 8
  %arrayidx25 = getelementptr inbounds %union.TString*, %union.TString** %28, i64 %idxprom24
  %29 = load %union.TString*, %union.TString** %arrayidx25, align 8
  %tobool26 = icmp ne %union.TString* %29, null
  br i1 %tobool26, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %for.body.23
  %30 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %upvalues29 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 8
  %32 = load %union.TString**, %union.TString*** %upvalues29, align 8
  %arrayidx30 = getelementptr inbounds %union.TString*, %union.TString** %32, i64 %idxprom28
  %33 = load %union.TString*, %union.TString** %arrayidx30, align 8
  %tsv31 = bitcast %union.TString* %33 to %struct.anon.1*
  %marked32 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv31, i32 0, i32 2
  %34 = load i8, i8* %marked32, align 1
  %conv33 = zext i8 %34 to i32
  %and34 = and i32 %conv33, 252
  %conv35 = trunc i32 %and34 to i8
  store i8 %conv35, i8* %marked32, align 1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.27, %for.body.23
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %35 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %35, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.20

for.end.39:                                       ; preds = %for.cond.20
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.62, %for.end.39
  %36 = load i32, i32* %i, align 4
  %37 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizep = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i32 0, i32 14
  %38 = load i32, i32* %sizep, align 4
  %cmp41 = icmp slt i32 %36, %38
  br i1 %cmp41, label %for.body.43, label %for.end.64

for.body.43:                                      ; preds = %for.cond.40
  %39 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %39 to i64
  %40 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %p = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i32 0, i32 5
  %41 = load %struct.Proto**, %struct.Proto*** %p, align 8
  %arrayidx45 = getelementptr inbounds %struct.Proto*, %struct.Proto** %41, i64 %idxprom44
  %42 = load %struct.Proto*, %struct.Proto** %arrayidx45, align 8
  %tobool46 = icmp ne %struct.Proto* %42, null
  br i1 %tobool46, label %if.then.47, label %if.end.61

if.then.47:                                       ; preds = %for.body.43
  %43 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %43 to i64
  %44 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %p49 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 5
  %45 = load %struct.Proto**, %struct.Proto*** %p49, align 8
  %arrayidx50 = getelementptr inbounds %struct.Proto*, %struct.Proto** %45, i64 %idxprom48
  %46 = load %struct.Proto*, %struct.Proto** %arrayidx50, align 8
  %47 = bitcast %struct.Proto* %46 to %union.GCObject*
  %gch51 = bitcast %union.GCObject* %47 to %struct.GCheader*
  %marked52 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch51, i32 0, i32 2
  %48 = load i8, i8* %marked52, align 1
  %conv53 = zext i8 %48 to i32
  %and54 = and i32 %conv53, 3
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %if.then.47
  %49 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %50 to i64
  %51 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %p58 = getelementptr inbounds %struct.Proto, %struct.Proto* %51, i32 0, i32 5
  %52 = load %struct.Proto**, %struct.Proto*** %p58, align 8
  %arrayidx59 = getelementptr inbounds %struct.Proto*, %struct.Proto** %52, i64 %idxprom57
  %53 = load %struct.Proto*, %struct.Proto** %arrayidx59, align 8
  %54 = bitcast %struct.Proto* %53 to %union.GCObject*
  call void @reallymarkobject(%struct.global_State* %49, %union.GCObject* %54)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %if.then.47
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %for.body.43
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %55 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %55, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.40

for.end.64:                                       ; preds = %for.cond.40
  store i32 0, i32* %i, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.83, %for.end.64
  %56 = load i32, i32* %i, align 4
  %57 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizelocvars = getelementptr inbounds %struct.Proto, %struct.Proto* %57, i32 0, i32 15
  %58 = load i32, i32* %sizelocvars, align 4
  %cmp66 = icmp slt i32 %56, %58
  br i1 %cmp66, label %for.body.68, label %for.end.85

for.body.68:                                      ; preds = %for.cond.65
  %59 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %59 to i64
  %60 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %60, i32 0, i32 7
  %61 = load %struct.LocVar*, %struct.LocVar** %locvars, align 8
  %arrayidx70 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %61, i64 %idxprom69
  %varname = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx70, i32 0, i32 0
  %62 = load %union.TString*, %union.TString** %varname, align 8
  %tobool71 = icmp ne %union.TString* %62, null
  br i1 %tobool71, label %if.then.72, label %if.end.82

if.then.72:                                       ; preds = %for.body.68
  %63 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %63 to i64
  %64 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars74 = getelementptr inbounds %struct.Proto, %struct.Proto* %64, i32 0, i32 7
  %65 = load %struct.LocVar*, %struct.LocVar** %locvars74, align 8
  %arrayidx75 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %65, i64 %idxprom73
  %varname76 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx75, i32 0, i32 0
  %66 = load %union.TString*, %union.TString** %varname76, align 8
  %tsv77 = bitcast %union.TString* %66 to %struct.anon.1*
  %marked78 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv77, i32 0, i32 2
  %67 = load i8, i8* %marked78, align 1
  %conv79 = zext i8 %67 to i32
  %and80 = and i32 %conv79, 252
  %conv81 = trunc i32 %and80 to i8
  store i8 %conv81, i8* %marked78, align 1
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.72, %for.body.68
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %68 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %68, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.65

for.end.85:                                       ; preds = %for.cond.65
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @removeentry(%struct.Node* %n) #0 {
entry:
  %n.addr = alloca %struct.Node*, align 8
  store %struct.Node* %n, %struct.Node** %n.addr, align 8
  %0 = load %struct.Node*, %struct.Node** %n.addr, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %0, i32 0, i32 1
  %nk = bitcast %union.TKey* %i_key to %struct.anon.0*
  %tt = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %cmp = icmp sge i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Node*, %struct.Node** %n.addr, align 8
  %i_key1 = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 1
  %nk2 = bitcast %union.TKey* %i_key1 to %struct.anon.0*
  %tt3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %nk2, i32 0, i32 1
  store i32 11, i32* %tt3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @checkstacksizes(%struct.lua_State* %L, %struct.lua_TValue* %max) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %max.addr = alloca %struct.lua_TValue*, align 8
  %ci_used = alloca i32, align 4
  %s_used = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %max, %struct.lua_TValue** %max.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 7
  %1 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 12
  %3 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.CallInfo* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.CallInfo* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %ci_used, align 4
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %max.addr, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 10
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.lua_TValue* %4 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.lua_TValue* %6 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 16
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %s_used, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 14
  %8 = load i32, i32* %size_ci, align 4
  %cmp = icmp sgt i32 %8, 20000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.26

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %ci_used, align 4
  %mul = mul nsw i32 4, %9
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 14
  %11 = load i32, i32* %size_ci7, align 4
  %cmp8 = icmp slt i32 %mul, %11
  br i1 %cmp8, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 14
  %13 = load i32, i32* %size_ci10, align 4
  %cmp11 = icmp slt i32 16, %13
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 14
  %16 = load i32, i32* %size_ci14, align 4
  %div = sdiv i32 %16, 2
  call void @luaD_reallocCI(%struct.lua_State* %14, i32 %div)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true, %if.end
  %17 = load i32, i32* %s_used, align 4
  %mul16 = mul nsw i32 4, %17
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stacksize = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 13
  %19 = load i32, i32* %stacksize, align 4
  %cmp17 = icmp slt i32 %mul16, %19
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.26

land.lhs.true.19:                                 ; preds = %if.end.15
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stacksize20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 13
  %21 = load i32, i32* %stacksize20, align 4
  %cmp21 = icmp slt i32 90, %21
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %land.lhs.true.19
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stacksize24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 13
  %24 = load i32, i32* %stacksize24, align 4
  %div25 = sdiv i32 %24, 2
  call void @luaD_reallocstack(%struct.lua_State* %22, i32 %div25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then, %if.then.23, %land.lhs.true.19, %if.end.15
  ret void
}

declare hidden void @luaD_reallocCI(%struct.lua_State*, i32) #1

declare hidden void @luaD_reallocstack(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @remarkupvals(%struct.global_State* %g) #0 {
entry:
  %g.addr = alloca %struct.global_State*, align 8
  %uv = alloca %struct.UpVal*, align 8
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  %0 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %uvhead = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i32 0, i32 22
  %u = getelementptr inbounds %struct.UpVal, %struct.UpVal* %uvhead, i32 0, i32 4
  %l = bitcast %union.anon* %u to %struct.anon*
  %next = getelementptr inbounds %struct.anon, %struct.anon* %l, i32 0, i32 1
  %1 = load %struct.UpVal*, %struct.UpVal** %next, align 8
  store %struct.UpVal* %1, %struct.UpVal** %uv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %3 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %uvhead1 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i32 0, i32 22
  %cmp = icmp ne %struct.UpVal* %2, %uvhead1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %5 = bitcast %struct.UpVal* %4 to %union.GCObject*
  %gch = bitcast %union.GCObject* %5 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %6 = load i8, i8* %marked, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.20, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %8 = bitcast %struct.UpVal* %7 to %union.GCObject*
  %gch2 = bitcast %union.GCObject* %8 to %struct.GCheader*
  %marked3 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch2, i32 0, i32 2
  %9 = load i8, i8* %marked3, align 1
  %conv4 = zext i8 %9 to i32
  %and5 = and i32 %conv4, 3
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end.20, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %v = getelementptr inbounds %struct.UpVal, %struct.UpVal* %10, i32 0, i32 3
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %v, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  %12 = load i32, i32* %tt, align 4
  %cmp7 = icmp sge i32 %12, 4
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %if.then
  %13 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %v10 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %13, i32 0, i32 3
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %v10, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %15 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %gch11 = bitcast %union.GCObject* %15 to %struct.GCheader*
  %marked12 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch11, i32 0, i32 2
  %16 = load i8, i8* %marked12, align 1
  %conv13 = zext i8 %16 to i32
  %and14 = and i32 %conv13, 3
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true.9
  %17 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %18 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %v17 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %18, i32 0, i32 3
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %v17, align 8
  %value18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %gc19 = bitcast %union.Value* %value18 to %union.GCObject**
  %20 = load %union.GCObject*, %union.GCObject** %gc19, align 8
  call void @reallymarkobject(%struct.global_State* %17, %union.GCObject* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %land.lhs.true.9, %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %21 = load %struct.UpVal*, %struct.UpVal** %uv, align 8
  %u21 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i32 0, i32 4
  %l22 = bitcast %union.anon* %u21 to %struct.anon*
  %next23 = getelementptr inbounds %struct.anon, %struct.anon* %l22, i32 0, i32 1
  %22 = load %struct.UpVal*, %struct.UpVal** %next23, align 8
  store %struct.UpVal* %22, %struct.UpVal** %uv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @propagateall(%struct.global_State* %g) #0 {
entry:
  %g.addr = alloca %struct.global_State*, align 8
  %m = alloca i64, align 8
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  store i64 0, i64* %m, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %gray = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i32 0, i32 8
  %1 = load %union.GCObject*, %union.GCObject** %gray, align 8
  %tobool = icmp ne %union.GCObject* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %call = call i64 @propagatemark(%struct.global_State* %2)
  %3 = load i64, i64* %m, align 8
  %add = add i64 %3, %call
  store i64 %add, i64* %m, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i64, i64* %m, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal void @markmt(%struct.global_State* %g) #0 {
entry:
  %g.addr = alloca %struct.global_State*, align 8
  %i = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %mt = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 23
  %arrayidx = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %mt, i32 0, i64 %idxprom
  %3 = load %struct.Table*, %struct.Table** %arrayidx, align 8
  %tobool = icmp ne %struct.Table* %3, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %mt2 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 23
  %arrayidx3 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %mt2, i32 0, i64 %idxprom1
  %6 = load %struct.Table*, %struct.Table** %arrayidx3, align 8
  %7 = bitcast %struct.Table* %6 to %union.GCObject*
  %gch = bitcast %union.GCObject* %7 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %8 = load i8, i8* %marked, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 3
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %mt7 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 23
  %arrayidx8 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %mt7, i32 0, i64 %idxprom6
  %12 = load %struct.Table*, %struct.Table** %arrayidx8, align 8
  %13 = bitcast %struct.Table* %12 to %union.GCObject*
  call void @reallymarkobject(%struct.global_State* %9, %union.GCObject* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @marktmu(%struct.global_State* %g) #0 {
entry:
  %g.addr = alloca %struct.global_State*, align 8
  %u = alloca %union.GCObject*, align 8
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  %0 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %tmudata = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i32 0, i32 11
  %1 = load %union.GCObject*, %union.GCObject** %tmudata, align 8
  store %union.GCObject* %1, %union.GCObject** %u, align 8
  %2 = load %union.GCObject*, %union.GCObject** %u, align 8
  %tobool = icmp ne %union.GCObject* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %3 = load %union.GCObject*, %union.GCObject** %u, align 8
  %gch = bitcast %union.GCObject* %3 to %struct.GCheader*
  %next = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 0
  %4 = load %union.GCObject*, %union.GCObject** %next, align 8
  store %union.GCObject* %4, %union.GCObject** %u, align 8
  %5 = load %union.GCObject*, %union.GCObject** %u, align 8
  %gch1 = bitcast %union.GCObject* %5 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch1, i32 0, i32 2
  %6 = load i8, i8* %marked, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 248
  %7 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 3
  %8 = load i8, i8* %currentwhite, align 1
  %conv2 = zext i8 %8 to i32
  %and3 = and i32 %conv2, 3
  %conv4 = trunc i32 %and3 to i8
  %conv5 = zext i8 %conv4 to i32
  %or = or i32 %and, %conv5
  %conv6 = trunc i32 %or to i8
  %9 = load %union.GCObject*, %union.GCObject** %u, align 8
  %gch7 = bitcast %union.GCObject* %9 to %struct.GCheader*
  %marked8 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch7, i32 0, i32 2
  store i8 %conv6, i8* %marked8, align 1
  %10 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %11 = load %union.GCObject*, %union.GCObject** %u, align 8
  call void @reallymarkobject(%struct.global_State* %10, %union.GCObject* %11)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load %union.GCObject*, %union.GCObject** %u, align 8
  %13 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %tmudata9 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 11
  %14 = load %union.GCObject*, %union.GCObject** %tmudata9, align 8
  %cmp = icmp ne %union.GCObject* %12, %14
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cleartable(%union.GCObject* %l) #0 {
entry:
  %l.addr = alloca %union.GCObject*, align 8
  %h = alloca %struct.Table*, align 8
  %i = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  %n = alloca %struct.Node*, align 8
  store %union.GCObject* %l, %union.GCObject** %l.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end.27, %entry
  %0 = load %union.GCObject*, %union.GCObject** %l.addr, align 8
  %tobool = icmp ne %union.GCObject* %0, null
  br i1 %tobool, label %while.body, label %while.end.28

while.body:                                       ; preds = %while.cond
  %1 = load %union.GCObject*, %union.GCObject** %l.addr, align 8
  %h1 = bitcast %union.GCObject* %1 to %struct.Table*
  store %struct.Table* %h1, %struct.Table** %h, align 8
  %2 = load %struct.Table*, %struct.Table** %h, align 8
  %sizearray = getelementptr inbounds %struct.Table, %struct.Table* %2, i32 0, i32 10
  %3 = load i32, i32* %sizearray, align 4
  store i32 %3, i32* %i, align 4
  %4 = load %struct.Table*, %struct.Table** %h, align 8
  %marked = getelementptr inbounds %struct.Table, %struct.Table* %4, i32 0, i32 2
  %5 = load i8, i8* %marked, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 16
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then, label %if.end.8

if.then:                                          ; preds = %while.body
  br label %while.cond.3

while.cond.3:                                     ; preds = %if.end, %if.then
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.3
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.Table*, %struct.Table** %h, align 8
  %array = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 6
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %array, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %idxprom
  store %struct.lua_TValue* %arrayidx, %struct.lua_TValue** %o, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %call = call i32 @iscleared(%struct.lua_TValue* %10, i32 0)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %while.body.5
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %while.body.5
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %while.body
  %12 = load %struct.Table*, %struct.Table** %h, align 8
  %lsizenode = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 4
  %13 = load i8, i8* %lsizenode, align 1
  %conv9 = zext i8 %13 to i32
  %shl = shl i32 1, %conv9
  store i32 %shl, i32* %i, align 4
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end.26, %if.end.8
  %14 = load i32, i32* %i, align 4
  %dec11 = add nsw i32 %14, -1
  store i32 %dec11, i32* %i, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %while.body.13, label %while.end.27

while.body.13:                                    ; preds = %while.cond.10
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.Table*, %struct.Table** %h, align 8
  %node = getelementptr inbounds %struct.Table, %struct.Table* %16, i32 0, i32 7
  %17 = load %struct.Node*, %struct.Node** %node, align 8
  %arrayidx15 = getelementptr inbounds %struct.Node, %struct.Node* %17, i64 %idxprom14
  store %struct.Node* %arrayidx15, %struct.Node** %n, align 8
  %18 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val = getelementptr inbounds %struct.Node, %struct.Node* %18, i32 0, i32 0
  %tt16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val, i32 0, i32 1
  %19 = load i32, i32* %tt16, align 4
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.end.26, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.13
  %20 = load %struct.Node*, %struct.Node** %n, align 8
  %i_key = getelementptr inbounds %struct.Node, %struct.Node* %20, i32 0, i32 1
  %tvk = bitcast %union.TKey* %i_key to %struct.lua_TValue*
  %call18 = call i32 @iscleared(%struct.lua_TValue* %tvk, i32 1)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val20 = getelementptr inbounds %struct.Node, %struct.Node* %21, i32 0, i32 0
  %call21 = call i32 @iscleared(%struct.lua_TValue* %i_val20, i32 0)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %22 = load %struct.Node*, %struct.Node** %n, align 8
  %i_val24 = getelementptr inbounds %struct.Node, %struct.Node* %22, i32 0, i32 0
  %tt25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %i_val24, i32 0, i32 1
  store i32 0, i32* %tt25, align 4
  %23 = load %struct.Node*, %struct.Node** %n, align 8
  call void @removeentry(%struct.Node* %23)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %lor.lhs.false, %while.body.13
  br label %while.cond.10

while.end.27:                                     ; preds = %while.cond.10
  %24 = load %struct.Table*, %struct.Table** %h, align 8
  %gclist = getelementptr inbounds %struct.Table, %struct.Table* %24, i32 0, i32 9
  %25 = load %union.GCObject*, %union.GCObject** %gclist, align 8
  store %union.GCObject* %25, %union.GCObject** %l.addr, align 8
  br label %while.cond

while.end.28:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @iscleared(%struct.lua_TValue* %o, i32 %iskey) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct.lua_TValue*, align 8
  %iskey.addr = alloca i32, align 4
  store %struct.lua_TValue* %o, %struct.lua_TValue** %o.addr, align 8
  store i32 %iskey, i32* %iskey.addr, align 4
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %cmp = icmp sge i32 %1, 4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt1, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %5 to %union.TString*
  %tsv = bitcast %union.TString* %ts to %struct.anon.1*
  %marked = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 2
  %6 = load i8, i8* %marked, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 252
  %conv4 = trunc i32 %and to i8
  store i8 %conv4, i8* %marked, align 1
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %gc7 = bitcast %union.Value* %value6 to %union.GCObject**
  %8 = load %union.GCObject*, %union.GCObject** %gc7, align 8
  %gch = bitcast %union.GCObject* %8 to %struct.GCheader*
  %marked8 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %9 = load i8, i8* %marked8, align 1
  %conv9 = zext i8 %9 to i32
  %and10 = and i32 %conv9, 3
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.5
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %tt11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %11 = load i32, i32* %tt11, align 4
  %cmp12 = icmp eq i32 %11, 7
  br i1 %cmp12, label %land.rhs, label %land.end.22

land.rhs:                                         ; preds = %lor.rhs
  %12 = load i32, i32* %iskey.addr, align 4
  %tobool14 = icmp ne i32 %12, 0
  br i1 %tobool14, label %land.end, label %land.rhs.15

land.rhs.15:                                      ; preds = %land.rhs
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %value16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %gc17 = bitcast %union.Value* %value16 to %union.GCObject**
  %14 = load %union.GCObject*, %union.GCObject** %gc17, align 8
  %u = bitcast %union.GCObject* %14 to %union.Udata*
  %uv = bitcast %union.Udata* %u to %struct.anon.2*
  %marked18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 2
  %15 = load i8, i8* %marked18, align 1
  %conv19 = zext i8 %15 to i32
  %and20 = and i32 %conv19, 8
  %tobool21 = icmp ne i32 %and20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.15, %land.rhs
  %16 = phi i1 [ false, %land.rhs ], [ %tobool21, %land.rhs.15 ]
  br label %land.end.22

land.end.22:                                      ; preds = %land.end, %lor.rhs
  %17 = phi i1 [ false, %lor.rhs ], [ %16, %land.end ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.22, %if.end.5
  %18 = phi i1 [ true, %if.end.5 ], [ %17, %land.end.22 ]
  %lor.ext = zext i1 %18 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.3, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare hidden void @luaS_resize(%struct.lua_State*, i32) #1

declare hidden i8* @luaM_toobig(%struct.lua_State*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
