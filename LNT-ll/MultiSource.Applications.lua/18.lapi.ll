; ModuleID = './MultiSource.Applications.lua/18.lapi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%union.Udata = type { %struct.anon.2 }
%struct.anon.2 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.CallS = type { %struct.lua_TValue*, i32 }
%struct.CCallS = type { i32 (%struct.lua_State*)*, i8* }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }

@lua_ident = constant [141 x i8] c"$Lua: Lua 5.1.4 Copyright (C) 1994-2008 Lua.org, PUC-Rio $\0A$Authors: R. Ierusalimschy, L. H. de Figueiredo & W. Celes $\0A$URL: www.lua.org $\0A\00", align 16
@.str = private unnamed_addr constant [23 x i8] c"no calling environment\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@luaT_typenames = external hidden constant [0 x i8*], align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define hidden void @luaA_pushobject(%struct.lua_State* %L, %struct.lua_TValue* %o) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %o.addr = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %o, %struct.lua_TValue** %o.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
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
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top3, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @lua_checkstack(%struct.lua_State* %L, i32 %size) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %size.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 1, i32* %res, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp sgt i32 %0, 8000
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 4
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 5
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.lua_TValue* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.lua_TValue* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %5 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %5 to i64
  %add = add nsw i64 %sub.ptr.div, %conv
  %cmp1 = icmp sgt i64 %add, 8000
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %res, align 4
  br label %if.end.27

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %size.addr, align 4
  %cmp3 = icmp sgt i32 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.end.26

if.then.5:                                        ; preds = %if.else
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 9
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %9 = bitcast %struct.lua_TValue* %8 to i8*
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 4
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %top6, align 8
  %12 = bitcast %struct.lua_TValue* %11 to i8*
  %sub.ptr.lhs.cast7 = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i8* %12 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %13 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %13, 16
  %conv10 = sext i32 %mul to i64
  %cmp11 = icmp sle i64 %sub.ptr.sub9, %conv10
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.then.5
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load i32, i32* %size.addr, align 4
  call void @luaD_growstack(%struct.lua_State* %14, i32 %15)
  br label %if.end

if.else.14:                                       ; preds = %if.then.5
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.13
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 7
  %17 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %top15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i32 0, i32 2
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %top15, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %top16, align 8
  %21 = load i32, i32* %size.addr, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %idx.ext
  %cmp17 = icmp ult %struct.lua_TValue* %18, %add.ptr
  br i1 %cmp17, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.end
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 4
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %top20, align 8
  %24 = load i32, i32* %size.addr, align 4
  %idx.ext21 = sext i32 %24 to i64
  %add.ptr22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %idx.ext21
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 7
  %26 = load %struct.CallInfo*, %struct.CallInfo** %ci23, align 8
  %top24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %26, i32 0, i32 2
  store %struct.lua_TValue* %add.ptr22, %struct.lua_TValue** %top24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then
  %27 = load i32, i32* %res, align 4
  ret i32 %27
}

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #2

; Function Attrs: nounwind uwtable
define void @lua_xmove(%struct.lua_State* %from, %struct.lua_State* %to, i32 %n) #0 {
entry:
  %from.addr = alloca %struct.lua_State*, align 8
  %to.addr = alloca %struct.lua_State*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %from, %struct.lua_State** %from.addr, align 8
  store %struct.lua_State* %to, %struct.lua_State** %to.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %from.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %to.addr, align 8
  %cmp = icmp eq %struct.lua_State* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %from.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %from.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %from.addr, align 8
  %5 = load i32, i32* %n.addr, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %from.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %idx.ext = sext i32 %5 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %idx.neg
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %top, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %8, %9
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.lua_State*, %struct.lua_State** %from.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 4
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext3 = sext i32 %12 to i64
  %add.ptr4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %idx.ext3
  store %struct.lua_TValue* %add.ptr4, %struct.lua_TValue** %o2, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %to.addr, align 8
  %top5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 4
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %top5, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top5, align 8
  store %struct.lua_TValue* %14, %struct.lua_TValue** %o1, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %17 = bitcast %union.Value* %value to i8*
  %18 = bitcast %union.Value* %value6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 1
  %20 = load i32, i32* %tt, align 4
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 1
  store i32 %20, i32* %tt7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_setlevel(%struct.lua_State* %from, %struct.lua_State* %to) #0 {
entry:
  %from.addr = alloca %struct.lua_State*, align 8
  %to.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %from, %struct.lua_State** %from.addr, align 8
  store %struct.lua_State* %to, %struct.lua_State** %to.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %from.addr, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 15
  %1 = load i16, i16* %nCcalls, align 2
  %2 = load %struct.lua_State*, %struct.lua_State** %to.addr, align 8
  %nCcalls1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 15
  store i16 %1, i16* %nCcalls1, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* %L, i32 (%struct.lua_State*)* %panicf) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %panicf.addr = alloca i32 (%struct.lua_State*)*, align 8
  %old = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 (%struct.lua_State*)* %panicf, i32 (%struct.lua_State*)** %panicf.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %panic = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 19
  %2 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %panic, align 8
  store i32 (%struct.lua_State*)* %2, i32 (%struct.lua_State*)** %old, align 8
  %3 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %panicf.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 6
  %5 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %panic2 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 19
  store i32 (%struct.lua_State*)* %3, i32 (%struct.lua_State*)** %panic2, align 8
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %old, align 8
  ret i32 (%struct.lua_State*)* %6
}

; Function Attrs: nounwind uwtable
define %struct.lua_State* @lua_newthread(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %L1 = alloca %struct.lua_State*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 14
  %2 = load i64, i64* %totalbytes, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 13
  %5 = load i64, i64* %GCthreshold, align 8
  %cmp = icmp uge i64 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.lua_State* @luaE_newthread(%struct.lua_State* %7)
  store %struct.lua_State* %call, %struct.lua_State** %L1, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 4
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %9, %struct.lua_TValue** %i_o, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %11 = bitcast %struct.lua_State* %10 to %union.GCObject*
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %11, %union.GCObject** %gc, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  store i32 8, i32* %tt, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 4
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top2, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  ret %struct.lua_State* %18
}

declare hidden void @luaC_step(%struct.lua_State*) #2

declare hidden %struct.lua_State* @luaE_newthread(%struct.lua_State*) #2

; Function Attrs: nounwind uwtable
define i32 @lua_gettop(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 4
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 5
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.lua_TValue* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.lua_TValue* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @lua_settop(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 4
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 5
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %6 = load i32, i32* %idx.addr, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 %idx.ext
  %cmp1 = icmp ult %struct.lua_TValue* %3, %add.ptr
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 5
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %base3, align 8
  %11 = load i32, i32* %idx.addr, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i64 %idx.ext4
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 4
  store %struct.lua_TValue* %add.ptr5, %struct.lua_TValue** %top6, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %idx.addr, align 4
  %add = add nsw i32 %14, 1
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 4
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %top7, align 8
  %idx.ext8 = sext i32 %add to i64
  %add.ptr9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 %idx.ext8
  store %struct.lua_TValue* %add.ptr9, %struct.lua_TValue** %top7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_remove(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %p = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %p, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %p, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 4
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %cmp = icmp ult %struct.lua_TValue* %incdec.ptr, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o2, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 -1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o1, align 8
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
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 4
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 -1
  store %struct.lua_TValue* %incdec.ptr4, %struct.lua_TValue** %top3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.lua_TValue* @index2adr(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  %func = alloca %union.Closure*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  %func17 = alloca %union.Closure*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 5
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %3 = load i32, i32* %idx.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 %idx.ext
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %cmp1 = icmp uge %struct.lua_TValue* %5, %7
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %retval
  br label %return

if.else.3:                                        ; preds = %entry
  %9 = load i32, i32* %idx.addr, align 4
  %cmp4 = icmp sgt i32 %9, -10000
  br i1 %cmp4, label %if.then.5, label %if.else.9

if.then.5:                                        ; preds = %if.else.3
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top6, align 8
  %13 = load i32, i32* %idx.addr, align 4
  %idx.ext7 = sext i32 %13 to i64
  %add.ptr8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 %idx.ext7
  store %struct.lua_TValue* %add.ptr8, %struct.lua_TValue** %retval
  br label %return

if.else.9:                                        ; preds = %if.else.3
  %14 = load i32, i32* %idx.addr, align 4
  switch i32 %14, label %sw.default [
    i32 -10000, label %sw.bb
    i32 -10001, label %sw.bb.10
    i32 -10002, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.else.9
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 6
  %16 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %l_registry = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 20
  store %struct.lua_TValue* %l_registry, %struct.lua_TValue** %retval
  br label %return

sw.bb.10:                                         ; preds = %if.else.9
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 7
  %18 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 1
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %func11, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %20 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %20 to %union.Closure*
  store %union.Closure* %cl, %union.Closure** %func, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %env = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 23
  store %struct.lua_TValue* %env, %struct.lua_TValue** %i_o, align 8
  %22 = load %union.Closure*, %union.Closure** %func, align 8
  %c = bitcast %union.Closure* %22 to %struct.CClosure*
  %env12 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 6
  %23 = load %struct.Table*, %struct.Table** %env12, align 8
  %24 = bitcast %struct.Table* %23 to %union.GCObject*
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %gc14 = bitcast %union.Value* %value13 to %union.GCObject**
  store %union.GCObject* %24, %union.GCObject** %gc14, align 8
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  store i32 5, i32* %tt, align 4
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %env15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 23
  store %struct.lua_TValue* %env15, %struct.lua_TValue** %retval
  br label %return

sw.bb.16:                                         ; preds = %if.else.9
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_gt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 22
  store %struct.lua_TValue* %l_gt, %struct.lua_TValue** %retval
  br label %return

sw.default:                                       ; preds = %if.else.9
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 7
  %30 = load %struct.CallInfo*, %struct.CallInfo** %ci18, align 8
  %func19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i32 0, i32 1
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %func19, align 8
  %value20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %gc21 = bitcast %union.Value* %value20 to %union.GCObject**
  %32 = load %union.GCObject*, %union.GCObject** %gc21, align 8
  %cl22 = bitcast %union.GCObject* %32 to %union.Closure*
  store %union.Closure* %cl22, %union.Closure** %func17, align 8
  %33 = load i32, i32* %idx.addr, align 4
  %sub23 = sub nsw i32 -10002, %33
  store i32 %sub23, i32* %idx.addr, align 4
  %34 = load i32, i32* %idx.addr, align 4
  %35 = load %union.Closure*, %union.Closure** %func17, align 8
  %c24 = bitcast %union.Closure* %35 to %struct.CClosure*
  %nupvalues = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c24, i32 0, i32 4
  %36 = load i8, i8* %nupvalues, align 1
  %conv = zext i8 %36 to i32
  %cmp25 = icmp sle i32 %34, %conv
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  %37 = load i32, i32* %idx.addr, align 4
  %sub27 = sub nsw i32 %37, 1
  %idxprom = sext i32 %sub27 to i64
  %38 = load %union.Closure*, %union.Closure** %func17, align 8
  %c28 = bitcast %union.Closure* %38 to %struct.CClosure*
  %upvalue = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c28, i32 0, i32 8
  %arrayidx = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %upvalue, i32 0, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lua_TValue* [ %arrayidx, %cond.true ], [ @luaO_nilobject_, %cond.false ]
  store %struct.lua_TValue* %cond, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %cond.end, %sw.bb.16, %sw.bb.10, %sw.bb, %if.then.5, %if.else, %if.then.2
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %39
}

; Function Attrs: nounwind uwtable
define void @lua_insert(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %p = alloca %struct.lua_TValue*, align 8
  %q = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %o23 = alloca %struct.lua_TValue*, align 8
  %o15 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %p, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 4
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %4, %struct.lua_TValue** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %q, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %cmp = icmp ugt %struct.lua_TValue* %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %q, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 -1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o2, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %q, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %o1, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %11 = bitcast %union.Value* %value to i8*
  %12 = bitcast %union.Value* %value1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %14 = load i32, i32* %tt, align 4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  store i32 %14, i32* %tt2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %q, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 -1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %q, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 4
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %top4, align 8
  store %struct.lua_TValue* %18, %struct.lua_TValue** %o23, align 8
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  store %struct.lua_TValue* %19, %struct.lua_TValue** %o15, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %o15, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %o23, align 8
  %value7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 0
  %22 = bitcast %union.Value* %value6 to i8*
  %23 = bitcast %union.Value* %value7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false)
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %o23, align 8
  %tt8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 1
  %25 = load i32, i32* %tt8, align 4
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %o15, align 8
  %tt9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  store i32 %25, i32* %tt9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_replace(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  %func = alloca %union.Closure*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %cmp = icmp eq i32 %0, -10001
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 7
  %2 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 12
  %4 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %cmp1 = icmp eq %struct.CallInfo* %2, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp eq i32 %10, -10001
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 7
  %12 = load %struct.CallInfo*, %struct.CallInfo** %ci4, align 8
  %func5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 1
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %func5, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %14 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %14 to %union.Closure*
  store %union.Closure* %cl, %union.Closure** %func, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 -1
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr, i32 0, i32 0
  %gc7 = bitcast %union.Value* %value6 to %union.GCObject**
  %18 = load %union.GCObject*, %union.GCObject** %gc7, align 8
  %h = bitcast %union.GCObject* %18 to %struct.Table*
  %19 = load %union.Closure*, %union.Closure** %func, align 8
  %c = bitcast %union.Closure* %19 to %struct.CClosure*
  %env = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 6
  store %struct.Table* %h, %struct.Table** %env, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 4
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %top8, align 8
  %add.ptr9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -1
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr9, i32 0, i32 1
  %22 = load i32, i32* %tt, align 4
  %cmp10 = icmp sge i32 %22, 4
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.27

land.lhs.true.11:                                 ; preds = %if.then.3
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 4
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %top12, align 8
  %add.ptr13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 -1
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr13, i32 0, i32 0
  %gc15 = bitcast %union.Value* %value14 to %union.GCObject**
  %25 = load %union.GCObject*, %union.GCObject** %gc15, align 8
  %gch = bitcast %union.GCObject* %25 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %26 = load i8, i8* %marked, align 1
  %conv = zext i8 %26 to i32
  %and = and i32 %conv, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true.16, label %if.end.27

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %27 = load %union.Closure*, %union.Closure** %func, align 8
  %28 = bitcast %union.Closure* %27 to %union.GCObject*
  %gch17 = bitcast %union.GCObject* %28 to %struct.GCheader*
  %marked18 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch17, i32 0, i32 2
  %29 = load i8, i8* %marked18, align 1
  %conv19 = zext i8 %29 to i32
  %and20 = and i32 %conv19, 4
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %land.lhs.true.16
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %31 = load %union.Closure*, %union.Closure** %func, align 8
  %32 = bitcast %union.Closure* %31 to %union.GCObject*
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 4
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %top23, align 8
  %add.ptr24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 -1
  %value25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr24, i32 0, i32 0
  %gc26 = bitcast %union.Value* %value25 to %union.GCObject**
  %35 = load %union.GCObject*, %union.GCObject** %gc26, align 8
  call void @luaC_barrierf(%struct.lua_State* %30, %union.GCObject* %32, %union.GCObject* %35)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %land.lhs.true.16, %land.lhs.true.11, %if.then.3
  br label %if.end.75

if.else:                                          ; preds = %if.end
  %36 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 4
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %top28, align 8
  %add.ptr29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 -1
  store %struct.lua_TValue* %add.ptr29, %struct.lua_TValue** %o2, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  store %struct.lua_TValue* %38, %struct.lua_TValue** %o1, align 8
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 0
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i32 0, i32 0
  %41 = bitcast %union.Value* %value30 to i8*
  %42 = bitcast %union.Value* %value31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 8, i1 false)
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 1
  %44 = load i32, i32* %tt32, align 4
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 1
  store i32 %44, i32* %tt33, align 4
  %46 = load i32, i32* %idx.addr, align 4
  %cmp34 = icmp slt i32 %46, -10002
  br i1 %cmp34, label %if.then.36, label %if.end.74

if.then.36:                                       ; preds = %if.else
  %47 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 4
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %top37, align 8
  %add.ptr38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 -1
  %tt39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr38, i32 0, i32 1
  %49 = load i32, i32* %tt39, align 4
  %cmp40 = icmp sge i32 %49, 4
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.73

land.lhs.true.42:                                 ; preds = %if.then.36
  %50 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 4
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %top43, align 8
  %add.ptr44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i64 -1
  %value45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr44, i32 0, i32 0
  %gc46 = bitcast %union.Value* %value45 to %union.GCObject**
  %52 = load %union.GCObject*, %union.GCObject** %gc46, align 8
  %gch47 = bitcast %union.GCObject* %52 to %struct.GCheader*
  %marked48 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch47, i32 0, i32 2
  %53 = load i8, i8* %marked48, align 1
  %conv49 = zext i8 %53 to i32
  %and50 = and i32 %conv49, 3
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.73

land.lhs.true.52:                                 ; preds = %land.lhs.true.42
  %54 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 7
  %55 = load %struct.CallInfo*, %struct.CallInfo** %ci53, align 8
  %func54 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %55, i32 0, i32 1
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %func54, align 8
  %value55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i32 0, i32 0
  %gc56 = bitcast %union.Value* %value55 to %union.GCObject**
  %57 = load %union.GCObject*, %union.GCObject** %gc56, align 8
  %cl57 = bitcast %union.GCObject* %57 to %union.Closure*
  %58 = bitcast %union.Closure* %cl57 to %union.GCObject*
  %gch58 = bitcast %union.GCObject* %58 to %struct.GCheader*
  %marked59 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch58, i32 0, i32 2
  %59 = load i8, i8* %marked59, align 1
  %conv60 = zext i8 %59 to i32
  %and61 = and i32 %conv60, 4
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.73

if.then.63:                                       ; preds = %land.lhs.true.52
  %60 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %61 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 7
  %62 = load %struct.CallInfo*, %struct.CallInfo** %ci64, align 8
  %func65 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %62, i32 0, i32 1
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %func65, align 8
  %value66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i32 0, i32 0
  %gc67 = bitcast %union.Value* %value66 to %union.GCObject**
  %64 = load %union.GCObject*, %union.GCObject** %gc67, align 8
  %cl68 = bitcast %union.GCObject* %64 to %union.Closure*
  %65 = bitcast %union.Closure* %cl68 to %union.GCObject*
  %66 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %66, i32 0, i32 4
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %top69, align 8
  %add.ptr70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i64 -1
  %value71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr70, i32 0, i32 0
  %gc72 = bitcast %union.Value* %value71 to %union.GCObject**
  %68 = load %union.GCObject*, %union.GCObject** %gc72, align 8
  call void @luaC_barrierf(%struct.lua_State* %60, %union.GCObject* %65, %union.GCObject* %68)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.63, %land.lhs.true.52, %land.lhs.true.42, %if.then.36
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.else
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.27
  %69 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %69, i32 0, i32 4
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %top76, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i32 -1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top76, align 8
  ret void
}

declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #2

declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) #2

; Function Attrs: nounwind uwtable
define void @lua_pushvalue(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o2, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 4
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %o1, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %6 = bitcast %union.Value* %value to i8*
  %7 = bitcast %union.Value* %value1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %9 = load i32, i32* %tt, align 4
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  store i32 %9, i32* %tt2, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 4
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lua_type(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %cmp = icmp eq %struct.lua_TValue* %2, @luaO_nilobject_
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 1
  %4 = load i32, i32* %tt, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %4, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i8* @lua_typename(%struct.lua_State* %L, i32 %t) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %t.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %t.addr, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %t.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define i32 @lua_iscfunction(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %5 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %6 = load i8, i8* %isC, align 1
  %conv = zext i8 %6 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @lua_isnumber(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %n = alloca %struct.lua_TValue, align 8
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %call1 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %4, %struct.lua_TValue* %n)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %o, align 8
  %cmp2 = icmp ne %struct.lua_TValue* %call1, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

declare hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind uwtable
define i32 @lua_isstring(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 %1)
  store i32 %call, i32* %t, align 4
  %2 = load i32, i32* %t, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i32, i32* %t, align 4
  %cmp1 = icmp eq i32 %3, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @lua_isuserdata(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 7
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 1
  %5 = load i32, i32* %tt1, align 4
  %cmp2 = icmp eq i32 %5, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @lua_rawequal(%struct.lua_State* %L, i32 %index1, i32 %index2) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %index1.addr = alloca i32, align 4
  %index2.addr = alloca i32, align 4
  %o1 = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %index1, i32* %index1.addr, align 4
  store i32 %index2, i32* %index2.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %index1.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o1, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %index2.addr, align 4
  %call1 = call %struct.lua_TValue* @index2adr(%struct.lua_State* %2, i32 %3)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %o2, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %cmp = icmp eq %struct.lua_TValue* %4, @luaO_nilobject_
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %cmp2 = icmp eq %struct.lua_TValue* %5, @luaO_nilobject_
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %call3 = call i32 @luaO_rawequalObj(%struct.lua_TValue* %6, %struct.lua_TValue* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  ret i32 %cond
}

declare hidden i32 @luaO_rawequalObj(%struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind uwtable
define i32 @lua_equal(%struct.lua_State* %L, i32 %index1, i32 %index2) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %index1.addr = alloca i32, align 4
  %index2.addr = alloca i32, align 4
  %o1 = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %index1, i32* %index1.addr, align 4
  store i32 %index2, i32* %index2.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %index1.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o1, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %index2.addr, align 4
  %call1 = call %struct.lua_TValue* @index2adr(%struct.lua_State* %2, i32 %3)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %o2, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %cmp = icmp eq %struct.lua_TValue* %4, @luaO_nilobject_
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %cmp2 = icmp eq %struct.lua_TValue* %5, @luaO_nilobject_
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 1
  %7 = load i32, i32* %tt, align 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %9 = load i32, i32* %tt3, align 4
  %cmp4 = icmp eq i32 %7, %9
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %call5 = call i32 @luaV_equalval(%struct.lua_State* %10, %struct.lua_TValue* %11, %struct.lua_TValue* %12)
  %tobool = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false
  %13 = phi i1 [ false, %cond.false ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.end, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %land.ext, %land.end ]
  store i32 %cond, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  ret i32 %14
}

declare hidden i32 @luaV_equalval(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind uwtable
define i32 @lua_lessthan(%struct.lua_State* %L, i32 %index1, i32 %index2) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %index1.addr = alloca i32, align 4
  %index2.addr = alloca i32, align 4
  %o1 = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %index1, i32* %index1.addr, align 4
  store i32 %index2, i32* %index2.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %index1.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o1, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %index2.addr, align 4
  %call1 = call %struct.lua_TValue* @index2adr(%struct.lua_State* %2, i32 %3)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %o2, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %cmp = icmp eq %struct.lua_TValue* %4, @luaO_nilobject_
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %cmp2 = icmp eq %struct.lua_TValue* %5, @luaO_nilobject_
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %call3 = call i32 @luaV_lessthan(%struct.lua_State* %6, %struct.lua_TValue* %7, %struct.lua_TValue* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  ret i32 %9
}

declare hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind uwtable
define double @lua_tonumber(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %retval = alloca double, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %n = alloca %struct.lua_TValue, align 8
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %call1 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %4, %struct.lua_TValue* %n)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %o, align 8
  %cmp2 = icmp ne %struct.lua_TValue* %call1, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %n3 = bitcast %union.Value* %value to double*
  %6 = load double, double* %n3, align 8
  store double %6, double* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load double, double* %retval
  ret double %7
}

; Function Attrs: nounwind uwtable
define i64 @lua_tointeger(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %retval = alloca i64, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %n = alloca %struct.lua_TValue, align 8
  %o = alloca %struct.lua_TValue*, align 8
  %res = alloca i64, align 8
  %num = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %call1 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %4, %struct.lua_TValue* %n)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %o, align 8
  %cmp2 = icmp ne %struct.lua_TValue* %call1, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %n3 = bitcast %union.Value* %value to double*
  %6 = load double, double* %n3, align 8
  store double %6, double* %num, align 8
  %7 = load double, double* %num, align 8
  %conv = fptosi double %7 to i64
  store i64 %conv, i64* %res, align 8
  %8 = load i64, i64* %res, align 8
  store i64 %8, i64* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i64, i64* %retval
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i32 @lua_toboolean(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 1
  %5 = load i32, i32* %tt1, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %b = bitcast %union.Value* %value to i32*
  %7 = load i32, i32* %b, align 4
  %cmp3 = icmp eq i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %cmp3, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %9 = phi i1 [ true, %entry ], [ %8, %land.end ]
  %lnot = xor i1 %9, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define i8* @lua_tolstring(%struct.lua_State* %L, i32 %idx, i64* %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %len.addr = alloca i64*, align 8
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i64* %len, i64** %len.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.end.11, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %call1 = call i32 @luaV_tostring(%struct.lua_State* %4, %struct.lua_TValue* %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %6 = load i64*, i64** %len.addr, align 8
  %cmp3 = icmp ne i64* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %7 = load i64*, i64** %len.addr, align 8
  store i64 0, i64* %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.then
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 6
  %9 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 14
  %10 = load i64, i64* %totalbytes, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 6
  %12 = load %struct.global_State*, %struct.global_State** %l_G6, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 13
  %13 = load i64, i64* %GCthreshold, align 8
  %cmp7 = icmp uge i64 %10, %13
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load i32, i32* %idx.addr, align 4
  %call10 = call %struct.lua_TValue* @index2adr(%struct.lua_State* %15, i32 %16)
  store %struct.lua_TValue* %call10, %struct.lua_TValue** %o, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.9, %entry
  %17 = load i64*, i64** %len.addr, align 8
  %cmp12 = icmp ne i64* %17, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %19 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %19 to %union.TString*
  %tsv = bitcast %union.TString* %ts to %struct.anon.1*
  %len14 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 5
  %20 = load i64, i64* %len14, align 8
  %21 = load i64*, i64** %len.addr, align 8
  store i64 %20, i64* %21, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %gc17 = bitcast %union.Value* %value16 to %union.GCObject**
  %23 = load %union.GCObject*, %union.GCObject** %gc17, align 8
  %ts18 = bitcast %union.GCObject* %23 to %union.TString*
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %ts18, i64 1
  %24 = bitcast %union.TString* %add.ptr to i8*
  store i8* %24, i8** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.end
  %25 = load i8*, i8** %retval
  ret i8* %25
}

declare hidden i32 @luaV_tostring(%struct.lua_State*, %struct.lua_TValue*) #2

; Function Attrs: nounwind uwtable
define i64 @lua_objlen(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %retval = alloca i64, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  %l = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb.1
    i32 5, label %sw.bb.5
    i32 3, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %5 to %union.TString*
  %tsv = bitcast %union.TString* %ts to %struct.anon.1*
  %len = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 5
  %6 = load i64, i64* %len, align 8
  store i64 %6, i64* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %gc3 = bitcast %union.Value* %value2 to %union.GCObject**
  %8 = load %union.GCObject*, %union.GCObject** %gc3, align 8
  %u = bitcast %union.GCObject* %8 to %union.Udata*
  %uv = bitcast %union.Udata* %u to %struct.anon.2*
  %len4 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 5
  %9 = load i64, i64* %len4, align 8
  store i64 %9, i64* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %gc7 = bitcast %union.Value* %value6 to %union.GCObject**
  %11 = load %union.GCObject*, %union.GCObject** %gc7, align 8
  %h = bitcast %union.GCObject* %11 to %struct.Table*
  %call8 = call i32 @luaH_getn(%struct.Table* %h)
  %conv = sext i32 %call8 to i64
  store i64 %conv, i64* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %call10 = call i32 @luaV_tostring(%struct.lua_State* %12, %struct.lua_TValue* %13)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.9
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %gc12 = bitcast %union.Value* %value11 to %union.GCObject**
  %15 = load %union.GCObject*, %union.GCObject** %gc12, align 8
  %ts13 = bitcast %union.GCObject* %15 to %union.TString*
  %tsv14 = bitcast %union.TString* %ts13 to %struct.anon.1*
  %len15 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv14, i32 0, i32 5
  %16 = load i64, i64* %len15, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %l, align 8
  %17 = load i64, i64* %l, align 8
  store i64 %17, i64* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %sw.default, %cond.end, %sw.bb.5, %sw.bb.1, %sw.bb
  %18 = load i64, i64* %retval
  ret i64 %18
}

declare hidden i32 @luaH_getn(%struct.Table*) #2

; Function Attrs: nounwind uwtable
define i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %land.lhs.true, label %cond.true

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %5 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %6 = load i8, i8* %isC, align 1
  %conv = zext i8 %6 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %gc2 = bitcast %union.Value* %value1 to %union.GCObject**
  %8 = load %union.GCObject*, %union.GCObject** %gc2, align 8
  %cl3 = bitcast %union.GCObject* %8 to %union.Closure*
  %c4 = bitcast %union.Closure* %cl3 to %struct.CClosure*
  %f = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c4, i32 0, i32 7
  %9 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %f, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.lua_State*)* [ null, %cond.true ], [ %9, %cond.false ]
  ret i32 (%struct.lua_State*)* %cond
}

; Function Attrs: nounwind uwtable
define i8* @lua_touserdata(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  switch i32 %3, label %sw.default [
    i32 7, label %sw.bb
    i32 2, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %u = bitcast %union.GCObject* %5 to %union.Udata*
  %add.ptr = getelementptr inbounds %union.Udata, %union.Udata* %u, i64 1
  %6 = bitcast %union.Udata* %add.ptr to i8*
  store i8* %6, i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %p = bitcast %union.Value* %value2 to i8**
  %8 = load i8*, i8** %p, align 8
  store i8* %8, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define %struct.lua_State* @lua_tothread(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 8
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %th = bitcast %union.GCObject* %5 to %struct.lua_State*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lua_State* [ null, %cond.true ], [ %th, %cond.false ]
  ret %struct.lua_State* %cond
}

; Function Attrs: nounwind uwtable
define i8* @lua_topointer(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %retval = alloca i8*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  switch i32 %3, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.1
    i32 8, label %sw.bb.4
    i32 7, label %sw.bb.7
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %5 to %struct.Table*
  %6 = bitcast %struct.Table* %h to i8*
  store i8* %6, i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %gc3 = bitcast %union.Value* %value2 to %union.GCObject**
  %8 = load %union.GCObject*, %union.GCObject** %gc3, align 8
  %cl = bitcast %union.GCObject* %8 to %union.Closure*
  %9 = bitcast %union.Closure* %cl to i8*
  store i8* %9, i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %gc6 = bitcast %union.Value* %value5 to %union.GCObject**
  %11 = load %union.GCObject*, %union.GCObject** %gc6, align 8
  %th = bitcast %union.GCObject* %11 to %struct.lua_State*
  %12 = bitcast %struct.lua_State* %th to i8*
  store i8* %12, i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry, %entry
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %idx.addr, align 4
  %call8 = call i8* @lua_touserdata(%struct.lua_State* %13, i32 %14)
  store i8* %call8, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.7, %sw.bb.4, %sw.bb.1, %sw.bb
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define void @lua_pushnil(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 4
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 4
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %top1, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_pushnumber(%struct.lua_State* %L, double %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %n.addr = alloca double, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store double %n, double* %n.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 4
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %i_o, align 8
  %2 = load double, double* %n.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %n1 = bitcast %union.Value* %value to double*
  store double %2, double* %n1, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 1
  store i32 3, i32* %tt, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_pushinteger(%struct.lua_State* %L, i64 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %n.addr = alloca i64, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 4
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %i_o, align 8
  %2 = load i64, i64* %n.addr, align 8
  %conv = sitofp i64 %2 to double
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %n1 = bitcast %union.Value* %value to double*
  store double %conv, double* %n1, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 1
  store i32 3, i32* %tt, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_pushlstring(%struct.lua_State* %L, i8* %s, i64 %len) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 14
  %2 = load i64, i64* %totalbytes, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 13
  %5 = load i64, i64* %GCthreshold, align 8
  %cmp = icmp uge i64 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %i_o, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i64, i64* %len.addr, align 8
  %call = call %union.TString* @luaS_newlstr(%struct.lua_State* %9, i8* %10, i64 %11)
  %12 = bitcast %union.TString* %call to %union.GCObject*
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %12, %union.GCObject** %gc, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  store i32 4, i32* %tt, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top2, align 8
  ret void
}

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @lua_pushstring(%struct.lua_State* %L, i8* %s) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %4) #4
  call void @lua_pushlstring(%struct.lua_State* %2, i8* %3, i64 %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @lua_pushvfstring(%struct.lua_State* %L, i8* %fmt, %struct.__va_list_tag* %argp) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %fmt.addr = alloca i8*, align 8
  %argp.addr = alloca %struct.__va_list_tag*, align 8
  %ret = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store %struct.__va_list_tag* %argp, %struct.__va_list_tag** %argp.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 14
  %2 = load i64, i64* %totalbytes, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 13
  %5 = load i64, i64* %GCthreshold, align 8
  %cmp = icmp uge i64 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i8*, i8** %fmt.addr, align 8
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %argp.addr, align 8
  %call = call i8* @luaO_pushvfstring(%struct.lua_State* %7, i8* %8, %struct.__va_list_tag* %9)
  store i8* %call, i8** %ret, align 8
  %10 = load i8*, i8** %ret, align 8
  ret i8* %10
}

declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind uwtable
define i8* @lua_pushfstring(%struct.lua_State* %L, i8* %fmt, ...) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %fmt.addr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 14
  %2 = load i64, i64* %totalbytes, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 13
  %5 = load i64, i64* %GCthreshold, align 8
  %cmp = icmp uge i64 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i8*, i8** %fmt.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %call = call i8* @luaO_pushvfstring(%struct.lua_State* %7, i8* %8, %struct.__va_list_tag* %arraydecay3)
  store i8* %call, i8** %ret, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %9 = load i8*, i8** %ret, align 8
  ret i8* %9
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define void @lua_pushcclosure(%struct.lua_State* %L, i32 (%struct.lua_State*)* %fn, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %fn.addr = alloca i32 (%struct.lua_State*)*, align 8
  %n.addr = alloca i32, align 4
  %cl = alloca %union.Closure*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 (%struct.lua_State*)* %fn, i32 (%struct.lua_State*)** %fn.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 14
  %2 = load i64, i64* %totalbytes, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 13
  %5 = load i64, i64* %GCthreshold, align 8
  %cmp = icmp uge i64 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %n.addr, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.Table* @getcurrenv(%struct.lua_State* %10)
  %call2 = call %union.Closure* @luaF_newCclosure(%struct.lua_State* %8, i32 %9, %struct.Table* %call)
  store %union.Closure* %call2, %union.Closure** %cl, align 8
  %11 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %fn.addr, align 8
  %12 = load %union.Closure*, %union.Closure** %cl, align 8
  %c = bitcast %union.Closure* %12 to %struct.CClosure*
  %f = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 7
  store i32 (%struct.lua_State*)* %11, i32 (%struct.lua_State*)** %f, align 8
  %13 = load i32, i32* %n.addr, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %idx.ext = sext i32 %13 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 %idx.neg
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %top, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %16 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 4
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %19 = load i32, i32* %n.addr, align 4
  %idx.ext4 = sext i32 %19 to i64
  %add.ptr5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %idx.ext4
  store %struct.lua_TValue* %add.ptr5, %struct.lua_TValue** %o2, align 8
  %20 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %union.Closure*, %union.Closure** %cl, align 8
  %c6 = bitcast %union.Closure* %21 to %struct.CClosure*
  %upvalue = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c6, i32 0, i32 8
  %arrayidx = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %upvalue, i32 0, i64 %idxprom
  store %struct.lua_TValue* %arrayidx, %struct.lua_TValue** %o1, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %24 = bitcast %union.Value* %value to i8*
  %25 = bitcast %union.Value* %value7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  %27 = load i32, i32* %tt, align 4
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  store i32 %27, i32* %tt8, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 4
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %top9, align 8
  store %struct.lua_TValue* %30, %struct.lua_TValue** %i_o, align 8
  %31 = load %union.Closure*, %union.Closure** %cl, align 8
  %32 = bitcast %union.Closure* %31 to %union.GCObject*
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %gc = bitcast %union.Value* %value10 to %union.GCObject**
  store %union.GCObject* %32, %union.GCObject** %gc, align 8
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 1
  store i32 6, i32* %tt11, align 4
  %35 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 4
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %top12, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top12, align 8
  ret void
}

declare hidden %union.Closure* @luaF_newCclosure(%struct.lua_State*, i32, %struct.Table*) #2

; Function Attrs: nounwind uwtable
define internal %struct.Table* @getcurrenv(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca %struct.Table*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %func = alloca %union.Closure*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 7
  %1 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 12
  %3 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %cmp = icmp eq %struct.CallInfo* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_gt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 22
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_gt, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %5 to %struct.Table*
  store %struct.Table* %h, %struct.Table** %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %7 = load %struct.CallInfo*, %struct.CallInfo** %ci1, align 8
  %func2 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i32 0, i32 1
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %func2, align 8
  %value3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %gc4 = bitcast %union.Value* %value3 to %union.GCObject**
  %9 = load %union.GCObject*, %union.GCObject** %gc4, align 8
  %cl = bitcast %union.GCObject* %9 to %union.Closure*
  store %union.Closure* %cl, %union.Closure** %func, align 8
  %10 = load %union.Closure*, %union.Closure** %func, align 8
  %c = bitcast %union.Closure* %10 to %struct.CClosure*
  %env = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 6
  %11 = load %struct.Table*, %struct.Table** %env, align 8
  store %struct.Table* %11, %struct.Table** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load %struct.Table*, %struct.Table** %retval
  ret %struct.Table* %12
}

; Function Attrs: nounwind uwtable
define void @lua_pushboolean(%struct.lua_State* %L, i32 %b) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %b.addr = alloca i32, align 4
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 4
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %i_o, align 8
  %2 = load i32, i32* %b.addr, align 4
  %cmp = icmp ne i32 %2, 0
  %conv = zext i1 %cmp to i32
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %b1 = bitcast %union.Value* %value to i32*
  store i32 %conv, i32* %b1, align 4
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 1
  store i32 1, i32* %tt, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_pushlightuserdata(%struct.lua_State* %L, i8* %p) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %p.addr = alloca i8*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 4
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %i_o, align 8
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %p1 = bitcast %union.Value* %value to i8**
  store i8* %2, i8** %p1, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 1
  store i32 2, i32* %tt, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lua_pushthread(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 4
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %i_o, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = bitcast %struct.lua_State* %2 to %union.GCObject*
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %3, %union.GCObject** %gc, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 1
  store i32 8, i32* %tt, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %top1, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top1, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 6
  %10 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %mainthread = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 21
  %11 = load %struct.lua_State*, %struct.lua_State** %mainthread, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %cmp = icmp eq %struct.lua_State* %11, %12
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @lua_gettable(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %t = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %t, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %t, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 4
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 -1
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %top1, align 8
  %add.ptr2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 -1
  call void @luaV_gettable(%struct.lua_State* %3, %struct.lua_TValue* %4, %struct.lua_TValue* %add.ptr, %struct.lua_TValue* %add.ptr2)
  ret void
}

declare hidden void @luaV_gettable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind uwtable
define void @lua_getfield(%struct.lua_State* %L, i32 %idx, i8* %k) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %k.addr = alloca i8*, align 8
  %t = alloca %struct.lua_TValue*, align 8
  %key = alloca %struct.lua_TValue, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i8* %k, i8** %k.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %t, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %i_o, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i8*, i8** %k.addr, align 8
  %5 = load i8*, i8** %k.addr, align 8
  %call1 = call i64 @strlen(i8* %5) #4
  %call2 = call %union.TString* @luaS_newlstr(%struct.lua_State* %3, i8* %4, i64 %call1)
  %6 = bitcast %union.TString* %call2 to %union.GCObject*
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %6, %union.GCObject** %gc, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  store i32 4, i32* %tt, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %t, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  call void @luaV_gettable(%struct.lua_State* %9, %struct.lua_TValue* %10, %struct.lua_TValue* %key, %struct.lua_TValue* %12)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_rawget(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %t = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %t, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %t, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %4 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %4 to %struct.Table*
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 4
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 -1
  %call1 = call %struct.lua_TValue* @luaH_get(%struct.Table* %h, %struct.lua_TValue* %add.ptr)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %o2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %add.ptr3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 -1
  store %struct.lua_TValue* %add.ptr3, %struct.lua_TValue** %o1, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %11 = bitcast %union.Value* %value4 to i8*
  %12 = bitcast %union.Value* %value5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %14 = load i32, i32* %tt, align 4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  store i32 %14, i32* %tt6, align 4
  ret void
}

declare hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) #2

; Function Attrs: nounwind uwtable
define void @lua_rawgeti(%struct.lua_State* %L, i32 %idx, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %4 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %4 to %struct.Table*
  %5 = load i32, i32* %n.addr, align 4
  %call1 = call %struct.lua_TValue* @luaH_getnum(%struct.Table* %h, i32 %5)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %o2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %7, %struct.lua_TValue** %o1, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %10 = bitcast %union.Value* %value2 to i8*
  %11 = bitcast %union.Value* %value3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %13 = load i32, i32* %tt, align 4
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  store i32 %13, i32* %tt4, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top5, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top5, align 8
  ret void
}

declare hidden %struct.lua_TValue* @luaH_getnum(%struct.Table*, i32) #2

; Function Attrs: nounwind uwtable
define void @lua_createtable(%struct.lua_State* %L, i32 %narray, i32 %nrec) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %narray.addr = alloca i32, align 4
  %nrec.addr = alloca i32, align 4
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %narray, i32* %narray.addr, align 4
  store i32 %nrec, i32* %nrec.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 14
  %2 = load i64, i64* %totalbytes, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 13
  %5 = load i64, i64* %GCthreshold, align 8
  %cmp = icmp uge i64 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %i_o, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i32, i32* %narray.addr, align 4
  %11 = load i32, i32* %nrec.addr, align 4
  %call = call %struct.Table* @luaH_new(%struct.lua_State* %9, i32 %10, i32 %11)
  %12 = bitcast %struct.Table* %call to %union.GCObject*
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %12, %union.GCObject** %gc, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  store i32 5, i32* %tt, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top2, align 8
  ret void
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @lua_getmetatable(%struct.lua_State* %L, i32 %objindex) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %objindex.addr = alloca i32, align 4
  %obj = alloca %struct.lua_TValue*, align 8
  %mt = alloca %struct.Table*, align 8
  %res = alloca i32, align 4
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %objindex, i32* %objindex.addr, align 4
  store %struct.Table* null, %struct.Table** %mt, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %objindex.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %obj, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  switch i32 %3, label %sw.default [
    i32 5, label %sw.bb
    i32 7, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %5 to %struct.Table*
  %metatable = getelementptr inbounds %struct.Table, %struct.Table* %h, i32 0, i32 5
  %6 = load %struct.Table*, %struct.Table** %metatable, align 8
  store %struct.Table* %6, %struct.Table** %mt, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %gc3 = bitcast %union.Value* %value2 to %union.GCObject**
  %8 = load %union.GCObject*, %union.GCObject** %gc3, align 8
  %u = bitcast %union.GCObject* %8 to %union.Udata*
  %uv = bitcast %union.Udata* %u to %struct.anon.2*
  %metatable4 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 3
  %9 = load %struct.Table*, %struct.Table** %metatable4, align 8
  store %struct.Table* %9, %struct.Table** %mt, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %tt5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %11 = load i32, i32* %tt5, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %13 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %mt6 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 23
  %arrayidx = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %mt6, i32 0, i64 %idxprom
  %14 = load %struct.Table*, %struct.Table** %arrayidx, align 8
  store %struct.Table* %14, %struct.Table** %mt, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  %15 = load %struct.Table*, %struct.Table** %mt, align 8
  %cmp = icmp eq %struct.Table* %15, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  store i32 0, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %17, %struct.lua_TValue** %i_o, align 8
  %18 = load %struct.Table*, %struct.Table** %mt, align 8
  %19 = bitcast %struct.Table* %18 to %union.GCObject*
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %gc8 = bitcast %union.Value* %value7 to %union.GCObject**
  store %union.GCObject* %19, %union.GCObject** %gc8, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 1
  store i32 5, i32* %tt9, align 4
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 4
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %top10, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top10, align 8
  store i32 1, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load i32, i32* %res, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define void @lua_getfenv(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  %i_o5 = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 1
  %4 = load i32, i32* %tt, align 4
  switch i32 %4, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb.4
    i32 8, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 4
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %6, %struct.lua_TValue** %i_o, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %8 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %8 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %env = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 6
  %9 = load %struct.Table*, %struct.Table** %env, align 8
  %10 = bitcast %struct.Table* %9 to %union.GCObject*
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %gc2 = bitcast %union.Value* %value1 to %union.GCObject**
  store %union.GCObject* %10, %union.GCObject** %gc2, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  store i32 5, i32* %tt3, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 4
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %top6, align 8
  store %struct.lua_TValue* %14, %struct.lua_TValue** %i_o5, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %gc8 = bitcast %union.Value* %value7 to %union.GCObject**
  %16 = load %union.GCObject*, %union.GCObject** %gc8, align 8
  %u = bitcast %union.GCObject* %16 to %union.Udata*
  %uv = bitcast %union.Udata* %u to %struct.anon.2*
  %env9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 4
  %17 = load %struct.Table*, %struct.Table** %env9, align 8
  %18 = bitcast %struct.Table* %17 to %union.GCObject*
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o5, align 8
  %value10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %gc11 = bitcast %union.Value* %value10 to %union.GCObject**
  store %union.GCObject* %18, %union.GCObject** %gc11, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o5, align 8
  %tt12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 1
  store i32 5, i32* %tt12, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 0
  %gc15 = bitcast %union.Value* %value14 to %union.GCObject**
  %22 = load %union.GCObject*, %union.GCObject** %gc15, align 8
  %th = bitcast %union.GCObject* %22 to %struct.lua_State*
  %l_gt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %th, i32 0, i32 22
  store %struct.lua_TValue* %l_gt, %struct.lua_TValue** %o2, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 4
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %top16, align 8
  store %struct.lua_TValue* %24, %struct.lua_TValue** %o1, align 8
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 0
  %27 = bitcast %union.Value* %value17 to i8*
  %28 = bitcast %union.Value* %value18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 1
  %30 = load i32, i32* %tt19, align 4
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 1
  store i32 %30, i32* %tt20, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 4
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %top21, align 8
  %tt22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  store i32 0, i32* %tt22, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.13, %sw.bb.4, %sw.bb
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 4
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %top23, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top23, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_settable(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %t = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %1, i32 %2)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %t, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %t, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 -2
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 4
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %top1, align 8
  %add.ptr2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 -1
  call void @luaV_settable(%struct.lua_State* %4, %struct.lua_TValue* %5, %struct.lua_TValue* %add.ptr, %struct.lua_TValue* %add.ptr2)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 4
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %add.ptr4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 -2
  store %struct.lua_TValue* %add.ptr4, %struct.lua_TValue** %top3, align 8
  ret void
}

declare hidden void @luaV_settable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind uwtable
define void @lua_setfield(%struct.lua_State* %L, i32 %idx, i8* %k) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %k.addr = alloca i8*, align 8
  %t = alloca %struct.lua_TValue*, align 8
  %key = alloca %struct.lua_TValue, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i8* %k, i8** %k.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %1, i32 %2)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %t, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %i_o, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %k.addr, align 8
  %6 = load i8*, i8** %k.addr, align 8
  %call1 = call i64 @strlen(i8* %6) #4
  %call2 = call %union.TString* @luaS_newlstr(%struct.lua_State* %4, i8* %5, i64 %call1)
  %7 = bitcast %union.TString* %call2 to %union.GCObject*
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %7, %union.GCObject** %gc, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  store i32 4, i32* %tt, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %t, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 4
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 -1
  call void @luaV_settable(%struct.lua_State* %10, %struct.lua_TValue* %11, %struct.lua_TValue* %key, %struct.lua_TValue* %add.ptr)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 -1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @lua_rawset(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %t = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %1, i32 %2)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %t, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 4
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 -1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %t, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %8 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %8 to %struct.Table*
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 4
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %top1, align 8
  %add.ptr2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i64 -2
  %call3 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %6, %struct.Table* %h, %struct.lua_TValue* %add.ptr2)
  store %struct.lua_TValue* %call3, %struct.lua_TValue** %o1, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %13 = bitcast %union.Value* %value4 to i8*
  %14 = bitcast %union.Value* %value5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  %16 = load i32, i32* %tt, align 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 1
  store i32 %16, i32* %tt6, align 4
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 4
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %top7, align 8
  %add.ptr8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 -1
  %tt9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr8, i32 0, i32 1
  %20 = load i32, i32* %tt9, align 4
  %cmp = icmp sge i32 %20, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 4
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %top10, align 8
  %add.ptr11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i64 -1
  %value12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr11, i32 0, i32 0
  %gc13 = bitcast %union.Value* %value12 to %union.GCObject**
  %23 = load %union.GCObject*, %union.GCObject** %gc13, align 8
  %gch = bitcast %union.GCObject* %23 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %24 = load i8, i8* %marked, align 1
  %conv = zext i8 %24 to i32
  %and = and i32 %conv, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %t, align 8
  %value15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %gc16 = bitcast %union.Value* %value15 to %union.GCObject**
  %26 = load %union.GCObject*, %union.GCObject** %gc16, align 8
  %h17 = bitcast %union.GCObject* %26 to %struct.Table*
  %27 = bitcast %struct.Table* %h17 to %union.GCObject*
  %gch18 = bitcast %union.GCObject* %27 to %struct.GCheader*
  %marked19 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch18, i32 0, i32 2
  %28 = load i8, i8* %marked19, align 1
  %conv20 = zext i8 %28 to i32
  %and21 = and i32 %conv20, 4
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.14
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %t, align 8
  %value23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 0
  %gc24 = bitcast %union.Value* %value23 to %union.GCObject**
  %31 = load %union.GCObject*, %union.GCObject** %gc24, align 8
  %h25 = bitcast %union.GCObject* %31 to %struct.Table*
  call void @luaC_barrierback(%struct.lua_State* %29, %struct.Table* %h25)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.14, %land.lhs.true, %entry
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 4
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %top26, align 8
  %add.ptr27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -2
  store %struct.lua_TValue* %add.ptr27, %struct.lua_TValue** %top26, align 8
  ret void
}

declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #2

declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) #2

; Function Attrs: nounwind uwtable
define void @lua_rawseti(%struct.lua_State* %L, i32 %idx, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %1, i32 %2)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 4
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 -1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %8 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %8 to %struct.Table*
  %9 = load i32, i32* %n.addr, align 4
  %call1 = call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %6, %struct.Table* %h, i32 %9)
  store %struct.lua_TValue* %call1, %struct.lua_TValue** %o1, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %12 = bitcast %union.Value* %value2 to i8*
  %13 = bitcast %union.Value* %value3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  %15 = load i32, i32* %tt, align 4
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 1
  store i32 %15, i32* %tt4, align 4
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 4
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %top5, align 8
  %add.ptr6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 -1
  %tt7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr6, i32 0, i32 1
  %19 = load i32, i32* %tt7, align 4
  %cmp = icmp sge i32 %19, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 4
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %top8, align 8
  %add.ptr9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -1
  %value10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr9, i32 0, i32 0
  %gc11 = bitcast %union.Value* %value10 to %union.GCObject**
  %22 = load %union.GCObject*, %union.GCObject** %gc11, align 8
  %gch = bitcast %union.GCObject* %22 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %23 = load i8, i8* %marked, align 1
  %conv = zext i8 %23 to i32
  %and = and i32 %conv, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 0
  %gc14 = bitcast %union.Value* %value13 to %union.GCObject**
  %25 = load %union.GCObject*, %union.GCObject** %gc14, align 8
  %h15 = bitcast %union.GCObject* %25 to %struct.Table*
  %26 = bitcast %struct.Table* %h15 to %union.GCObject*
  %gch16 = bitcast %union.GCObject* %26 to %struct.GCheader*
  %marked17 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch16, i32 0, i32 2
  %27 = load i8, i8* %marked17, align 1
  %conv18 = zext i8 %27 to i32
  %and19 = and i32 %conv18, 4
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.12
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 0
  %gc22 = bitcast %union.Value* %value21 to %union.GCObject**
  %30 = load %union.GCObject*, %union.GCObject** %gc22, align 8
  %h23 = bitcast %union.GCObject* %30 to %struct.Table*
  call void @luaC_barrierback(%struct.lua_State* %28, %struct.Table* %h23)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.12, %land.lhs.true, %entry
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 4
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %top24, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 -1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top24, align 8
  ret void
}

declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @lua_setmetatable(%struct.lua_State* %L, i32 %objindex) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %objindex.addr = alloca i32, align 4
  %obj = alloca %struct.lua_TValue*, align 8
  %mt = alloca %struct.Table*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %objindex, i32* %objindex.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %objindex.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %1, i32 %2)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %obj, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 4
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 -1
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr, i32 0, i32 1
  %6 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.Table* null, %struct.Table** %mt, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 4
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %top1, align 8
  %add.ptr2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 -1
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr2, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %10 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %10 to %struct.Table*
  store %struct.Table* %h, %struct.Table** %mt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %tt3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  %12 = load i32, i32* %tt3, align 4
  switch i32 %12, label %sw.default [
    i32 5, label %sw.bb
    i32 7, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end
  %13 = load %struct.Table*, %struct.Table** %mt, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %gc5 = bitcast %union.Value* %value4 to %union.GCObject**
  %15 = load %union.GCObject*, %union.GCObject** %gc5, align 8
  %h6 = bitcast %union.GCObject* %15 to %struct.Table*
  %metatable = getelementptr inbounds %struct.Table, %struct.Table* %h6, i32 0, i32 5
  store %struct.Table* %13, %struct.Table** %metatable, align 8
  %16 = load %struct.Table*, %struct.Table** %mt, align 8
  %tobool = icmp ne %struct.Table* %16, null
  br i1 %tobool, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %sw.bb
  %17 = load %struct.Table*, %struct.Table** %mt, align 8
  %18 = bitcast %struct.Table* %17 to %union.GCObject*
  %gch = bitcast %union.GCObject* %18 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %19 = load i8, i8* %marked, align 1
  %conv = zext i8 %19 to i32
  %and = and i32 %conv, 3
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.7
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %value9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %gc10 = bitcast %union.Value* %value9 to %union.GCObject**
  %21 = load %union.GCObject*, %union.GCObject** %gc10, align 8
  %h11 = bitcast %union.GCObject* %21 to %struct.Table*
  %22 = bitcast %struct.Table* %h11 to %union.GCObject*
  %gch12 = bitcast %union.GCObject* %22 to %struct.GCheader*
  %marked13 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch12, i32 0, i32 2
  %23 = load i8, i8* %marked13, align 1
  %conv14 = zext i8 %23 to i32
  %and15 = and i32 %conv14, 4
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %land.lhs.true
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %value18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %gc19 = bitcast %union.Value* %value18 to %union.GCObject**
  %26 = load %union.GCObject*, %union.GCObject** %gc19, align 8
  %h20 = bitcast %union.GCObject* %26 to %struct.Table*
  call void @luaC_barrierback(%struct.lua_State* %24, %struct.Table* %h20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.7
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %sw.bb
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end
  %27 = load %struct.Table*, %struct.Table** %mt, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %value24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 0
  %gc25 = bitcast %union.Value* %value24 to %union.GCObject**
  %29 = load %union.GCObject*, %union.GCObject** %gc25, align 8
  %u = bitcast %union.GCObject* %29 to %union.Udata*
  %uv = bitcast %union.Udata* %u to %struct.anon.2*
  %metatable26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 3
  store %struct.Table* %27, %struct.Table** %metatable26, align 8
  %30 = load %struct.Table*, %struct.Table** %mt, align 8
  %tobool27 = icmp ne %struct.Table* %30, null
  br i1 %tobool27, label %if.then.28, label %if.end.48

if.then.28:                                       ; preds = %sw.bb.23
  %31 = load %struct.Table*, %struct.Table** %mt, align 8
  %32 = bitcast %struct.Table* %31 to %union.GCObject*
  %gch29 = bitcast %union.GCObject* %32 to %struct.GCheader*
  %marked30 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch29, i32 0, i32 2
  %33 = load i8, i8* %marked30, align 1
  %conv31 = zext i8 %33 to i32
  %and32 = and i32 %conv31, 3
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.47

land.lhs.true.34:                                 ; preds = %if.then.28
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %value35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 0
  %gc36 = bitcast %union.Value* %value35 to %union.GCObject**
  %35 = load %union.GCObject*, %union.GCObject** %gc36, align 8
  %u37 = bitcast %union.GCObject* %35 to %union.Udata*
  %36 = bitcast %union.Udata* %u37 to %union.GCObject*
  %gch38 = bitcast %union.GCObject* %36 to %struct.GCheader*
  %marked39 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch38, i32 0, i32 2
  %37 = load i8, i8* %marked39, align 1
  %conv40 = zext i8 %37 to i32
  %and41 = and i32 %conv40, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %land.lhs.true.34
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %value44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 0
  %gc45 = bitcast %union.Value* %value44 to %union.GCObject**
  %40 = load %union.GCObject*, %union.GCObject** %gc45, align 8
  %u46 = bitcast %union.GCObject* %40 to %union.Udata*
  %41 = bitcast %union.Udata* %u46 to %union.GCObject*
  %42 = load %struct.Table*, %struct.Table** %mt, align 8
  %43 = bitcast %struct.Table* %42 to %union.GCObject*
  call void @luaC_barrierf(%struct.lua_State* %38, %union.GCObject* %41, %union.GCObject* %43)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %land.lhs.true.34, %if.then.28
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %sw.bb.23
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %44 = load %struct.Table*, %struct.Table** %mt, align 8
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %obj, align 8
  %tt49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 1
  %46 = load i32, i32* %tt49, align 4
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 6
  %48 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %mt50 = getelementptr inbounds %struct.global_State, %struct.global_State* %48, i32 0, i32 23
  %arrayidx = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %mt50, i32 0, i64 %idxprom
  store %struct.Table* %44, %struct.Table** %arrayidx, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.48, %if.end.22
  %49 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 4
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %top51, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i32 -1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top51, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @lua_setfenv(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  %res = alloca i32, align 4
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 1, i32* %res, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %1, i32 %2)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 1
  %6 = load i32, i32* %tt, align 4
  switch i32 %6, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb.3
    i32 8, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 -1
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %9 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %9 to %struct.Table*
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %gc2 = bitcast %union.Value* %value1 to %union.GCObject**
  %11 = load %union.GCObject*, %union.GCObject** %gc2, align 8
  %cl = bitcast %union.GCObject* %11 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %env = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 6
  store %struct.Table* %h, %struct.Table** %env, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 4
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %top4, align 8
  %add.ptr5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 -1
  %value6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr5, i32 0, i32 0
  %gc7 = bitcast %union.Value* %value6 to %union.GCObject**
  %14 = load %union.GCObject*, %union.GCObject** %gc7, align 8
  %h8 = bitcast %union.GCObject* %14 to %struct.Table*
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %gc10 = bitcast %union.Value* %value9 to %union.GCObject**
  %16 = load %union.GCObject*, %union.GCObject** %gc10, align 8
  %u = bitcast %union.GCObject* %16 to %union.Udata*
  %uv = bitcast %union.Udata* %u to %struct.anon.2*
  %env11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 4
  store %struct.Table* %h8, %struct.Table** %env11, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %gc14 = bitcast %union.Value* %value13 to %union.GCObject**
  %18 = load %union.GCObject*, %union.GCObject** %gc14, align 8
  %th = bitcast %union.GCObject* %18 to %struct.lua_State*
  %l_gt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %th, i32 0, i32 22
  store %struct.lua_TValue* %l_gt, %struct.lua_TValue** %i_o, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %top15, align 8
  %add.ptr16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 -1
  %value17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr16, i32 0, i32 0
  %gc18 = bitcast %union.Value* %value17 to %union.GCObject**
  %21 = load %union.GCObject*, %union.GCObject** %gc18, align 8
  %h19 = bitcast %union.GCObject* %21 to %struct.Table*
  %22 = bitcast %struct.Table* %h19 to %union.GCObject*
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %gc21 = bitcast %union.Value* %value20 to %union.GCObject**
  store %union.GCObject* %22, %union.GCObject** %gc21, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 1
  store i32 5, i32* %tt22, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.12, %sw.bb.3, %sw.bb
  %25 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end.44

if.then:                                          ; preds = %sw.epilog
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 4
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %top23, align 8
  %add.ptr24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 -1
  %value25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr24, i32 0, i32 0
  %gc26 = bitcast %union.Value* %value25 to %union.GCObject**
  %28 = load %union.GCObject*, %union.GCObject** %gc26, align 8
  %h27 = bitcast %union.GCObject* %28 to %struct.Table*
  %29 = bitcast %struct.Table* %h27 to %union.GCObject*
  %gch = bitcast %union.GCObject* %29 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %30 = load i8, i8* %marked, align 1
  %conv = zext i8 %30 to i32
  %and = and i32 %conv, 3
  %tobool28 = icmp ne i32 %and, 0
  br i1 %tobool28, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %gc30 = bitcast %union.Value* %value29 to %union.GCObject**
  %32 = load %union.GCObject*, %union.GCObject** %gc30, align 8
  %gch31 = bitcast %union.GCObject* %32 to %struct.GCheader*
  %marked32 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch31, i32 0, i32 2
  %33 = load i8, i8* %marked32, align 1
  %conv33 = zext i8 %33 to i32
  %and34 = and i32 %conv33, 4
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %land.lhs.true
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 0
  %gc38 = bitcast %union.Value* %value37 to %union.GCObject**
  %36 = load %union.GCObject*, %union.GCObject** %gc38, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 4
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %top39, align 8
  %add.ptr40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 -1
  %value41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr40, i32 0, i32 0
  %gc42 = bitcast %union.Value* %value41 to %union.GCObject**
  %39 = load %union.GCObject*, %union.GCObject** %gc42, align 8
  %h43 = bitcast %union.GCObject* %39 to %struct.Table*
  %40 = bitcast %struct.Table* %h43 to %union.GCObject*
  call void @luaC_barrierf(%struct.lua_State* %34, %union.GCObject* %36, %union.GCObject* %40)
  br label %if.end

if.end:                                           ; preds = %if.then.36, %land.lhs.true, %if.then
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %sw.epilog
  %41 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 4
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %top45, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 -1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top45, align 8
  %43 = load i32, i32* %res, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define void @lua_call(%struct.lua_State* %L, i32 %nargs, i32 %nresults) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %nargs.addr = alloca i32, align 4
  %nresults.addr = alloca i32, align 4
  %func = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %nargs, i32* %nargs.addr, align 4
  store i32 %nresults, i32* %nresults.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 4
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %4 = load i32, i32* %nargs.addr, align 4
  %add = add nsw i32 %4, 1
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 %idx.neg
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %func, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %7 = load i32, i32* %nresults.addr, align 4
  call void @luaD_call(%struct.lua_State* %5, %struct.lua_TValue* %6, i32 %7)
  %8 = load i32, i32* %nresults.addr, align 4
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 4
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %top1, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 7
  %12 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %top2 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 2
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %cmp3 = icmp uge %struct.lua_TValue* %10, %13
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %top4, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 7
  %17 = load %struct.CallInfo*, %struct.CallInfo** %ci5, align 8
  %top6 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i32 0, i32 2
  store %struct.lua_TValue* %15, %struct.lua_TValue** %top6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @lua_pcall(%struct.lua_State* %L, i32 %nargs, i32 %nresults, i32 %errfunc) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %nargs.addr = alloca i32, align 4
  %nresults.addr = alloca i32, align 4
  %errfunc.addr = alloca i32, align 4
  %c = alloca %struct.CallS, align 8
  %status = alloca i32, align 4
  %func = alloca i64, align 8
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %nargs, i32* %nargs.addr, align 4
  store i32 %nresults, i32* %nresults.addr, align 4
  store i32 %errfunc, i32* %errfunc.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %errfunc.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %func, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %errfunc.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %3, i32 %4)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %o, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %7 = bitcast %struct.lua_TValue* %6 to i8*
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 10
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %10 = bitcast %struct.lua_TValue* %9 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %func, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %13 = load i32, i32* %nargs.addr, align 4
  %add = add nsw i32 %13, 1
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 %idx.neg
  %func1 = getelementptr inbounds %struct.CallS, %struct.CallS* %c, i32 0, i32 0
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %func1, align 8
  %14 = load i32, i32* %nresults.addr, align 4
  %nresults2 = getelementptr inbounds %struct.CallS, %struct.CallS* %c, i32 0, i32 1
  store i32 %14, i32* %nresults2, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = bitcast %struct.CallS* %c to i8*
  %func3 = getelementptr inbounds %struct.CallS, %struct.CallS* %c, i32 0, i32 0
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %func3, align 8
  %18 = bitcast %struct.lua_TValue* %17 to i8*
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 10
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %stack4, align 8
  %21 = bitcast %struct.lua_TValue* %20 to i8*
  %sub.ptr.lhs.cast5 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %21 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %22 = load i64, i64* %func, align 8
  %call8 = call i32 @luaD_pcall(%struct.lua_State* %15, void (%struct.lua_State*, i8*)* @f_call, i8* %16, i64 %sub.ptr.sub7, i64 %22)
  store i32 %call8, i32* %status, align 4
  %23 = load i32, i32* %nresults.addr, align 4
  %cmp9 = icmp eq i32 %23, -1
  br i1 %cmp9, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 4
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %top10, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 7
  %27 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %top11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i32 0, i32 2
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %top11, align 8
  %cmp12 = icmp uge %struct.lua_TValue* %25, %28
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %land.lhs.true
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 4
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %top14, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 7
  %32 = load %struct.CallInfo*, %struct.CallInfo** %ci15, align 8
  %top16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i32 0, i32 2
  store %struct.lua_TValue* %30, %struct.lua_TValue** %top16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %land.lhs.true, %if.end
  %33 = load i32, i32* %status, align 4
  ret i32 %33
}

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @f_call(%struct.lua_State* %L, i8* %ud) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i8*, align 8
  %c = alloca %struct.CallS*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %0 = load i8*, i8** %ud.addr, align 8
  %1 = bitcast i8* %0 to %struct.CallS*
  store %struct.CallS* %1, %struct.CallS** %c, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.CallS*, %struct.CallS** %c, align 8
  %func = getelementptr inbounds %struct.CallS, %struct.CallS* %3, i32 0, i32 0
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %5 = load %struct.CallS*, %struct.CallS** %c, align 8
  %nresults = getelementptr inbounds %struct.CallS, %struct.CallS* %5, i32 0, i32 1
  %6 = load i32, i32* %nresults, align 4
  call void @luaD_call(%struct.lua_State* %2, %struct.lua_TValue* %4, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lua_cpcall(%struct.lua_State* %L, i32 (%struct.lua_State*)* %func, i8* %ud) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %func.addr = alloca i32 (%struct.lua_State*)*, align 8
  %ud.addr = alloca i8*, align 8
  %c = alloca %struct.CCallS, align 8
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 (%struct.lua_State*)* %func, i32 (%struct.lua_State*)** %func.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %0 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %func.addr, align 8
  %func1 = getelementptr inbounds %struct.CCallS, %struct.CCallS* %c, i32 0, i32 0
  store i32 (%struct.lua_State*)* %0, i32 (%struct.lua_State*)** %func1, align 8
  %1 = load i8*, i8** %ud.addr, align 8
  %ud2 = getelementptr inbounds %struct.CCallS, %struct.CCallS* %c, i32 0, i32 1
  store i8* %1, i8** %ud2, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = bitcast %struct.CCallS* %c to i8*
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 4
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %6 = bitcast %struct.lua_TValue* %5 to i8*
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 10
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %9 = bitcast %struct.lua_TValue* %8 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @luaD_pcall(%struct.lua_State* %2, void (%struct.lua_State*, i8*)* @f_Ccall, i8* %3, i64 %sub.ptr.sub, i64 0)
  store i32 %call, i32* %status, align 4
  %10 = load i32, i32* %status, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @f_Ccall(%struct.lua_State* %L, i8* %ud) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i8*, align 8
  %c = alloca %struct.CCallS*, align 8
  %cl = alloca %union.Closure*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  %i_o4 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %0 = load i8*, i8** %ud.addr, align 8
  %1 = bitcast i8* %0 to %struct.CCallS*
  store %struct.CCallS* %1, %struct.CCallS** %c, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.Table* @getcurrenv(%struct.lua_State* %3)
  %call1 = call %union.Closure* @luaF_newCclosure(%struct.lua_State* %2, i32 0, %struct.Table* %call)
  store %union.Closure* %call1, %union.Closure** %cl, align 8
  %4 = load %struct.CCallS*, %struct.CCallS** %c, align 8
  %func = getelementptr inbounds %struct.CCallS, %struct.CCallS* %4, i32 0, i32 0
  %5 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %func, align 8
  %6 = load %union.Closure*, %union.Closure** %cl, align 8
  %c2 = bitcast %union.Closure* %6 to %struct.CClosure*
  %f = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c2, i32 0, i32 7
  store i32 (%struct.lua_State*)* %5, i32 (%struct.lua_State*)** %f, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %i_o, align 8
  %9 = load %union.Closure*, %union.Closure** %cl, align 8
  %10 = bitcast %union.Closure* %9 to %union.GCObject*
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %10, %union.GCObject** %gc, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  store i32 6, i32* %tt, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top3, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top5, align 8
  store %struct.lua_TValue* %17, %struct.lua_TValue** %i_o4, align 8
  %18 = load %struct.CCallS*, %struct.CCallS** %c, align 8
  %ud6 = getelementptr inbounds %struct.CCallS, %struct.CCallS* %18, i32 0, i32 1
  %19 = load i8*, i8** %ud6, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o4, align 8
  %value7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %p = bitcast %union.Value* %value7 to i8**
  store i8* %19, i8** %p, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o4, align 8
  %tt8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 1
  store i32 2, i32* %tt8, align 4
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 4
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %top9, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 1
  store %struct.lua_TValue* %incdec.ptr10, %struct.lua_TValue** %top9, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 4
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %top11, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 -2
  call void @luaD_call(%struct.lua_State* %25, %struct.lua_TValue* %add.ptr, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lua_load(%struct.lua_State* %L, i8* (%struct.lua_State*, i8*, i64*)* %reader, i8* %data, i8* %chunkname) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %reader.addr = alloca i8* (%struct.lua_State*, i8*, i64*)*, align 8
  %data.addr = alloca i8*, align 8
  %chunkname.addr = alloca i8*, align 8
  %z = alloca %struct.Zio, align 8
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* (%struct.lua_State*, i8*, i64*)* %reader, i8* (%struct.lua_State*, i8*, i64*)** %reader.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %chunkname, i8** %chunkname.addr, align 8
  %0 = load i8*, i8** %chunkname.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %chunkname.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %reader.addr, align 8
  %3 = load i8*, i8** %data.addr, align 8
  call void @luaZ_init(%struct.lua_State* %1, %struct.Zio* %z, i8* (%struct.lua_State*, i8*, i64*)* %2, i8* %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %chunkname.addr, align 8
  %call = call i32 @luaD_protectedparser(%struct.lua_State* %4, %struct.Zio* %z, i8* %5)
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  ret i32 %6
}

declare hidden void @luaZ_init(%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i64*)*, i8*) #2

declare hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @lua_dump(%struct.lua_State* %L, i32 (%struct.lua_State*, i8*, i64, i8*)* %writer, i8* %data) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %writer.addr = alloca i32 (%struct.lua_State*, i8*, i64, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %writer, i32 (%struct.lua_State*, i8*, i64, i8*)** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 4
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 -1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 1
  %4 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %4, 6
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %6 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %6 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %7 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %gc2 = bitcast %union.Value* %value1 to %union.GCObject**
  %10 = load %union.GCObject*, %union.GCObject** %gc2, align 8
  %cl3 = bitcast %union.GCObject* %10 to %union.Closure*
  %l = bitcast %union.Closure* %cl3 to %struct.LClosure*
  %p = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %11 = load %struct.Proto*, %struct.Proto** %p, align 8
  %12 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %writer.addr, align 8
  %13 = load i8*, i8** %data.addr, align 8
  %call = call i32 @luaU_dump(%struct.lua_State* %8, %struct.Proto* %11, i32 (%struct.lua_State*, i8*, i64, i8*)* %12, i8* %13, i32 0)
  store i32 %call, i32* %status, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %status, align 4
  ret i32 %14
}

declare hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @lua_status(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 3
  %1 = load i8, i8* %status, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @lua_gc(%struct.lua_State* %L, i32 %what, i32 %data) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %what.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %g = alloca %struct.global_State*, align 8
  %a = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %data, i32* %data.addr, align 4
  store i32 0, i32* %res, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load i32, i32* %what.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.25
    i32 7, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i32 0, i32 13
  store i64 -3, i64* %GCthreshold, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 14
  %5 = load i64, i64* %totalbytes, align 8
  %6 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold2 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 13
  store i64 %5, i64* %GCthreshold2, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_fullgc(%struct.lua_State* %7)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %8 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes5 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 14
  %9 = load i64, i64* %totalbytes5, align 8
  %shr = lshr i64 %9, 10
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %res, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %10 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes7 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 14
  %11 = load i64, i64* %totalbytes7, align 8
  %and = and i64 %11, 1023
  %conv8 = trunc i64 %and to i32
  store i32 %conv8, i32* %res, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load i32, i32* %data.addr, align 4
  %conv10 = sext i32 %12 to i64
  %shl = shl i64 %conv10, 10
  store i64 %shl, i64* %a, align 8
  %13 = load i64, i64* %a, align 8
  %14 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes11 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 14
  %15 = load i64, i64* %totalbytes11, align 8
  %cmp = icmp ule i64 %13, %15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.9
  %16 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes13 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 14
  %17 = load i64, i64* %totalbytes13, align 8
  %18 = load i64, i64* %a, align 8
  %sub = sub i64 %17, %18
  %19 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold14 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 13
  store i64 %sub, i64* %GCthreshold14, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.9
  %20 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold15 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 13
  store i64 0, i64* %GCthreshold15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end
  %21 = load %struct.global_State*, %struct.global_State** %g, align 8
  %GCthreshold16 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 13
  %22 = load i64, i64* %GCthreshold16, align 8
  %23 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes17 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 14
  %24 = load i64, i64* %totalbytes17, align 8
  %cmp18 = icmp ule i64 %22, %24
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %25)
  %26 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstate = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 4
  %27 = load i8, i8* %gcstate, align 1
  %conv20 = zext i8 %27 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %while.body
  store i32 1, i32* %res, align 4
  br label %while.end

if.end.24:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.23, %while.cond
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %28 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcpause = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 17
  %29 = load i32, i32* %gcpause, align 4
  store i32 %29, i32* %res, align 4
  %30 = load i32, i32* %data.addr, align 4
  %31 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcpause26 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 17
  store i32 %30, i32* %gcpause26, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %32 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstepmul = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 18
  %33 = load i32, i32* %gcstepmul, align 4
  store i32 %33, i32* %res, align 4
  %34 = load i32, i32* %data.addr, align 4
  %35 = load %struct.global_State*, %struct.global_State** %g, align 8
  %gcstepmul28 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i32 0, i32 18
  store i32 %34, i32* %gcstepmul28, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %res, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.27, %sw.bb.25, %while.end, %sw.bb.6, %sw.bb.4, %sw.bb.3, %sw.bb.1, %sw.bb
  %36 = load i32, i32* %res, align 4
  ret i32 %36
}

declare hidden void @luaC_fullgc(%struct.lua_State*) #2

; Function Attrs: nounwind uwtable
define i32 @lua_error(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaG_errormsg(%struct.lua_State* %1)
  ret i32 0
}

declare hidden void @luaG_errormsg(%struct.lua_State*) #2

; Function Attrs: nounwind uwtable
define i32 @lua_next(%struct.lua_State* %L, i32 %idx) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %t = alloca %struct.lua_TValue*, align 8
  %more = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %t, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %t, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %5 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %5 to %struct.Table*
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 -1
  %call1 = call i32 @luaH_next(%struct.lua_State* %3, %struct.Table* %h, %struct.lua_TValue* %add.ptr)
  store i32 %call1, i32* %more, align 4
  %8 = load i32, i32* %more, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 4
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 4
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %add.ptr4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 -1
  store %struct.lua_TValue* %add.ptr4, %struct.lua_TValue** %top3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %more, align 4
  ret i32 %14
}

declare hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #2

; Function Attrs: nounwind uwtable
define void @lua_concat(%struct.lua_State* %L, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %n.addr = alloca i32, align 4
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 6
  %3 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i32 0, i32 14
  %4 = load i64, i64* %totalbytes, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 13
  %7 = load i64, i64* %GCthreshold, align 8
  %cmp2 = icmp uge i64 %4, %7
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i32, i32* %n.addr, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 5
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.lua_TValue* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.lua_TValue* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  %sub = sub nsw i32 %conv, 1
  call void @luaV_concat(%struct.lua_State* %9, i32 %10, i32 %sub)
  %15 = load i32, i32* %n.addr, align 4
  %sub4 = sub nsw i32 %15, 1
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top5, align 8
  %idx.ext = sext i32 %sub4 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %idx.neg
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %top5, align 8
  br label %if.end.12

if.else:                                          ; preds = %entry
  %18 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp eq i32 %18, 0
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.else
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %top9, align 8
  store %struct.lua_TValue* %20, %struct.lua_TValue** %i_o, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %union.TString* @luaS_newlstr(%struct.lua_State* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 0)
  %22 = bitcast %union.TString* %call to %union.GCObject*
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %22, %union.GCObject** %gc, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 1
  store i32 4, i32* %tt, align 4
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 4
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %top10, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  ret void
}

declare hidden void @luaV_concat(%struct.lua_State*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %L, i8** %ud) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i8**, align 8
  %f = alloca i8* (i8*, i8*, i64, i64)*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8** %ud, i8*** %ud.addr, align 8
  %0 = load i8**, i8*** %ud.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 6
  %2 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %ud1 = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 2
  %3 = load i8*, i8** %ud1, align 8
  %4 = load i8**, i8*** %ud.addr, align 8
  store i8* %3, i8** %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %l_G2, align 8
  %frealloc = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 1
  %7 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %frealloc, align 8
  store i8* (i8*, i8*, i64, i64)* %7, i8* (i8*, i8*, i64, i64)** %f, align 8
  %8 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %f, align 8
  ret i8* (i8*, i8*, i64, i64)* %8
}

; Function Attrs: nounwind uwtable
define void @lua_setallocf(%struct.lua_State* %L, i8* (i8*, i8*, i64, i64)* %f, i8* %ud) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca i8* (i8*, i8*, i64, i64)*, align 8
  %ud.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* (i8*, i8*, i64, i64)* %f, i8* (i8*, i8*, i64, i64)** %f.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %0 = load i8*, i8** %ud.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 6
  %2 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %ud1 = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 2
  store i8* %0, i8** %ud1, align 8
  %3 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %f.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 6
  %5 = load %struct.global_State*, %struct.global_State** %l_G2, align 8
  %frealloc = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 1
  store i8* (i8*, i8*, i64, i64)* %3, i8* (i8*, i8*, i64, i64)** %frealloc, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @lua_newuserdata(%struct.lua_State* %L, i64 %size) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %size.addr = alloca i64, align 8
  %u = alloca %union.Udata*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 14
  %2 = load i64, i64* %totalbytes, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 13
  %5 = load i64, i64* %GCthreshold, align 8
  %cmp = icmp uge i64 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i64, i64* %size.addr, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct.Table* @getcurrenv(%struct.lua_State* %9)
  %call2 = call %union.Udata* @luaS_newudata(%struct.lua_State* %7, i64 %8, %struct.Table* %call)
  store %union.Udata* %call2, %union.Udata** %u, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 4
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %11, %struct.lua_TValue** %i_o, align 8
  %12 = load %union.Udata*, %union.Udata** %u, align 8
  %13 = bitcast %union.Udata* %12 to %union.GCObject*
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %13, %union.GCObject** %gc, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  store i32 7, i32* %tt, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 4
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top3, align 8
  %19 = load %union.Udata*, %union.Udata** %u, align 8
  %add.ptr = getelementptr inbounds %union.Udata, %union.Udata* %19, i64 1
  %20 = bitcast %union.Udata* %add.ptr to i8*
  ret i8* %20
}

declare hidden %union.Udata* @luaS_newudata(%struct.lua_State*, i64, %struct.Table*) #2

; Function Attrs: nounwind uwtable
define i8* @lua_getupvalue(%struct.lua_State* %L, i32 %funcindex, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %funcindex.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %val = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %funcindex, i32* %funcindex.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %funcindex.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  %2 = load i32, i32* %n.addr, align 4
  %call1 = call i8* @aux_upvalue(%struct.lua_TValue* %call, i32 %2, %struct.lua_TValue** %val)
  store i8* %call1, i8** %name, align 8
  %3 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %val, align 8
  store %struct.lua_TValue* %4, %struct.lua_TValue** %o2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 4
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o1, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 0
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %9 = bitcast %union.Value* %value to i8*
  %10 = bitcast %union.Value* %value2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  %12 = load i32, i32* %tt, align 4
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  store i32 %12, i32* %tt3, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 4
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %top4, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i8*, i8** %name, align 8
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define internal i8* @aux_upvalue(%struct.lua_TValue* %fi, i32 %n, %struct.lua_TValue** %val) #0 {
entry:
  %retval = alloca i8*, align 8
  %fi.addr = alloca %struct.lua_TValue*, align 8
  %n.addr = alloca i32, align 4
  %val.addr = alloca %struct.lua_TValue**, align 8
  %f = alloca %union.Closure*, align 8
  %p = alloca %struct.Proto*, align 8
  store %struct.lua_TValue* %fi, %struct.lua_TValue** %fi.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.lua_TValue** %val, %struct.lua_TValue*** %val.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %fi.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %fi.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %3 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %3 to %union.Closure*
  store %union.Closure* %cl, %union.Closure** %f, align 8
  %4 = load %union.Closure*, %union.Closure** %f, align 8
  %c = bitcast %union.Closure* %4 to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %5 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %6 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp sle i32 1, %6
  br i1 %cmp2, label %land.lhs.true, label %if.then.6

land.lhs.true:                                    ; preds = %if.then.1
  %7 = load i32, i32* %n.addr, align 4
  %8 = load %union.Closure*, %union.Closure** %f, align 8
  %c3 = bitcast %union.Closure* %8 to %struct.CClosure*
  %nupvalues = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c3, i32 0, i32 4
  %9 = load i8, i8* %nupvalues, align 1
  %conv = zext i8 %9 to i32
  %cmp4 = icmp sle i32 %7, %conv
  br i1 %cmp4, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true, %if.then.1
  store i8* null, i8** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true
  %10 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load %union.Closure*, %union.Closure** %f, align 8
  %c8 = bitcast %union.Closure* %11 to %struct.CClosure*
  %upvalue = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c8, i32 0, i32 8
  %arrayidx = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %upvalue, i32 0, i64 %idxprom
  %12 = load %struct.lua_TValue**, %struct.lua_TValue*** %val.addr, align 8
  store %struct.lua_TValue* %arrayidx, %struct.lua_TValue** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %13 = load %union.Closure*, %union.Closure** %f, align 8
  %l = bitcast %union.Closure* %13 to %struct.LClosure*
  %p9 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  %14 = load %struct.Proto*, %struct.Proto** %p9, align 8
  store %struct.Proto* %14, %struct.Proto** %p, align 8
  %15 = load i32, i32* %n.addr, align 4
  %cmp10 = icmp sle i32 1, %15
  br i1 %cmp10, label %land.lhs.true.12, label %if.then.15

land.lhs.true.12:                                 ; preds = %if.else
  %16 = load i32, i32* %n.addr, align 4
  %17 = load %struct.Proto*, %struct.Proto** %p, align 8
  %sizeupvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 10
  %18 = load i32, i32* %sizeupvalues, align 4
  %cmp13 = icmp sle i32 %16, %18
  br i1 %cmp13, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.12, %if.else
  store i8* null, i8** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.12
  %19 = load i32, i32* %n.addr, align 4
  %sub17 = sub nsw i32 %19, 1
  %idxprom18 = sext i32 %sub17 to i64
  %20 = load %union.Closure*, %union.Closure** %f, align 8
  %l19 = bitcast %union.Closure* %20 to %struct.LClosure*
  %upvals = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l19, i32 0, i32 8
  %arrayidx20 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %upvals, i32 0, i64 %idxprom18
  %21 = load %struct.UpVal*, %struct.UpVal** %arrayidx20, align 8
  %v = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i32 0, i32 3
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %v, align 8
  %23 = load %struct.lua_TValue**, %struct.lua_TValue*** %val.addr, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %23, align 8
  %24 = load i32, i32* %n.addr, align 4
  %sub21 = sub nsw i32 %24, 1
  %idxprom22 = sext i32 %sub21 to i64
  %25 = load %struct.Proto*, %struct.Proto** %p, align 8
  %upvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 8
  %26 = load %union.TString**, %union.TString*** %upvalues, align 8
  %arrayidx23 = getelementptr inbounds %union.TString*, %union.TString** %26, i64 %idxprom22
  %27 = load %union.TString*, %union.TString** %arrayidx23, align 8
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %27, i64 1
  %28 = bitcast %union.TString* %add.ptr to i8*
  store i8* %28, i8** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.end.7, %if.then.6, %if.then
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define i8* @lua_setupvalue(%struct.lua_State* %L, i32 %funcindex, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %funcindex.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %val = alloca %struct.lua_TValue*, align 8
  %fi = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %funcindex, i32* %funcindex.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %funcindex.addr, align 4
  %call = call %struct.lua_TValue* @index2adr(%struct.lua_State* %0, i32 %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %fi, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %fi, align 8
  %4 = load i32, i32* %n.addr, align 4
  %call1 = call i8* @aux_upvalue(%struct.lua_TValue* %3, i32 %4, %struct.lua_TValue** %val)
  store i8* %call1, i8** %name, align 8
  %5 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 -1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 4
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  store %struct.lua_TValue* %9, %struct.lua_TValue** %o2, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %val, align 8
  store %struct.lua_TValue* %10, %struct.lua_TValue** %o1, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %13 = bitcast %union.Value* %value to i8*
  %14 = bitcast %union.Value* %value3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  %16 = load i32, i32* %tt, align 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 1
  store i32 %16, i32* %tt4, align 4
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 4
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %top5, align 8
  %tt6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 1
  %20 = load i32, i32* %tt6, align 4
  %cmp = icmp sge i32 %20, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 4
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %top7, align 8
  %value8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %gc = bitcast %union.Value* %value8 to %union.GCObject**
  %23 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %gch = bitcast %union.GCObject* %23 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %24 = load i8, i8* %marked, align 1
  %conv = zext i8 %24 to i32
  %and = and i32 %conv, 3
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %fi, align 8
  %value11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %gc12 = bitcast %union.Value* %value11 to %union.GCObject**
  %26 = load %union.GCObject*, %union.GCObject** %gc12, align 8
  %cl = bitcast %union.GCObject* %26 to %union.Closure*
  %27 = bitcast %union.Closure* %cl to %union.GCObject*
  %gch13 = bitcast %union.GCObject* %27 to %struct.GCheader*
  %marked14 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch13, i32 0, i32 2
  %28 = load i8, i8* %marked14, align 1
  %conv15 = zext i8 %28 to i32
  %and16 = and i32 %conv15, 4
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %land.lhs.true.10
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %fi, align 8
  %value19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 0
  %gc20 = bitcast %union.Value* %value19 to %union.GCObject**
  %31 = load %union.GCObject*, %union.GCObject** %gc20, align 8
  %cl21 = bitcast %union.GCObject* %31 to %union.Closure*
  %32 = bitcast %union.Closure* %cl21 to %union.GCObject*
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 4
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %top22, align 8
  %value23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 0
  %gc24 = bitcast %union.Value* %value23 to %union.GCObject**
  %35 = load %union.GCObject*, %union.GCObject** %gc24, align 8
  call void @luaC_barrierf(%struct.lua_State* %29, %union.GCObject* %32, %union.GCObject* %35)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %land.lhs.true.10, %land.lhs.true, %if.then
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %36 = load i8*, i8** %name, align 8
  ret i8* %36
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
