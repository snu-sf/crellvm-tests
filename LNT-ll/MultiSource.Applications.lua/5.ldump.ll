; ModuleID = './MultiSource.Applications.lua/5.ldump.bc'
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
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.DumpState = type { %struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @luaU_dump(%struct.lua_State* %L, %struct.Proto* %f, i32 (%struct.lua_State*, i8*, i64, i8*)* %w, i8* %data, i32 %strip) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %struct.Proto*, align 8
  %w.addr = alloca i32 (%struct.lua_State*, i8*, i64, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %strip.addr = alloca i32, align 4
  %D = alloca %struct.DumpState, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Proto* %f, %struct.Proto** %f.addr, align 8
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %w, i32 (%struct.lua_State*, i8*, i64, i8*)** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %strip, i32* %strip.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %L1 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %D, i32 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %L1, align 8
  %1 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %w.addr, align 8
  %writer = getelementptr inbounds %struct.DumpState, %struct.DumpState* %D, i32 0, i32 1
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %1, i32 (%struct.lua_State*, i8*, i64, i8*)** %writer, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %data2 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %D, i32 0, i32 2
  store i8* %2, i8** %data2, align 8
  %3 = load i32, i32* %strip.addr, align 4
  %strip3 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %D, i32 0, i32 3
  store i32 %3, i32* %strip3, align 4
  %status = getelementptr inbounds %struct.DumpState, %struct.DumpState* %D, i32 0, i32 4
  store i32 0, i32* %status, align 4
  call void @DumpHeader(%struct.DumpState* %D)
  %4 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  call void @DumpFunction(%struct.Proto* %4, %union.TString* null, %struct.DumpState* %D)
  %status4 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %D, i32 0, i32 4
  %5 = load i32, i32* %status4, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal void @DumpHeader(%struct.DumpState* %D) #0 {
entry:
  %D.addr = alloca %struct.DumpState*, align 8
  %h = alloca [12 x i8], align 1
  store %struct.DumpState* %D, %struct.DumpState** %D.addr, align 8
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %h, i32 0, i32 0
  call void @luaU_header(i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [12 x i8], [12 x i8]* %h, i32 0, i32 0
  %0 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpBlock(i8* %arraydecay1, i64 12, %struct.DumpState* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DumpFunction(%struct.Proto* %f, %union.TString* %p, %struct.DumpState* %D) #0 {
entry:
  %f.addr = alloca %struct.Proto*, align 8
  %p.addr = alloca %union.TString*, align 8
  %D.addr = alloca %struct.DumpState*, align 8
  store %struct.Proto* %f, %struct.Proto** %f.addr, align 8
  store %union.TString* %p, %union.TString** %p.addr, align 8
  store %struct.DumpState* %D, %struct.DumpState** %D.addr, align 8
  %0 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %source = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i32 0, i32 9
  %1 = load %union.TString*, %union.TString** %source, align 8
  %2 = load %union.TString*, %union.TString** %p.addr, align 8
  %cmp = icmp eq %union.TString* %1, %2
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  %strip = getelementptr inbounds %struct.DumpState, %struct.DumpState* %3, i32 0, i32 3
  %4 = load i32, i32* %strip, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %source1 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i32 0, i32 9
  %6 = load %union.TString*, %union.TString** %source1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.TString* [ null, %cond.true ], [ %6, %cond.false ]
  %7 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpString(%union.TString* %cond, %struct.DumpState* %7)
  %8 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %linedefined = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 16
  %9 = load i32, i32* %linedefined, align 4
  %10 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpInt(i32 %9, %struct.DumpState* %10)
  %11 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %lastlinedefined = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 17
  %12 = load i32, i32* %lastlinedefined, align 4
  %13 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpInt(i32 %12, %struct.DumpState* %13)
  %14 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %nups = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 19
  %15 = load i8, i8* %nups, align 1
  %conv = zext i8 %15 to i32
  %16 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpChar(i32 %conv, %struct.DumpState* %16)
  %17 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %numparams = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 20
  %18 = load i8, i8* %numparams, align 1
  %conv2 = zext i8 %18 to i32
  %19 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpChar(i32 %conv2, %struct.DumpState* %19)
  %20 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %is_vararg = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 21
  %21 = load i8, i8* %is_vararg, align 1
  %conv3 = zext i8 %21 to i32
  %22 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpChar(i32 %conv3, %struct.DumpState* %22)
  %23 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %maxstacksize = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i32 0, i32 22
  %24 = load i8, i8* %maxstacksize, align 1
  %conv4 = zext i8 %24 to i32
  %25 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpChar(i32 %conv4, %struct.DumpState* %25)
  %26 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 4
  %27 = load i32*, i32** %code, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizecode = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 12
  %30 = load i32, i32* %sizecode, align 4
  %31 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpVector(i8* %28, i32 %30, i64 4, %struct.DumpState* %31)
  %32 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %33 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpConstants(%struct.Proto* %32, %struct.DumpState* %33)
  %34 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %35 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpDebug(%struct.Proto* %34, %struct.DumpState* %35)
  ret void
}

declare hidden void @luaU_header(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @DumpBlock(i8* %b, i64 %size, %struct.DumpState* %D) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %D.addr = alloca %struct.DumpState*, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.DumpState* %D, %struct.DumpState** %D.addr, align 8
  %0 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  %status = getelementptr inbounds %struct.DumpState, %struct.DumpState* %0, i32 0, i32 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  %writer = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i32 0, i32 1
  %3 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %writer, align 8
  %4 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  %L = getelementptr inbounds %struct.DumpState, %struct.DumpState* %4, i32 0, i32 0
  %5 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %6 = load i8*, i8** %b.addr, align 8
  %7 = load i64, i64* %size.addr, align 8
  %8 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  %data = getelementptr inbounds %struct.DumpState, %struct.DumpState* %8, i32 0, i32 2
  %9 = load i8*, i8** %data, align 8
  %call = call i32 %3(%struct.lua_State* %5, i8* %6, i64 %7, i8* %9)
  %10 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  %status1 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %10, i32 0, i32 4
  store i32 %call, i32* %status1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DumpString(%union.TString* %s, %struct.DumpState* %D) #0 {
entry:
  %s.addr = alloca %union.TString*, align 8
  %D.addr = alloca %struct.DumpState*, align 8
  %size = alloca i64, align 8
  %size2 = alloca i64, align 8
  store %union.TString* %s, %union.TString** %s.addr, align 8
  store %struct.DumpState* %D, %struct.DumpState** %D.addr, align 8
  %0 = load %union.TString*, %union.TString** %s.addr, align 8
  %cmp = icmp eq %union.TString* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.TString*, %union.TString** %s.addr, align 8
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %1, i64 1
  %2 = bitcast %union.TString* %add.ptr to i8*
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %size, align 8
  %3 = bitcast i64* %size to i8*
  %4 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpBlock(i8* %3, i64 8, %struct.DumpState* %4)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %union.TString*, %union.TString** %s.addr, align 8
  %tsv = bitcast %union.TString* %5 to %struct.anon.1*
  %len = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 5
  %6 = load i64, i64* %len, align 8
  %add = add i64 %6, 1
  store i64 %add, i64* %size2, align 8
  %7 = bitcast i64* %size2 to i8*
  %8 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpBlock(i8* %7, i64 8, %struct.DumpState* %8)
  %9 = load %union.TString*, %union.TString** %s.addr, align 8
  %add.ptr3 = getelementptr inbounds %union.TString, %union.TString* %9, i64 1
  %10 = bitcast %union.TString* %add.ptr3 to i8*
  %11 = load i64, i64* %size2, align 8
  %12 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpBlock(i8* %10, i64 %11, %struct.DumpState* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DumpInt(i32 %x, %struct.DumpState* %D) #0 {
entry:
  %x.addr = alloca i32, align 4
  %D.addr = alloca %struct.DumpState*, align 8
  store i32 %x, i32* %x.addr, align 4
  store %struct.DumpState* %D, %struct.DumpState** %D.addr, align 8
  %0 = bitcast i32* %x.addr to i8*
  %1 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpBlock(i8* %0, i64 4, %struct.DumpState* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DumpChar(i32 %y, %struct.DumpState* %D) #0 {
entry:
  %y.addr = alloca i32, align 4
  %D.addr = alloca %struct.DumpState*, align 8
  %x = alloca i8, align 1
  store i32 %y, i32* %y.addr, align 4
  store %struct.DumpState* %D, %struct.DumpState** %D.addr, align 8
  %0 = load i32, i32* %y.addr, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, i8* %x, align 1
  %1 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpBlock(i8* %x, i64 1, %struct.DumpState* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DumpVector(i8* %b, i32 %n, i64 %size, %struct.DumpState* %D) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %D.addr = alloca %struct.DumpState*, align 8
  store i8* %b, i8** %b.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i64 %size, i64* %size.addr, align 8
  store %struct.DumpState* %D, %struct.DumpState** %D.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpInt(i32 %0, %struct.DumpState* %1)
  %2 = load i8*, i8** %b.addr, align 8
  %3 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* %size.addr, align 8
  %mul = mul i64 %conv, %4
  %5 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpBlock(i8* %2, i64 %mul, %struct.DumpState* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DumpConstants(%struct.Proto* %f, %struct.DumpState* %D) #0 {
entry:
  %f.addr = alloca %struct.Proto*, align 8
  %D.addr = alloca %struct.DumpState*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  store %struct.Proto* %f, %struct.Proto** %f.addr, align 8
  store %struct.DumpState* %D, %struct.DumpState** %D.addr, align 8
  %0 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizek = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i32 0, i32 11
  %1 = load i32, i32* %sizek, align 4
  store i32 %1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %3 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpInt(i32 %2, %struct.DumpState* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %k = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 3
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %idxprom
  store %struct.lua_TValue* %arrayidx, %struct.lua_TValue** %o, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %10 = load i32, i32* %tt, align 4
  %11 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpChar(i32 %10, %struct.DumpState* %11)
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %13 = load i32, i32* %tt1, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %for.body
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.body
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %b = bitcast %union.Value* %value to i32*
  %15 = load i32, i32* %b, align 4
  %16 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpChar(i32 %15, %struct.DumpState* %16)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %n5 = bitcast %union.Value* %value4 to double*
  %18 = load double, double* %n5, align 8
  %19 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpNumber(double %18, %struct.DumpState* %19)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %value7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %gc = bitcast %union.Value* %value7 to %union.GCObject**
  %21 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %ts = bitcast %union.GCObject* %21 to %union.TString*
  %22 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpString(%union.TString* %ts, %struct.DumpState* %22)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb.3, %sw.bb.2, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizep = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 14
  %25 = load i32, i32* %sizep, align 4
  store i32 %25, i32* %n, align 4
  %26 = load i32, i32* %n, align 4
  %27 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpInt(i32 %26, %struct.DumpState* %27)
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.13, %for.end
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %n, align 4
  %cmp9 = icmp slt i32 %28, %29
  br i1 %cmp9, label %for.body.10, label %for.end.15

for.body.10:                                      ; preds = %for.cond.8
  %30 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %30 to i64
  %31 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %p = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 5
  %32 = load %struct.Proto**, %struct.Proto*** %p, align 8
  %arrayidx12 = getelementptr inbounds %struct.Proto*, %struct.Proto** %32, i64 %idxprom11
  %33 = load %struct.Proto*, %struct.Proto** %arrayidx12, align 8
  %34 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %source = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 9
  %35 = load %union.TString*, %union.TString** %source, align 8
  %36 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpFunction(%struct.Proto* %33, %union.TString* %35, %struct.DumpState* %36)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.10
  %37 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %37, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.8

for.end.15:                                       ; preds = %for.cond.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DumpDebug(%struct.Proto* %f, %struct.DumpState* %D) #0 {
entry:
  %f.addr = alloca %struct.Proto*, align 8
  %D.addr = alloca %struct.DumpState*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.Proto* %f, %struct.Proto** %f.addr, align 8
  store %struct.DumpState* %D, %struct.DumpState** %D.addr, align 8
  %0 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  %strip = getelementptr inbounds %struct.DumpState, %struct.DumpState* %0, i32 0, i32 3
  %1 = load i32, i32* %strip, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizelineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %2, i32 0, i32 13
  %3 = load i32, i32* %sizelineinfo, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %4 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %lineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i32 0, i32 6
  %5 = load i32*, i32** %lineinfo, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = load i32, i32* %n, align 4
  %8 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpVector(i8* %6, i32 %7, i64 4, %struct.DumpState* %8)
  %9 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  %strip1 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %9, i32 0, i32 3
  %10 = load i32, i32* %strip1, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %11 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizelocvars = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 15
  %12 = load i32, i32* %sizelocvars, align 4
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i32 [ 0, %cond.true.3 ], [ %12, %cond.false.4 ]
  store i32 %cond6, i32* %n, align 4
  %13 = load i32, i32* %n, align 4
  %14 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpInt(i32 %13, %struct.DumpState* %14)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.5
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 7
  %19 = load %struct.LocVar*, %struct.LocVar** %locvars, align 8
  %arrayidx = getelementptr inbounds %struct.LocVar, %struct.LocVar* %19, i64 %idxprom
  %varname = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx, i32 0, i32 0
  %20 = load %union.TString*, %union.TString** %varname, align 8
  %21 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpString(%union.TString* %20, %struct.DumpState* %21)
  %22 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %22 to i64
  %23 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars8 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i32 0, i32 7
  %24 = load %struct.LocVar*, %struct.LocVar** %locvars8, align 8
  %arrayidx9 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %24, i64 %idxprom7
  %startpc = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx9, i32 0, i32 1
  %25 = load i32, i32* %startpc, align 4
  %26 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpInt(i32 %25, %struct.DumpState* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %27 to i64
  %28 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars11 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 7
  %29 = load %struct.LocVar*, %struct.LocVar** %locvars11, align 8
  %arrayidx12 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %29, i64 %idxprom10
  %endpc = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx12, i32 0, i32 2
  %30 = load i32, i32* %endpc, align 4
  %31 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpInt(i32 %30, %struct.DumpState* %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  %strip13 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %33, i32 0, i32 3
  %34 = load i32, i32* %strip13, align 4
  %tobool14 = icmp ne i32 %34, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %for.end
  br label %cond.end.17

cond.false.16:                                    ; preds = %for.end
  %35 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizeupvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i32 0, i32 10
  %36 = load i32, i32* %sizeupvalues, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi i32 [ 0, %cond.true.15 ], [ %36, %cond.false.16 ]
  store i32 %cond18, i32* %n, align 4
  %37 = load i32, i32* %n, align 4
  %38 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpInt(i32 %37, %struct.DumpState* %38)
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.24, %cond.end.17
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %n, align 4
  %cmp20 = icmp slt i32 %39, %40
  br i1 %cmp20, label %for.body.21, label %for.end.26

for.body.21:                                      ; preds = %for.cond.19
  %41 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %41 to i64
  %42 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %upvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i32 0, i32 8
  %43 = load %union.TString**, %union.TString*** %upvalues, align 8
  %arrayidx23 = getelementptr inbounds %union.TString*, %union.TString** %43, i64 %idxprom22
  %44 = load %union.TString*, %union.TString** %arrayidx23, align 8
  %45 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpString(%union.TString* %44, %struct.DumpState* %45)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.21
  %46 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %46, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.19

for.end.26:                                       ; preds = %for.cond.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DumpNumber(double %x, %struct.DumpState* %D) #0 {
entry:
  %x.addr = alloca double, align 8
  %D.addr = alloca %struct.DumpState*, align 8
  store double %x, double* %x.addr, align 8
  store %struct.DumpState* %D, %struct.DumpState** %D.addr, align 8
  %0 = bitcast double* %x.addr to i8*
  %1 = load %struct.DumpState*, %struct.DumpState** %D.addr, align 8
  call void @DumpBlock(i8* %0, i64 8, %struct.DumpState* %1)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
