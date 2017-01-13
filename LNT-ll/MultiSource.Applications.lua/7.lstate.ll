; ModuleID = './MultiSource.Applications.lua/7.lstate.bc'
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
%struct.LG = type { %struct.lua_State, %struct.global_State }
%struct.anon = type { %struct.UpVal*, %struct.UpVal* }

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1

; Function Attrs: nounwind uwtable
define hidden %struct.lua_State* @luaE_newthread(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %L1 = alloca %struct.lua_State*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 184)
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 0
  %1 = bitcast i8* %add.ptr to %struct.lua_State*
  store %struct.lua_State* %1, %struct.lua_State** %L1, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %4 = bitcast %struct.lua_State* %3 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* %2, %union.GCObject* %4, i8 zeroext 8)
  %5 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %7 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  call void @preinit_state(%struct.lua_State* %5, %struct.global_State* %7)
  %8 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @stack_init(%struct.lua_State* %8, %struct.lua_State* %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_gt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 22
  store %struct.lua_TValue* %l_gt, %struct.lua_TValue** %o2, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %l_gt1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 22
  store %struct.lua_TValue* %l_gt1, %struct.lua_TValue** %o1, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %14 = bitcast %union.Value* %value to i8*
  %15 = bitcast %union.Value* %value2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 1
  %17 = load i32, i32* %tt, align 4
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 1
  store i32 %17, i32* %tt3, align 4
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 17
  %20 = load i8, i8* %hookmask, align 1
  %21 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %hookmask4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 17
  store i8 %20, i8* %hookmask4, align 1
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %basehookcount = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 19
  %23 = load i32, i32* %basehookcount, align 4
  %24 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %basehookcount5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 19
  store i32 %23, i32* %basehookcount5, align 4
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hook = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 21
  %26 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %hook6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 21
  store void (%struct.lua_State*, %struct.lua_Debug*)* %26, void (%struct.lua_State*, %struct.lua_Debug*)** %hook6, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %basehookcount7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 19
  %29 = load i32, i32* %basehookcount7, align 4
  %30 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %hookcount = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 20
  store i32 %29, i32* %hookcount, align 4
  %31 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  ret %struct.lua_State* %31
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

declare hidden void @luaC_link(%struct.lua_State*, %union.GCObject*, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @preinit_state(%struct.lua_State* %L, %struct.global_State* %g) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %g.addr = alloca %struct.global_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.global_State* %g, %struct.global_State** %g.addr, align 8
  %0 = load %struct.global_State*, %struct.global_State** %g.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 6
  store %struct.global_State* %0, %struct.global_State** %l_G, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 10
  store %struct.lua_TValue* null, %struct.lua_TValue** %stack, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stacksize = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 13
  store i32 0, i32* %stacksize, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errorJmp = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 26
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %errorJmp, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hook = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 21
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 17
  store i8 0, i8* %hookmask, align 1
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %basehookcount = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 19
  store i32 0, i32* %basehookcount, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %allowhook = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 18
  store i8 1, i8* %allowhook, align 1
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %basehookcount1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 19
  %10 = load i32, i32* %basehookcount1, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookcount = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 20
  store i32 %10, i32* %hookcount, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %openupval = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 24
  store %union.GCObject* null, %union.GCObject** %openupval, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 14
  store i32 0, i32* %size_ci, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %baseCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 16
  store i16 0, i16* %baseCcalls, align 2
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 15
  store i16 0, i16* %nCcalls, align 2
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 3
  store i8 0, i8* %status, align 1
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 7
  store %struct.CallInfo* null, %struct.CallInfo** %ci, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 12
  store %struct.CallInfo* null, %struct.CallInfo** %base_ci, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 8
  store i32* null, i32** %savedpc, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errfunc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 27
  store i64 0, i64* %errfunc, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_gt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 22
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_gt, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stack_init(%struct.lua_State* %L1, %struct.lua_State* %L) #0 {
entry:
  %L1.addr = alloca %struct.lua_State*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L1, %struct.lua_State** %L1.addr, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 320)
  %1 = bitcast i8* %call to %struct.CallInfo*
  %2 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 12
  store %struct.CallInfo* %1, %struct.CallInfo** %base_ci, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %base_ci1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 12
  %4 = load %struct.CallInfo*, %struct.CallInfo** %base_ci1, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 7
  store %struct.CallInfo* %4, %struct.CallInfo** %ci, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %size_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 14
  store i32 8, i32* %size_ci, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %base_ci2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 12
  %8 = load %struct.CallInfo*, %struct.CallInfo** %base_ci2, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %size_ci3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 14
  %10 = load i32, i32* %size_ci3, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %add.ptr, i64 -1
  %11 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %end_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 11
  store %struct.CallInfo* %add.ptr4, %struct.CallInfo** %end_ci, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i8* @luaM_realloc_(%struct.lua_State* %12, i8* null, i64 0, i64 720)
  %13 = bitcast i8* %call5 to %struct.lua_TValue*
  %14 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 10
  store %struct.lua_TValue* %13, %struct.lua_TValue** %stack, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %stacksize = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 13
  store i32 45, i32* %stacksize, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %stack6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 10
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %stack6, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 4
  store %struct.lua_TValue* %17, %struct.lua_TValue** %top, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %stack7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 10
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %stack7, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %stacksize8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 13
  %22 = load i32, i32* %stacksize8, align 4
  %sub = sub nsw i32 %22, 5
  %idx.ext9 = sext i32 %sub to i64
  %add.ptr10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %idx.ext9
  %add.ptr11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr10, i64 -1
  %23 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 9
  store %struct.lua_TValue* %add.ptr11, %struct.lua_TValue** %stack_last, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %top12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 4
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %top12, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %ci13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 7
  %27 = load %struct.CallInfo*, %struct.CallInfo** %ci13, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i32 0, i32 1
  store %struct.lua_TValue* %25, %struct.lua_TValue** %func, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %top14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 4
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %top14, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top14, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  %30 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %top15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 4
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %top15, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %ci16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 7
  %33 = load %struct.CallInfo*, %struct.CallInfo** %ci16, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %33, i32 0, i32 0
  store %struct.lua_TValue* %31, %struct.lua_TValue** %base, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %base17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 5
  store %struct.lua_TValue* %31, %struct.lua_TValue** %base17, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %top18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 4
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %top18, align 8
  %add.ptr19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 20
  %37 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %ci20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 7
  %38 = load %struct.CallInfo*, %struct.CallInfo** %ci20, align 8
  %top21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %38, i32 0, i32 2
  store %struct.lua_TValue* %add.ptr19, %struct.lua_TValue** %top21, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define hidden void @luaE_freethread(%struct.lua_State* %L, %struct.lua_State* %L1) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %L1.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_State* %L1, %struct.lua_State** %L1.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 10
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  call void @luaF_close(%struct.lua_State* %0, %struct.lua_TValue* %2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  call void @freestack(%struct.lua_State* %4, %struct.lua_State* %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %8 = bitcast %struct.lua_State* %7 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 0
  %call = call i8* @luaM_realloc_(%struct.lua_State* %6, i8* %add.ptr, i64 184, i64 0)
  ret void
}

declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) #1

; Function Attrs: nounwind uwtable
define internal void @freestack(%struct.lua_State* %L, %struct.lua_State* %L1) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %L1.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_State* %L1, %struct.lua_State** %L1.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 12
  %2 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %3 = bitcast %struct.CallInfo* %2 to i8*
  %4 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %size_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 14
  %5 = load i32, i32* %size_ci, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 40
  %call = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %3, i64 %mul, i64 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 10
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %9 = bitcast %struct.lua_TValue* %8 to i8*
  %10 = load %struct.lua_State*, %struct.lua_State** %L1.addr, align 8
  %stacksize = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 13
  %11 = load i32, i32* %stacksize, align 4
  %conv1 = sext i32 %11 to i64
  %mul2 = mul i64 %conv1, 16
  %call3 = call i8* @luaM_realloc_(%struct.lua_State* %6, i8* %9, i64 %mul2, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)* %f, i8* %ud) #0 {
entry:
  %retval = alloca %struct.lua_State*, align 8
  %f.addr = alloca i8* (i8*, i8*, i64, i64)*, align 8
  %ud.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %L = alloca %struct.lua_State*, align 8
  %g = alloca %struct.global_State*, align 8
  %l = alloca i8*, align 8
  store i8* (i8*, i8*, i64, i64)* %f, i8* (i8*, i8*, i64, i64)** %f.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %0 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %f.addr, align 8
  %1 = load i8*, i8** %ud.addr, align 8
  %call = call i8* %0(i8* %1, i8* null, i64 0, i64 616)
  store i8* %call, i8** %l, align 8
  %2 = load i8*, i8** %l, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.lua_State* null, %struct.lua_State** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %l, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 0
  %4 = bitcast i8* %add.ptr to %struct.lua_State*
  store %struct.lua_State* %4, %struct.lua_State** %L, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %6 = bitcast %struct.lua_State* %5 to %struct.LG*
  %g1 = getelementptr inbounds %struct.LG, %struct.LG* %6, i32 0, i32 1
  store %struct.global_State* %g1, %struct.global_State** %g, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %next = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 0
  store %union.GCObject* null, %union.GCObject** %next, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %tt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 1
  store i8 8, i8* %tt, align 1
  %9 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 3
  store i8 33, i8* %currentwhite, align 1
  %10 = load %struct.global_State*, %struct.global_State** %g, align 8
  %currentwhite2 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 3
  %11 = load i8, i8* %currentwhite2, align 1
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 3
  %conv3 = trunc i32 %and to i8
  %12 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %marked = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 2
  store i8 %conv3, i8* %marked, align 1
  %13 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %marked4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 2
  %14 = load i8, i8* %marked4, align 1
  %conv5 = zext i8 %14 to i32
  %or = or i32 %conv5, 96
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* %marked4, align 1
  %15 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %16 = load %struct.global_State*, %struct.global_State** %g, align 8
  call void @preinit_state(%struct.lua_State* %15, %struct.global_State* %16)
  %17 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %f.addr, align 8
  %18 = load %struct.global_State*, %struct.global_State** %g, align 8
  %frealloc = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 1
  store i8* (i8*, i8*, i64, i64)* %17, i8* (i8*, i8*, i64, i64)** %frealloc, align 8
  %19 = load i8*, i8** %ud.addr, align 8
  %20 = load %struct.global_State*, %struct.global_State** %g, align 8
  %ud7 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 2
  store i8* %19, i8** %ud7, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %22 = load %struct.global_State*, %struct.global_State** %g, align 8
  %mainthread = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i32 0, i32 21
  store %struct.lua_State* %21, %struct.lua_State** %mainthread, align 8
  %23 = load %struct.global_State*, %struct.global_State** %g, align 8
  %uvhead = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 22
  %24 = load %struct.global_State*, %struct.global_State** %g, align 8
  %uvhead8 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 22
  %u = getelementptr inbounds %struct.UpVal, %struct.UpVal* %uvhead8, i32 0, i32 4
  %l9 = bitcast %union.anon* %u to %struct.anon*
  %prev = getelementptr inbounds %struct.anon, %struct.anon* %l9, i32 0, i32 0
  store %struct.UpVal* %uvhead, %struct.UpVal** %prev, align 8
  %25 = load %struct.global_State*, %struct.global_State** %g, align 8
  %uvhead10 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 22
  %26 = load %struct.global_State*, %struct.global_State** %g, align 8
  %uvhead11 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 22
  %u12 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %uvhead11, i32 0, i32 4
  %l13 = bitcast %union.anon* %u12 to %struct.anon*
  %next14 = getelementptr inbounds %struct.anon, %struct.anon* %l13, i32 0, i32 1
  store %struct.UpVal* %uvhead10, %struct.UpVal** %next14, align 8
  %27 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 13
  store i64 0, i64* %GCthreshold, align 8
  %28 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 0
  %size = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt, i32 0, i32 2
  store i32 0, i32* %size, align 4
  %29 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt15 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 0
  %nuse = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt15, i32 0, i32 1
  store i32 0, i32* %nuse, align 4
  %30 = load %struct.global_State*, %struct.global_State** %g, align 8
  %strt16 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 0
  %hash = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt16, i32 0, i32 0
  store %union.GCObject** null, %union.GCObject*** %hash, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 6
  %32 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %l_registry = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 20
  %tt17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_registry, i32 0, i32 1
  store i32 0, i32* %tt17, align 4
  %33 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 12
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff, i32 0, i32 0
  store i8* null, i8** %buffer, align 8
  %34 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff18 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i32 0, i32 12
  %buffsize = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff18, i32 0, i32 2
  store i64 0, i64* %buffsize, align 8
  %35 = load %struct.global_State*, %struct.global_State** %g, align 8
  %panic = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i32 0, i32 19
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %panic, align 8
  %36 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 4
  store i8 0, i8* %gcstate, align 1
  %37 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %38 = bitcast %struct.lua_State* %37 to %union.GCObject*
  %39 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc = getelementptr inbounds %struct.global_State, %struct.global_State* %39, i32 0, i32 6
  store %union.GCObject* %38, %union.GCObject** %rootgc, align 8
  %40 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepstrgc = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i32 0, i32 5
  store i32 0, i32* %sweepstrgc, align 4
  %41 = load %struct.global_State*, %struct.global_State** %g, align 8
  %rootgc19 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i32 0, i32 6
  %42 = load %struct.global_State*, %struct.global_State** %g, align 8
  %sweepgc = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i32 0, i32 7
  store %union.GCObject** %rootgc19, %union.GCObject*** %sweepgc, align 8
  %43 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gray = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 8
  store %union.GCObject* null, %union.GCObject** %gray, align 8
  %44 = load %struct.global_State*, %struct.global_State** %g, align 8
  %grayagain = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 9
  store %union.GCObject* null, %union.GCObject** %grayagain, align 8
  %45 = load %struct.global_State*, %struct.global_State** %g, align 8
  %weak = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 10
  store %union.GCObject* null, %union.GCObject** %weak, align 8
  %46 = load %struct.global_State*, %struct.global_State** %g, align 8
  %tmudata = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 11
  store %union.GCObject* null, %union.GCObject** %tmudata, align 8
  %47 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %47, i32 0, i32 14
  store i64 616, i64* %totalbytes, align 8
  %48 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcpause = getelementptr inbounds %struct.global_State, %struct.global_State* %48, i32 0, i32 17
  store i32 200, i32* %gcpause, align 4
  %49 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstepmul = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 18
  store i32 200, i32* %gcstepmul, align 4
  %50 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcdept = getelementptr inbounds %struct.global_State, %struct.global_State* %50, i32 0, i32 16
  store i64 0, i64* %gcdept, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %51 = load i32, i32* %i, align 4
  %cmp20 = icmp slt i32 %51, 9
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i32, i32* %i, align 4
  %idxprom = sext i32 %52 to i64
  %53 = load %struct.global_State*, %struct.global_State** %g, align 8
  %mt = getelementptr inbounds %struct.global_State, %struct.global_State* %53, i32 0, i32 23
  %arrayidx = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %mt, i32 0, i64 %idxprom
  store %struct.Table* null, %struct.Table** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call22 = call i32 @luaD_rawrunprotected(%struct.lua_State* %55, void (%struct.lua_State*, i8*)* @f_luaopen, i8* null)
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.end
  %56 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  call void @close_state(%struct.lua_State* %56)
  store %struct.lua_State* null, %struct.lua_State** %L, align 8
  br label %if.end.26

if.else:                                          ; preds = %for.end
  %57 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  %58 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  store %struct.lua_State* %58, %struct.lua_State** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then
  %59 = load %struct.lua_State*, %struct.lua_State** %retval
  ret %struct.lua_State* %59
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @f_luaopen(%struct.lua_State* %L, i8* %ud) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i8*, align 8
  %g = alloca %struct.global_State*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  %i_o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load i8*, i8** %ud.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @stack_init(%struct.lua_State* %3, %struct.lua_State* %4)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_gt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 22
  store %struct.lua_TValue* %l_gt, %struct.lua_TValue** %i_o, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.Table* @luaH_new(%struct.lua_State* %6, i32 0, i32 2)
  %7 = bitcast %struct.Table* %call to %union.GCObject*
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %7, %union.GCObject** %gc, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  store i32 5, i32* %tt, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %11 = load %struct.global_State*, %struct.global_State** %l_G2, align 8
  %l_registry = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 20
  store %struct.lua_TValue* %l_registry, %struct.lua_TValue** %i_o1, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call %struct.Table* @luaH_new(%struct.lua_State* %12, i32 0, i32 2)
  %13 = bitcast %struct.Table* %call3 to %union.GCObject*
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o1, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %gc5 = bitcast %union.Value* %value4 to %union.GCObject**
  store %union.GCObject* %13, %union.GCObject** %gc5, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o1, align 8
  %tt6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  store i32 5, i32* %tt6, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaS_resize(%struct.lua_State* %16, i32 32)
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaT_init(%struct.lua_State* %17)
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaX_init(%struct.lua_State* %18)
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call7 = call %union.TString* @luaS_newlstr(%struct.lua_State* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i64 17)
  %tsv = bitcast %union.TString* %call7 to %struct.anon.1*
  %marked = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 2
  %20 = load i8, i8* %marked, align 1
  %conv = zext i8 %20 to i32
  %or = or i32 %conv, 32
  %conv8 = trunc i32 %or to i8
  store i8 %conv8, i8* %marked, align 1
  %21 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 14
  %22 = load i64, i64* %totalbytes, align 8
  %mul = mul i64 4, %22
  %23 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 13
  store i64 %mul, i64* %GCthreshold, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @close_state(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %g = alloca %struct.global_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 10
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  call void @luaF_close(%struct.lua_State* %2, %struct.lua_TValue* %4)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_freeall(%struct.lua_State* %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %strt = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 0
  %hash = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt, i32 0, i32 0
  %9 = load %union.GCObject**, %union.GCObject*** %hash, align 8
  %10 = bitcast %union.GCObject** %9 to i8*
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 6
  %12 = load %struct.global_State*, %struct.global_State** %l_G2, align 8
  %strt3 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 0
  %size = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt3, i32 0, i32 2
  %13 = load i32, i32* %size, align 4
  %conv = sext i32 %13 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @luaM_realloc_(%struct.lua_State* %6, i8* %10, i64 %mul, i64 0)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 12
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff, i32 0, i32 0
  %16 = load i8*, i8** %buffer, align 8
  %17 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff4 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 12
  %buffsize = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff4, i32 0, i32 2
  %18 = load i64, i64* %buffsize, align 8
  %mul5 = mul i64 %18, 1
  %call6 = call i8* @luaM_realloc_(%struct.lua_State* %14, i8* %16, i64 %mul5, i64 0)
  %19 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff7 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 12
  %buffer8 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff7, i32 0, i32 0
  store i8* %call6, i8** %buffer8, align 8
  %20 = load %struct.global_State*, %struct.global_State** %g, align 8
  %buff9 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 12
  %buffsize10 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff9, i32 0, i32 2
  store i64 0, i64* %buffsize10, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @freestack(%struct.lua_State* %21, %struct.lua_State* %22)
  %23 = load %struct.global_State*, %struct.global_State** %g, align 8
  %frealloc = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 1
  %24 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %frealloc, align 8
  %25 = load %struct.global_State*, %struct.global_State** %g, align 8
  %ud = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 2
  %26 = load i8*, i8** %ud, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %28 = bitcast %struct.lua_State* %27 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 0
  %call11 = call i8* %24(i8* %26, i8* %add.ptr, i64 616, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_close(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %mainthread = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 21
  %2 = load %struct.lua_State*, %struct.lua_State** %mainthread, align 8
  store %struct.lua_State* %2, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 10
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  call void @luaF_close(%struct.lua_State* %3, %struct.lua_TValue* %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i64 @luaC_separateudata(%struct.lua_State* %6, i32 1)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errfunc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 27
  store i64 0, i64* %errfunc, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 12
  %9 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 7
  store %struct.CallInfo* %9, %struct.CallInfo** %ci, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 7
  %12 = load %struct.CallInfo*, %struct.CallInfo** %ci1, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 0
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 4
  store %struct.lua_TValue* %13, %struct.lua_TValue** %top, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 5
  store %struct.lua_TValue* %13, %struct.lua_TValue** %base2, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %baseCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 16
  store i16 0, i16* %baseCcalls, align 2
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 15
  store i16 0, i16* %nCcalls, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @luaD_rawrunprotected(%struct.lua_State* %18, void (%struct.lua_State*, i8*)* @callallgcTM, i8* null)
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @close_state(%struct.lua_State* %20)
  ret void
}

declare hidden i64 @luaC_separateudata(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @callallgcTM(%struct.lua_State* %L, i8* %ud) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %0 = load i8*, i8** %ud.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_callGCTM(%struct.lua_State* %1)
  ret void
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) #1

declare hidden void @luaS_resize(%struct.lua_State*, i32) #1

declare hidden void @luaT_init(%struct.lua_State*) #1

declare hidden void @luaX_init(%struct.lua_State*) #1

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

declare hidden void @luaC_freeall(%struct.lua_State*) #1

declare hidden void @luaC_callGCTM(%struct.lua_State*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
