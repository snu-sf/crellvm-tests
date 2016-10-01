; ModuleID = './MultiSource.Applications.lua/3.lparser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.5 = type { i8, i8 }
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
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %union.TString*, i8 }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.Table*, %struct.FuncState*, %struct.LexState*, %struct.lua_State*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, [60 x %struct.upvaldesc], [200 x i16] }
%struct.BlockCnt = type { %struct.BlockCnt*, i32, i8, i8, i8 }
%struct.upvaldesc = type { i8, i8 }
%struct.expdesc = type { i32, %union.anon.3, i32, i32 }
%union.anon.3 = type { double }
%struct.anon.4 = type { i32, i32 }
%struct.LHS_assign = type { %struct.LHS_assign*, %struct.expdesc }
%struct.ConsControl = type { %struct.expdesc, %struct.expdesc*, i32, i32, i32 }
%struct.GCheader = type { %union.GCObject*, i8, i8 }

@.str = private unnamed_addr constant [14 x i8] c"'%s' expected\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"chunk has too many syntax levels\00", align 1
@priority = internal constant [15 x %struct.anon.5] [%struct.anon.5 { i8 6, i8 6 }, %struct.anon.5 { i8 6, i8 6 }, %struct.anon.5 { i8 7, i8 7 }, %struct.anon.5 { i8 7, i8 7 }, %struct.anon.5 { i8 7, i8 7 }, %struct.anon.5 { i8 10, i8 9 }, %struct.anon.5 { i8 5, i8 4 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 2, i8 2 }, %struct.anon.5 { i8 1, i8 1 }], align 16
@.str.2 = private unnamed_addr constant [43 x i8] c"cannot use '...' outside a vararg function\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"items in a constructor\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"main function has more than %d %s\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"function at line %d has more than %d %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"local variables\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"too many local variables\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"<name> or '...' expected\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"constant table overflow\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"unexpected symbol\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"upvalues\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"ambiguous syntax (function call x new statement)\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"function arguments expected\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"'%s' expected (to close '%s' at line %d)\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"'=' or 'in' expected\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"(for index)\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"(for limit)\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"(for step)\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"(for generator)\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"(for state)\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"(for control)\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"no loop to break\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"variables in assignment\00", align 1

; Function Attrs: nounwind uwtable
define hidden %struct.Proto* @luaY_parser(%struct.lua_State* %L, %struct.Zio* %z, %struct.Mbuffer* %buff, i8* %name) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %z.addr = alloca %struct.Zio*, align 8
  %buff.addr = alloca %struct.Mbuffer*, align 8
  %name.addr = alloca i8*, align 8
  %lexstate = alloca %struct.LexState, align 8
  %funcstate = alloca %struct.FuncState, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Zio* %z, %struct.Zio** %z.addr, align 8
  store %struct.Mbuffer* %buff, %struct.Mbuffer** %buff.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.Mbuffer*, %struct.Mbuffer** %buff.addr, align 8
  %buff1 = getelementptr inbounds %struct.LexState, %struct.LexState* %lexstate, i32 0, i32 8
  store %struct.Mbuffer* %0, %struct.Mbuffer** %buff1, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %5) #3
  %call2 = call %union.TString* @luaS_newlstr(%struct.lua_State* %3, i8* %4, i64 %call)
  call void @luaX_setinput(%struct.lua_State* %1, %struct.LexState* %lexstate, %struct.Zio* %2, %union.TString* %call2)
  call void @open_func(%struct.LexState* %lexstate, %struct.FuncState* %funcstate)
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %funcstate, i32 0, i32 0
  %6 = load %struct.Proto*, %struct.Proto** %f, align 8
  %is_vararg = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 21
  store i8 2, i8* %is_vararg, align 1
  call void @luaX_next(%struct.LexState* %lexstate)
  call void @chunk(%struct.LexState* %lexstate)
  call void @check(%struct.LexState* %lexstate, i32 287)
  call void @close_func(%struct.LexState* %lexstate)
  %f3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %funcstate, i32 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %f3, align 8
  ret %struct.Proto* %7
}

declare hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState*, %struct.Zio*, %union.TString*) #1

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @open_func(%struct.LexState* %ls, %struct.FuncState* %fs) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %fs.addr = alloca %struct.FuncState*, align 8
  %L = alloca %struct.lua_State*, align 8
  %f = alloca %struct.Proto*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  %i_o12 = alloca %struct.lua_TValue*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 6
  %1 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  store %struct.lua_State* %1, %struct.lua_State** %L, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call = call %struct.Proto* @luaF_newproto(%struct.lua_State* %2)
  store %struct.Proto* %call, %struct.Proto** %f, align 8
  %3 = load %struct.Proto*, %struct.Proto** %f, align 8
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 0
  store %struct.Proto* %3, %struct.Proto** %f2, align 8
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs3 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %fs3, align 8
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %prev = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 2
  store %struct.FuncState* %6, %struct.FuncState** %prev, align 8
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %9 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %ls4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 3
  store %struct.LexState* %8, %struct.LexState** %ls4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %L5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 4
  store %struct.lua_State* %10, %struct.lua_State** %L5, align 8
  %12 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs6 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 5
  store %struct.FuncState* %12, %struct.FuncState** %fs6, align 8
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 6
  store i32 0, i32* %pc, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %lasttarget = getelementptr inbounds %struct.FuncState, %struct.FuncState* %15, i32 0, i32 7
  store i32 -1, i32* %lasttarget, align 4
  %16 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %jpc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 8
  store i32 -1, i32* %jpc, align 4
  %17 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %17, i32 0, i32 9
  store i32 0, i32* %freereg, align 4
  %18 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nk = getelementptr inbounds %struct.FuncState, %struct.FuncState* %18, i32 0, i32 10
  store i32 0, i32* %nk, align 4
  %19 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %np = getelementptr inbounds %struct.FuncState, %struct.FuncState* %19, i32 0, i32 11
  store i32 0, i32* %np, align 4
  %20 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nlocvars = getelementptr inbounds %struct.FuncState, %struct.FuncState* %20, i32 0, i32 12
  store i16 0, i16* %nlocvars, align 2
  %21 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i32 0, i32 13
  store i8 0, i8* %nactvar, align 1
  %22 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %bl = getelementptr inbounds %struct.FuncState, %struct.FuncState* %22, i32 0, i32 5
  store %struct.BlockCnt* null, %struct.BlockCnt** %bl, align 8
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %source = getelementptr inbounds %struct.LexState, %struct.LexState* %23, i32 0, i32 9
  %24 = load %union.TString*, %union.TString** %source, align 8
  %25 = load %struct.Proto*, %struct.Proto** %f, align 8
  %source7 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 9
  store %union.TString* %24, %union.TString** %source7, align 8
  %26 = load %struct.Proto*, %struct.Proto** %f, align 8
  %maxstacksize = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 22
  store i8 2, i8* %maxstacksize, align 1
  %27 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call8 = call %struct.Table* @luaH_new(%struct.lua_State* %27, i32 0, i32 0)
  %28 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %h = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i32 0, i32 1
  store %struct.Table* %call8, %struct.Table** %h, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 4
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %30, %struct.lua_TValue** %i_o, align 8
  %31 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %h9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i32 0, i32 1
  %32 = load %struct.Table*, %struct.Table** %h9, align 8
  %33 = bitcast %struct.Table* %32 to %union.GCObject*
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %33, %union.GCObject** %gc, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 1
  store i32 5, i32* %tt, align 4
  %36 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 9
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %38 = bitcast %struct.lua_TValue* %37 to i8*
  %39 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %top10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 4
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %top10, align 8
  %41 = bitcast %struct.lua_TValue* %40 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sle i64 %sub.ptr.sub, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %42 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  call void @luaD_growstack(%struct.lua_State* %42, i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %43 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %top11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 4
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %top11, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top11, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %top13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 4
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %top13, align 8
  store %struct.lua_TValue* %46, %struct.lua_TValue** %i_o12, align 8
  %47 = load %struct.Proto*, %struct.Proto** %f, align 8
  %48 = bitcast %struct.Proto* %47 to %union.GCObject*
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o12, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i32 0, i32 0
  %gc15 = bitcast %union.Value* %value14 to %union.GCObject**
  store %union.GCObject* %48, %union.GCObject** %gc15, align 8
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o12, align 8
  %tt16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i32 0, i32 1
  store i32 9, i32* %tt16, align 4
  %51 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %stack_last17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %51, i32 0, i32 9
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last17, align 8
  %53 = bitcast %struct.lua_TValue* %52 to i8*
  %54 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %top18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 4
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %top18, align 8
  %56 = bitcast %struct.lua_TValue* %55 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %56 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %cmp22 = icmp sle i64 %sub.ptr.sub21, 16
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.end
  %57 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  call void @luaD_growstack(%struct.lua_State* %57, i32 1)
  br label %if.end.25

if.else.24:                                       ; preds = %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  %58 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %top26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %58, i32 0, i32 4
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %top26, align 8
  %incdec.ptr27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 1
  store %struct.lua_TValue* %incdec.ptr27, %struct.lua_TValue** %top26, align 8
  ret void
}

declare hidden void @luaX_next(%struct.LexState*) #1

; Function Attrs: nounwind uwtable
define internal void @chunk(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %islast = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 0, i32* %islast, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @enterlevel(%struct.LexState* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %islast, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %3 = load i32, i32* %token, align 4
  %call = call i32 @block_follow(i32 %3)
  %tobool1 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call2 = call i32 @statement(%struct.LexState* %5)
  store i32 %call2, i32* %islast, align 4
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call3 = call i32 @testnext(%struct.LexState* %6, i32 59)
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 5
  %8 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 13
  %9 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %9 to i32
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs4 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 5
  %11 = load %struct.FuncState*, %struct.FuncState** %fs4, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 9
  store i32 %conv, i32* %freereg, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 6
  %13 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 15
  %14 = load i16, i16* %nCcalls, align 2
  %dec = add i16 %14, -1
  store i16 %dec, i16* %nCcalls, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check(%struct.LexState* %ls, i32 %c) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %c.addr = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %1 = load i32, i32* %token, align 4
  %2 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %4 = load i32, i32* %c.addr, align 4
  call void @error_expected(%struct.LexState* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @close_func(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %L = alloca %struct.lua_State*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %f = alloca %struct.Proto*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 6
  %1 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  store %struct.lua_State* %1, %struct.lua_State** %L, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs2 = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 5
  %3 = load %struct.FuncState*, %struct.FuncState** %fs2, align 8
  store %struct.FuncState* %3, %struct.FuncState** %fs, align 8
  %4 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %f3, align 8
  store %struct.Proto* %5, %struct.Proto** %f, align 8
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @removevars(%struct.LexState* %6, i32 0)
  %7 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_ret(%struct.FuncState* %7, i32 0, i32 0)
  %8 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 6
  %9 = load i32, i32* %pc, align 4
  %add = add nsw i32 %9, 1
  %conv = sext i32 %add to i64
  %cmp = icmp ule i64 %conv, 4611686018427387903
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %11 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 4
  %12 = load i32*, i32** %code, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizecode = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 12
  %15 = load i32, i32* %sizecode, align 4
  %conv5 = sext i32 %15 to i64
  %mul = mul i64 %conv5, 4
  %16 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %pc6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 6
  %17 = load i32, i32* %pc6, align 4
  %conv7 = sext i32 %17 to i64
  %mul8 = mul i64 %conv7, 4
  %call = call i8* @luaM_realloc_(%struct.lua_State* %10, i8* %13, i64 %mul, i64 %mul8)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call9 = call i8* @luaM_toobig(%struct.lua_State* %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call9, %cond.false ]
  %19 = bitcast i8* %cond to i32*
  %20 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code10 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 4
  store i32* %19, i32** %code10, align 8
  %21 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %pc11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i32 0, i32 6
  %22 = load i32, i32* %pc11, align 4
  %23 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizecode12 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i32 0, i32 12
  store i32 %22, i32* %sizecode12, align 4
  %24 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %pc13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i32 0, i32 6
  %25 = load i32, i32* %pc13, align 4
  %add14 = add nsw i32 %25, 1
  %conv15 = sext i32 %add14 to i64
  %cmp16 = icmp ule i64 %conv15, 4611686018427387903
  br i1 %cmp16, label %cond.true.18, label %cond.false.25

cond.true.18:                                     ; preds = %cond.end
  %26 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %27 = load %struct.Proto*, %struct.Proto** %f, align 8
  %lineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 6
  %28 = load i32*, i32** %lineinfo, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 13
  %31 = load i32, i32* %sizelineinfo, align 4
  %conv19 = sext i32 %31 to i64
  %mul20 = mul i64 %conv19, 4
  %32 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %pc21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %32, i32 0, i32 6
  %33 = load i32, i32* %pc21, align 4
  %conv22 = sext i32 %33 to i64
  %mul23 = mul i64 %conv22, 4
  %call24 = call i8* @luaM_realloc_(%struct.lua_State* %26, i8* %29, i64 %mul20, i64 %mul23)
  br label %cond.end.27

cond.false.25:                                    ; preds = %cond.end
  %34 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call26 = call i8* @luaM_toobig(%struct.lua_State* %34)
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.18
  %cond28 = phi i8* [ %call24, %cond.true.18 ], [ %call26, %cond.false.25 ]
  %35 = bitcast i8* %cond28 to i32*
  %36 = load %struct.Proto*, %struct.Proto** %f, align 8
  %lineinfo29 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 6
  store i32* %35, i32** %lineinfo29, align 8
  %37 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %pc30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i32 0, i32 6
  %38 = load i32, i32* %pc30, align 4
  %39 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelineinfo31 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i32 0, i32 13
  store i32 %38, i32* %sizelineinfo31, align 4
  %40 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nk = getelementptr inbounds %struct.FuncState, %struct.FuncState* %40, i32 0, i32 10
  %41 = load i32, i32* %nk, align 4
  %add32 = add nsw i32 %41, 1
  %conv33 = sext i32 %add32 to i64
  %cmp34 = icmp ule i64 %conv33, 1152921504606846975
  br i1 %cmp34, label %cond.true.36, label %cond.false.43

cond.true.36:                                     ; preds = %cond.end.27
  %42 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %43 = load %struct.Proto*, %struct.Proto** %f, align 8
  %k = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 3
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %k, align 8
  %45 = bitcast %struct.lua_TValue* %44 to i8*
  %46 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizek = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 11
  %47 = load i32, i32* %sizek, align 4
  %conv37 = sext i32 %47 to i64
  %mul38 = mul i64 %conv37, 16
  %48 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nk39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i32 0, i32 10
  %49 = load i32, i32* %nk39, align 4
  %conv40 = sext i32 %49 to i64
  %mul41 = mul i64 %conv40, 16
  %call42 = call i8* @luaM_realloc_(%struct.lua_State* %42, i8* %45, i64 %mul38, i64 %mul41)
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.end.27
  %50 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call44 = call i8* @luaM_toobig(%struct.lua_State* %50)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.36
  %cond46 = phi i8* [ %call42, %cond.true.36 ], [ %call44, %cond.false.43 ]
  %51 = bitcast i8* %cond46 to %struct.lua_TValue*
  %52 = load %struct.Proto*, %struct.Proto** %f, align 8
  %k47 = getelementptr inbounds %struct.Proto, %struct.Proto* %52, i32 0, i32 3
  store %struct.lua_TValue* %51, %struct.lua_TValue** %k47, align 8
  %53 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nk48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %53, i32 0, i32 10
  %54 = load i32, i32* %nk48, align 4
  %55 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizek49 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i32 0, i32 11
  store i32 %54, i32* %sizek49, align 4
  %56 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %np = getelementptr inbounds %struct.FuncState, %struct.FuncState* %56, i32 0, i32 11
  %57 = load i32, i32* %np, align 4
  %add50 = add nsw i32 %57, 1
  %conv51 = sext i32 %add50 to i64
  %cmp52 = icmp ule i64 %conv51, 2305843009213693951
  br i1 %cmp52, label %cond.true.54, label %cond.false.61

cond.true.54:                                     ; preds = %cond.end.45
  %58 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %59 = load %struct.Proto*, %struct.Proto** %f, align 8
  %p = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i32 0, i32 5
  %60 = load %struct.Proto**, %struct.Proto*** %p, align 8
  %61 = bitcast %struct.Proto** %60 to i8*
  %62 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizep = getelementptr inbounds %struct.Proto, %struct.Proto* %62, i32 0, i32 14
  %63 = load i32, i32* %sizep, align 4
  %conv55 = sext i32 %63 to i64
  %mul56 = mul i64 %conv55, 8
  %64 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %np57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %64, i32 0, i32 11
  %65 = load i32, i32* %np57, align 4
  %conv58 = sext i32 %65 to i64
  %mul59 = mul i64 %conv58, 8
  %call60 = call i8* @luaM_realloc_(%struct.lua_State* %58, i8* %61, i64 %mul56, i64 %mul59)
  br label %cond.end.63

cond.false.61:                                    ; preds = %cond.end.45
  %66 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call62 = call i8* @luaM_toobig(%struct.lua_State* %66)
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.true.54
  %cond64 = phi i8* [ %call60, %cond.true.54 ], [ %call62, %cond.false.61 ]
  %67 = bitcast i8* %cond64 to %struct.Proto**
  %68 = load %struct.Proto*, %struct.Proto** %f, align 8
  %p65 = getelementptr inbounds %struct.Proto, %struct.Proto* %68, i32 0, i32 5
  store %struct.Proto** %67, %struct.Proto*** %p65, align 8
  %69 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %np66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %69, i32 0, i32 11
  %70 = load i32, i32* %np66, align 4
  %71 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizep67 = getelementptr inbounds %struct.Proto, %struct.Proto* %71, i32 0, i32 14
  store i32 %70, i32* %sizep67, align 4
  %72 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nlocvars = getelementptr inbounds %struct.FuncState, %struct.FuncState* %72, i32 0, i32 12
  %73 = load i16, i16* %nlocvars, align 2
  %conv68 = sext i16 %73 to i32
  %add69 = add nsw i32 %conv68, 1
  %conv70 = sext i32 %add69 to i64
  %cmp71 = icmp ule i64 %conv70, 1152921504606846975
  br i1 %cmp71, label %cond.true.73, label %cond.false.80

cond.true.73:                                     ; preds = %cond.end.63
  %74 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %75 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %75, i32 0, i32 7
  %76 = load %struct.LocVar*, %struct.LocVar** %locvars, align 8
  %77 = bitcast %struct.LocVar* %76 to i8*
  %78 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelocvars = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i32 0, i32 15
  %79 = load i32, i32* %sizelocvars, align 4
  %conv74 = sext i32 %79 to i64
  %mul75 = mul i64 %conv74, 16
  %80 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nlocvars76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %80, i32 0, i32 12
  %81 = load i16, i16* %nlocvars76, align 2
  %conv77 = sext i16 %81 to i64
  %mul78 = mul i64 %conv77, 16
  %call79 = call i8* @luaM_realloc_(%struct.lua_State* %74, i8* %77, i64 %mul75, i64 %mul78)
  br label %cond.end.82

cond.false.80:                                    ; preds = %cond.end.63
  %82 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call81 = call i8* @luaM_toobig(%struct.lua_State* %82)
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.73
  %cond83 = phi i8* [ %call79, %cond.true.73 ], [ %call81, %cond.false.80 ]
  %83 = bitcast i8* %cond83 to %struct.LocVar*
  %84 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars84 = getelementptr inbounds %struct.Proto, %struct.Proto* %84, i32 0, i32 7
  store %struct.LocVar* %83, %struct.LocVar** %locvars84, align 8
  %85 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nlocvars85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i32 0, i32 12
  %86 = load i16, i16* %nlocvars85, align 2
  %conv86 = sext i16 %86 to i32
  %87 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelocvars87 = getelementptr inbounds %struct.Proto, %struct.Proto* %87, i32 0, i32 15
  store i32 %conv86, i32* %sizelocvars87, align 4
  %88 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups = getelementptr inbounds %struct.Proto, %struct.Proto* %88, i32 0, i32 19
  %89 = load i8, i8* %nups, align 1
  %conv88 = zext i8 %89 to i32
  %add89 = add nsw i32 %conv88, 1
  %conv90 = sext i32 %add89 to i64
  %cmp91 = icmp ule i64 %conv90, 2305843009213693951
  br i1 %cmp91, label %cond.true.93, label %cond.false.100

cond.true.93:                                     ; preds = %cond.end.82
  %90 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %91 = load %struct.Proto*, %struct.Proto** %f, align 8
  %upvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %91, i32 0, i32 8
  %92 = load %union.TString**, %union.TString*** %upvalues, align 8
  %93 = bitcast %union.TString** %92 to i8*
  %94 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizeupvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i32 0, i32 10
  %95 = load i32, i32* %sizeupvalues, align 4
  %conv94 = sext i32 %95 to i64
  %mul95 = mul i64 %conv94, 8
  %96 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups96 = getelementptr inbounds %struct.Proto, %struct.Proto* %96, i32 0, i32 19
  %97 = load i8, i8* %nups96, align 1
  %conv97 = zext i8 %97 to i64
  %mul98 = mul i64 %conv97, 8
  %call99 = call i8* @luaM_realloc_(%struct.lua_State* %90, i8* %93, i64 %mul95, i64 %mul98)
  br label %cond.end.102

cond.false.100:                                   ; preds = %cond.end.82
  %98 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call101 = call i8* @luaM_toobig(%struct.lua_State* %98)
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.100, %cond.true.93
  %cond103 = phi i8* [ %call99, %cond.true.93 ], [ %call101, %cond.false.100 ]
  %99 = bitcast i8* %cond103 to %union.TString**
  %100 = load %struct.Proto*, %struct.Proto** %f, align 8
  %upvalues104 = getelementptr inbounds %struct.Proto, %struct.Proto* %100, i32 0, i32 8
  store %union.TString** %99, %union.TString*** %upvalues104, align 8
  %101 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups105 = getelementptr inbounds %struct.Proto, %struct.Proto* %101, i32 0, i32 19
  %102 = load i8, i8* %nups105, align 1
  %conv106 = zext i8 %102 to i32
  %103 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizeupvalues107 = getelementptr inbounds %struct.Proto, %struct.Proto* %103, i32 0, i32 10
  store i32 %conv106, i32* %sizeupvalues107, align 4
  %104 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %prev = getelementptr inbounds %struct.FuncState, %struct.FuncState* %104, i32 0, i32 2
  %105 = load %struct.FuncState*, %struct.FuncState** %prev, align 8
  %106 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs108 = getelementptr inbounds %struct.LexState, %struct.LexState* %106, i32 0, i32 5
  store %struct.FuncState* %105, %struct.FuncState** %fs108, align 8
  %107 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %107, i32 0, i32 4
  %108 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 -2
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %top, align 8
  %109 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %tobool = icmp ne %struct.FuncState* %109, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.102
  %110 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @anchor_token(%struct.LexState* %110)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.102
  ret void
}

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) #1

declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) #1

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @error_expected(%struct.LexState* %ls, i32 %token) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %token.addr = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %token, i32* %token.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i32 0, i32 6
  %2 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %4 = load i32, i32* %token.addr, align 4
  %call = call i8* @luaX_token2str(%struct.LexState* %3, i32 %4)
  %call1 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call)
  call void @luaX_syntaxerror(%struct.LexState* %0, i8* %call1)
  ret void
}

declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) #1

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

declare hidden i8* @luaX_token2str(%struct.LexState*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @removevars(%struct.LexState* %ls, i32 %tolevel) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %tolevel.addr = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %tolevel, i32* %tolevel.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 13
  %3 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, i32* %tolevel.addr, align 4
  %cmp = icmp sgt i32 %conv, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 6
  %6 = load i32, i32* %pc, align 4
  %7 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 13
  %8 = load i8, i8* %nactvar3, align 1
  %dec = add i8 %8, -1
  store i8 %dec, i8* %nactvar3, align 1
  %idxprom = zext i8 %dec to i64
  %9 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %actvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 15
  %arrayidx = getelementptr inbounds [200 x i16], [200 x i16]* %actvar, i32 0, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %idxprom4 = zext i16 %10 to i64
  %11 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 0
  %12 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 7
  %13 = load %struct.LocVar*, %struct.LocVar** %locvars, align 8
  %arrayidx5 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %13, i64 %idxprom4
  %endpc = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx5, i32 0, i32 2
  store i32 %6, i32* %endpc, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare hidden void @luaK_ret(%struct.FuncState*, i32, i32) #1

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

declare hidden i8* @luaM_toobig(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define internal void @anchor_token(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %ts = alloca %union.TString*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %1 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %1, 285
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t1 = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 3
  %token2 = getelementptr inbounds %struct.Token, %struct.Token* %t1, i32 0, i32 0
  %3 = load i32, i32* %token2, align 4
  %cmp3 = icmp eq i32 %3, 286
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t4 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 3
  %seminfo = getelementptr inbounds %struct.Token, %struct.Token* %t4, i32 0, i32 1
  %ts5 = bitcast %union.SemInfo* %seminfo to %union.TString**
  %5 = load %union.TString*, %union.TString** %ts5, align 8
  store %union.TString* %5, %union.TString** %ts, align 8
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %7 = load %union.TString*, %union.TString** %ts, align 8
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %7, i64 1
  %8 = bitcast %union.TString* %add.ptr to i8*
  %9 = load %union.TString*, %union.TString** %ts, align 8
  %tsv = bitcast %union.TString* %9 to %struct.anon*
  %len = getelementptr inbounds %struct.anon, %struct.anon* %tsv, i32 0, i32 5
  %10 = load i64, i64* %len, align 8
  %call = call %union.TString* @luaX_newstring(%struct.LexState* %6, i8* %8, i64 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare hidden %union.TString* @luaX_newstring(%struct.LexState*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @enterlevel(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 6
  %1 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 15
  %2 = load i16, i16* %nCcalls, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %nCcalls, align 2
  %conv = zext i16 %inc to i32
  %cmp = icmp sgt i32 %conv, 200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_lexerror(%struct.LexState* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @block_follow(i32 %token) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca i32, align 4
  store i32 %token, i32* %token.addr, align 4
  %0 = load i32, i32* %token.addr, align 4
  switch i32 %0, label %sw.default [
    i32 260, label %sw.bb
    i32 261, label %sw.bb
    i32 262, label %sw.bb
    i32 276, label %sw.bb
    i32 287, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @statement(%struct.LexState* %ls) #0 {
entry:
  %retval = alloca i32, align 4
  %ls.addr = alloca %struct.LexState*, align 8
  %line = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 1
  %1 = load i32, i32* %linenumber, align 4
  store i32 %1, i32* %line, align 4
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %3 = load i32, i32* %token, align 4
  switch i32 %3, label %sw.default [
    i32 266, label %sw.bb
    i32 277, label %sw.bb.1
    i32 259, label %sw.bb.2
    i32 264, label %sw.bb.3
    i32 272, label %sw.bb.4
    i32 265, label %sw.bb.5
    i32 268, label %sw.bb.6
    i32 273, label %sw.bb.7
    i32 258, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %5 = load i32, i32* %line, align 4
  call void @ifstat(%struct.LexState* %4, i32 %5)
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %7 = load i32, i32* %line, align 4
  call void @whilestat(%struct.LexState* %6, i32 %7)
  store i32 0, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %8)
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @block(%struct.LexState* %9)
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %11 = load i32, i32* %line, align 4
  call void @check_match(%struct.LexState* %10, i32 262, i32 259, i32 %11)
  store i32 0, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %13 = load i32, i32* %line, align 4
  call void @forstat(%struct.LexState* %12, i32 %13)
  store i32 0, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %15 = load i32, i32* %line, align 4
  call void @repeatstat(%struct.LexState* %14, i32 %15)
  store i32 0, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %17 = load i32, i32* %line, align 4
  call void @funcstat(%struct.LexState* %16, i32 %17)
  store i32 0, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %18 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %18)
  %19 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call i32 @testnext(%struct.LexState* %19, i32 265)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.6
  %20 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @localfunc(%struct.LexState* %20)
  br label %if.end

if.else:                                          ; preds = %sw.bb.6
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @localstat(%struct.LexState* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @retstat(%struct.LexState* %22)
  store i32 1, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %23)
  %24 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @breakstat(%struct.LexState* %24)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %25 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @exprstat(%struct.LexState* %25)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.8, %sw.bb.7, %if.end, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @testnext(%struct.LexState* %ls, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %ls.addr = alloca %struct.LexState*, align 8
  %c.addr = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %1 = load i32, i32* %token, align 4
  %2 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %3)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare hidden void @luaX_lexerror(%struct.LexState*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ifstat(%struct.LexState* %ls, i32 %line) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %line.addr = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 8
  %flist = alloca i32, align 4
  %escapelist = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  store i32 -1, i32* %escapelist, align 4
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call i32 @test_then_block(%struct.LexState* %2)
  store i32 %call, i32* %flist, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %4 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %4, 261
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call2 = call i32 @luaK_jump(%struct.FuncState* %6)
  call void @luaK_concat(%struct.FuncState* %5, i32* %escapelist, i32 %call2)
  %7 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %8 = load i32, i32* %flist, align 4
  call void @luaK_patchtohere(%struct.FuncState* %7, i32 %8)
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call3 = call i32 @test_then_block(%struct.LexState* %9)
  store i32 %call3, i32* %flist, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t4 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 3
  %token5 = getelementptr inbounds %struct.Token, %struct.Token* %t4, i32 0, i32 0
  %11 = load i32, i32* %token5, align 4
  %cmp6 = icmp eq i32 %11, 260
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %12 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %13 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call7 = call i32 @luaK_jump(%struct.FuncState* %13)
  call void @luaK_concat(%struct.FuncState* %12, i32* %escapelist, i32 %call7)
  %14 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %15 = load i32, i32* %flist, align 4
  call void @luaK_patchtohere(%struct.FuncState* %14, i32 %15)
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %16)
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @block(%struct.LexState* %17)
  br label %if.end

if.else:                                          ; preds = %while.end
  %18 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %19 = load i32, i32* %flist, align 4
  call void @luaK_concat(%struct.FuncState* %18, i32* %escapelist, i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %21 = load i32, i32* %escapelist, align 4
  call void @luaK_patchtohere(%struct.FuncState* %20, i32 %21)
  %22 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %23 = load i32, i32* %line.addr, align 4
  call void @check_match(%struct.LexState* %22, i32 262, i32 266, i32 %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @whilestat(%struct.LexState* %ls, i32 %line) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %line.addr = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 8
  %whileinit = alloca i32, align 4
  %condexit = alloca i32, align 4
  %bl = alloca %struct.BlockCnt, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %2)
  %3 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call = call i32 @luaK_getlabel(%struct.FuncState* %3)
  store i32 %call, i32* %whileinit, align 4
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call2 = call i32 @cond(%struct.LexState* %4)
  store i32 %call2, i32* %condexit, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @enterblock(%struct.FuncState* %5, %struct.BlockCnt* %bl, i8 zeroext 1)
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %6, i32 259)
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @block(%struct.LexState* %7)
  %8 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %9 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call3 = call i32 @luaK_jump(%struct.FuncState* %9)
  %10 = load i32, i32* %whileinit, align 4
  call void @luaK_patchlist(%struct.FuncState* %8, i32 %call3, i32 %10)
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %12 = load i32, i32* %line.addr, align 4
  call void @check_match(%struct.LexState* %11, i32 262, i32 277, i32 %12)
  %13 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @leaveblock(%struct.FuncState* %13)
  %14 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %15 = load i32, i32* %condexit, align 4
  call void @luaK_patchtohere(%struct.FuncState* %14, i32 %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @block(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %bl = alloca %struct.BlockCnt, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @enterblock(%struct.FuncState* %2, %struct.BlockCnt* %bl, i8 zeroext 0)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @chunk(%struct.LexState* %3)
  %4 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @leaveblock(%struct.FuncState* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_match(%struct.LexState* %ls, i32 %what, i32 %who, i32 %where) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %what.addr = alloca i32, align 4
  %who.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %who, i32* %who.addr, align 4
  store i32 %where, i32* %where.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load i32, i32* %what.addr, align 4
  %call = call i32 @testnext(%struct.LexState* %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %where.addr, align 4
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 1
  %4 = load i32, i32* %linenumber, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %6 = load i32, i32* %what.addr, align 4
  call void @error_expected(%struct.LexState* %5, i32 %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 6
  %9 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %11 = load i32, i32* %what.addr, align 4
  %call2 = call i8* @luaX_token2str(%struct.LexState* %10, i32 %11)
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %13 = load i32, i32* %who.addr, align 4
  %call3 = call i8* @luaX_token2str(%struct.LexState* %12, i32 %13)
  %14 = load i32, i32* %where.addr, align 4
  %call4 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* %call2, i8* %call3, i32 %14)
  call void @luaX_syntaxerror(%struct.LexState* %7, i8* %call4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @forstat(%struct.LexState* %ls, i32 %line) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %line.addr = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 8
  %varname = alloca %union.TString*, align 8
  %bl = alloca %struct.BlockCnt, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @enterblock(%struct.FuncState* %2, %struct.BlockCnt* %bl, i8 zeroext 1)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %3)
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %union.TString* @str_checkname(%struct.LexState* %4)
  store %union.TString* %call, %union.TString** %varname, align 8
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %6 = load i32, i32* %token, align 4
  switch i32 %6, label %sw.default [
    i32 61, label %sw.bb
    i32 44, label %sw.bb.2
    i32 267, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %8 = load %union.TString*, %union.TString** %varname, align 8
  %9 = load i32, i32* %line.addr, align 4
  call void @fornum(%struct.LexState* %7, %union.TString* %8, i32 %9)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry, %entry
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %11 = load %union.TString*, %union.TString** %varname, align 8
  call void @forlist(%struct.LexState* %10, %union.TString* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_syntaxerror(%struct.LexState* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %14 = load i32, i32* %line.addr, align 4
  call void @check_match(%struct.LexState* %13, i32 262, i32 264, i32 %14)
  %15 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @leaveblock(%struct.FuncState* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @repeatstat(%struct.LexState* %ls, i32 %line) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %line.addr = alloca i32, align 4
  %condexit = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 8
  %repeat_init = alloca i32, align 4
  %bl1 = alloca %struct.BlockCnt, align 8
  %bl2 = alloca %struct.BlockCnt, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call = call i32 @luaK_getlabel(%struct.FuncState* %2)
  store i32 %call, i32* %repeat_init, align 4
  %3 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @enterblock(%struct.FuncState* %3, %struct.BlockCnt* %bl1, i8 zeroext 1)
  %4 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @enterblock(%struct.FuncState* %4, %struct.BlockCnt* %bl2, i8 zeroext 0)
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %5)
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @chunk(%struct.LexState* %6)
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %8 = load i32, i32* %line.addr, align 4
  call void @check_match(%struct.LexState* %7, i32 276, i32 272, i32 %8)
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call2 = call i32 @cond(%struct.LexState* %9)
  store i32 %call2, i32* %condexit, align 4
  %upval = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %bl2, i32 0, i32 3
  %10 = load i8, i8* %upval, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @leaveblock(%struct.FuncState* %11)
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs3 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %fs3, align 8
  %14 = load i32, i32* %condexit, align 4
  %15 = load i32, i32* %repeat_init, align 4
  call void @luaK_patchlist(%struct.FuncState* %13, i32 %14, i32 %15)
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @breakstat(%struct.LexState* %16)
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs4 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 5
  %18 = load %struct.FuncState*, %struct.FuncState** %fs4, align 8
  %19 = load i32, i32* %condexit, align 4
  call void @luaK_patchtohere(%struct.FuncState* %18, i32 %19)
  %20 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @leaveblock(%struct.FuncState* %20)
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs5 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 5
  %22 = load %struct.FuncState*, %struct.FuncState** %fs5, align 8
  %23 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call6 = call i32 @luaK_jump(%struct.FuncState* %23)
  %24 = load i32, i32* %repeat_init, align 4
  call void @luaK_patchlist(%struct.FuncState* %22, i32 %call6, i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @leaveblock(%struct.FuncState* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @funcstat(%struct.LexState* %ls, i32 %line) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %line.addr = alloca i32, align 4
  %needself = alloca i32, align 4
  %v = alloca %struct.expdesc, align 8
  %b = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %0)
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call i32 @funcname(%struct.LexState* %1, %struct.expdesc* %v)
  store i32 %call, i32* %needself, align 4
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %3 = load i32, i32* %needself, align 4
  %4 = load i32, i32* %line.addr, align 4
  call void @body(%struct.LexState* %2, %struct.expdesc* %b, i32 %3, i32 %4)
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_storevar(%struct.FuncState* %6, %struct.expdesc* %v, %struct.expdesc* %b)
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 5
  %8 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  %9 = load i32, i32* %line.addr, align 4
  call void @luaK_fixline(%struct.FuncState* %8, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @localfunc(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v = alloca %struct.expdesc, align 8
  %b = alloca %struct.expdesc, align 8
  %fs = alloca %struct.FuncState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %union.TString* @str_checkname(%struct.LexState* %3)
  call void @new_localvar(%struct.LexState* %2, %union.TString* %call, i32 0)
  %4 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 9
  %5 = load i32, i32* %freereg, align 4
  call void @init_exp(%struct.expdesc* %v, i32 6, i32 %5)
  %6 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_reserveregs(%struct.FuncState* %6, i32 1)
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @adjustlocalvars(%struct.LexState* %7, i32 1)
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 1
  %10 = load i32, i32* %linenumber, align 4
  call void @body(%struct.LexState* %8, %struct.expdesc* %b, i32 0, i32 %10)
  %11 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_storevar(%struct.FuncState* %11, %struct.expdesc* %v, %struct.expdesc* %b)
  %12 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 6
  %13 = load i32, i32* %pc, align 4
  %14 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 13
  %15 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %15 to i32
  %sub = sub nsw i32 %conv, 1
  %idxprom = sext i32 %sub to i64
  %16 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %actvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 15
  %arrayidx = getelementptr inbounds [200 x i16], [200 x i16]* %actvar, i32 0, i64 %idxprom
  %17 = load i16, i16* %arrayidx, align 2
  %idxprom2 = zext i16 %17 to i64
  %18 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %18, i32 0, i32 0
  %19 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 7
  %20 = load %struct.LocVar*, %struct.LocVar** %locvars, align 8
  %arrayidx3 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %20, i64 %idxprom2
  %startpc = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx3, i32 0, i32 1
  store i32 %13, i32* %startpc, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @localstat(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %nvars = alloca i32, align 4
  %nexps = alloca i32, align 4
  %e = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 0, i32* %nvars, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %union.TString* @str_checkname(%struct.LexState* %1)
  %2 = load i32, i32* %nvars, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %nvars, align 4
  call void @new_localvar(%struct.LexState* %0, %union.TString* %call, i32 %2)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call1 = call i32 @testnext(%struct.LexState* %3, i32 44)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call2 = call i32 @testnext(%struct.LexState* %4, i32 61)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call4 = call i32 @explist1(%struct.LexState* %5, %struct.expdesc* %e)
  store i32 %call4, i32* %nexps, align 4
  br label %if.end

if.else:                                          ; preds = %do.end
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e, i32 0, i32 0
  store i32 0, i32* %k, align 4
  store i32 0, i32* %nexps, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %7 = load i32, i32* %nvars, align 4
  %8 = load i32, i32* %nexps, align 4
  call void @adjust_assign(%struct.LexState* %6, i32 %7, i32 %8, %struct.expdesc* %e)
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %10 = load i32, i32* %nvars, align 4
  call void @adjustlocalvars(%struct.LexState* %9, i32 %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @retstat(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %e = alloca %struct.expdesc, align 8
  %first = alloca i32, align 4
  %nret = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %2)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %4 = load i32, i32* %token, align 4
  %call = call i32 @block_follow(i32 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t2 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 3
  %token3 = getelementptr inbounds %struct.Token, %struct.Token* %t2, i32 0, i32 0
  %6 = load i32, i32* %token3, align 4
  %cmp = icmp eq i32 %6, 59
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %nret, align 4
  store i32 0, i32* %first, align 4
  br label %if.end.31

if.else:                                          ; preds = %lor.lhs.false
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call4 = call i32 @explist1(%struct.LexState* %7, %struct.expdesc* %e)
  store i32 %call4, i32* %nret, align 4
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e, i32 0, i32 0
  %8 = load i32, i32* %k, align 4
  %cmp5 = icmp eq i32 %8, 13
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.else
  %k7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e, i32 0, i32 0
  %9 = load i32, i32* %k7, align 4
  %cmp8 = icmp eq i32 %9, 14
  br i1 %cmp8, label %if.then.9, label %if.else.21

if.then.9:                                        ; preds = %lor.lhs.false.6, %if.else
  %10 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_setreturns(%struct.FuncState* %10, %struct.expdesc* %e, i32 -1)
  %k10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e, i32 0, i32 0
  %11 = load i32, i32* %k10, align 4
  %cmp11 = icmp eq i32 %11, 13
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.9
  %12 = load i32, i32* %nret, align 4
  %cmp12 = icmp eq i32 %12, 1
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %13 = load i32, i32* %info, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %15 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i32 0, i32 4
  %16 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %and = and i32 %17, -64
  %or = or i32 %and, 29
  %u14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e, i32 0, i32 1
  %s15 = bitcast %union.anon.3* %u14 to %struct.anon.4*
  %info16 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s15, i32 0, i32 0
  %18 = load i32, i32* %info16, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %19, i32 0, i32 0
  %20 = load %struct.Proto*, %struct.Proto** %f18, align 8
  %code19 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 4
  %21 = load i32*, i32** %code19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %21, i64 %idxprom17
  store i32 %or, i32* %arrayidx20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true, %if.then.9
  %22 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %22, i32 0, i32 13
  %23 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %23 to i32
  store i32 %conv, i32* %first, align 4
  store i32 -1, i32* %nret, align 4
  br label %if.end.30

if.else.21:                                       ; preds = %lor.lhs.false.6
  %24 = load i32, i32* %nret, align 4
  %cmp22 = icmp eq i32 %24, 1
  br i1 %cmp22, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else.21
  %25 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call25 = call i32 @luaK_exp2anyreg(%struct.FuncState* %25, %struct.expdesc* %e)
  store i32 %call25, i32* %first, align 4
  br label %if.end.29

if.else.26:                                       ; preds = %if.else.21
  %26 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %26, %struct.expdesc* %e)
  %27 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i32 0, i32 13
  %28 = load i8, i8* %nactvar27, align 1
  %conv28 = zext i8 %28 to i32
  store i32 %conv28, i32* %first, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then
  %29 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %30 = load i32, i32* %first, align 4
  %31 = load i32, i32* %nret, align 4
  call void @luaK_ret(%struct.FuncState* %29, i32 %30, i32 %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @breakstat(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %bl = alloca %struct.BlockCnt*, align 8
  %upval = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %bl2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 5
  %3 = load %struct.BlockCnt*, %struct.BlockCnt** %bl2, align 8
  store %struct.BlockCnt* %3, %struct.BlockCnt** %bl, align 8
  store i32 0, i32* %upval, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %tobool = icmp ne %struct.BlockCnt* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %isbreakable = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %5, i32 0, i32 4
  %6 = load i8, i8* %isbreakable, align 1
  %tobool3 = icmp ne i8 %6, 0
  %lnot = xor i1 %tobool3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %upval4 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %8, i32 0, i32 3
  %9 = load i8, i8* %upval4, align 1
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %upval, align 4
  %or = or i32 %10, %conv
  store i32 %or, i32* %upval, align 4
  %11 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %previous = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %11, i32 0, i32 0
  %12 = load %struct.BlockCnt*, %struct.BlockCnt** %previous, align 8
  store %struct.BlockCnt* %12, %struct.BlockCnt** %bl, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %tobool5 = icmp ne %struct.BlockCnt* %13, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_syntaxerror(%struct.LexState* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %15 = load i32, i32* %upval, align 4
  %tobool6 = icmp ne i32 %15, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %16 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %17 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %nactvar = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i32 0, i32 2
  %18 = load i8, i8* %nactvar, align 1
  %conv8 = zext i8 %18 to i32
  %call = call i32 @luaK_codeABC(%struct.FuncState* %16, i32 35, i32 %conv8, i32 0, i32 0)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %19 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %20 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %breaklist = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i32 0, i32 1
  %21 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call10 = call i32 @luaK_jump(%struct.FuncState* %21)
  call void @luaK_concat(%struct.FuncState* %19, i32* %breaklist, i32 %call10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @exprstat(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %v = alloca %struct.LHS_assign, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %v2 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %v, i32 0, i32 1
  call void @primaryexp(%struct.LexState* %2, %struct.expdesc* %v2)
  %v3 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %v, i32 0, i32 1
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v3, i32 0, i32 0
  %3 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %3, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %v4 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %v, i32 0, i32 1
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v4, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %4 = load i32, i32* %info, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 0
  %6 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 4
  %7 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %and = and i32 %8, -8372225
  %or = or i32 %and, 16384
  %v5 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %v, i32 0, i32 1
  %u6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v5, i32 0, i32 1
  %s7 = bitcast %union.anon.3* %u6 to %struct.anon.4*
  %info8 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s7, i32 0, i32 0
  %9 = load i32, i32* %info8, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 0
  %11 = load %struct.Proto*, %struct.Proto** %f10, align 8
  %code11 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 4
  %12 = load i32*, i32** %code11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 %idxprom9
  store i32 %or, i32* %arrayidx12, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %v, i32 0, i32 0
  store %struct.LHS_assign* null, %struct.LHS_assign** %prev, align 8
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @assignment(%struct.LexState* %13, %struct.LHS_assign* %v, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @test_then_block(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %condexit = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %0)
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call i32 @cond(%struct.LexState* %1)
  store i32 %call, i32* %condexit, align 4
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %2, i32 274)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @block(%struct.LexState* %3)
  %4 = load i32, i32* %condexit, align 4
  ret i32 %4
}

declare hidden void @luaK_concat(%struct.FuncState*, i32*, i32) #1

declare hidden i32 @luaK_jump(%struct.FuncState*) #1

declare hidden void @luaK_patchtohere(%struct.FuncState*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @cond(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @expr(%struct.LexState* %0, %struct.expdesc* %v)
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %k1 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v, i32 0, i32 0
  store i32 3, i32* %k1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 5
  %3 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_goiftrue(%struct.FuncState* %3, %struct.expdesc* %v)
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v, i32 0, i32 3
  %4 = load i32, i32* %f, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @checknext(%struct.LexState* %ls, i32 %c) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %c.addr = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load i32, i32* %c.addr, align 4
  call void @check(%struct.LexState* %0, i32 %1)
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @expr(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %call = call i32 @subexpr(%struct.LexState* %0, %struct.expdesc* %1, i32 0)
  ret void
}

declare hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc*) #1

; Function Attrs: nounwind uwtable
define internal i32 @subexpr(%struct.LexState* %ls, %struct.expdesc* %v, i32 %limit) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  %limit.addr = alloca i32, align 4
  %op = alloca i32, align 4
  %uop = alloca i32, align 4
  %v2 = alloca %struct.expdesc, align 8
  %nextop = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  store i32 %limit, i32* %limit.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @enterlevel(%struct.LexState* %0)
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %2 = load i32, i32* %token, align 4
  %call = call i32 @getunopr(i32 %2)
  store i32 %call, i32* %uop, align 4
  %3 = load i32, i32* %uop, align 4
  %cmp = icmp ne i32 %3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %4)
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %call1 = call i32 @subexpr(%struct.LexState* %5, %struct.expdesc* %6, i32 8)
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 5
  %8 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %9 = load i32, i32* %uop, align 4
  %10 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_prefix(%struct.FuncState* %8, i32 %9, %struct.expdesc* %10)
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %12 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @simpleexp(%struct.LexState* %11, %struct.expdesc* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t2 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 3
  %token3 = getelementptr inbounds %struct.Token, %struct.Token* %t2, i32 0, i32 0
  %14 = load i32, i32* %token3, align 4
  %call4 = call i32 @getbinopr(i32 %14)
  store i32 %call4, i32* %op, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load i32, i32* %op, align 4
  %cmp5 = icmp ne i32 %15, 15
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load i32, i32* %op, align 4
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds [15 x %struct.anon.5], [15 x %struct.anon.5]* @priority, i32 0, i64 %idxprom
  %left = getelementptr inbounds %struct.anon.5, %struct.anon.5* %arrayidx, i32 0, i32 0
  %17 = load i8, i8* %left, align 1
  %conv = zext i8 %17 to i32
  %18 = load i32, i32* %limit.addr, align 4
  %cmp6 = icmp ugt i32 %conv, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %20)
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs8 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 5
  %22 = load %struct.FuncState*, %struct.FuncState** %fs8, align 8
  %23 = load i32, i32* %op, align 4
  %24 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_infix(%struct.FuncState* %22, i32 %23, %struct.expdesc* %24)
  %25 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %26 = load i32, i32* %op, align 4
  %idxprom9 = zext i32 %26 to i64
  %arrayidx10 = getelementptr inbounds [15 x %struct.anon.5], [15 x %struct.anon.5]* @priority, i32 0, i64 %idxprom9
  %right = getelementptr inbounds %struct.anon.5, %struct.anon.5* %arrayidx10, i32 0, i32 1
  %27 = load i8, i8* %right, align 1
  %conv11 = zext i8 %27 to i32
  %call12 = call i32 @subexpr(%struct.LexState* %25, %struct.expdesc* %v2, i32 %conv11)
  store i32 %call12, i32* %nextop, align 4
  %28 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs13 = getelementptr inbounds %struct.LexState, %struct.LexState* %28, i32 0, i32 5
  %29 = load %struct.FuncState*, %struct.FuncState** %fs13, align 8
  %30 = load i32, i32* %op, align 4
  %31 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_posfix(%struct.FuncState* %29, i32 %30, %struct.expdesc* %31, %struct.expdesc* %v2)
  %32 = load i32, i32* %nextop, align 4
  store i32 %32, i32* %op, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i32 0, i32 6
  %34 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 15
  %35 = load i16, i16* %nCcalls, align 2
  %dec = add i16 %35, -1
  store i16 %dec, i16* %nCcalls, align 2
  %36 = load i32, i32* %op, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @getunopr(i32 %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  switch i32 %0, label %sw.default [
    i32 270, label %sw.bb
    i32 45, label %sw.bb.1
    i32 35, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*) #1

; Function Attrs: nounwind uwtable
define internal void @simpleexp(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  %fs = alloca %struct.FuncState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %1 = load i32, i32* %token, align 4
  switch i32 %1, label %sw.default [
    i32 284, label %sw.bb
    i32 286, label %sw.bb.2
    i32 269, label %sw.bb.5
    i32 275, label %sw.bb.6
    i32 263, label %sw.bb.7
    i32 279, label %sw.bb.8
    i32 123, label %sw.bb.13
    i32 265, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @init_exp(%struct.expdesc* %2, i32 5, i32 0)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t1 = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 3
  %seminfo = getelementptr inbounds %struct.Token, %struct.Token* %t1, i32 0, i32 1
  %r = bitcast %union.SemInfo* %seminfo to double*
  %4 = load double, double* %r, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 1
  %nval = bitcast %union.anon.3* %u to double*
  store double %4, double* %nval, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t3 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 3
  %seminfo4 = getelementptr inbounds %struct.Token, %struct.Token* %t3, i32 0, i32 1
  %ts = bitcast %union.SemInfo* %seminfo4 to %union.TString**
  %9 = load %union.TString*, %union.TString** %ts, align 8
  call void @codestring(%struct.LexState* %6, %struct.expdesc* %7, %union.TString* %9)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @init_exp(%struct.expdesc* %10, i32 1, i32 0)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %11 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @init_exp(%struct.expdesc* %11, i32 2, i32 0)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @init_exp(%struct.expdesc* %12, i32 3, i32 0)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs9 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 5
  %14 = load %struct.FuncState*, %struct.FuncState** %fs9, align 8
  store %struct.FuncState* %14, %struct.FuncState** %fs, align 8
  %15 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %15, i32 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %f, align 8
  %is_vararg = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 21
  %17 = load i8, i8* %is_vararg, align 1
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.8
  %18 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_syntaxerror(%struct.LexState* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.8
  %19 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %19, i32 0, i32 0
  %20 = load %struct.Proto*, %struct.Proto** %f10, align 8
  %is_vararg11 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 21
  %21 = load i8, i8* %is_vararg11, align 1
  %conv = zext i8 %21 to i32
  %and = and i32 %conv, -5
  %conv12 = trunc i32 %and to i8
  store i8 %conv12, i8* %is_vararg11, align 1
  %22 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %23 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call = call i32 @luaK_codeABC(%struct.FuncState* %23, i32 37, i32 0, i32 1, i32 0)
  call void @init_exp(%struct.expdesc* %22, i32 14, i32 %call)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %24 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @constructor(%struct.LexState* %24, %struct.expdesc* %25)
  br label %return

sw.bb.14:                                         ; preds = %entry
  %26 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %26)
  %27 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %28 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %29 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 1
  %30 = load i32, i32* %linenumber, align 4
  call void @body(%struct.LexState* %27, %struct.expdesc* %28, i32 0, i32 %30)
  br label %return

sw.default:                                       ; preds = %entry
  %31 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %32 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @primaryexp(%struct.LexState* %31, %struct.expdesc* %32)
  br label %return

sw.epilog:                                        ; preds = %if.end, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.2, %sw.bb
  %33 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %33)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb.14, %sw.bb.13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @getbinopr(i32 %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  switch i32 %0, label %sw.default [
    i32 43, label %sw.bb
    i32 45, label %sw.bb.1
    i32 42, label %sw.bb.2
    i32 47, label %sw.bb.3
    i32 37, label %sw.bb.4
    i32 94, label %sw.bb.5
    i32 278, label %sw.bb.6
    i32 283, label %sw.bb.7
    i32 280, label %sw.bb.8
    i32 60, label %sw.bb.9
    i32 282, label %sw.bb.10
    i32 62, label %sw.bb.11
    i32 281, label %sw.bb.12
    i32 257, label %sw.bb.13
    i32 271, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 6, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 9, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 10, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i32 12, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i32 13, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i32 14, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 15, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) #1

declare hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*) #1

; Function Attrs: nounwind uwtable
define internal void @init_exp(%struct.expdesc* %e, i32 %k, i32 %i) #0 {
entry:
  %e.addr = alloca %struct.expdesc*, align 8
  %k.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i32 0, i32 2
  store i32 -1, i32* %t, align 4
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i32 0, i32 3
  store i32 -1, i32* %f, align 4
  %2 = load i32, i32* %k.addr, align 4
  %3 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k1 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 0
  store i32 %2, i32* %k1, align 4
  %4 = load i32, i32* %i.addr, align 4
  %5 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  store i32 %4, i32* %info, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @codestring(%struct.LexState* %ls, %struct.expdesc* %e, %union.TString* %s) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %s.addr = alloca %union.TString*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  store %union.TString* %s, %union.TString** %s.addr, align 8
  %0 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i32 0, i32 5
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %3 = load %union.TString*, %union.TString** %s.addr, align 8
  %call = call i32 @luaK_stringK(%struct.FuncState* %2, %union.TString* %3)
  call void @init_exp(%struct.expdesc* %0, i32 4, i32 %call)
  ret void
}

declare hidden i32 @luaK_codeABC(%struct.FuncState*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @constructor(%struct.LexState* %ls, %struct.expdesc* %t) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %t.addr = alloca %struct.expdesc*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %line = alloca i32, align 4
  %pc = alloca i32, align 4
  %cc = alloca %struct.ConsControl, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %t, %struct.expdesc** %t.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 1
  %3 = load i32, i32* %linenumber, align 4
  store i32 %3, i32* %line, align 4
  %4 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call = call i32 @luaK_codeABC(%struct.FuncState* %4, i32 10, i32 0, i32 0, i32 0)
  store i32 %call, i32* %pc, align 4
  %tostore = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %cc, i32 0, i32 4
  store i32 0, i32* %tostore, align 4
  %nh = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %cc, i32 0, i32 2
  store i32 0, i32* %nh, align 4
  %na = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %cc, i32 0, i32 3
  store i32 0, i32* %na, align 4
  %5 = load %struct.expdesc*, %struct.expdesc** %t.addr, align 8
  %t2 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %cc, i32 0, i32 1
  store %struct.expdesc* %5, %struct.expdesc** %t2, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %t.addr, align 8
  %7 = load i32, i32* %pc, align 4
  call void @init_exp(%struct.expdesc* %6, i32 11, i32 %7)
  %v = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %cc, i32 0, i32 0
  call void @init_exp(%struct.expdesc* %v, i32 0, i32 0)
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs3 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %fs3, align 8
  %10 = load %struct.expdesc*, %struct.expdesc** %t.addr, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %9, %struct.expdesc* %10)
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %11, i32 123)
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t4 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t4, i32 0, i32 0
  %13 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %13, 125
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %14 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @closelistfield(%struct.FuncState* %14, %struct.ConsControl* %cc)
  %15 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t5 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 3
  %token6 = getelementptr inbounds %struct.Token, %struct.Token* %t5, i32 0, i32 0
  %16 = load i32, i32* %token6, align 4
  switch i32 %16, label %sw.default [
    i32 285, label %sw.bb
    i32 91, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_lookahead(%struct.LexState* %17)
  %18 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %lookahead = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i32 0, i32 4
  %token7 = getelementptr inbounds %struct.Token, %struct.Token* %lookahead, i32 0, i32 0
  %19 = load i32, i32* %token7, align 4
  %cmp8 = icmp ne i32 %19, 61
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %sw.bb
  %20 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @listfield(%struct.LexState* %20, %struct.ConsControl* %cc)
  br label %if.end.10

if.else:                                          ; preds = %sw.bb
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @recfield(%struct.LexState* %21, %struct.ConsControl* %cc)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %22 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @recfield(%struct.LexState* %22, %struct.ConsControl* %cc)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @listfield(%struct.LexState* %23, %struct.ConsControl* %cc)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.11, %if.end.10
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %24 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call12 = call i32 @testnext(%struct.LexState* %24, i32 44)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %25 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call13 = call i32 @testnext(%struct.LexState* %25, i32 59)
  %tobool14 = icmp ne i32 %call13, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %26 = phi i1 [ true, %do.cond ], [ %tobool14, %lor.rhs ]
  br i1 %26, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end, %if.then
  %27 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %28 = load i32, i32* %line, align 4
  call void @check_match(%struct.LexState* %27, i32 125, i32 123, i32 %28)
  %29 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @lastlistfield(%struct.FuncState* %29, %struct.ConsControl* %cc)
  %30 = load i32, i32* %pc, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i32 0, i32 0
  %32 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 4
  %33 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %33, i64 %idxprom
  %34 = load i32, i32* %arrayidx, align 4
  %and = and i32 %34, 8388607
  %na15 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %cc, i32 0, i32 3
  %35 = load i32, i32* %na15, align 4
  %call16 = call i32 @luaO_int2fb(i32 %35)
  %shl = shl i32 %call16, 23
  %and17 = and i32 %shl, -8388608
  %or = or i32 %and, %and17
  %36 = load i32, i32* %pc, align 4
  %idxprom18 = sext i32 %36 to i64
  %37 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i32 0, i32 0
  %38 = load %struct.Proto*, %struct.Proto** %f19, align 8
  %code20 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 4
  %39 = load i32*, i32** %code20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %39, i64 %idxprom18
  store i32 %or, i32* %arrayidx21, align 4
  %40 = load i32, i32* %pc, align 4
  %idxprom22 = sext i32 %40 to i64
  %41 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %41, i32 0, i32 0
  %42 = load %struct.Proto*, %struct.Proto** %f23, align 8
  %code24 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i32 0, i32 4
  %43 = load i32*, i32** %code24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %43, i64 %idxprom22
  %44 = load i32, i32* %arrayidx25, align 4
  %and26 = and i32 %44, -8372225
  %nh27 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %cc, i32 0, i32 2
  %45 = load i32, i32* %nh27, align 4
  %call28 = call i32 @luaO_int2fb(i32 %45)
  %shl29 = shl i32 %call28, 14
  %and30 = and i32 %shl29, 8372224
  %or31 = or i32 %and26, %and30
  %46 = load i32, i32* %pc, align 4
  %idxprom32 = sext i32 %46 to i64
  %47 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %47, i32 0, i32 0
  %48 = load %struct.Proto*, %struct.Proto** %f33, align 8
  %code34 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 4
  %49 = load i32*, i32** %code34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %49, i64 %idxprom32
  store i32 %or31, i32* %arrayidx35, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @body(%struct.LexState* %ls, %struct.expdesc* %e, i32 %needself, i32 %line) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %needself.addr = alloca i32, align 4
  %line.addr = alloca i32, align 4
  %new_fs = alloca %struct.FuncState, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  store i32 %needself, i32* %needself.addr, align 4
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @open_func(%struct.LexState* %0, %struct.FuncState* %new_fs)
  %1 = load i32, i32* %line.addr, align 4
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %new_fs, i32 0, i32 0
  %2 = load %struct.Proto*, %struct.Proto** %f, align 8
  %linedefined = getelementptr inbounds %struct.Proto, %struct.Proto* %2, i32 0, i32 16
  store i32 %1, i32* %linedefined, align 4
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %3, i32 40)
  %4 = load i32, i32* %needself.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %union.TString* @luaX_newstring(%struct.LexState* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4)
  call void @new_localvar(%struct.LexState* %5, %union.TString* %call, i32 0)
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @adjustlocalvars(%struct.LexState* %7, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @parlist(%struct.LexState* %8)
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %9, i32 41)
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @chunk(%struct.LexState* %10)
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 1
  %12 = load i32, i32* %linenumber, align 4
  %f1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %new_fs, i32 0, i32 0
  %13 = load %struct.Proto*, %struct.Proto** %f1, align 8
  %lastlinedefined = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 17
  store i32 %12, i32* %lastlinedefined, align 4
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %15 = load i32, i32* %line.addr, align 4
  call void @check_match(%struct.LexState* %14, i32 262, i32 265, i32 %15)
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @close_func(%struct.LexState* %16)
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @pushclosure(%struct.LexState* %17, %struct.FuncState* %new_fs, %struct.expdesc* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @primaryexp(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %key = alloca %struct.expdesc, align 8
  %key4 = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @prefixexp(%struct.LexState* %2, %struct.expdesc* %3)
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %5 = load i32, i32* %token, align 4
  switch i32 %5, label %sw.default [
    i32 46, label %sw.bb
    i32 91, label %sw.bb.2
    i32 58, label %sw.bb.3
    i32 40, label %sw.bb.5
    i32 286, label %sw.bb.5
    i32 123, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %for.cond
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @field(%struct.LexState* %6, %struct.expdesc* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.cond
  %8 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %call = call i32 @luaK_exp2anyreg(%struct.FuncState* %8, %struct.expdesc* %9)
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @yindex(%struct.LexState* %10, %struct.expdesc* %key)
  %11 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %12 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_indexed(%struct.FuncState* %11, %struct.expdesc* %12, %struct.expdesc* %key)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.cond
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %13)
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checkname(%struct.LexState* %14, %struct.expdesc* %key4)
  %15 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_self(%struct.FuncState* %15, %struct.expdesc* %16, %struct.expdesc* %key4)
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @funcargs(%struct.LexState* %17, %struct.expdesc* %18)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.cond, %for.cond, %for.cond
  %19 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %20 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %19, %struct.expdesc* %20)
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @funcargs(%struct.LexState* %21, %struct.expdesc* %22)
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  ret void

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb.3, %sw.bb.2, %sw.bb
  br label %for.cond
}

declare hidden i32 @luaK_stringK(%struct.FuncState*, %union.TString*) #1

declare hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) #1

; Function Attrs: nounwind uwtable
define internal void @closelistfield(%struct.FuncState* %fs, %struct.ConsControl* %cc) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %cc.addr = alloca %struct.ConsControl*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.ConsControl* %cc, %struct.ConsControl** %cc.addr, align 8
  %0 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %v = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %0, i32 0, i32 0
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %3 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %v1 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i32 0, i32 0
  call void @luaK_exp2nextreg(%struct.FuncState* %2, %struct.expdesc* %v1)
  %4 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %v2 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %4, i32 0, i32 0
  %k3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v2, i32 0, i32 0
  store i32 0, i32* %k3, align 4
  %5 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %tostore = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %5, i32 0, i32 4
  %6 = load i32, i32* %tostore, align 4
  %cmp4 = icmp eq i32 %6, 50
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %8 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %t = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 1
  %9 = load %struct.expdesc*, %struct.expdesc** %t, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %10 = load i32, i32* %info, align 4
  %11 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %na = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %11, i32 0, i32 3
  %12 = load i32, i32* %na, align 4
  %13 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %tostore6 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %13, i32 0, i32 4
  %14 = load i32, i32* %tostore6, align 4
  call void @luaK_setlist(%struct.FuncState* %7, i32 %10, i32 %12, i32 %14)
  %15 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %tostore7 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %15, i32 0, i32 4
  store i32 0, i32* %tostore7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.5, %if.end
  ret void
}

declare hidden void @luaX_lookahead(%struct.LexState*) #1

; Function Attrs: nounwind uwtable
define internal void @listfield(%struct.LexState* %ls, %struct.ConsControl* %cc) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %cc.addr = alloca %struct.ConsControl*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.ConsControl* %cc, %struct.ConsControl** %cc.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %v = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i32 0, i32 0
  call void @expr(%struct.LexState* %0, %struct.expdesc* %v)
  %2 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %na = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %2, i32 0, i32 3
  %3 = load i32, i32* %na, align 4
  %cmp = icmp sgt i32 %3, 2147483645
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @errorlimit(%struct.FuncState* %5, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %na1 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %6, i32 0, i32 3
  %7 = load i32, i32* %na1, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %na1, align 4
  %8 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %tostore = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 4
  %9 = load i32, i32* %tostore, align 4
  %inc2 = add nsw i32 %9, 1
  store i32 %inc2, i32* %tostore, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @recfield(%struct.LexState* %ls, %struct.ConsControl* %cc) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %cc.addr = alloca %struct.ConsControl*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %reg = alloca i32, align 4
  %key = alloca %struct.expdesc, align 8
  %val = alloca %struct.expdesc, align 8
  %rkkey = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.ConsControl* %cc, %struct.ConsControl** %cc.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs2 = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 5
  %3 = load %struct.FuncState*, %struct.FuncState** %fs2, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i32 0, i32 9
  %4 = load i32, i32* %freereg, align 4
  store i32 %4, i32* %reg, align 4
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %6 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %6, 285
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %nh = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %7, i32 0, i32 2
  %8 = load i32, i32* %nh, align 4
  %cmp3 = icmp sgt i32 %8, 2147483645
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @errorlimit(%struct.FuncState* %9, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checkname(%struct.LexState* %10, %struct.expdesc* %key)
  br label %if.end.5

if.else:                                          ; preds = %entry
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @yindex(%struct.LexState* %11, %struct.expdesc* %key)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %12 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %nh6 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %12, i32 0, i32 2
  %13 = load i32, i32* %nh6, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %nh6, align 4
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %14, i32 61)
  %15 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call = call i32 @luaK_exp2RK(%struct.FuncState* %15, %struct.expdesc* %key)
  store i32 %call, i32* %rkkey, align 4
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @expr(%struct.LexState* %16, %struct.expdesc* %val)
  %17 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %18 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %t7 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %18, i32 0, i32 1
  %19 = load %struct.expdesc*, %struct.expdesc** %t7, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %20 = load i32, i32* %info, align 4
  %21 = load i32, i32* %rkkey, align 4
  %22 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call8 = call i32 @luaK_exp2RK(%struct.FuncState* %22, %struct.expdesc* %val)
  %call9 = call i32 @luaK_codeABC(%struct.FuncState* %17, i32 9, i32 %20, i32 %21, i32 %call8)
  %23 = load i32, i32* %reg, align 4
  %24 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %freereg10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i32 0, i32 9
  store i32 %23, i32* %freereg10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lastlistfield(%struct.FuncState* %fs, %struct.ConsControl* %cc) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %cc.addr = alloca %struct.ConsControl*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.ConsControl* %cc, %struct.ConsControl** %cc.addr, align 8
  %0 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %tostore = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %0, i32 0, i32 4
  %1 = load i32, i32* %tostore, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.20

if.end:                                           ; preds = %entry
  %2 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %v = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %2, i32 0, i32 0
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v, i32 0, i32 0
  %3 = load i32, i32* %k, align 4
  %cmp1 = icmp eq i32 %3, 13
  br i1 %cmp1, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %v2 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %4, i32 0, i32 0
  %k3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v2, i32 0, i32 0
  %5 = load i32, i32* %k3, align 4
  %cmp4 = icmp eq i32 %5, 14
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %7 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %v6 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %7, i32 0, i32 0
  call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* %v6, i32 -1)
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %9 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %t = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %9, i32 0, i32 1
  %10 = load %struct.expdesc*, %struct.expdesc** %t, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %11 = load i32, i32* %info, align 4
  %12 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %na = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %12, i32 0, i32 3
  %13 = load i32, i32* %na, align 4
  call void @luaK_setlist(%struct.FuncState* %8, i32 %11, i32 %13, i32 -1)
  %14 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %na7 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %14, i32 0, i32 3
  %15 = load i32, i32* %na7, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %na7, align 4
  br label %if.end.20

if.else:                                          ; preds = %lor.lhs.false
  %16 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %v8 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %16, i32 0, i32 0
  %k9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v8, i32 0, i32 0
  %17 = load i32, i32* %k9, align 4
  %cmp10 = icmp ne i32 %17, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else
  %18 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %19 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %v12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %19, i32 0, i32 0
  call void @luaK_exp2nextreg(%struct.FuncState* %18, %struct.expdesc* %v12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else
  %20 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %21 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %t14 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %21, i32 0, i32 1
  %22 = load %struct.expdesc*, %struct.expdesc** %t14, align 8
  %u15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %22, i32 0, i32 1
  %s16 = bitcast %union.anon.3* %u15 to %struct.anon.4*
  %info17 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s16, i32 0, i32 0
  %23 = load i32, i32* %info17, align 4
  %24 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %na18 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %24, i32 0, i32 3
  %25 = load i32, i32* %na18, align 4
  %26 = load %struct.ConsControl*, %struct.ConsControl** %cc.addr, align 8
  %tostore19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %26, i32 0, i32 4
  %27 = load i32, i32* %tostore19, align 4
  call void @luaK_setlist(%struct.FuncState* %20, i32 %23, i32 %25, i32 %27)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then, %if.end.13, %if.then.5
  ret void
}

declare hidden i32 @luaO_int2fb(i32) #1

declare hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @errorlimit(%struct.FuncState* %fs, i32 %limit, i8* %what) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %limit.addr = alloca i32, align 4
  %what.addr = alloca i8*, align 8
  %msg = alloca i8*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %limit, i32* %limit.addr, align 4
  store i8* %what, i8** %what.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 0
  %1 = load %struct.Proto*, %struct.Proto** %f, align 8
  %linedefined = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i32 0, i32 16
  %2 = load i32, i32* %linedefined, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %L = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i32 0, i32 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %5 = load i32, i32* %limit.addr, align 4
  %6 = load i8*, i8** %what.addr, align 8
  %call = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i32 %5, i8* %6)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %L1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 4
  %8 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  %9 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 0
  %10 = load %struct.Proto*, %struct.Proto** %f2, align 8
  %linedefined3 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 16
  %11 = load i32, i32* %linedefined3, align 4
  %12 = load i32, i32* %limit.addr, align 4
  %13 = load i8*, i8** %what.addr, align 8
  %call4 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i32 %11, i32 %12, i8* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call4, %cond.false ]
  store i8* %cond, i8** %msg, align 8
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %ls = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 3
  %15 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %16 = load i8*, i8** %msg, align 8
  call void @luaX_lexerror(%struct.LexState* %15, i8* %16, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @checkname(%struct.LexState* %ls, %struct.expdesc* %e) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %union.TString* @str_checkname(%struct.LexState* %2)
  call void @codestring(%struct.LexState* %0, %struct.expdesc* %1, %union.TString* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yindex(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %0)
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %2 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @expr(%struct.LexState* %1, %struct.expdesc* %2)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_exp2val(%struct.FuncState* %4, %struct.expdesc* %5)
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %6, i32 93)
  ret void
}

declare hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc*) #1

; Function Attrs: nounwind uwtable
define internal %union.TString* @str_checkname(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %ts = alloca %union.TString*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @check(%struct.LexState* %0, i32 285)
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i32 0, i32 3
  %seminfo = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 1
  %ts1 = bitcast %union.SemInfo* %seminfo to %union.TString**
  %2 = load %union.TString*, %union.TString** %ts1, align 8
  store %union.TString* %2, %union.TString** %ts, align 8
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %3)
  %4 = load %union.TString*, %union.TString** %ts, align 8
  ret %union.TString* %4
}

declare hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) #1

declare hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @new_localvar(%struct.LexState* %ls, %union.TString* %name, i32 %n) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %name.addr = alloca %union.TString*, align 8
  %n.addr = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %union.TString* %name, %union.TString** %name.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 13
  %3 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %conv, %4
  %add2 = add nsw i32 %add, 1
  %cmp = icmp sgt i32 %add2, 200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @errorlimit(%struct.FuncState* %5, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %7 = load %union.TString*, %union.TString** %name.addr, align 8
  %call = call i32 @registerlocalvar(%struct.LexState* %6, %union.TString* %7)
  %conv4 = trunc i32 %call to i16
  %8 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 13
  %9 = load i8, i8* %nactvar5, align 1
  %conv6 = zext i8 %9 to i32
  %10 = load i32, i32* %n.addr, align 4
  %add7 = add nsw i32 %conv6, %10
  %idxprom = sext i32 %add7 to i64
  %11 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %actvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 15
  %arrayidx = getelementptr inbounds [200 x i16], [200 x i16]* %actvar, i32 0, i64 %idxprom
  store i16 %conv4, i16* %arrayidx, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @adjustlocalvars(%struct.LexState* %ls, i32 %nvars) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %nvars.addr = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %nvars, i32* %nvars.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 13
  %3 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, i32* %nvars.addr, align 4
  %add = add nsw i32 %conv, %4
  %conv2 = trunc i32 %add to i8
  %5 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 13
  store i8 %conv2, i8* %nactvar3, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %nvars.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 6
  %8 = load i32, i32* %pc, align 4
  %9 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 13
  %10 = load i8, i8* %nactvar4, align 1
  %conv5 = zext i8 %10 to i32
  %11 = load i32, i32* %nvars.addr, align 4
  %sub = sub nsw i32 %conv5, %11
  %idxprom = sext i32 %sub to i64
  %12 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %actvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 15
  %arrayidx = getelementptr inbounds [200 x i16], [200 x i16]* %actvar, i32 0, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %idxprom6 = zext i16 %13 to i64
  %14 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %15 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i32 0, i32 7
  %16 = load %struct.LocVar*, %struct.LocVar** %locvars, align 8
  %arrayidx7 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %16, i64 %idxprom6
  %startpc = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx7, i32 0, i32 1
  store i32 %8, i32* %startpc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %nvars.addr, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %nvars.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parlist(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %f = alloca %struct.Proto*, align 8
  %nparams = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 0
  %3 = load %struct.Proto*, %struct.Proto** %f2, align 8
  store %struct.Proto* %3, %struct.Proto** %f, align 8
  store i32 0, i32* %nparams, align 4
  %4 = load %struct.Proto*, %struct.Proto** %f, align 8
  %is_vararg = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i32 0, i32 21
  store i8 0, i8* %is_vararg, align 1
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %6 = load i32, i32* %token, align 4
  %cmp = icmp ne i32 %6, 41
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t3 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 3
  %token4 = getelementptr inbounds %struct.Token, %struct.Token* %t3, i32 0, i32 0
  %8 = load i32, i32* %token4, align 4
  switch i32 %8, label %sw.default [
    i32 285, label %sw.bb
    i32 279, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %do.body
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %union.TString* @str_checkname(%struct.LexState* %10)
  %11 = load i32, i32* %nparams, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %nparams, align 4
  call void @new_localvar(%struct.LexState* %9, %union.TString* %call, i32 %11)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %do.body
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %12)
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call6 = call %union.TString* @luaX_newstring(%struct.LexState* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i64 3)
  %15 = load i32, i32* %nparams, align 4
  %inc7 = add nsw i32 %15, 1
  store i32 %inc7, i32* %nparams, align 4
  call void @new_localvar(%struct.LexState* %13, %union.TString* %call6, i32 %15)
  %16 = load %struct.Proto*, %struct.Proto** %f, align 8
  %is_vararg8 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 21
  store i8 5, i8* %is_vararg8, align 1
  %17 = load %struct.Proto*, %struct.Proto** %f, align 8
  %is_vararg9 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 21
  %18 = load i8, i8* %is_vararg9, align 1
  %conv = zext i8 %18 to i32
  %or = or i32 %conv, 2
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %is_vararg9, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %19 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_syntaxerror(%struct.LexState* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %20 = load %struct.Proto*, %struct.Proto** %f, align 8
  %is_vararg11 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 21
  %21 = load i8, i8* %is_vararg11, align 1
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %22 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call12 = call i32 @testnext(%struct.LexState* %22, i32 44)
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %23 = phi i1 [ false, %do.cond ], [ %tobool13, %land.rhs ]
  br i1 %23, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %24 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %25 = load i32, i32* %nparams, align 4
  call void @adjustlocalvars(%struct.LexState* %24, i32 %25)
  %26 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %26, i32 0, i32 13
  %27 = load i8, i8* %nactvar, align 1
  %conv14 = zext i8 %27 to i32
  %28 = load %struct.Proto*, %struct.Proto** %f, align 8
  %is_vararg15 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 21
  %29 = load i8, i8* %is_vararg15, align 1
  %conv16 = zext i8 %29 to i32
  %and = and i32 %conv16, 1
  %sub = sub nsw i32 %conv14, %and
  %conv17 = trunc i32 %sub to i8
  %30 = load %struct.Proto*, %struct.Proto** %f, align 8
  %numparams = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 20
  store i8 %conv17, i8* %numparams, align 1
  %31 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %32 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nactvar18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %32, i32 0, i32 13
  %33 = load i8, i8* %nactvar18, align 1
  %conv19 = zext i8 %33 to i32
  call void @luaK_reserveregs(%struct.FuncState* %31, i32 %conv19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pushclosure(%struct.LexState* %ls, %struct.FuncState* %func, %struct.expdesc* %v) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %func.addr = alloca %struct.FuncState*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %f = alloca %struct.Proto*, align 8
  %oldsize = alloca i32, align 4
  %i = alloca i32, align 4
  %o = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.FuncState* %func, %struct.FuncState** %func.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 0
  %3 = load %struct.Proto*, %struct.Proto** %f2, align 8
  store %struct.Proto* %3, %struct.Proto** %f, align 8
  %4 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizep = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i32 0, i32 14
  %5 = load i32, i32* %sizep, align 4
  store i32 %5, i32* %oldsize, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %np = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 11
  %7 = load i32, i32* %np, align 4
  %add = add nsw i32 %7, 1
  %8 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizep3 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 14
  %9 = load i32, i32* %sizep3, align 4
  %cmp = icmp sgt i32 %add, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 6
  %11 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %12 = load %struct.Proto*, %struct.Proto** %f, align 8
  %p = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 5
  %13 = load %struct.Proto**, %struct.Proto*** %p, align 8
  %14 = bitcast %struct.Proto** %13 to i8*
  %15 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizep4 = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i32 0, i32 14
  %call = call i8* @luaM_growaux_(%struct.lua_State* %11, i8* %14, i32* %sizep4, i64 8, i32 262143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0))
  %16 = bitcast i8* %call to %struct.Proto**
  %17 = load %struct.Proto*, %struct.Proto** %f, align 8
  %p5 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 5
  store %struct.Proto** %16, %struct.Proto*** %p5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load i32, i32* %oldsize, align 4
  %19 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizep6 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 14
  %20 = load i32, i32* %sizep6, align 4
  %cmp7 = icmp slt i32 %18, %20
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %oldsize, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %oldsize, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.Proto*, %struct.Proto** %f, align 8
  %p8 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 5
  %23 = load %struct.Proto**, %struct.Proto*** %p8, align 8
  %arrayidx = getelementptr inbounds %struct.Proto*, %struct.Proto** %23, i64 %idxprom
  store %struct.Proto* null, %struct.Proto** %arrayidx, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %struct.FuncState*, %struct.FuncState** %func.addr, align 8
  %f9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i32 0, i32 0
  %25 = load %struct.Proto*, %struct.Proto** %f9, align 8
  %26 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %np10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %26, i32 0, i32 11
  %27 = load i32, i32* %np10, align 4
  %inc11 = add nsw i32 %27, 1
  store i32 %inc11, i32* %np10, align 4
  %idxprom12 = sext i32 %27 to i64
  %28 = load %struct.Proto*, %struct.Proto** %f, align 8
  %p13 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 5
  %29 = load %struct.Proto**, %struct.Proto*** %p13, align 8
  %arrayidx14 = getelementptr inbounds %struct.Proto*, %struct.Proto** %29, i64 %idxprom12
  store %struct.Proto* %25, %struct.Proto** %arrayidx14, align 8
  %30 = load %struct.FuncState*, %struct.FuncState** %func.addr, align 8
  %f15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %30, i32 0, i32 0
  %31 = load %struct.Proto*, %struct.Proto** %f15, align 8
  %32 = bitcast %struct.Proto* %31 to %union.GCObject*
  %gch = bitcast %union.GCObject* %32 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %33 = load i8, i8* %marked, align 1
  %conv = zext i8 %33 to i32
  %and = and i32 %conv, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %while.end
  %34 = load %struct.Proto*, %struct.Proto** %f, align 8
  %35 = bitcast %struct.Proto* %34 to %union.GCObject*
  %gch16 = bitcast %union.GCObject* %35 to %struct.GCheader*
  %marked17 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch16, i32 0, i32 2
  %36 = load i8, i8* %marked17, align 1
  %conv18 = zext i8 %36 to i32
  %and19 = and i32 %conv18, 4
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %land.lhs.true
  %37 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L22 = getelementptr inbounds %struct.LexState, %struct.LexState* %37, i32 0, i32 6
  %38 = load %struct.lua_State*, %struct.lua_State** %L22, align 8
  %39 = load %struct.Proto*, %struct.Proto** %f, align 8
  %40 = bitcast %struct.Proto* %39 to %union.GCObject*
  %41 = load %struct.FuncState*, %struct.FuncState** %func.addr, align 8
  %f23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %41, i32 0, i32 0
  %42 = load %struct.Proto*, %struct.Proto** %f23, align 8
  %43 = bitcast %struct.Proto* %42 to %union.GCObject*
  call void @luaC_barrierf(%struct.lua_State* %38, %union.GCObject* %40, %union.GCObject* %43)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %land.lhs.true, %while.end
  %44 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %45 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %46 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %np25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %46, i32 0, i32 11
  %47 = load i32, i32* %np25, align 4
  %sub = sub nsw i32 %47, 1
  %call26 = call i32 @luaK_codeABx(%struct.FuncState* %45, i32 36, i32 0, i32 %sub)
  call void @init_exp(%struct.expdesc* %44, i32 11, i32 %call26)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.FuncState*, %struct.FuncState** %func.addr, align 8
  %f27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %49, i32 0, i32 0
  %50 = load %struct.Proto*, %struct.Proto** %f27, align 8
  %nups = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 19
  %51 = load i8, i8* %nups, align 1
  %conv28 = zext i8 %51 to i32
  %cmp29 = icmp slt i32 %48, %conv28
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %52 to i64
  %53 = load %struct.FuncState*, %struct.FuncState** %func.addr, align 8
  %upvalues = getelementptr inbounds %struct.FuncState, %struct.FuncState* %53, i32 0, i32 14
  %arrayidx32 = getelementptr inbounds [60 x %struct.upvaldesc], [60 x %struct.upvaldesc]* %upvalues, i32 0, i64 %idxprom31
  %k = getelementptr inbounds %struct.upvaldesc, %struct.upvaldesc* %arrayidx32, i32 0, i32 0
  %54 = load i8, i8* %k, align 1
  %conv33 = zext i8 %54 to i32
  %cmp34 = icmp eq i32 %conv33, 6
  %cond = select i1 %cmp34, i32 0, i32 4
  store i32 %cond, i32* %o, align 4
  %55 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %56 = load i32, i32* %o, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %57 to i64
  %58 = load %struct.FuncState*, %struct.FuncState** %func.addr, align 8
  %upvalues37 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %58, i32 0, i32 14
  %arrayidx38 = getelementptr inbounds [60 x %struct.upvaldesc], [60 x %struct.upvaldesc]* %upvalues37, i32 0, i64 %idxprom36
  %info = getelementptr inbounds %struct.upvaldesc, %struct.upvaldesc* %arrayidx38, i32 0, i32 1
  %59 = load i8, i8* %info, align 1
  %conv39 = zext i8 %59 to i32
  %call40 = call i32 @luaK_codeABC(%struct.FuncState* %55, i32 %56, i32 0, i32 %conv39, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %60, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @registerlocalvar(%struct.LexState* %ls, %union.TString* %varname) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %varname.addr = alloca %union.TString*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %f = alloca %struct.Proto*, align 8
  %oldsize = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %union.TString* %varname, %union.TString** %varname.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %f2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 0
  %3 = load %struct.Proto*, %struct.Proto** %f2, align 8
  store %struct.Proto* %3, %struct.Proto** %f, align 8
  %4 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelocvars = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i32 0, i32 15
  %5 = load i32, i32* %sizelocvars, align 4
  store i32 %5, i32* %oldsize, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nlocvars = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 12
  %7 = load i16, i16* %nlocvars, align 2
  %conv = sext i16 %7 to i32
  %add = add nsw i32 %conv, 1
  %8 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelocvars3 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 15
  %9 = load i32, i32* %sizelocvars3, align 4
  %cmp = icmp sgt i32 %add, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 6
  %11 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %12 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 7
  %13 = load %struct.LocVar*, %struct.LocVar** %locvars, align 8
  %14 = bitcast %struct.LocVar* %13 to i8*
  %15 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelocvars5 = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i32 0, i32 15
  %call = call i8* @luaM_growaux_(%struct.lua_State* %11, i8* %14, i32* %sizelocvars5, i64 16, i32 32767, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  %16 = bitcast i8* %call to %struct.LocVar*
  %17 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars6 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 7
  store %struct.LocVar* %16, %struct.LocVar** %locvars6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load i32, i32* %oldsize, align 4
  %19 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelocvars7 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 15
  %20 = load i32, i32* %sizelocvars7, align 4
  %cmp8 = icmp slt i32 %18, %20
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %oldsize, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %oldsize, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars10 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 7
  %23 = load %struct.LocVar*, %struct.LocVar** %locvars10, align 8
  %arrayidx = getelementptr inbounds %struct.LocVar, %struct.LocVar* %23, i64 %idxprom
  %varname11 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx, i32 0, i32 0
  store %union.TString* null, %union.TString** %varname11, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %union.TString*, %union.TString** %varname.addr, align 8
  %25 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nlocvars12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %25, i32 0, i32 12
  %26 = load i16, i16* %nlocvars12, align 2
  %idxprom13 = sext i16 %26 to i64
  %27 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars14 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 7
  %28 = load %struct.LocVar*, %struct.LocVar** %locvars14, align 8
  %arrayidx15 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %28, i64 %idxprom13
  %varname16 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx15, i32 0, i32 0
  store %union.TString* %24, %union.TString** %varname16, align 8
  %29 = load %union.TString*, %union.TString** %varname.addr, align 8
  %30 = bitcast %union.TString* %29 to %union.GCObject*
  %gch = bitcast %union.GCObject* %30 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %31 = load i8, i8* %marked, align 1
  %conv17 = zext i8 %31 to i32
  %and = and i32 %conv17, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %while.end
  %32 = load %struct.Proto*, %struct.Proto** %f, align 8
  %33 = bitcast %struct.Proto* %32 to %union.GCObject*
  %gch18 = bitcast %union.GCObject* %33 to %struct.GCheader*
  %marked19 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch18, i32 0, i32 2
  %34 = load i8, i8* %marked19, align 1
  %conv20 = zext i8 %34 to i32
  %and21 = and i32 %conv20, 4
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %land.lhs.true
  %35 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L24 = getelementptr inbounds %struct.LexState, %struct.LexState* %35, i32 0, i32 6
  %36 = load %struct.lua_State*, %struct.lua_State** %L24, align 8
  %37 = load %struct.Proto*, %struct.Proto** %f, align 8
  %38 = bitcast %struct.Proto* %37 to %union.GCObject*
  %39 = load %union.TString*, %union.TString** %varname.addr, align 8
  %40 = bitcast %union.TString* %39 to %union.GCObject*
  call void @luaC_barrierf(%struct.lua_State* %36, %union.GCObject* %38, %union.GCObject* %40)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %land.lhs.true, %while.end
  %41 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %nlocvars26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %41, i32 0, i32 12
  %42 = load i16, i16* %nlocvars26, align 2
  %inc27 = add i16 %42, 1
  store i16 %inc27, i16* %nlocvars26, align 2
  %conv28 = sext i16 %42 to i32
  ret i32 %conv28
}

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32*, i64, i32, i8*) #1

declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) #1

declare hidden void @luaK_reserveregs(%struct.FuncState*, i32) #1

declare hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @prefixexp(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  %line = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %1 = load i32, i32* %token, align 4
  switch i32 %1, label %sw.default [
    i32 40, label %sw.bb
    i32 285, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 1
  %3 = load i32, i32* %linenumber, align 4
  store i32 %3, i32* %line, align 4
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %4)
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @expr(%struct.LexState* %5, %struct.expdesc* %6)
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %8 = load i32, i32* %line, align 4
  call void @check_match(%struct.LexState* %7, i32 41, i32 40, i32 %8)
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_dischargevars(%struct.FuncState* %10, %struct.expdesc* %11)
  br label %return

sw.bb.1:                                          ; preds = %entry
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @singlevar(%struct.LexState* %12, %struct.expdesc* %13)
  br label %return

sw.default:                                       ; preds = %entry
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_syntaxerror(%struct.LexState* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @field(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %key = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %call = call i32 @luaK_exp2anyreg(%struct.FuncState* %2, %struct.expdesc* %3)
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %4)
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checkname(%struct.LexState* %5, %struct.expdesc* %key)
  %6 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_indexed(%struct.FuncState* %6, %struct.expdesc* %7, %struct.expdesc* %key)
  ret void
}

declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) #1

declare hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #1

declare hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #1

; Function Attrs: nounwind uwtable
define internal void @funcargs(%struct.LexState* %ls, %struct.expdesc* %f) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %f.addr = alloca %struct.expdesc*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %args = alloca %struct.expdesc, align 8
  %base = alloca i32, align 4
  %nparams = alloca i32, align 4
  %line = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %f, %struct.expdesc** %f.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 1
  %3 = load i32, i32* %linenumber, align 4
  store i32 %3, i32* %line, align 4
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %5 = load i32, i32* %token, align 4
  switch i32 %5, label %sw.default [
    i32 40, label %sw.bb
    i32 123, label %sw.bb.7
    i32 286, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %6 = load i32, i32* %line, align 4
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %lastline = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 2
  %8 = load i32, i32* %lastline, align 4
  %cmp = icmp ne i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_syntaxerror(%struct.LexState* %9, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %10)
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t2 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 3
  %token3 = getelementptr inbounds %struct.Token, %struct.Token* %t2, i32 0, i32 0
  %12 = load i32, i32* %token3, align 4
  %cmp4 = icmp eq i32 %12, 41
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %args, i32 0, i32 0
  store i32 0, i32* %k, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call i32 @explist1(%struct.LexState* %13, %struct.expdesc* %args)
  %14 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_setreturns(%struct.FuncState* %14, %struct.expdesc* %args, i32 -1)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %15 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %16 = load i32, i32* %line, align 4
  call void @check_match(%struct.LexState* %15, i32 41, i32 40, i32 %16)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @constructor(%struct.LexState* %17, %struct.expdesc* %args)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %18 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %19 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t9 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 3
  %seminfo = getelementptr inbounds %struct.Token, %struct.Token* %t9, i32 0, i32 1
  %ts = bitcast %union.SemInfo* %seminfo to %union.TString**
  %20 = load %union.TString*, %union.TString** %ts, align 8
  call void @codestring(%struct.LexState* %18, %struct.expdesc* %args, %union.TString* %20)
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_next(%struct.LexState* %21)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_syntaxerror(%struct.LexState* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0))
  br label %return

sw.epilog:                                        ; preds = %sw.bb.8, %sw.bb.7, %if.end.6
  %23 = load %struct.expdesc*, %struct.expdesc** %f.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %24 = load i32, i32* %info, align 4
  store i32 %24, i32* %base, align 4
  %k10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %args, i32 0, i32 0
  %25 = load i32, i32* %k10, align 4
  %cmp11 = icmp eq i32 %25, 13
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %k12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %args, i32 0, i32 0
  %26 = load i32, i32* %k12, align 4
  %cmp13 = icmp eq i32 %26, 14
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %sw.epilog
  store i32 -1, i32* %nparams, align 4
  br label %if.end.20

if.else.15:                                       ; preds = %lor.lhs.false
  %k16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %args, i32 0, i32 0
  %27 = load i32, i32* %k16, align 4
  %cmp17 = icmp ne i32 %27, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else.15
  %28 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %28, %struct.expdesc* %args)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else.15
  %29 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i32 0, i32 9
  %30 = load i32, i32* %freereg, align 4
  %31 = load i32, i32* %base, align 4
  %add = add nsw i32 %31, 1
  %sub = sub nsw i32 %30, %add
  store i32 %sub, i32* %nparams, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.14
  %32 = load %struct.expdesc*, %struct.expdesc** %f.addr, align 8
  %33 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %34 = load i32, i32* %base, align 4
  %35 = load i32, i32* %nparams, align 4
  %add21 = add nsw i32 %35, 1
  %call22 = call i32 @luaK_codeABC(%struct.FuncState* %33, i32 28, i32 %34, i32 %add21, i32 2)
  call void @init_exp(%struct.expdesc* %32, i32 13, i32 %call22)
  %36 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %37 = load i32, i32* %line, align 4
  call void @luaK_fixline(%struct.FuncState* %36, i32 %37)
  %38 = load i32, i32* %base, align 4
  %add23 = add nsw i32 %38, 1
  %39 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %freereg24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %39, i32 0, i32 9
  store i32 %add23, i32* %freereg24, align 4
  br label %return

return:                                           ; preds = %if.end.20, %sw.default
  ret void
}

declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) #1

; Function Attrs: nounwind uwtable
define internal void @singlevar(%struct.LexState* %ls, %struct.expdesc* %var) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %var.addr = alloca %struct.expdesc*, align 8
  %varname = alloca %union.TString*, align 8
  %fs = alloca %struct.FuncState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %var, %struct.expdesc** %var.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %union.TString* @str_checkname(%struct.LexState* %0)
  store %union.TString* %call, %union.TString** %varname, align 8
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i32 0, i32 5
  %2 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %2, %struct.FuncState** %fs, align 8
  %3 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %4 = load %union.TString*, %union.TString** %varname, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %call2 = call i32 @singlevaraux(%struct.FuncState* %3, %union.TString* %4, %struct.expdesc* %5, i32 1)
  %cmp = icmp eq i32 %call2, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %7 = load %union.TString*, %union.TString** %varname, align 8
  %call3 = call i32 @luaK_stringK(%struct.FuncState* %6, %union.TString* %7)
  %8 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  store i32 %call3, i32* %info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @singlevaraux(%struct.FuncState* %fs, %union.TString* %n, %struct.expdesc* %var, i32 %base) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.FuncState*, align 8
  %n.addr = alloca %union.TString*, align 8
  %var.addr = alloca %struct.expdesc*, align 8
  %base.addr = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %union.TString* %n, %union.TString** %n.addr, align 8
  store %struct.expdesc* %var, %struct.expdesc** %var.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %cmp = icmp eq %struct.FuncState* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  call void @init_exp(%struct.expdesc* %1, i32 8, i32 255)
  store i32 8, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %3 = load %union.TString*, %union.TString** %n.addr, align 8
  %call = call i32 @searchvar(%struct.FuncState* %2, %union.TString* %3)
  store i32 %call, i32* %v, align 4
  %4 = load i32, i32* %v, align 4
  %cmp1 = icmp sge i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %5 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %6 = load i32, i32* %v, align 4
  call void @init_exp(%struct.expdesc* %5, i32 6, i32 %6)
  %7 = load i32, i32* %base.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then.2
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %9 = load i32, i32* %v, align 4
  call void @markupval(%struct.FuncState* %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then.2
  store i32 6, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %10 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %prev = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 2
  %11 = load %struct.FuncState*, %struct.FuncState** %prev, align 8
  %12 = load %union.TString*, %union.TString** %n.addr, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %call5 = call i32 @singlevaraux(%struct.FuncState* %11, %union.TString* %12, %struct.expdesc* %13, i32 0)
  %cmp6 = icmp eq i32 %call5, 8
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else.4
  store i32 8, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.else.4
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %15 = load %union.TString*, %union.TString** %n.addr, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %call9 = call i32 @indexupvalue(%struct.FuncState* %14, %union.TString* %15, %struct.expdesc* %16)
  %17 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  store i32 %call9, i32* %info, align 4
  %18 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 0
  store i32 7, i32* %k, align 4
  store i32 7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @searchvar(%struct.FuncState* %fs, %union.TString* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.FuncState*, align 8
  %n.addr = alloca %union.TString*, align 8
  %i = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %union.TString* %n, %union.TString** %n.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 13
  %1 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.TString*, %union.TString** %n.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %actvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 15
  %arrayidx = getelementptr inbounds [200 x i16], [200 x i16]* %actvar, i32 0, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %idxprom2 = zext i16 %6 to i64
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %f, align 8
  %locvars = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 7
  %9 = load %struct.LocVar*, %struct.LocVar** %locvars, align 8
  %arrayidx3 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %9, i64 %idxprom2
  %varname = getelementptr inbounds %struct.LocVar, %struct.LocVar* %arrayidx3, i32 0, i32 0
  %10 = load %union.TString*, %union.TString** %varname, align 8
  %cmp4 = icmp eq %union.TString* %3, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @markupval(%struct.FuncState* %fs, i32 %level) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %level.addr = alloca i32, align 4
  %bl = alloca %struct.BlockCnt*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %bl1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 5
  %1 = load %struct.BlockCnt*, %struct.BlockCnt** %bl1, align 8
  store %struct.BlockCnt* %1, %struct.BlockCnt** %bl, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %tobool = icmp ne %struct.BlockCnt* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %nactvar = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i32 0, i32 2
  %4 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, i32* %level.addr, align 4
  %cmp = icmp sgt i32 %conv, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %previous = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i32 0, i32 0
  %8 = load %struct.BlockCnt*, %struct.BlockCnt** %previous, align 8
  store %struct.BlockCnt* %8, %struct.BlockCnt** %bl, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %tobool3 = icmp ne %struct.BlockCnt* %9, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %upval = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %10, i32 0, i32 3
  store i8 1, i8* %upval, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @indexupvalue(%struct.FuncState* %fs, %union.TString* %name, %struct.expdesc* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.FuncState*, align 8
  %name.addr = alloca %union.TString*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  %i = alloca i32, align 4
  %f = alloca %struct.Proto*, align 8
  %oldsize = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %union.TString* %name, %union.TString** %name.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 0
  %1 = load %struct.Proto*, %struct.Proto** %f1, align 8
  store %struct.Proto* %1, %struct.Proto** %f, align 8
  %2 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizeupvalues = getelementptr inbounds %struct.Proto, %struct.Proto* %2, i32 0, i32 10
  %3 = load i32, i32* %sizeupvalues, align 4
  store i32 %3, i32* %oldsize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i32 0, i32 19
  %6 = load i8, i8* %nups, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp slt i32 %4, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %upvalues = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 14
  %arrayidx = getelementptr inbounds [60 x %struct.upvaldesc], [60 x %struct.upvaldesc]* %upvalues, i32 0, i64 %idxprom
  %k = getelementptr inbounds %struct.upvaldesc, %struct.upvaldesc* %arrayidx, i32 0, i32 0
  %9 = load i8, i8* %k, align 1
  %conv3 = zext i8 %9 to i32
  %10 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %k4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 0
  %11 = load i32, i32* %k4, align 4
  %cmp5 = icmp eq i32 %conv3, %11
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %upvalues8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 14
  %arrayidx9 = getelementptr inbounds [60 x %struct.upvaldesc], [60 x %struct.upvaldesc]* %upvalues8, i32 0, i64 %idxprom7
  %info = getelementptr inbounds %struct.upvaldesc, %struct.upvaldesc* %arrayidx9, i32 0, i32 1
  %14 = load i8, i8* %info, align 1
  %conv10 = zext i8 %14 to i32
  %15 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %15, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info11 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %16 = load i32, i32* %info11, align 4
  %cmp12 = icmp eq i32 %conv10, %16
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups14 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 19
  %20 = load i8, i8* %nups14, align 1
  %conv15 = zext i8 %20 to i32
  %add = add nsw i32 %conv15, 1
  %cmp16 = icmp sgt i32 %add, 60
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  %21 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  call void @errorlimit(%struct.FuncState* %21, i32 60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.end
  %22 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups20 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 19
  %23 = load i8, i8* %nups20, align 1
  %conv21 = zext i8 %23 to i32
  %add22 = add nsw i32 %conv21, 1
  %24 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizeupvalues23 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 10
  %25 = load i32, i32* %sizeupvalues23, align 4
  %cmp24 = icmp sgt i32 %add22, %25
  br i1 %cmp24, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.19
  %26 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %L = getelementptr inbounds %struct.FuncState, %struct.FuncState* %26, i32 0, i32 4
  %27 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %28 = load %struct.Proto*, %struct.Proto** %f, align 8
  %upvalues27 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 8
  %29 = load %union.TString**, %union.TString*** %upvalues27, align 8
  %30 = bitcast %union.TString** %29 to i8*
  %31 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizeupvalues28 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 10
  %call = call i8* @luaM_growaux_(%struct.lua_State* %27, i8* %30, i32* %sizeupvalues28, i64 8, i32 2147483645, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0))
  %32 = bitcast i8* %call to %union.TString**
  %33 = load %struct.Proto*, %struct.Proto** %f, align 8
  %upvalues29 = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i32 0, i32 8
  store %union.TString** %32, %union.TString*** %upvalues29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.end.19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.30
  %34 = load i32, i32* %oldsize, align 4
  %35 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizeupvalues31 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i32 0, i32 10
  %36 = load i32, i32* %sizeupvalues31, align 4
  %cmp32 = icmp slt i32 %34, %36
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %oldsize, align 4
  %inc34 = add nsw i32 %37, 1
  store i32 %inc34, i32* %oldsize, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.Proto*, %struct.Proto** %f, align 8
  %upvalues36 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 8
  %39 = load %union.TString**, %union.TString*** %upvalues36, align 8
  %arrayidx37 = getelementptr inbounds %union.TString*, %union.TString** %39, i64 %idxprom35
  store %union.TString* null, %union.TString** %arrayidx37, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %union.TString*, %union.TString** %name.addr, align 8
  %41 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups38 = getelementptr inbounds %struct.Proto, %struct.Proto* %41, i32 0, i32 19
  %42 = load i8, i8* %nups38, align 1
  %idxprom39 = zext i8 %42 to i64
  %43 = load %struct.Proto*, %struct.Proto** %f, align 8
  %upvalues40 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 8
  %44 = load %union.TString**, %union.TString*** %upvalues40, align 8
  %arrayidx41 = getelementptr inbounds %union.TString*, %union.TString** %44, i64 %idxprom39
  store %union.TString* %40, %union.TString** %arrayidx41, align 8
  %45 = load %union.TString*, %union.TString** %name.addr, align 8
  %46 = bitcast %union.TString* %45 to %union.GCObject*
  %gch = bitcast %union.GCObject* %46 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %47 = load i8, i8* %marked, align 1
  %conv42 = zext i8 %47 to i32
  %and = and i32 %conv42, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true.43, label %if.end.51

land.lhs.true.43:                                 ; preds = %while.end
  %48 = load %struct.Proto*, %struct.Proto** %f, align 8
  %49 = bitcast %struct.Proto* %48 to %union.GCObject*
  %gch44 = bitcast %union.GCObject* %49 to %struct.GCheader*
  %marked45 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch44, i32 0, i32 2
  %50 = load i8, i8* %marked45, align 1
  %conv46 = zext i8 %50 to i32
  %and47 = and i32 %conv46, 4
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %land.lhs.true.43
  %51 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %L50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %51, i32 0, i32 4
  %52 = load %struct.lua_State*, %struct.lua_State** %L50, align 8
  %53 = load %struct.Proto*, %struct.Proto** %f, align 8
  %54 = bitcast %struct.Proto* %53 to %union.GCObject*
  %55 = load %union.TString*, %union.TString** %name.addr, align 8
  %56 = bitcast %union.TString* %55 to %union.GCObject*
  call void @luaC_barrierf(%struct.lua_State* %52, %union.GCObject* %54, %union.GCObject* %56)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %land.lhs.true.43, %while.end
  %57 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %k52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %57, i32 0, i32 0
  %58 = load i32, i32* %k52, align 4
  %conv53 = trunc i32 %58 to i8
  %59 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups54 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i32 0, i32 19
  %60 = load i8, i8* %nups54, align 1
  %idxprom55 = zext i8 %60 to i64
  %61 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %upvalues56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i32 0, i32 14
  %arrayidx57 = getelementptr inbounds [60 x %struct.upvaldesc], [60 x %struct.upvaldesc]* %upvalues56, i32 0, i64 %idxprom55
  %k58 = getelementptr inbounds %struct.upvaldesc, %struct.upvaldesc* %arrayidx57, i32 0, i32 0
  store i8 %conv53, i8* %k58, align 1
  %62 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %u59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %62, i32 0, i32 1
  %s60 = bitcast %union.anon.3* %u59 to %struct.anon.4*
  %info61 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s60, i32 0, i32 0
  %63 = load i32, i32* %info61, align 4
  %conv62 = trunc i32 %63 to i8
  %64 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups63 = getelementptr inbounds %struct.Proto, %struct.Proto* %64, i32 0, i32 19
  %65 = load i8, i8* %nups63, align 1
  %idxprom64 = zext i8 %65 to i64
  %66 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %upvalues65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %66, i32 0, i32 14
  %arrayidx66 = getelementptr inbounds [60 x %struct.upvaldesc], [60 x %struct.upvaldesc]* %upvalues65, i32 0, i64 %idxprom64
  %info67 = getelementptr inbounds %struct.upvaldesc, %struct.upvaldesc* %arrayidx66, i32 0, i32 1
  store i8 %conv62, i8* %info67, align 1
  %67 = load %struct.Proto*, %struct.Proto** %f, align 8
  %nups68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i32 0, i32 19
  %68 = load i8, i8* %nups68, align 1
  %inc69 = add i8 %68, 1
  store i8 %inc69, i8* %nups68, align 1
  %conv70 = zext i8 %68 to i32
  store i32 %conv70, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @explist1(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  %n = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  store i32 1, i32* %n, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @expr(%struct.LexState* %0, %struct.expdesc* %1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call i32 @testnext(%struct.LexState* %2, i32 44)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %4, %struct.expdesc* %5)
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @expr(%struct.LexState* %6, %struct.expdesc* %7)
  %8 = load i32, i32* %n, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %n, align 4
  ret i32 %9
}

declare hidden void @luaK_fixline(%struct.FuncState*, i32) #1

declare hidden i32 @luaK_getlabel(%struct.FuncState*) #1

; Function Attrs: nounwind uwtable
define internal void @enterblock(%struct.FuncState* %fs, %struct.BlockCnt* %bl, i8 zeroext %isbreakable) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %bl.addr = alloca %struct.BlockCnt*, align 8
  %isbreakable.addr = alloca i8, align 1
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.BlockCnt* %bl, %struct.BlockCnt** %bl.addr, align 8
  store i8 %isbreakable, i8* %isbreakable.addr, align 1
  %0 = load %struct.BlockCnt*, %struct.BlockCnt** %bl.addr, align 8
  %breaklist = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %0, i32 0, i32 1
  store i32 -1, i32* %breaklist, align 4
  %1 = load i8, i8* %isbreakable.addr, align 1
  %2 = load %struct.BlockCnt*, %struct.BlockCnt** %bl.addr, align 8
  %isbreakable1 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i32 0, i32 4
  store i8 %1, i8* %isbreakable1, align 1
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i32 0, i32 13
  %4 = load i8, i8* %nactvar, align 1
  %5 = load %struct.BlockCnt*, %struct.BlockCnt** %bl.addr, align 8
  %nactvar2 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %5, i32 0, i32 2
  store i8 %4, i8* %nactvar2, align 1
  %6 = load %struct.BlockCnt*, %struct.BlockCnt** %bl.addr, align 8
  %upval = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i32 0, i32 3
  store i8 0, i8* %upval, align 1
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %bl3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 5
  %8 = load %struct.BlockCnt*, %struct.BlockCnt** %bl3, align 8
  %9 = load %struct.BlockCnt*, %struct.BlockCnt** %bl.addr, align 8
  %previous = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i32 0, i32 0
  store %struct.BlockCnt* %8, %struct.BlockCnt** %previous, align 8
  %10 = load %struct.BlockCnt*, %struct.BlockCnt** %bl.addr, align 8
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %bl4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 5
  store %struct.BlockCnt* %10, %struct.BlockCnt** %bl4, align 8
  ret void
}

declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @leaveblock(%struct.FuncState* %fs) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %bl = alloca %struct.BlockCnt*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %bl1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 5
  %1 = load %struct.BlockCnt*, %struct.BlockCnt** %bl1, align 8
  store %struct.BlockCnt* %1, %struct.BlockCnt** %bl, align 8
  %2 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %previous = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i32 0, i32 0
  %3 = load %struct.BlockCnt*, %struct.BlockCnt** %previous, align 8
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %bl2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 5
  store %struct.BlockCnt* %3, %struct.BlockCnt** %bl2, align 8
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %ls = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 3
  %6 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %7 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %nactvar = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i32 0, i32 2
  %8 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %8 to i32
  call void @removevars(%struct.LexState* %6, i32 %conv)
  %9 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %upval = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i32 0, i32 3
  %10 = load i8, i8* %upval, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %12 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %nactvar3 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %12, i32 0, i32 2
  %13 = load i8, i8* %nactvar3, align 1
  %conv4 = zext i8 %13 to i32
  %call = call i32 @luaK_codeABC(%struct.FuncState* %11, i32 35, i32 %conv4, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nactvar5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 13
  %15 = load i8, i8* %nactvar5, align 1
  %conv6 = zext i8 %15 to i32
  %16 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 9
  store i32 %conv6, i32* %freereg, align 4
  %17 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %18 = load %struct.BlockCnt*, %struct.BlockCnt** %bl, align 8
  %breaklist = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i32 0, i32 1
  %19 = load i32, i32* %breaklist, align 4
  call void @luaK_patchtohere(%struct.FuncState* %17, i32 %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fornum(%struct.LexState* %ls, %union.TString* %varname, i32 %line) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %varname.addr = alloca %union.TString*, align 8
  %line.addr = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 8
  %base = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %union.TString* %varname, %union.TString** %varname.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 9
  %3 = load i32, i32* %freereg, align 4
  store i32 %3, i32* %base, align 4
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %union.TString* @luaX_newstring(%struct.LexState* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i64 11)
  call void @new_localvar(%struct.LexState* %4, %union.TString* %call, i32 0)
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call2 = call %union.TString* @luaX_newstring(%struct.LexState* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i64 11)
  call void @new_localvar(%struct.LexState* %6, %union.TString* %call2, i32 1)
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call3 = call %union.TString* @luaX_newstring(%struct.LexState* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i64 10)
  call void @new_localvar(%struct.LexState* %8, %union.TString* %call3, i32 2)
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %11 = load %union.TString*, %union.TString** %varname.addr, align 8
  call void @new_localvar(%struct.LexState* %10, %union.TString* %11, i32 3)
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %12, i32 61)
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call4 = call i32 @exp1(%struct.LexState* %13)
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %14, i32 44)
  %15 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call5 = call i32 @exp1(%struct.LexState* %15)
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call6 = call i32 @testnext(%struct.LexState* %16, i32 44)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call7 = call i32 @exp1(%struct.LexState* %17)
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %19 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %freereg8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %19, i32 0, i32 9
  %20 = load i32, i32* %freereg8, align 4
  %21 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call9 = call i32 @luaK_numberK(%struct.FuncState* %21, double 1.000000e+00)
  %call10 = call i32 @luaK_codeABx(%struct.FuncState* %18, i32 1, i32 %20, i32 %call9)
  %22 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_reserveregs(%struct.FuncState* %22, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %24 = load i32, i32* %base, align 4
  %25 = load i32, i32* %line.addr, align 4
  call void @forbody(%struct.LexState* %23, i32 %24, i32 %25, i32 1, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @forlist(%struct.LexState* %ls, %union.TString* %indexname) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %indexname.addr = alloca %union.TString*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %e = alloca %struct.expdesc, align 8
  %nvars = alloca i32, align 4
  %line = alloca i32, align 4
  %base = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %union.TString* %indexname, %union.TString** %indexname.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  store i32 0, i32* %nvars, align 4
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 9
  %3 = load i32, i32* %freereg, align 4
  store i32 %3, i32* %base, align 4
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %union.TString* @luaX_newstring(%struct.LexState* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i64 15)
  %6 = load i32, i32* %nvars, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nvars, align 4
  call void @new_localvar(%struct.LexState* %4, %union.TString* %call, i32 %6)
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call2 = call %union.TString* @luaX_newstring(%struct.LexState* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i64 11)
  %9 = load i32, i32* %nvars, align 4
  %inc3 = add nsw i32 %9, 1
  store i32 %inc3, i32* %nvars, align 4
  call void @new_localvar(%struct.LexState* %7, %union.TString* %call2, i32 %9)
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call4 = call %union.TString* @luaX_newstring(%struct.LexState* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i64 13)
  %12 = load i32, i32* %nvars, align 4
  %inc5 = add nsw i32 %12, 1
  store i32 %inc5, i32* %nvars, align 4
  call void @new_localvar(%struct.LexState* %10, %union.TString* %call4, i32 %12)
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %14 = load %union.TString*, %union.TString** %indexname.addr, align 8
  %15 = load i32, i32* %nvars, align 4
  %inc6 = add nsw i32 %15, 1
  store i32 %inc6, i32* %nvars, align 4
  call void @new_localvar(%struct.LexState* %13, %union.TString* %14, i32 %15)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call7 = call i32 @testnext(%struct.LexState* %16, i32 44)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %18 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call8 = call %union.TString* @str_checkname(%struct.LexState* %18)
  %19 = load i32, i32* %nvars, align 4
  %inc9 = add nsw i32 %19, 1
  store i32 %inc9, i32* %nvars, align 4
  call void @new_localvar(%struct.LexState* %17, %union.TString* %call8, i32 %19)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %20, i32 267)
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 1
  %22 = load i32, i32* %linenumber, align 4
  store i32 %22, i32* %line, align 4
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %24 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call10 = call i32 @explist1(%struct.LexState* %24, %struct.expdesc* %e)
  call void @adjust_assign(%struct.LexState* %23, i32 3, i32 %call10, %struct.expdesc* %e)
  %25 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_checkstack(%struct.FuncState* %25, i32 3)
  %26 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %27 = load i32, i32* %base, align 4
  %28 = load i32, i32* %line, align 4
  %29 = load i32, i32* %nvars, align 4
  %sub = sub nsw i32 %29, 3
  call void @forbody(%struct.LexState* %26, i32 %27, i32 %28, i32 %sub, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @exp1(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %e = alloca %struct.expdesc, align 8
  %k = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @expr(%struct.LexState* %0, %struct.expdesc* %e)
  %k1 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e, i32 0, i32 0
  %1 = load i32, i32* %k1, align 4
  store i32 %1, i32* %k, align 4
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 5
  %3 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %3, %struct.expdesc* %e)
  %4 = load i32, i32* %k, align 4
  ret i32 %4
}

declare hidden i32 @luaK_numberK(%struct.FuncState*, double) #1

; Function Attrs: nounwind uwtable
define internal void @forbody(%struct.LexState* %ls, i32 %base, i32 %line, i32 %nvars, i32 %isnum) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %base.addr = alloca i32, align 4
  %line.addr = alloca i32, align 4
  %nvars.addr = alloca i32, align 4
  %isnum.addr = alloca i32, align 4
  %bl = alloca %struct.BlockCnt, align 8
  %fs = alloca %struct.FuncState*, align 8
  %prep = alloca i32, align 4
  %endfor = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %line, i32* %line.addr, align 4
  store i32 %nvars, i32* %nvars.addr, align 4
  store i32 %isnum, i32* %isnum.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @adjustlocalvars(%struct.LexState* %2, i32 3)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %3, i32 259)
  %4 = load i32, i32* %isnum.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %6 = load i32, i32* %base.addr, align 4
  %call = call i32 @luaK_codeABx(%struct.FuncState* %5, i32 32, i32 %6, i32 131070)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call2 = call i32 @luaK_jump(%struct.FuncState* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, i32* %prep, align 4
  %8 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @enterblock(%struct.FuncState* %8, %struct.BlockCnt* %bl, i8 zeroext 0)
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %10 = load i32, i32* %nvars.addr, align 4
  call void @adjustlocalvars(%struct.LexState* %9, i32 %10)
  %11 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %12 = load i32, i32* %nvars.addr, align 4
  call void @luaK_reserveregs(%struct.FuncState* %11, i32 %12)
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @block(%struct.LexState* %13)
  %14 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @leaveblock(%struct.FuncState* %14)
  %15 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %16 = load i32, i32* %prep, align 4
  call void @luaK_patchtohere(%struct.FuncState* %15, i32 %16)
  %17 = load i32, i32* %isnum.addr, align 4
  %tobool3 = icmp ne i32 %17, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.end
  %18 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %19 = load i32, i32* %base.addr, align 4
  %call5 = call i32 @luaK_codeABx(%struct.FuncState* %18, i32 31, i32 %19, i32 131070)
  br label %cond.end.8

cond.false.6:                                     ; preds = %cond.end
  %20 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %21 = load i32, i32* %base.addr, align 4
  %22 = load i32, i32* %nvars.addr, align 4
  %call7 = call i32 @luaK_codeABC(%struct.FuncState* %20, i32 33, i32 %21, i32 0, i32 %22)
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.6, %cond.true.4
  %cond9 = phi i32 [ %call5, %cond.true.4 ], [ %call7, %cond.false.6 ]
  store i32 %cond9, i32* %endfor, align 4
  %23 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %24 = load i32, i32* %line.addr, align 4
  call void @luaK_fixline(%struct.FuncState* %23, i32 %24)
  %25 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %26 = load i32, i32* %isnum.addr, align 4
  %tobool10 = icmp ne i32 %26, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.8
  %27 = load i32, i32* %endfor, align 4
  br label %cond.end.14

cond.false.12:                                    ; preds = %cond.end.8
  %28 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %call13 = call i32 @luaK_jump(%struct.FuncState* %28)
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.11
  %cond15 = phi i32 [ %27, %cond.true.11 ], [ %call13, %cond.false.12 ]
  %29 = load i32, i32* %prep, align 4
  %add = add nsw i32 %29, 1
  call void @luaK_patchlist(%struct.FuncState* %25, i32 %cond15, i32 %add)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @adjust_assign(%struct.LexState* %ls, i32 %nvars, i32 %nexps, %struct.expdesc* %e) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %nvars.addr = alloca i32, align 4
  %nexps.addr = alloca i32, align 4
  %e.addr = alloca %struct.expdesc*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %extra = alloca i32, align 4
  %reg = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %nvars, i32* %nvars.addr, align 4
  store i32 %nexps, i32* %nexps.addr, align 4
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load i32, i32* %nvars.addr, align 4
  %3 = load i32, i32* %nexps.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %extra, align 4
  %4 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 0
  %5 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %5, 13
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k2 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i32 0, i32 0
  %7 = load i32, i32* %k2, align 4
  %cmp3 = icmp eq i32 %7, 14
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load i32, i32* %extra, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %extra, align 4
  %9 = load i32, i32* %extra, align 4
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %extra, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %10 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %12 = load i32, i32* %extra, align 4
  call void @luaK_setreturns(%struct.FuncState* %10, %struct.expdesc* %11, i32 %12)
  %13 = load i32, i32* %extra, align 4
  %cmp6 = icmp sgt i32 %13, 1
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %14 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %15 = load i32, i32* %extra, align 4
  %sub8 = sub nsw i32 %15, 1
  call void @luaK_reserveregs(%struct.FuncState* %14, i32 %sub8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  br label %if.end.17

if.else:                                          ; preds = %lor.lhs.false
  %16 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i32 0, i32 0
  %17 = load i32, i32* %k10, align 4
  %cmp11 = icmp ne i32 %17, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  %18 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %19 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %18, %struct.expdesc* %19)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.else
  %20 = load i32, i32* %extra, align 4
  %cmp14 = icmp sgt i32 %20, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %21 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i32 0, i32 9
  %22 = load i32, i32* %freereg, align 4
  store i32 %22, i32* %reg, align 4
  %23 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %24 = load i32, i32* %extra, align 4
  call void @luaK_reserveregs(%struct.FuncState* %23, i32 %24)
  %25 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %26 = load i32, i32* %reg, align 4
  %27 = load i32, i32* %extra, align 4
  call void @luaK_nil(%struct.FuncState* %25, i32 %26, i32 %27)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.9
  ret void
}

declare hidden void @luaK_checkstack(%struct.FuncState*, i32) #1

declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @funcname(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  %needself = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  store i32 0, i32* %needself, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @singlevar(%struct.LexState* %0, %struct.expdesc* %1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %3 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %3, 46
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @field(%struct.LexState* %4, %struct.expdesc* %5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t1 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 3
  %token2 = getelementptr inbounds %struct.Token, %struct.Token* %t1, i32 0, i32 0
  %7 = load i32, i32* %token2, align 4
  %cmp3 = icmp eq i32 %7, 58
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 1, i32* %needself, align 4
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @field(%struct.LexState* %8, %struct.expdesc* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %10 = load i32, i32* %needself, align 4
  ret i32 %10
}

declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #1

; Function Attrs: nounwind uwtable
define internal void @assignment(%struct.LexState* %ls, %struct.LHS_assign* %lh, i32 %nvars) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %lh.addr = alloca %struct.LHS_assign*, align 8
  %nvars.addr = alloca i32, align 4
  %e = alloca %struct.expdesc, align 8
  %nv = alloca %struct.LHS_assign, align 8
  %nexps = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.LHS_assign* %lh, %struct.LHS_assign** %lh.addr, align 8
  store i32 %nvars, i32* %nvars.addr, align 4
  %0 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %v = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %0, i32 0, i32 1
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  %cmp = icmp ule i32 6, %1
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %v1 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %2, i32 0, i32 1
  %k2 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v1, i32 0, i32 0
  %3 = load i32, i32* %k2, align 4
  %cmp3 = icmp ule i32 %3, 9
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_syntaxerror(%struct.LexState* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call i32 @testnext(%struct.LexState* %5, i32 44)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %prev = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %nv, i32 0, i32 0
  store %struct.LHS_assign* %6, %struct.LHS_assign** %prev, align 8
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %v5 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %nv, i32 0, i32 1
  call void @primaryexp(%struct.LexState* %7, %struct.expdesc* %v5)
  %v6 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %nv, i32 0, i32 1
  %k7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v6, i32 0, i32 0
  %8 = load i32, i32* %k7, align 4
  %cmp8 = icmp eq i32 %8, 6
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.4
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %10 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %v10 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %nv, i32 0, i32 1
  call void @check_conflict(%struct.LexState* %9, %struct.LHS_assign* %10, %struct.expdesc* %v10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.4
  %11 = load i32, i32* %nvars.addr, align 4
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 6
  %13 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 15
  %14 = load i16, i16* %nCcalls, align 2
  %conv = zext i16 %14 to i32
  %sub = sub nsw i32 200, %conv
  %cmp12 = icmp sgt i32 %11, %sub
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.11
  %15 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 5
  %16 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L15 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 6
  %18 = load %struct.lua_State*, %struct.lua_State** %L15, align 8
  %nCcalls16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 15
  %19 = load i16, i16* %nCcalls16, align 2
  %conv17 = zext i16 %19 to i32
  %sub18 = sub nsw i32 200, %conv17
  call void @errorlimit(%struct.FuncState* %16, i32 %sub18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.end.11
  %20 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %21 = load i32, i32* %nvars.addr, align 4
  %add = add nsw i32 %21, 1
  call void @assignment(%struct.LexState* %20, %struct.LHS_assign* %nv, i32 %add)
  br label %if.end.36

if.else:                                          ; preds = %if.end
  %22 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @checknext(%struct.LexState* %22, i32 61)
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call20 = call i32 @explist1(%struct.LexState* %23, %struct.expdesc* %e)
  store i32 %call20, i32* %nexps, align 4
  %24 = load i32, i32* %nexps, align 4
  %25 = load i32, i32* %nvars.addr, align 4
  %cmp21 = icmp ne i32 %24, %25
  br i1 %cmp21, label %if.then.23, label %if.else.31

if.then.23:                                       ; preds = %if.else
  %26 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %27 = load i32, i32* %nvars.addr, align 4
  %28 = load i32, i32* %nexps, align 4
  call void @adjust_assign(%struct.LexState* %26, i32 %27, i32 %28, %struct.expdesc* %e)
  %29 = load i32, i32* %nexps, align 4
  %30 = load i32, i32* %nvars.addr, align 4
  %cmp24 = icmp sgt i32 %29, %30
  br i1 %cmp24, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.then.23
  %31 = load i32, i32* %nexps, align 4
  %32 = load i32, i32* %nvars.addr, align 4
  %sub27 = sub nsw i32 %31, %32
  %33 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs28 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i32 0, i32 5
  %34 = load %struct.FuncState*, %struct.FuncState** %fs28, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i32 0, i32 9
  %35 = load i32, i32* %freereg, align 4
  %sub29 = sub nsw i32 %35, %sub27
  store i32 %sub29, i32* %freereg, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.then.23
  br label %if.end.35

if.else.31:                                       ; preds = %if.else
  %36 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs32 = getelementptr inbounds %struct.LexState, %struct.LexState* %36, i32 0, i32 5
  %37 = load %struct.FuncState*, %struct.FuncState** %fs32, align 8
  call void @luaK_setoneret(%struct.FuncState* %37, %struct.expdesc* %e)
  %38 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs33 = getelementptr inbounds %struct.LexState, %struct.LexState* %38, i32 0, i32 5
  %39 = load %struct.FuncState*, %struct.FuncState** %fs33, align 8
  %40 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %v34 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %40, i32 0, i32 1
  call void @luaK_storevar(%struct.FuncState* %39, %struct.expdesc* %v34, %struct.expdesc* %e)
  br label %return

if.end.35:                                        ; preds = %if.end.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.19
  %41 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs37 = getelementptr inbounds %struct.LexState, %struct.LexState* %41, i32 0, i32 5
  %42 = load %struct.FuncState*, %struct.FuncState** %fs37, align 8
  %freereg38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %42, i32 0, i32 9
  %43 = load i32, i32* %freereg38, align 4
  %sub39 = sub nsw i32 %43, 1
  call void @init_exp(%struct.expdesc* %e, i32 12, i32 %sub39)
  %44 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs40 = getelementptr inbounds %struct.LexState, %struct.LexState* %44, i32 0, i32 5
  %45 = load %struct.FuncState*, %struct.FuncState** %fs40, align 8
  %46 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %v41 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %46, i32 0, i32 1
  call void @luaK_storevar(%struct.FuncState* %45, %struct.expdesc* %v41, %struct.expdesc* %e)
  br label %return

return:                                           ; preds = %if.end.36, %if.else.31
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_conflict(%struct.LexState* %ls, %struct.LHS_assign* %lh, %struct.expdesc* %v) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %lh.addr = alloca %struct.LHS_assign*, align 8
  %v.addr = alloca %struct.expdesc*, align 8
  %fs = alloca %struct.FuncState*, align 8
  %extra = alloca i32, align 4
  %conflict = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.LHS_assign* %lh, %struct.LHS_assign** %lh.addr, align 8
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 5
  %1 = load %struct.FuncState*, %struct.FuncState** %fs1, align 8
  store %struct.FuncState* %1, %struct.FuncState** %fs, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 9
  %3 = load i32, i32* %freereg, align 4
  store i32 %3, i32* %extra, align 4
  store i32 0, i32* %conflict, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %tobool = icmp ne %struct.LHS_assign* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %v2 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i32 0, i32 1
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v2, i32 0, i32 0
  %6 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %6, 9
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %for.body
  %7 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %v3 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %7, i32 0, i32 1
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v3, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %8 = load i32, i32* %info, align 4
  %9 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %u4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 1
  %s5 = bitcast %union.anon.3* %u4 to %struct.anon.4*
  %info6 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s5, i32 0, i32 0
  %10 = load i32, i32* %info6, align 4
  %cmp7 = icmp eq i32 %8, %10
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 1, i32* %conflict, align 4
  %11 = load i32, i32* %extra, align 4
  %12 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %v9 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %12, i32 0, i32 1
  %u10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v9, i32 0, i32 1
  %s11 = bitcast %union.anon.3* %u10 to %struct.anon.4*
  %info12 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s11, i32 0, i32 0
  store i32 %11, i32* %info12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %13 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %v13 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %13, i32 0, i32 1
  %u14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v13, i32 0, i32 1
  %s15 = bitcast %union.anon.3* %u14 to %struct.anon.4*
  %aux = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s15, i32 0, i32 1
  %14 = load i32, i32* %aux, align 4
  %15 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %u16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %15, i32 0, i32 1
  %s17 = bitcast %union.anon.3* %u16 to %struct.anon.4*
  %info18 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s17, i32 0, i32 0
  %16 = load i32, i32* %info18, align 4
  %cmp19 = icmp eq i32 %14, %16
  br i1 %cmp19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.end
  store i32 1, i32* %conflict, align 4
  %17 = load i32, i32* %extra, align 4
  %18 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %v21 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %18, i32 0, i32 1
  %u22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %v21, i32 0, i32 1
  %s23 = bitcast %union.anon.3* %u22 to %struct.anon.4*
  %aux24 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s23, i32 0, i32 1
  store i32 %17, i32* %aux24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %19 = load %struct.LHS_assign*, %struct.LHS_assign** %lh.addr, align 8
  %prev = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %19, i32 0, i32 0
  %20 = load %struct.LHS_assign*, %struct.LHS_assign** %prev, align 8
  store %struct.LHS_assign* %20, %struct.LHS_assign** %lh.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %conflict, align 4
  %tobool27 = icmp ne i32 %21, 0
  br i1 %tobool27, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %for.end
  %22 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %23 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %freereg29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %23, i32 0, i32 9
  %24 = load i32, i32* %freereg29, align 4
  %25 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %u30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %25, i32 0, i32 1
  %s31 = bitcast %union.anon.3* %u30 to %struct.anon.4*
  %info32 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s31, i32 0, i32 0
  %26 = load i32, i32* %info32, align 4
  %call = call i32 @luaK_codeABC(%struct.FuncState* %22, i32 0, i32 %24, i32 %26, i32 0)
  %27 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  call void @luaK_reserveregs(%struct.FuncState* %27, i32 1)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.28, %for.end
  ret void
}

declare hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
