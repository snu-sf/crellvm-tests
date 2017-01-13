; ModuleID = './MultiSource.Applications.lua/20.lundump.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%struct.LocVar = type { %union.TString*, i32, i32 }
%union.TString = type { %struct.anon }
%struct.anon = type { %union.GCObject*, i8, i8, i8, i32, i64 }
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
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.LoadState = type { %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"binary string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"bad header\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"unexpected end\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: %s in precompiled chunk\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"code too deep\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"bad code\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"bad integer\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"bad constant\00", align 1

; Function Attrs: nounwind uwtable
define hidden %struct.Proto* @luaU_undump(%struct.lua_State* %L, %struct.Zio* %Z, %struct.Mbuffer* %buff, i8* %name) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %Z.addr = alloca %struct.Zio*, align 8
  %buff.addr = alloca %struct.Mbuffer*, align 8
  %name.addr = alloca i8*, align 8
  %S = alloca %struct.LoadState, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Zio* %Z, %struct.Zio** %Z.addr, align 8
  store %struct.Mbuffer* %buff, %struct.Mbuffer** %buff.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 64
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 61
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %name.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %name5 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %S, i32 0, i32 3
  store i8* %add.ptr, i8** %name5, align 8
  br label %if.end.14

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i8*, i8** %name.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv6 = sext i8 %6 to i32
  %7 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 0), align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  br i1 %cmp8, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else
  %name11 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %S, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8** %name11, align 8
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %8 = load i8*, i8** %name.addr, align 8
  %name13 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %S, i32 0, i32 3
  store i8* %8, i8** %name13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %L15 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %S, i32 0, i32 0
  store %struct.lua_State* %9, %struct.lua_State** %L15, align 8
  %10 = load %struct.Zio*, %struct.Zio** %Z.addr, align 8
  %Z16 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %S, i32 0, i32 1
  store %struct.Zio* %10, %struct.Zio** %Z16, align 8
  %11 = load %struct.Mbuffer*, %struct.Mbuffer** %buff.addr, align 8
  %b = getelementptr inbounds %struct.LoadState, %struct.LoadState* %S, i32 0, i32 2
  store %struct.Mbuffer* %11, %struct.Mbuffer** %b, align 8
  call void @LoadHeader(%struct.LoadState* %S)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %union.TString* @luaS_newlstr(%struct.lua_State* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i64 2)
  %call17 = call %struct.Proto* @LoadFunction(%struct.LoadState* %S, %union.TString* %call)
  ret %struct.Proto* %call17
}

; Function Attrs: nounwind uwtable
define internal void @LoadHeader(%struct.LoadState* %S) #0 {
entry:
  %S.addr = alloca %struct.LoadState*, align 8
  %h = alloca [12 x i8], align 1
  %s = alloca [12 x i8], align 1
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %h, i32 0, i32 0
  call void @luaU_header(i8* %arraydecay)
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %arraydecay1 = getelementptr inbounds [12 x i8], [12 x i8]* %s, i32 0, i32 0
  call void @LoadBlock(%struct.LoadState* %0, i8* %arraydecay1, i64 12)
  %arraydecay2 = getelementptr inbounds [12 x i8], [12 x i8]* %h, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [12 x i8], [12 x i8]* %s, i32 0, i32 0
  %call = call i32 @memcmp(i8* %arraydecay2, i8* %arraydecay3, i64 12) #4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  call void @error(%struct.LoadState* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.Proto* @LoadFunction(%struct.LoadState* %S, %union.TString* %p) #0 {
entry:
  %S.addr = alloca %struct.LoadState*, align 8
  %p.addr = alloca %union.TString*, align 8
  %f = alloca %struct.Proto*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  store %union.TString* %p, %union.TString** %p.addr, align 8
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i32 0, i32 0
  %1 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 15
  %2 = load i16, i16* %nCcalls, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %nCcalls, align 2
  %conv = zext i16 %inc to i32
  %cmp = icmp sgt i32 %conv, 200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  call void @error(%struct.LoadState* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L2 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %4, i32 0, i32 0
  %5 = load %struct.lua_State*, %struct.lua_State** %L2, align 8
  %call = call %struct.Proto* @luaF_newproto(%struct.lua_State* %5)
  store %struct.Proto* %call, %struct.Proto** %f, align 8
  %6 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L3 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %6, i32 0, i32 0
  %7 = load %struct.lua_State*, %struct.lua_State** %L3, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %i_o, align 8
  %9 = load %struct.Proto*, %struct.Proto** %f, align 8
  %10 = bitcast %struct.Proto* %9 to %union.GCObject*
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %10, %union.GCObject** %gc, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  store i32 9, i32* %tt, align 4
  %13 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %13, i32 0, i32 0
  %14 = load %struct.lua_State*, %struct.lua_State** %L4, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 9
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %16 = bitcast %struct.lua_TValue* %15 to i8*
  %17 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L5 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %17, i32 0, i32 0
  %18 = load %struct.lua_State*, %struct.lua_State** %L5, align 8
  %top6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 4
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %top6, align 8
  %20 = bitcast %struct.lua_TValue* %19 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp7 = icmp sle i64 %sub.ptr.sub, 16
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %21 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L10 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %21, i32 0, i32 0
  %22 = load %struct.lua_State*, %struct.lua_State** %L10, align 8
  call void @luaD_growstack(%struct.lua_State* %22, i32 1)
  br label %if.end.11

if.else:                                          ; preds = %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %23 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L12 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %23, i32 0, i32 0
  %24 = load %struct.lua_State*, %struct.lua_State** %L12, align 8
  %top13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 4
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %top13, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top13, align 8
  %26 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call14 = call %union.TString* @LoadString(%struct.LoadState* %26)
  %27 = load %struct.Proto*, %struct.Proto** %f, align 8
  %source = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 9
  store %union.TString* %call14, %union.TString** %source, align 8
  %28 = load %struct.Proto*, %struct.Proto** %f, align 8
  %source15 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 9
  %29 = load %union.TString*, %union.TString** %source15, align 8
  %cmp16 = icmp eq %union.TString* %29, null
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.11
  %30 = load %union.TString*, %union.TString** %p.addr, align 8
  %31 = load %struct.Proto*, %struct.Proto** %f, align 8
  %source19 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 9
  store %union.TString* %30, %union.TString** %source19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.11
  %32 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call21 = call i32 @LoadInt(%struct.LoadState* %32)
  %33 = load %struct.Proto*, %struct.Proto** %f, align 8
  %linedefined = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i32 0, i32 16
  store i32 %call21, i32* %linedefined, align 4
  %34 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call22 = call i32 @LoadInt(%struct.LoadState* %34)
  %35 = load %struct.Proto*, %struct.Proto** %f, align 8
  %lastlinedefined = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i32 0, i32 17
  store i32 %call22, i32* %lastlinedefined, align 4
  %36 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call23 = call i32 @LoadChar(%struct.LoadState* %36)
  %conv24 = trunc i32 %call23 to i8
  %37 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i32 0, i32 19
  store i8 %conv24, i8* %nups, align 1
  %38 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call25 = call i32 @LoadChar(%struct.LoadState* %38)
  %conv26 = trunc i32 %call25 to i8
  %39 = load %struct.Proto*, %struct.Proto** %f, align 8
  %numparams = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i32 0, i32 20
  store i8 %conv26, i8* %numparams, align 1
  %40 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call27 = call i32 @LoadChar(%struct.LoadState* %40)
  %conv28 = trunc i32 %call27 to i8
  %41 = load %struct.Proto*, %struct.Proto** %f, align 8
  %is_vararg = getelementptr inbounds %struct.Proto, %struct.Proto* %41, i32 0, i32 21
  store i8 %conv28, i8* %is_vararg, align 1
  %42 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call29 = call i32 @LoadChar(%struct.LoadState* %42)
  %conv30 = trunc i32 %call29 to i8
  %43 = load %struct.Proto*, %struct.Proto** %f, align 8
  %maxstacksize = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 22
  store i8 %conv30, i8* %maxstacksize, align 1
  %44 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %45 = load %struct.Proto*, %struct.Proto** %f, align 8
  call void @LoadCode(%struct.LoadState* %44, %struct.Proto* %45)
  %46 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %47 = load %struct.Proto*, %struct.Proto** %f, align 8
  call void @LoadConstants(%struct.LoadState* %46, %struct.Proto* %47)
  %48 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %49 = load %struct.Proto*, %struct.Proto** %f, align 8
  call void @LoadDebug(%struct.LoadState* %48, %struct.Proto* %49)
  %50 = load %struct.Proto*, %struct.Proto** %f, align 8
  %call31 = call i32 @luaG_checkcode(%struct.Proto* %50)
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.20
  %51 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  call void @error(%struct.LoadState* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.20
  %52 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L34 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %52, i32 0, i32 0
  %53 = load %struct.lua_State*, %struct.lua_State** %L34, align 8
  %top35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 4
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %top35, align 8
  %incdec.ptr36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i32 -1
  store %struct.lua_TValue* %incdec.ptr36, %struct.lua_TValue** %top35, align 8
  %55 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L37 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %55, i32 0, i32 0
  %56 = load %struct.lua_State*, %struct.lua_State** %L37, align 8
  %nCcalls38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 15
  %57 = load i16, i16* %nCcalls38, align 2
  %dec = add i16 %57, -1
  store i16 %dec, i16* %nCcalls38, align 2
  %58 = load %struct.Proto*, %struct.Proto** %f, align 8
  ret %struct.Proto* %58
}

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define hidden void @luaU_header(i8* %h) #0 {
entry:
  %h.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  store i8* %h, i8** %h.addr, align 8
  store i32 1, i32* %x, align 4
  %0 = load i8*, i8** %h.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4, i32 1, i1 false)
  %1 = load i8*, i8** %h.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 4
  store i8* %add.ptr, i8** %h.addr, align 8
  %2 = load i8*, i8** %h.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %h.addr, align 8
  store i8 81, i8* %2, align 1
  %3 = load i8*, i8** %h.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr1, i8** %h.addr, align 8
  store i8 0, i8* %3, align 1
  %4 = bitcast i32* %x to i8*
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** %h.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr2, i8** %h.addr, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8*, i8** %h.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr3, i8** %h.addr, align 8
  store i8 4, i8* %7, align 1
  %8 = load i8*, i8** %h.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr4, i8** %h.addr, align 8
  store i8 8, i8* %8, align 1
  %9 = load i8*, i8** %h.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr5, i8** %h.addr, align 8
  store i8 4, i8* %9, align 1
  %10 = load i8*, i8** %h.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr6, i8** %h.addr, align 8
  store i8 8, i8* %10, align 1
  %11 = load i8*, i8** %h.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr7, i8** %h.addr, align 8
  store i8 0, i8* %11, align 1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @LoadBlock(%struct.LoadState* %S, i8* %b, i64 %size) #0 {
entry:
  %S.addr = alloca %struct.LoadState*, align 8
  %b.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %r = alloca i64, align 8
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %Z = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i32 0, i32 1
  %1 = load %struct.Zio*, %struct.Zio** %Z, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %call = call i64 @luaZ_read(%struct.Zio* %1, i8* %2, i64 %3)
  store i64 %call, i64* %r, align 8
  %4 = load i64, i64* %r, align 8
  %cmp = icmp ne i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  call void @error(%struct.LoadState* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @error(%struct.LoadState* %S, i8* %why) #0 {
entry:
  %S.addr = alloca %struct.LoadState*, align 8
  %why.addr = alloca i8*, align 8
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  store i8* %why, i8** %why.addr, align 8
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i32 0, i32 0
  %1 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %2 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %name = getelementptr inbounds %struct.LoadState, %struct.LoadState* %2, i32 0, i32 3
  %3 = load i8*, i8** %name, align 8
  %4 = load i8*, i8** %why.addr, align 8
  %call = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* %3, i8* %4)
  %5 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L1 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i32 0, i32 0
  %6 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  call void @luaD_throw(%struct.lua_State* %6, i32 3)
  ret void
}

declare hidden i64 @luaZ_read(%struct.Zio*, i8*, i64) #1

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

declare hidden void @luaD_throw(%struct.lua_State*, i32) #1

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) #1

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal %union.TString* @LoadString(%struct.LoadState* %S) #0 {
entry:
  %retval = alloca %union.TString*, align 8
  %S.addr = alloca %struct.LoadState*, align 8
  %size = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %1 = bitcast i64* %size to i8*
  call void @LoadBlock(%struct.LoadState* %0, i8* %1, i64 8)
  %2 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %union.TString* null, %union.TString** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L = getelementptr inbounds %struct.LoadState, %struct.LoadState* %3, i32 0, i32 0
  %4 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %5 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %b = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i32 0, i32 2
  %6 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %7 = load i64, i64* %size, align 8
  %call = call i8* @luaZ_openspace(%struct.lua_State* %4, %struct.Mbuffer* %6, i64 %7)
  store i8* %call, i8** %s, align 8
  %8 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %9 = load i8*, i8** %s, align 8
  %10 = load i64, i64* %size, align 8
  call void @LoadBlock(%struct.LoadState* %8, i8* %9, i64 %10)
  %11 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L1 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %11, i32 0, i32 0
  %12 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %13 = load i8*, i8** %s, align 8
  %14 = load i64, i64* %size, align 8
  %sub = sub i64 %14, 1
  %call2 = call %union.TString* @luaS_newlstr(%struct.lua_State* %12, i8* %13, i64 %sub)
  store %union.TString* %call2, %union.TString** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %15 = load %union.TString*, %union.TString** %retval
  ret %union.TString* %15
}

; Function Attrs: nounwind uwtable
define internal i32 @LoadInt(%struct.LoadState* %S) #0 {
entry:
  %S.addr = alloca %struct.LoadState*, align 8
  %x = alloca i32, align 4
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %1 = bitcast i32* %x to i8*
  call void @LoadBlock(%struct.LoadState* %0, i8* %1, i64 4)
  %2 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  call void @error(%struct.LoadState* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %x, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @LoadChar(%struct.LoadState* %S) #0 {
entry:
  %S.addr = alloca %struct.LoadState*, align 8
  %x = alloca i8, align 1
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  call void @LoadBlock(%struct.LoadState* %0, i8* %x, i64 1)
  %1 = load i8, i8* %x, align 1
  %conv = sext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @LoadCode(%struct.LoadState* %S, %struct.Proto* %f) #0 {
entry:
  %S.addr = alloca %struct.LoadState*, align 8
  %f.addr = alloca %struct.Proto*, align 8
  %n = alloca i32, align 4
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  store %struct.Proto* %f, %struct.Proto** %f.addr, align 8
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call = call i32 @LoadInt(%struct.LoadState* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %cmp = icmp ule i64 %conv, 4611686018427387903
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L = getelementptr inbounds %struct.LoadState, %struct.LoadState* %2, i32 0, i32 0
  %3 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %4 = load i32, i32* %n, align 4
  %conv2 = sext i32 %4 to i64
  %mul = mul i64 %conv2, 4
  %call3 = call i8* @luaM_realloc_(%struct.lua_State* %3, i8* null, i64 0, i64 %mul)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i32 0, i32 0
  %6 = load %struct.lua_State*, %struct.lua_State** %L4, align 8
  %call5 = call i8* @luaM_toobig(%struct.lua_State* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ %call5, %cond.false ]
  %7 = bitcast i8* %cond to i32*
  %8 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 4
  store i32* %7, i32** %code, align 8
  %9 = load i32, i32* %n, align 4
  %10 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizecode = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 12
  store i32 %9, i32* %sizecode, align 4
  %11 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %12 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %code6 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 4
  %13 = load i32*, i32** %code6, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32, i32* %n, align 4
  %conv7 = sext i32 %15 to i64
  %mul8 = mul i64 %conv7, 4
  call void @LoadBlock(%struct.LoadState* %11, i8* %14, i64 %mul8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LoadConstants(%struct.LoadState* %S, %struct.Proto* %f) #0 {
entry:
  %S.addr = alloca %struct.LoadState*, align 8
  %f.addr = alloca %struct.Proto*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 8
  %t = alloca i32, align 4
  %i_o = alloca %struct.lua_TValue*, align 8
  %i_o24 = alloca %struct.lua_TValue*, align 8
  %i_o30 = alloca %struct.lua_TValue*, align 8
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  store %struct.Proto* %f, %struct.Proto** %f.addr, align 8
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call = call i32 @LoadInt(%struct.LoadState* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %cmp = icmp ule i64 %conv, 1152921504606846975
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L = getelementptr inbounds %struct.LoadState, %struct.LoadState* %2, i32 0, i32 0
  %3 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %4 = load i32, i32* %n, align 4
  %conv2 = sext i32 %4 to i64
  %mul = mul i64 %conv2, 16
  %call3 = call i8* @luaM_realloc_(%struct.lua_State* %3, i8* null, i64 0, i64 %mul)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i32 0, i32 0
  %6 = load %struct.lua_State*, %struct.lua_State** %L4, align 8
  %call5 = call i8* @luaM_toobig(%struct.lua_State* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ %call5, %cond.false ]
  %7 = bitcast i8* %cond to %struct.lua_TValue*
  %8 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %k = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 3
  store %struct.lua_TValue* %7, %struct.lua_TValue** %k, align 8
  %9 = load i32, i32* %n, align 4
  %10 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizek = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 11
  store i32 %9, i32* %sizek, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %k8 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 3
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %k8, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 %idxprom
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.34, %for.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n, align 4
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %for.body.12, label %for.end.36

for.body.12:                                      ; preds = %for.cond.9
  %19 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %k14 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 3
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %k14, align 8
  %arrayidx15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %idxprom13
  store %struct.lua_TValue* %arrayidx15, %struct.lua_TValue** %o, align 8
  %22 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call16 = call i32 @LoadChar(%struct.LoadState* %22)
  store i32 %call16, i32* %t, align 4
  %23 = load i32, i32* %t, align 4
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 3, label %sw.bb.23
    i32 4, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %for.body.12
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 1
  store i32 0, i32* %tt17, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.body.12
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  store %struct.lua_TValue* %25, %struct.lua_TValue** %i_o, align 8
  %26 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call19 = call i32 @LoadChar(%struct.LoadState* %26)
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 0
  %b = bitcast %union.Value* %value to i32*
  store i32 %conv21, i32* %b, align 4
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  store i32 1, i32* %tt22, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.body.12
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  store %struct.lua_TValue* %29, %struct.lua_TValue** %i_o24, align 8
  %30 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call25 = call double @LoadNumber(%struct.LoadState* %30)
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o24, align 8
  %value26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %n27 = bitcast %union.Value* %value26 to double*
  store double %call25, double* %n27, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o24, align 8
  %tt28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 1
  store i32 3, i32* %tt28, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.body.12
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  store %struct.lua_TValue* %33, %struct.lua_TValue** %i_o30, align 8
  %34 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call31 = call %union.TString* @LoadString(%struct.LoadState* %34)
  %35 = bitcast %union.TString* %call31 to %union.GCObject*
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o30, align 8
  %value32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 0
  %gc = bitcast %union.Value* %value32 to %union.GCObject**
  store %union.GCObject* %35, %union.GCObject** %gc, align 8
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o30, align 8
  %tt33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 1
  store i32 4, i32* %tt33, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.12
  %38 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  call void @error(%struct.LoadState* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.29, %sw.bb.23, %sw.bb.18, %sw.bb
  br label %for.inc.34

for.inc.34:                                       ; preds = %sw.epilog
  %39 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %39, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.9

for.end.36:                                       ; preds = %for.cond.9
  %40 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call37 = call i32 @LoadInt(%struct.LoadState* %40)
  store i32 %call37, i32* %n, align 4
  %41 = load i32, i32* %n, align 4
  %add38 = add nsw i32 %41, 1
  %conv39 = sext i32 %add38 to i64
  %cmp40 = icmp ule i64 %conv39, 2305843009213693951
  br i1 %cmp40, label %cond.true.42, label %cond.false.47

cond.true.42:                                     ; preds = %for.end.36
  %42 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L43 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %42, i32 0, i32 0
  %43 = load %struct.lua_State*, %struct.lua_State** %L43, align 8
  %44 = load i32, i32* %n, align 4
  %conv44 = sext i32 %44 to i64
  %mul45 = mul i64 %conv44, 8
  %call46 = call i8* @luaM_realloc_(%struct.lua_State* %43, i8* null, i64 0, i64 %mul45)
  br label %cond.end.50

cond.false.47:                                    ; preds = %for.end.36
  %45 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L48 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %45, i32 0, i32 0
  %46 = load %struct.lua_State*, %struct.lua_State** %L48, align 8
  %call49 = call i8* @luaM_toobig(%struct.lua_State* %46)
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.47, %cond.true.42
  %cond51 = phi i8* [ %call46, %cond.true.42 ], [ %call49, %cond.false.47 ]
  %47 = bitcast i8* %cond51 to %struct.Proto**
  %48 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %p = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 5
  store %struct.Proto** %47, %struct.Proto*** %p, align 8
  %49 = load i32, i32* %n, align 4
  %50 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizep = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 14
  store i32 %49, i32* %sizep, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.59, %cond.end.50
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %n, align 4
  %cmp53 = icmp slt i32 %51, %52
  br i1 %cmp53, label %for.body.55, label %for.end.61

for.body.55:                                      ; preds = %for.cond.52
  %53 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %53 to i64
  %54 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %p57 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i32 0, i32 5
  %55 = load %struct.Proto**, %struct.Proto*** %p57, align 8
  %arrayidx58 = getelementptr inbounds %struct.Proto*, %struct.Proto** %55, i64 %idxprom56
  store %struct.Proto* null, %struct.Proto** %arrayidx58, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.55
  %56 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %56, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.52

for.end.61:                                       ; preds = %for.cond.52
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.70, %for.end.61
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %n, align 4
  %cmp63 = icmp slt i32 %57, %58
  br i1 %cmp63, label %for.body.65, label %for.end.72

for.body.65:                                      ; preds = %for.cond.62
  %59 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %60 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %source = getelementptr inbounds %struct.Proto, %struct.Proto* %60, i32 0, i32 9
  %61 = load %union.TString*, %union.TString** %source, align 8
  %call66 = call %struct.Proto* @LoadFunction(%struct.LoadState* %59, %union.TString* %61)
  %62 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %62 to i64
  %63 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %p68 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i32 0, i32 5
  %64 = load %struct.Proto**, %struct.Proto*** %p68, align 8
  %arrayidx69 = getelementptr inbounds %struct.Proto*, %struct.Proto** %64, i64 %idxprom67
  store %struct.Proto* %call66, %struct.Proto** %arrayidx69, align 8
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.65
  %65 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %65, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.62

for.end.72:                                       ; preds = %for.cond.62
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LoadDebug(%struct.LoadState* %S, %struct.Proto* %f) #0 {
entry:
  %S.addr = alloca %struct.LoadState*, align 8
  %f.addr = alloca %struct.Proto*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  store %struct.Proto* %f, %struct.Proto** %f.addr, align 8
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call = call i32 @LoadInt(%struct.LoadState* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %cmp = icmp ule i64 %conv, 4611686018427387903
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L = getelementptr inbounds %struct.LoadState, %struct.LoadState* %2, i32 0, i32 0
  %3 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %4 = load i32, i32* %n, align 4
  %conv2 = sext i32 %4 to i64
  %mul = mul i64 %conv2, 4
  %call3 = call i8* @luaM_realloc_(%struct.lua_State* %3, i8* null, i64 0, i64 %mul)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i32 0, i32 0
  %6 = load %struct.lua_State*, %struct.lua_State** %L4, align 8
  %call5 = call i8* @luaM_toobig(%struct.lua_State* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ %call5, %cond.false ]
  %7 = bitcast i8* %cond to i32*
  %8 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %lineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 6
  store i32* %7, i32** %lineinfo, align 8
  %9 = load i32, i32* %n, align 4
  %10 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizelineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 13
  store i32 %9, i32* %sizelineinfo, align 4
  %11 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %12 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %lineinfo6 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 6
  %13 = load i32*, i32** %lineinfo6, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32, i32* %n, align 4
  %conv7 = sext i32 %15 to i64
  %mul8 = mul i64 %conv7, 4
  call void @LoadBlock(%struct.LoadState* %11, i8* %14, i64 %mul8)
  %16 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call9 = call i32 @LoadInt(%struct.LoadState* %16)
  store i32 %call9, i32* %n, align 4
  %17 = load i32, i32* %n, align 4
  %add10 = add nsw i32 %17, 1
  %conv11 = sext i32 %add10 to i64
  %cmp12 = icmp ule i64 %conv11, 1152921504606846975
  br i1 %cmp12, label %cond.true.14, label %cond.false.19

cond.true.14:                                     ; preds = %cond.end
  %18 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L15 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %18, i32 0, i32 0
  %19 = load %struct.lua_State*, %struct.lua_State** %L15, align 8
  %20 = load i32, i32* %n, align 4
  %conv16 = sext i32 %20 to i64
  %mul17 = mul i64 %conv16, 16
  %call18 = call i8* @luaM_realloc_(%struct.lua_State* %19, i8* null, i64 0, i64 %mul17)
  br label %cond.end.22

cond.false.19:                                    ; preds = %cond.end
  %21 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L20 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %21, i32 0, i32 0
  %22 = load %struct.lua_State*, %struct.lua_State** %L20, align 8
  %call21 = call i8* @luaM_toobig(%struct.lua_State* %22)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.14
  %cond23 = phi i8* [ %call18, %cond.true.14 ], [ %call21, %cond.false.19 ]
  %23 = bitcast i8* %cond23 to %struct.LocVar*
  %24 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 7
  store %struct.LocVar* %23, %struct.LocVar** %locvars, align 8
  %25 = load i32, i32* %n, align 4
  %26 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizelocvars = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 15
  store i32 %25, i32* %sizelocvars, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.22
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n, align 4
  %cmp24 = icmp slt i32 %27, %28
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars26 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 7
  %31 = load %struct.LocVar*, %struct.LocVar** %locvars26, align 8
  %arrayidx = getelementptr inbounds %struct.LocVar, %struct.LocVar* %31, i64 %idxprom
  %varname = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx, i32 0, i32 0
  store %union.TString* null, %union.TString** %varname, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.44, %for.end
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %n, align 4
  %cmp28 = icmp slt i32 %33, %34
  br i1 %cmp28, label %for.body.30, label %for.end.46

for.body.30:                                      ; preds = %for.cond.27
  %35 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call31 = call %union.TString* @LoadString(%struct.LoadState* %35)
  %36 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars33 = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i32 0, i32 7
  %38 = load %struct.LocVar*, %struct.LocVar** %locvars33, align 8
  %arrayidx34 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %38, i64 %idxprom32
  %varname35 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx34, i32 0, i32 0
  store %union.TString* %call31, %union.TString** %varname35, align 8
  %39 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call36 = call i32 @LoadInt(%struct.LoadState* %39)
  %40 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars38 = getelementptr inbounds %struct.Proto, %struct.Proto* %41, i32 0, i32 7
  %42 = load %struct.LocVar*, %struct.LocVar** %locvars38, align 8
  %arrayidx39 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %42, i64 %idxprom37
  %startpc = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx39, i32 0, i32 1
  store i32 %call36, i32* %startpc, align 4
  %43 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call40 = call i32 @LoadInt(%struct.LoadState* %43)
  %44 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %44 to i64
  %45 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %locvars42 = getelementptr inbounds %struct.Proto, %struct.Proto* %45, i32 0, i32 7
  %46 = load %struct.LocVar*, %struct.LocVar** %locvars42, align 8
  %arrayidx43 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %46, i64 %idxprom41
  %endpc = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx43, i32 0, i32 2
  store i32 %call40, i32* %endpc, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.30
  %47 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %47, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.27

for.end.46:                                       ; preds = %for.cond.27
  %48 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call47 = call i32 @LoadInt(%struct.LoadState* %48)
  store i32 %call47, i32* %n, align 4
  %49 = load i32, i32* %n, align 4
  %add48 = add nsw i32 %49, 1
  %conv49 = sext i32 %add48 to i64
  %cmp50 = icmp ule i64 %conv49, 2305843009213693951
  br i1 %cmp50, label %cond.true.52, label %cond.false.57

cond.true.52:                                     ; preds = %for.end.46
  %50 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L53 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %50, i32 0, i32 0
  %51 = load %struct.lua_State*, %struct.lua_State** %L53, align 8
  %52 = load i32, i32* %n, align 4
  %conv54 = sext i32 %52 to i64
  %mul55 = mul i64 %conv54, 8
  %call56 = call i8* @luaM_realloc_(%struct.lua_State* %51, i8* null, i64 0, i64 %mul55)
  br label %cond.end.60

cond.false.57:                                    ; preds = %for.end.46
  %53 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %L58 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %53, i32 0, i32 0
  %54 = load %struct.lua_State*, %struct.lua_State** %L58, align 8
  %call59 = call i8* @luaM_toobig(%struct.lua_State* %54)
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.57, %cond.true.52
  %cond61 = phi i8* [ %call56, %cond.true.52 ], [ %call59, %cond.false.57 ]
  %55 = bitcast i8* %cond61 to %union.TString**
  %56 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %upvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %56, i32 0, i32 8
  store %union.TString** %55, %union.TString*** %upvalues, align 8
  %57 = load i32, i32* %n, align 4
  %58 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %sizeupvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i32 0, i32 10
  store i32 %57, i32* %sizeupvalues, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.69, %cond.end.60
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %n, align 4
  %cmp63 = icmp slt i32 %59, %60
  br i1 %cmp63, label %for.body.65, label %for.end.71

for.body.65:                                      ; preds = %for.cond.62
  %61 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %61 to i64
  %62 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %upvalues67 = getelementptr inbounds %struct.Proto, %struct.Proto* %62, i32 0, i32 8
  %63 = load %union.TString**, %union.TString*** %upvalues67, align 8
  %arrayidx68 = getelementptr inbounds %union.TString*, %union.TString** %63, i64 %idxprom66
  store %union.TString* null, %union.TString** %arrayidx68, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.65
  %64 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %64, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.62

for.end.71:                                       ; preds = %for.cond.62
  store i32 0, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.80, %for.end.71
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %n, align 4
  %cmp73 = icmp slt i32 %65, %66
  br i1 %cmp73, label %for.body.75, label %for.end.82

for.body.75:                                      ; preds = %for.cond.72
  %67 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %call76 = call %union.TString* @LoadString(%struct.LoadState* %67)
  %68 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %68 to i64
  %69 = load %struct.Proto*, %struct.Proto** %f.addr, align 8
  %upvalues78 = getelementptr inbounds %struct.Proto, %struct.Proto* %69, i32 0, i32 8
  %70 = load %union.TString**, %union.TString*** %upvalues78, align 8
  %arrayidx79 = getelementptr inbounds %union.TString*, %union.TString** %70, i64 %idxprom77
  store %union.TString* %call76, %union.TString** %arrayidx79, align 8
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.75
  %71 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %71, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.72

for.end.82:                                       ; preds = %for.cond.72
  ret void
}

declare hidden i32 @luaG_checkcode(%struct.Proto*) #1

declare hidden i8* @luaZ_openspace(%struct.lua_State*, %struct.Mbuffer*, i64) #1

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

declare hidden i8* @luaM_toobig(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define internal double @LoadNumber(%struct.LoadState* %S) #0 {
entry:
  %S.addr = alloca %struct.LoadState*, align 8
  %x = alloca double, align 8
  store %struct.LoadState* %S, %struct.LoadState** %S.addr, align 8
  %0 = load %struct.LoadState*, %struct.LoadState** %S.addr, align 8
  %1 = bitcast double* %x to i8*
  call void @LoadBlock(%struct.LoadState* %0, i8* %1, i64 8)
  %2 = load double, double* %x, align 8
  ret double %2
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
