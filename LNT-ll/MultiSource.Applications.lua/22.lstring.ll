; ModuleID = './MultiSource.Applications.lua/22.lstring.bc'
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

; Function Attrs: nounwind uwtable
define hidden void @luaS_resize(%struct.lua_State* %L, i32 %newsize) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %newsize.addr = alloca i32, align 4
  %newhash = alloca %union.GCObject**, align 8
  %tb = alloca %struct.stringtable*, align 8
  %i = alloca i32, align 4
  %p = alloca %union.GCObject*, align 8
  %next = alloca %union.GCObject*, align 8
  %h = alloca i32, align 4
  %h1 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %gcstate = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i32 0, i32 4
  %2 = load i8, i8* %gcstate, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %newsize.addr, align 4
  %add = add nsw i32 %3, 1
  %conv2 = sext i32 %add to i64
  %cmp3 = icmp ule i64 %conv2, 2305843009213693951
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %newsize.addr, align 4
  %conv5 = sext i32 %5 to i64
  %mul = mul i64 %conv5, 8
  %call = call i8* @luaM_realloc_(%struct.lua_State* %4, i8* null, i64 0, i64 %mul)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i8* @luaM_toobig(%struct.lua_State* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call6, %cond.false ]
  %7 = bitcast i8* %cond to %union.GCObject**
  store %union.GCObject** %7, %union.GCObject*** %newhash, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 6
  %9 = load %struct.global_State*, %struct.global_State** %l_G7, align 8
  %strt = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 0
  store %struct.stringtable* %strt, %struct.stringtable** %tb, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %newsize.addr, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %union.GCObject**, %union.GCObject*** %newhash, align 8
  %arrayidx = getelementptr inbounds %union.GCObject*, %union.GCObject** %13, i64 %idxprom
  store %union.GCObject* null, %union.GCObject** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.24, %for.end
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %size = getelementptr inbounds %struct.stringtable, %struct.stringtable* %16, i32 0, i32 2
  %17 = load i32, i32* %size, align 4
  %cmp11 = icmp slt i32 %15, %17
  br i1 %cmp11, label %for.body.13, label %for.end.26

for.body.13:                                      ; preds = %for.cond.10
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %hash = getelementptr inbounds %struct.stringtable, %struct.stringtable* %19, i32 0, i32 0
  %20 = load %union.GCObject**, %union.GCObject*** %hash, align 8
  %arrayidx15 = getelementptr inbounds %union.GCObject*, %union.GCObject** %20, i64 %idxprom14
  %21 = load %union.GCObject*, %union.GCObject** %arrayidx15, align 8
  store %union.GCObject* %21, %union.GCObject** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.13
  %22 = load %union.GCObject*, %union.GCObject** %p, align 8
  %tobool = icmp ne %union.GCObject* %22, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %union.GCObject*, %union.GCObject** %p, align 8
  %gch = bitcast %union.GCObject* %23 to %struct.GCheader*
  %next16 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 0
  %24 = load %union.GCObject*, %union.GCObject** %next16, align 8
  store %union.GCObject* %24, %union.GCObject** %next, align 8
  %25 = load %union.GCObject*, %union.GCObject** %p, align 8
  %ts = bitcast %union.GCObject* %25 to %union.TString*
  %tsv = bitcast %union.TString* %ts to %struct.anon.1*
  %hash17 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 4
  %26 = load i32, i32* %hash17, align 4
  store i32 %26, i32* %h, align 4
  %27 = load i32, i32* %h, align 4
  %28 = load i32, i32* %newsize.addr, align 4
  %sub = sub nsw i32 %28, 1
  %and = and i32 %27, %sub
  store i32 %and, i32* %h1, align 4
  %29 = load i32, i32* %h1, align 4
  %idxprom18 = sext i32 %29 to i64
  %30 = load %union.GCObject**, %union.GCObject*** %newhash, align 8
  %arrayidx19 = getelementptr inbounds %union.GCObject*, %union.GCObject** %30, i64 %idxprom18
  %31 = load %union.GCObject*, %union.GCObject** %arrayidx19, align 8
  %32 = load %union.GCObject*, %union.GCObject** %p, align 8
  %gch20 = bitcast %union.GCObject* %32 to %struct.GCheader*
  %next21 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch20, i32 0, i32 0
  store %union.GCObject* %31, %union.GCObject** %next21, align 8
  %33 = load %union.GCObject*, %union.GCObject** %p, align 8
  %34 = load i32, i32* %h1, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load %union.GCObject**, %union.GCObject*** %newhash, align 8
  %arrayidx23 = getelementptr inbounds %union.GCObject*, %union.GCObject** %35, i64 %idxprom22
  store %union.GCObject* %33, %union.GCObject** %arrayidx23, align 8
  %36 = load %union.GCObject*, %union.GCObject** %next, align 8
  store %union.GCObject* %36, %union.GCObject** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.24

for.inc.24:                                       ; preds = %while.end
  %37 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %37, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %39 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %hash27 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %39, i32 0, i32 0
  %40 = load %union.GCObject**, %union.GCObject*** %hash27, align 8
  %41 = bitcast %union.GCObject** %40 to i8*
  %42 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %size28 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %42, i32 0, i32 2
  %43 = load i32, i32* %size28, align 4
  %conv29 = sext i32 %43 to i64
  %mul30 = mul i64 %conv29, 8
  %call31 = call i8* @luaM_realloc_(%struct.lua_State* %38, i8* %41, i64 %mul30, i64 0)
  %44 = load i32, i32* %newsize.addr, align 4
  %45 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %size32 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %45, i32 0, i32 2
  store i32 %44, i32* %size32, align 4
  %46 = load %union.GCObject**, %union.GCObject*** %newhash, align 8
  %47 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %hash33 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %47, i32 0, i32 0
  store %union.GCObject** %46, %union.GCObject*** %hash33, align 8
  br label %return

return:                                           ; preds = %for.end.26, %if.then
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

declare hidden i8* @luaM_toobig(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define hidden %union.TString* @luaS_newlstr(%struct.lua_State* %L, i8* %str, i64 %l) #0 {
entry:
  %retval = alloca %union.TString*, align 8
  %L.addr = alloca %struct.lua_State*, align 8
  %str.addr = alloca i8*, align 8
  %l.addr = alloca i64, align 8
  %o = alloca %union.GCObject*, align 8
  %h = alloca i32, align 4
  %step = alloca i64, align 8
  %l1 = alloca i64, align 8
  %ts = alloca %union.TString*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %l, i64* %l.addr, align 8
  %0 = load i64, i64* %l.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %h, align 4
  %1 = load i64, i64* %l.addr, align 8
  %shr = lshr i64 %1, 5
  %add = add i64 %shr, 1
  store i64 %add, i64* %step, align 8
  %2 = load i64, i64* %l.addr, align 8
  store i64 %2, i64* %l1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %l1, align 8
  %4 = load i64, i64* %step, align 8
  %cmp = icmp uge i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %h, align 4
  %6 = load i32, i32* %h, align 4
  %shl = shl i32 %6, 5
  %7 = load i32, i32* %h, align 4
  %shr2 = lshr i32 %7, 2
  %add3 = add i32 %shl, %shr2
  %8 = load i64, i64* %l1, align 8
  %sub = sub i64 %8, 1
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub
  %10 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %10 to i32
  %add5 = add i32 %add3, %conv4
  %xor = xor i32 %5, %add5
  store i32 %xor, i32* %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %step, align 8
  %12 = load i64, i64* %l1, align 8
  %sub6 = sub i64 %12, %11
  store i64 %sub6, i64* %l1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %h, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %15 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %strt = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 0
  %size = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt, i32 0, i32 2
  %16 = load i32, i32* %size, align 4
  %sub7 = sub nsw i32 %16, 1
  %and = and i32 %13, %sub7
  %idxprom = sext i32 %and to i64
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 6
  %18 = load %struct.global_State*, %struct.global_State** %l_G8, align 8
  %strt9 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 0
  %hash = getelementptr inbounds %struct.stringtable, %struct.stringtable* %strt9, i32 0, i32 0
  %19 = load %union.GCObject**, %union.GCObject*** %hash, align 8
  %arrayidx10 = getelementptr inbounds %union.GCObject*, %union.GCObject** %19, i64 %idxprom
  %20 = load %union.GCObject*, %union.GCObject** %arrayidx10, align 8
  store %union.GCObject* %20, %union.GCObject** %o, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.33, %for.end
  %21 = load %union.GCObject*, %union.GCObject** %o, align 8
  %cmp12 = icmp ne %union.GCObject* %21, null
  br i1 %cmp12, label %for.body.14, label %for.end.35

for.body.14:                                      ; preds = %for.cond.11
  %22 = load %union.GCObject*, %union.GCObject** %o, align 8
  %ts15 = bitcast %union.GCObject* %22 to %union.TString*
  store %union.TString* %ts15, %union.TString** %ts, align 8
  %23 = load %union.TString*, %union.TString** %ts, align 8
  %tsv = bitcast %union.TString* %23 to %struct.anon.1*
  %len = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 5
  %24 = load i64, i64* %len, align 8
  %25 = load i64, i64* %l.addr, align 8
  %cmp16 = icmp eq i64 %24, %25
  br i1 %cmp16, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %for.body.14
  %26 = load i8*, i8** %str.addr, align 8
  %27 = load %union.TString*, %union.TString** %ts, align 8
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %27, i64 1
  %28 = bitcast %union.TString* %add.ptr to i8*
  %29 = load i64, i64* %l.addr, align 8
  %call = call i32 @memcmp(i8* %26, i8* %28, i64 %29) #4
  %cmp18 = icmp eq i32 %call, 0
  br i1 %cmp18, label %if.then, label %if.end.32

if.then:                                          ; preds = %land.lhs.true
  %30 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch = bitcast %union.GCObject* %30 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %31 = load i8, i8* %marked, align 1
  %conv20 = zext i8 %31 to i32
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 6
  %33 = load %struct.global_State*, %struct.global_State** %l_G21, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 3
  %34 = load i8, i8* %currentwhite, align 1
  %conv22 = zext i8 %34 to i32
  %xor23 = xor i32 %conv22, 3
  %and24 = and i32 %conv20, %xor23
  %and25 = and i32 %and24, 3
  %tobool = icmp ne i32 %and25, 0
  br i1 %tobool, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then
  %35 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch27 = bitcast %union.GCObject* %35 to %struct.GCheader*
  %marked28 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch27, i32 0, i32 2
  %36 = load i8, i8* %marked28, align 1
  %conv29 = zext i8 %36 to i32
  %xor30 = xor i32 %conv29, 3
  %conv31 = trunc i32 %xor30 to i8
  store i8 %conv31, i8* %marked28, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.then
  %37 = load %union.TString*, %union.TString** %ts, align 8
  store %union.TString* %37, %union.TString** %retval
  br label %return

if.end.32:                                        ; preds = %land.lhs.true, %for.body.14
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %38 = load %union.GCObject*, %union.GCObject** %o, align 8
  %gch34 = bitcast %union.GCObject* %38 to %struct.GCheader*
  %next = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch34, i32 0, i32 0
  %39 = load %union.GCObject*, %union.GCObject** %next, align 8
  store %union.GCObject* %39, %union.GCObject** %o, align 8
  br label %for.cond.11

for.end.35:                                       ; preds = %for.cond.11
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %41 = load i8*, i8** %str.addr, align 8
  %42 = load i64, i64* %l.addr, align 8
  %43 = load i32, i32* %h, align 4
  %call36 = call %union.TString* @newlstr(%struct.lua_State* %40, i8* %41, i64 %42, i32 %43)
  store %union.TString* %call36, %union.TString** %retval
  br label %return

return:                                           ; preds = %for.end.35, %if.end
  %44 = load %union.TString*, %union.TString** %retval
  ret %union.TString* %44
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal %union.TString* @newlstr(%struct.lua_State* %L, i8* %str, i64 %l, i32 %h) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %str.addr = alloca i8*, align 8
  %l.addr = alloca i64, align 8
  %h.addr = alloca i32, align 4
  %ts = alloca %union.TString*, align 8
  %tb = alloca %struct.stringtable*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %l, i64* %l.addr, align 8
  store i32 %h, i32* %h.addr, align 4
  %0 = load i64, i64* %l.addr, align 8
  %add = add i64 %0, 1
  %cmp = icmp ugt i64 %add, -27
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaM_toobig(%struct.lua_State* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i64, i64* %l.addr, align 8
  %add1 = add i64 %3, 1
  %mul = mul i64 %add1, 1
  %add2 = add i64 %mul, 24
  %call3 = call i8* @luaM_realloc_(%struct.lua_State* %2, i8* null, i64 0, i64 %add2)
  %4 = bitcast i8* %call3 to %union.TString*
  store %union.TString* %4, %union.TString** %ts, align 8
  %5 = load i64, i64* %l.addr, align 8
  %6 = load %union.TString*, %union.TString** %ts, align 8
  %tsv = bitcast %union.TString* %6 to %struct.anon.1*
  %len = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 5
  store i64 %5, i64* %len, align 8
  %7 = load i32, i32* %h.addr, align 4
  %8 = load %union.TString*, %union.TString** %ts, align 8
  %tsv4 = bitcast %union.TString* %8 to %struct.anon.1*
  %hash = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv4, i32 0, i32 4
  store i32 %7, i32* %hash, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 6
  %10 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 3
  %11 = load i8, i8* %currentwhite, align 1
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 3
  %conv5 = trunc i32 %and to i8
  %12 = load %union.TString*, %union.TString** %ts, align 8
  %tsv6 = bitcast %union.TString* %12 to %struct.anon.1*
  %marked = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv6, i32 0, i32 2
  store i8 %conv5, i8* %marked, align 1
  %13 = load %union.TString*, %union.TString** %ts, align 8
  %tsv7 = bitcast %union.TString* %13 to %struct.anon.1*
  %tt = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv7, i32 0, i32 1
  store i8 4, i8* %tt, align 1
  %14 = load %union.TString*, %union.TString** %ts, align 8
  %tsv8 = bitcast %union.TString* %14 to %struct.anon.1*
  %reserved = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv8, i32 0, i32 3
  store i8 0, i8* %reserved, align 1
  %15 = load %union.TString*, %union.TString** %ts, align 8
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %15, i64 1
  %16 = bitcast %union.TString* %add.ptr to i8*
  %17 = load i8*, i8** %str.addr, align 8
  %18 = load i64, i64* %l.addr, align 8
  %mul9 = mul i64 %18, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 %mul9, i32 1, i1 false)
  %19 = load i64, i64* %l.addr, align 8
  %20 = load %union.TString*, %union.TString** %ts, align 8
  %add.ptr10 = getelementptr inbounds %union.TString, %union.TString* %20, i64 1
  %21 = bitcast %union.TString* %add.ptr10 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %19
  store i8 0, i8* %arrayidx, align 1
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %23 = load %struct.global_State*, %struct.global_State** %l_G11, align 8
  %strt = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 0
  store %struct.stringtable* %strt, %struct.stringtable** %tb, align 8
  %24 = load i32, i32* %h.addr, align 4
  %25 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %size = getelementptr inbounds %struct.stringtable, %struct.stringtable* %25, i32 0, i32 2
  %26 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %26, 1
  %and12 = and i32 %24, %sub
  store i32 %and12, i32* %h.addr, align 4
  %27 = load i32, i32* %h.addr, align 4
  %idxprom = zext i32 %27 to i64
  %28 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %hash13 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %28, i32 0, i32 0
  %29 = load %union.GCObject**, %union.GCObject*** %hash13, align 8
  %arrayidx14 = getelementptr inbounds %union.GCObject*, %union.GCObject** %29, i64 %idxprom
  %30 = load %union.GCObject*, %union.GCObject** %arrayidx14, align 8
  %31 = load %union.TString*, %union.TString** %ts, align 8
  %tsv15 = bitcast %union.TString* %31 to %struct.anon.1*
  %next = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv15, i32 0, i32 0
  store %union.GCObject* %30, %union.GCObject** %next, align 8
  %32 = load %union.TString*, %union.TString** %ts, align 8
  %33 = bitcast %union.TString* %32 to %union.GCObject*
  %34 = load i32, i32* %h.addr, align 4
  %idxprom16 = zext i32 %34 to i64
  %35 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %hash17 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %35, i32 0, i32 0
  %36 = load %union.GCObject**, %union.GCObject*** %hash17, align 8
  %arrayidx18 = getelementptr inbounds %union.GCObject*, %union.GCObject** %36, i64 %idxprom16
  store %union.GCObject* %33, %union.GCObject** %arrayidx18, align 8
  %37 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %nuse = getelementptr inbounds %struct.stringtable, %struct.stringtable* %37, i32 0, i32 1
  %38 = load i32, i32* %nuse, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %nuse, align 4
  %39 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %nuse19 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %39, i32 0, i32 1
  %40 = load i32, i32* %nuse19, align 4
  %41 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %size20 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %41, i32 0, i32 2
  %42 = load i32, i32* %size20, align 4
  %cmp21 = icmp ugt i32 %40, %42
  br i1 %cmp21, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end
  %43 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %size23 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %43, i32 0, i32 2
  %44 = load i32, i32* %size23, align 4
  %cmp24 = icmp sle i32 %44, 1073741822
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %land.lhs.true
  %45 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %46 = load %struct.stringtable*, %struct.stringtable** %tb, align 8
  %size27 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %46, i32 0, i32 2
  %47 = load i32, i32* %size27, align 4
  %mul28 = mul nsw i32 %47, 2
  call void @luaS_resize(%struct.lua_State* %45, i32 %mul28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %land.lhs.true, %if.end
  %48 = load %union.TString*, %union.TString** %ts, align 8
  ret %union.TString* %48
}

; Function Attrs: nounwind uwtable
define hidden %union.Udata* @luaS_newudata(%struct.lua_State* %L, i64 %s, %struct.Table* %e) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %s.addr = alloca i64, align 8
  %e.addr = alloca %struct.Table*, align 8
  %u = alloca %union.Udata*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  store %struct.Table* %e, %struct.Table** %e.addr, align 8
  %0 = load i64, i64* %s.addr, align 8
  %cmp = icmp ugt i64 %0, -43
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaM_toobig(%struct.lua_State* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i64, i64* %s.addr, align 8
  %add = add i64 %3, 40
  %call1 = call i8* @luaM_realloc_(%struct.lua_State* %2, i8* null, i64 0, i64 %add)
  %4 = bitcast i8* %call1 to %union.Udata*
  store %union.Udata* %4, %union.Udata** %u, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %currentwhite = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 3
  %7 = load i8, i8* %currentwhite, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 3
  %conv2 = trunc i32 %and to i8
  %8 = load %union.Udata*, %union.Udata** %u, align 8
  %uv = bitcast %union.Udata* %8 to %struct.anon.2*
  %marked = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 2
  store i8 %conv2, i8* %marked, align 1
  %9 = load %union.Udata*, %union.Udata** %u, align 8
  %uv3 = bitcast %union.Udata* %9 to %struct.anon.2*
  %tt = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv3, i32 0, i32 1
  store i8 7, i8* %tt, align 1
  %10 = load i64, i64* %s.addr, align 8
  %11 = load %union.Udata*, %union.Udata** %u, align 8
  %uv4 = bitcast %union.Udata* %11 to %struct.anon.2*
  %len = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv4, i32 0, i32 5
  store i64 %10, i64* %len, align 8
  %12 = load %union.Udata*, %union.Udata** %u, align 8
  %uv5 = bitcast %union.Udata* %12 to %struct.anon.2*
  %metatable = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv5, i32 0, i32 3
  store %struct.Table* null, %struct.Table** %metatable, align 8
  %13 = load %struct.Table*, %struct.Table** %e.addr, align 8
  %14 = load %union.Udata*, %union.Udata** %u, align 8
  %uv6 = bitcast %union.Udata* %14 to %struct.anon.2*
  %env = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv6, i32 0, i32 4
  store %struct.Table* %13, %struct.Table** %env, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 6
  %16 = load %struct.global_State*, %struct.global_State** %l_G7, align 8
  %mainthread = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 21
  %17 = load %struct.lua_State*, %struct.lua_State** %mainthread, align 8
  %next = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 0
  %18 = load %union.GCObject*, %union.GCObject** %next, align 8
  %19 = load %union.Udata*, %union.Udata** %u, align 8
  %uv8 = bitcast %union.Udata* %19 to %struct.anon.2*
  %next9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv8, i32 0, i32 0
  store %union.GCObject* %18, %union.GCObject** %next9, align 8
  %20 = load %union.Udata*, %union.Udata** %u, align 8
  %21 = bitcast %union.Udata* %20 to %union.GCObject*
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %23 = load %struct.global_State*, %struct.global_State** %l_G10, align 8
  %mainthread11 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 21
  %24 = load %struct.lua_State*, %struct.lua_State** %mainthread11, align 8
  %next12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 0
  store %union.GCObject* %21, %union.GCObject** %next12, align 8
  %25 = load %union.Udata*, %union.Udata** %u, align 8
  ret %union.Udata* %25
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
