; ModuleID = './MultiSource.Applications.lua/12.lcode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FuncState = type { %struct.Proto*, %struct.Table*, %struct.FuncState*, %struct.LexState*, %struct.lua_State*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, [60 x %struct.upvaldesc], [200 x i16] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%struct.LocVar = type { %union.TString*, i32, i32 }
%union.TString = type { %struct.anon }
%struct.anon = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %union.TString*, i8 }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.BlockCnt = type opaque
%struct.upvaldesc = type { i8, i8 }
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%struct.expdesc = type { i32, %union.anon.3, i32, i32 }
%union.anon.3 = type { double }
%struct.anon.4 = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"function or expression too complex\00", align 1
@luaP_opmodes = external hidden constant [38 x i8], align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"control structure too long\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"constant table overflow\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"code size overflow\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @luaK_nil(%struct.FuncState* %fs, i32 %from, i32 %n) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %from.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %previous = alloca i32*, align 8
  %pfrom = alloca i32, align 4
  %pto = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 6
  %1 = load i32, i32* %pc, align 4
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %lasttarget = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 7
  %3 = load i32, i32* %lasttarget, align 4
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 6
  %5 = load i32, i32* %pc1, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %from.addr, align 4
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 13
  %8 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %8 to i32
  %cmp4 = icmp sge i32 %6, %conv
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.3
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.32

if.else:                                          ; preds = %if.then
  %9 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 6
  %10 = load i32, i32* %pc7, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 0
  %12 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 4
  %13 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32* %arrayidx, i32** %previous, align 8
  %14 = load i32*, i32** %previous, align 8
  %15 = load i32, i32* %14, align 4
  %shr = lshr i32 %15, 0
  %and = and i32 %shr, 63
  %cmp8 = icmp eq i32 %and, 3
  br i1 %cmp8, label %if.then.10, label %if.end.31

if.then.10:                                       ; preds = %if.else
  %16 = load i32*, i32** %previous, align 8
  %17 = load i32, i32* %16, align 4
  %shr11 = lshr i32 %17, 6
  %and12 = and i32 %shr11, 255
  store i32 %and12, i32* %pfrom, align 4
  %18 = load i32*, i32** %previous, align 8
  %19 = load i32, i32* %18, align 4
  %shr13 = lshr i32 %19, 23
  %and14 = and i32 %shr13, 511
  store i32 %and14, i32* %pto, align 4
  %20 = load i32, i32* %pfrom, align 4
  %21 = load i32, i32* %from.addr, align 4
  %cmp15 = icmp sle i32 %20, %21
  br i1 %cmp15, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.then.10
  %22 = load i32, i32* %from.addr, align 4
  %23 = load i32, i32* %pto, align 4
  %add = add nsw i32 %23, 1
  %cmp17 = icmp sle i32 %22, %add
  br i1 %cmp17, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %land.lhs.true
  %24 = load i32, i32* %from.addr, align 4
  %25 = load i32, i32* %n.addr, align 4
  %add20 = add nsw i32 %24, %25
  %sub21 = sub nsw i32 %add20, 1
  %26 = load i32, i32* %pto, align 4
  %cmp22 = icmp sgt i32 %sub21, %26
  br i1 %cmp22, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.then.19
  %27 = load i32*, i32** %previous, align 8
  %28 = load i32, i32* %27, align 4
  %and25 = and i32 %28, 8388607
  %29 = load i32, i32* %from.addr, align 4
  %30 = load i32, i32* %n.addr, align 4
  %add26 = add nsw i32 %29, %30
  %sub27 = sub nsw i32 %add26, 1
  %shl = shl i32 %sub27, 23
  %and28 = and i32 %shl, -8388608
  %or = or i32 %and25, %and28
  %31 = load i32*, i32** %previous, align 8
  store i32 %or, i32* %31, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.then.19
  br label %return

if.end.30:                                        ; preds = %land.lhs.true, %if.then.10
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %entry
  %32 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %33 = load i32, i32* %from.addr, align 4
  %34 = load i32, i32* %from.addr, align 4
  %35 = load i32, i32* %n.addr, align 4
  %add34 = add nsw i32 %34, %35
  %sub35 = sub nsw i32 %add34, 1
  %call = call i32 @luaK_codeABC(%struct.FuncState* %32, i32 3, i32 %33, i32 %sub35, i32 0)
  br label %return

return:                                           ; preds = %if.end.33, %if.end.29, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_codeABC(%struct.FuncState* %fs, i32 %o, i32 %a, i32 %b, i32 %c) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %o.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %o, i32* %o.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load i32, i32* %o.addr, align 4
  %shl = shl i32 %1, 0
  %2 = load i32, i32* %a.addr, align 4
  %shl1 = shl i32 %2, 6
  %or = or i32 %shl, %shl1
  %3 = load i32, i32* %b.addr, align 4
  %shl2 = shl i32 %3, 23
  %or3 = or i32 %or, %shl2
  %4 = load i32, i32* %c.addr, align 4
  %shl4 = shl i32 %4, 14
  %or5 = or i32 %or3, %shl4
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %ls = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 3
  %6 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %lastline = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 2
  %7 = load i32, i32* %lastline, align 4
  %call = call i32 @luaK_code(%struct.FuncState* %0, i32 %or5, i32 %7)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_jump(%struct.FuncState* %fs) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %jpc = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %jpc1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 8
  %1 = load i32, i32* %jpc1, align 4
  store i32 %1, i32* %jpc, align 4
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %jpc2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 8
  store i32 -1, i32* %jpc2, align 4
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call = call i32 @luaK_codeABx(%struct.FuncState* %3, i32 22, i32 0, i32 131070)
  store i32 %call, i32* %j, align 4
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %5 = load i32, i32* %jpc, align 4
  call void @luaK_concat(%struct.FuncState* %4, i32* %j, i32 %5)
  %6 = load i32, i32* %j, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_codeABx(%struct.FuncState* %fs, i32 %o, i32 %a, i32 %bc) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %o.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %bc.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %o, i32* %o.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %bc, i32* %bc.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load i32, i32* %o.addr, align 4
  %shl = shl i32 %1, 0
  %2 = load i32, i32* %a.addr, align 4
  %shl1 = shl i32 %2, 6
  %or = or i32 %shl, %shl1
  %3 = load i32, i32* %bc.addr, align 4
  %shl2 = shl i32 %3, 14
  %or3 = or i32 %or, %shl2
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %ls = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 3
  %5 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %lastline = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 2
  %6 = load i32, i32* %lastline, align 4
  %call = call i32 @luaK_code(%struct.FuncState* %0, i32 %or3, i32 %6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_concat(%struct.FuncState* %fs, i32* %l1, i32 %l2) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %l1.addr = alloca i32*, align 8
  %l2.addr = alloca i32, align 4
  %list = alloca i32, align 4
  %next = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32* %l1, i32** %l1.addr, align 8
  store i32 %l2, i32* %l2.addr, align 4
  %0 = load i32, i32* %l2.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.5

if.else:                                          ; preds = %entry
  %1 = load i32*, i32** %l1.addr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %3 = load i32, i32* %l2.addr, align 4
  %4 = load i32*, i32** %l1.addr, align 8
  store i32 %3, i32* %4, align 4
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %5 = load i32*, i32** %l1.addr, align 8
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %list, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.3
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %8 = load i32, i32* %list, align 4
  %call = call i32 @getjump(%struct.FuncState* %7, i32 %8)
  store i32 %call, i32* %next, align 4
  %cmp4 = icmp ne i32 %call, -1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %next, align 4
  store i32 %9, i32* %list, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %11 = load i32, i32* %list, align 4
  %12 = load i32, i32* %l2.addr, align 4
  call void @fixjump(%struct.FuncState* %10, i32 %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_ret(%struct.FuncState* %fs, i32 %first, i32 %nret) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %first.addr = alloca i32, align 4
  %nret.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %first, i32* %first.addr, align 4
  store i32 %nret, i32* %nret.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load i32, i32* %first.addr, align 4
  %2 = load i32, i32* %nret.addr, align 4
  %add = add nsw i32 %2, 1
  %call = call i32 @luaK_codeABC(%struct.FuncState* %0, i32 30, i32 %1, i32 %add, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_getlabel(%struct.FuncState* %fs) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 6
  %1 = load i32, i32* %pc, align 4
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %lasttarget = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 7
  store i32 %1, i32* %lasttarget, align 4
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i32 0, i32 6
  %4 = load i32, i32* %pc1, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchlist(%struct.FuncState* %fs, i32 %list, i32 %target) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %list.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %list, i32* %list.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* %target.addr, align 4
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i32 0, i32 6
  %2 = load i32, i32* %pc, align 4
  %cmp = icmp eq i32 %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %4 = load i32, i32* %list.addr, align 4
  call void @luaK_patchtohere(%struct.FuncState* %3, i32 %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %6 = load i32, i32* %list.addr, align 4
  %7 = load i32, i32* %target.addr, align 4
  %8 = load i32, i32* %target.addr, align 4
  call void @patchlistaux(%struct.FuncState* %5, i32 %6, i32 %7, i32 255, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchtohere(%struct.FuncState* %fs, i32 %list) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %list.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %list, i32* %list.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call = call i32 @luaK_getlabel(%struct.FuncState* %0)
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %jpc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 8
  %3 = load i32, i32* %list.addr, align 4
  call void @luaK_concat(%struct.FuncState* %1, i32* %jpc, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @patchlistaux(%struct.FuncState* %fs, i32 %list, i32 %vtarget, i32 %reg, i32 %dtarget) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %list.addr = alloca i32, align 4
  %vtarget.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %dtarget.addr = alloca i32, align 4
  %next = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %list, i32* %list.addr, align 4
  store i32 %vtarget, i32* %vtarget.addr, align 4
  store i32 %reg, i32* %reg.addr, align 4
  store i32 %dtarget, i32* %dtarget.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %list.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %2 = load i32, i32* %list.addr, align 4
  %call = call i32 @getjump(%struct.FuncState* %1, i32 %2)
  store i32 %call, i32* %next, align 4
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %4 = load i32, i32* %list.addr, align 4
  %5 = load i32, i32* %reg.addr, align 4
  %call1 = call i32 @patchtestreg(%struct.FuncState* %3, i32 %4, i32 %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %7 = load i32, i32* %list.addr, align 4
  %8 = load i32, i32* %vtarget.addr, align 4
  call void @fixjump(%struct.FuncState* %6, i32 %7, i32 %8)
  br label %if.end

if.else:                                          ; preds = %while.body
  %9 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %10 = load i32, i32* %list.addr, align 4
  %11 = load i32, i32* %dtarget.addr, align 4
  call void @fixjump(%struct.FuncState* %9, i32 %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %next, align 4
  store i32 %12, i32* %list.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @getjump(%struct.FuncState* %fs, i32 %pc) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.FuncState*, align 8
  %pc.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %pc, i32* %pc.addr, align 4
  %0 = load i32, i32* %pc.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i32 0, i32 0
  %2 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %2, i32 0, i32 4
  %3 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %4, 14
  %and = and i32 %shr, 262143
  %sub = sub nsw i32 %and, 131071
  store i32 %sub, i32* %offset, align 4
  %5 = load i32, i32* %offset, align 4
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %pc.addr, align 4
  %add = add nsw i32 %6, 1
  %7 = load i32, i32* %offset, align 4
  %add1 = add nsw i32 %add, %7
  store i32 %add1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @fixjump(%struct.FuncState* %fs, i32 %pc, i32 %dest) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %pc.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %jmp = alloca i32*, align 8
  %offset = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %pc, i32* %pc.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  %0 = load i32, i32* %pc.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i32 0, i32 0
  %2 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %2, i32 0, i32 4
  %3 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32* %arrayidx, i32** %jmp, align 8
  %4 = load i32, i32* %dest.addr, align 4
  %5 = load i32, i32* %pc.addr, align 4
  %add = add nsw i32 %5, 1
  %sub = sub nsw i32 %4, %add
  store i32 %sub, i32* %offset, align 4
  %6 = load i32, i32* %offset, align 4
  %call = call i32 @abs(i32 %6) #5
  %cmp = icmp sgt i32 %call, 131071
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %ls = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 3
  %8 = load %struct.LexState*, %struct.LexState** %ls, align 8
  call void @luaX_syntaxerror(%struct.LexState* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32*, i32** %jmp, align 8
  %10 = load i32, i32* %9, align 4
  %and = and i32 %10, 16383
  %11 = load i32, i32* %offset, align 4
  %add1 = add nsw i32 %11, 131071
  %shl = shl i32 %add1, 14
  %and2 = and i32 %shl, -16384
  %or = or i32 %and, %and2
  %12 = load i32*, i32** %jmp, align 8
  store i32 %or, i32* %12, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_checkstack(%struct.FuncState* %fs, i32 %n) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %n.addr = alloca i32, align 4
  %newstack = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 9
  %1 = load i32, i32* %freereg, align 4
  %2 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %newstack, align 4
  %3 = load i32, i32* %newstack, align 4
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %f, align 8
  %maxstacksize = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i32 0, i32 22
  %6 = load i8, i8* %maxstacksize, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp sgt i32 %3, %conv
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %newstack, align 4
  %cmp2 = icmp sge i32 %7, 250
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %ls = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 3
  %9 = load %struct.LexState*, %struct.LexState** %ls, align 8
  call void @luaX_syntaxerror(%struct.LexState* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %10 = load i32, i32* %newstack, align 4
  %conv5 = trunc i32 %10 to i8
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 0
  %12 = load %struct.Proto*, %struct.Proto** %f6, align 8
  %maxstacksize7 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 22
  store i8 %conv5, i8* %maxstacksize7, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  ret void
}

declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) #1

; Function Attrs: nounwind uwtable
define hidden void @luaK_reserveregs(%struct.FuncState* %fs, i32 %n) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %n.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  call void @luaK_checkstack(%struct.FuncState* %0, i32 %1)
  %2 = load i32, i32* %n.addr, align 4
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i32 0, i32 9
  %4 = load i32, i32* %freereg, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %freereg, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_stringK(%struct.FuncState* %fs, %union.TString* %s) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %s.addr = alloca %union.TString*, align 8
  %o = alloca %struct.lua_TValue, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %union.TString* %s, %union.TString** %s.addr, align 8
  store %struct.lua_TValue* %o, %struct.lua_TValue** %i_o, align 8
  %0 = load %union.TString*, %union.TString** %s.addr, align 8
  %1 = bitcast %union.TString* %0 to %union.GCObject*
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %1, %union.GCObject** %gc, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 1
  store i32 4, i32* %tt, align 4
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call = call i32 @addk(%struct.FuncState* %4, %struct.lua_TValue* %o, %struct.lua_TValue* %o)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @addk(%struct.FuncState* %fs, %struct.lua_TValue* %k, %struct.lua_TValue* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.FuncState*, align 8
  %k.addr = alloca %struct.lua_TValue*, align 8
  %v.addr = alloca %struct.lua_TValue*, align 8
  %L = alloca %struct.lua_State*, align 8
  %idx = alloca %struct.lua_TValue*, align 8
  %f = alloca %struct.Proto*, align 8
  %oldsize = alloca i32, align 4
  %i_o = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.lua_TValue* %k, %struct.lua_TValue** %k.addr, align 8
  store %struct.lua_TValue* %v, %struct.lua_TValue** %v.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %L1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  store %struct.lua_State* %1, %struct.lua_State** %L, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %h = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i32 0, i32 1
  %4 = load %struct.Table*, %struct.Table** %h, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %k.addr, align 8
  %call = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %2, %struct.Table* %4, %struct.lua_TValue* %5)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %idx, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %f2, align 8
  store %struct.Proto* %7, %struct.Proto** %f, align 8
  %8 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizek = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 11
  %9 = load i32, i32* %sizek, align 4
  store i32 %9, i32* %oldsize, align 4
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %idx, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %11 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %idx, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  %13 = load double, double* %n, align 8
  %conv = fptosi double %13 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %idx, align 8
  store %struct.lua_TValue* %14, %struct.lua_TValue** %i_o, align 8
  %15 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nk = getelementptr inbounds %struct.FuncState, %struct.FuncState* %15, i32 0, i32 10
  %16 = load i32, i32* %nk, align 4
  %conv3 = sitofp i32 %16 to double
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %n5 = bitcast %union.Value* %value4 to double*
  store double %conv3, double* %n5, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 1
  store i32 3, i32* %tt6, align 4
  %19 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nk7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %19, i32 0, i32 10
  %20 = load i32, i32* %nk7, align 4
  %add = add nsw i32 %20, 1
  %21 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizek8 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i32 0, i32 11
  %22 = load i32, i32* %sizek8, align 4
  %cmp9 = icmp sgt i32 %add, %22
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %23 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %24 = load %struct.Proto*, %struct.Proto** %f, align 8
  %k12 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 3
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %k12, align 8
  %26 = bitcast %struct.lua_TValue* %25 to i8*
  %27 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizek13 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 11
  %call14 = call i8* @luaM_growaux_(%struct.lua_State* %23, i8* %26, i32* %sizek13, i64 16, i32 262143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  %28 = bitcast i8* %call14 to %struct.lua_TValue*
  %29 = load %struct.Proto*, %struct.Proto** %f, align 8
  %k15 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 3
  store %struct.lua_TValue* %28, %struct.lua_TValue** %k15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %30 = load i32, i32* %oldsize, align 4
  %31 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizek16 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 11
  %32 = load i32, i32* %sizek16, align 4
  %cmp17 = icmp slt i32 %30, %32
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i32, i32* %oldsize, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %oldsize, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.Proto*, %struct.Proto** %f, align 8
  %k19 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 3
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %k19, align 8
  %arrayidx = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 %idxprom
  %tt20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %arrayidx, i32 0, i32 1
  store i32 0, i32* %tt20, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %v.addr, align 8
  store %struct.lua_TValue* %36, %struct.lua_TValue** %o2, align 8
  %37 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nk21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i32 0, i32 10
  %38 = load i32, i32* %nk21, align 4
  %idxprom22 = sext i32 %38 to i64
  %39 = load %struct.Proto*, %struct.Proto** %f, align 8
  %k23 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i32 0, i32 3
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %k23, align 8
  %arrayidx24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i64 %idxprom22
  store %struct.lua_TValue* %arrayidx24, %struct.lua_TValue** %o1, align 8
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 0
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 0
  %43 = bitcast %union.Value* %value25 to i8*
  %44 = bitcast %union.Value* %value26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 8, i32 8, i1 false)
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 1
  %46 = load i32, i32* %tt27, align 4
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 1
  store i32 %46, i32* %tt28, align 4
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %v.addr, align 8
  %tt29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 1
  %49 = load i32, i32* %tt29, align 4
  %cmp30 = icmp sge i32 %49, 4
  br i1 %cmp30, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %while.end
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %v.addr, align 8
  %value32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i32 0, i32 0
  %gc = bitcast %union.Value* %value32 to %union.GCObject**
  %51 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %gch = bitcast %union.GCObject* %51 to %struct.GCheader*
  %marked = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 2
  %52 = load i8, i8* %marked, align 1
  %conv33 = zext i8 %52 to i32
  %and = and i32 %conv33, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true.34, label %if.end.43

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %53 = load %struct.Proto*, %struct.Proto** %f, align 8
  %54 = bitcast %struct.Proto* %53 to %union.GCObject*
  %gch35 = bitcast %union.GCObject* %54 to %struct.GCheader*
  %marked36 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch35, i32 0, i32 2
  %55 = load i8, i8* %marked36, align 1
  %conv37 = zext i8 %55 to i32
  %and38 = and i32 %conv37, 4
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %land.lhs.true.34
  %56 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %57 = load %struct.Proto*, %struct.Proto** %f, align 8
  %58 = bitcast %struct.Proto* %57 to %union.GCObject*
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %v.addr, align 8
  %value41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 0, i32 0
  %gc42 = bitcast %union.Value* %value41 to %union.GCObject**
  %60 = load %union.GCObject*, %union.GCObject** %gc42, align 8
  call void @luaC_barrierf(%struct.lua_State* %56, %union.GCObject* %58, %union.GCObject* %60)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %land.lhs.true.34, %land.lhs.true, %while.end
  %61 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nk44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i32 0, i32 10
  %62 = load i32, i32* %nk44, align 4
  %inc45 = add nsw i32 %62, 1
  store i32 %inc45, i32* %nk44, align 4
  store i32 %62, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_numberK(%struct.FuncState* %fs, double %r) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %r.addr = alloca double, align 8
  %o = alloca %struct.lua_TValue, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store double %r, double* %r.addr, align 8
  store %struct.lua_TValue* %o, %struct.lua_TValue** %i_o, align 8
  %0 = load double, double* %r.addr, align 8
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  store double %0, double* %n, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  store i32 3, i32* %tt, align 4
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call = call i32 @addk(%struct.FuncState* %3, %struct.lua_TValue* %o, %struct.lua_TValue* %o)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_setreturns(%struct.FuncState* %fs, %struct.expdesc* %e, i32 %nresults) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %nresults.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  store i32 %nresults, i32* %nresults.addr, align 4
  %0 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %1, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %3 = load i32, i32* %info, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i32 0, i32 4
  %6 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %and = and i32 %7, -8372225
  %8 = load i32, i32* %nresults.addr, align 4
  %add = add nsw i32 %8, 1
  %shl = shl i32 %add, 14
  %and1 = and i32 %shl, 8372224
  %or = or i32 %and, %and1
  %9 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u2 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 1
  %s3 = bitcast %union.anon.3* %u2 to %struct.anon.4*
  %info4 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s3, i32 0, i32 0
  %10 = load i32, i32* %info4, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 0
  %12 = load %struct.Proto*, %struct.Proto** %f6, align 8
  %code7 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 4
  %13 = load i32*, i32** %code7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  store i32 %or, i32* %arrayidx8, align 4
  br label %if.end.49

if.else:                                          ; preds = %entry
  %14 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 0
  %15 = load i32, i32* %k9, align 4
  %cmp10 = icmp eq i32 %15, 14
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %16 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i32 0, i32 1
  %s13 = bitcast %union.anon.3* %u12 to %struct.anon.4*
  %info14 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s13, i32 0, i32 0
  %17 = load i32, i32* %info14, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %18, i32 0, i32 0
  %19 = load %struct.Proto*, %struct.Proto** %f16, align 8
  %code17 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 4
  %20 = load i32*, i32** %code17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %20, i64 %idxprom15
  %21 = load i32, i32* %arrayidx18, align 4
  %and19 = and i32 %21, 8388607
  %22 = load i32, i32* %nresults.addr, align 4
  %add20 = add nsw i32 %22, 1
  %shl21 = shl i32 %add20, 23
  %and22 = and i32 %shl21, -8388608
  %or23 = or i32 %and19, %and22
  %23 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 1
  %s25 = bitcast %union.anon.3* %u24 to %struct.anon.4*
  %info26 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s25, i32 0, i32 0
  %24 = load i32, i32* %info26, align 4
  %idxprom27 = sext i32 %24 to i64
  %25 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %25, i32 0, i32 0
  %26 = load %struct.Proto*, %struct.Proto** %f28, align 8
  %code29 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 4
  %27 = load i32*, i32** %code29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %27, i64 %idxprom27
  store i32 %or23, i32* %arrayidx30, align 4
  %28 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %28, i32 0, i32 1
  %s32 = bitcast %union.anon.3* %u31 to %struct.anon.4*
  %info33 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s32, i32 0, i32 0
  %29 = load i32, i32* %info33, align 4
  %idxprom34 = sext i32 %29 to i64
  %30 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %30, i32 0, i32 0
  %31 = load %struct.Proto*, %struct.Proto** %f35, align 8
  %code36 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 4
  %32 = load i32*, i32** %code36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %32, i64 %idxprom34
  %33 = load i32, i32* %arrayidx37, align 4
  %and38 = and i32 %33, -16321
  %34 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i32 0, i32 9
  %35 = load i32, i32* %freereg, align 4
  %shl39 = shl i32 %35, 6
  %and40 = and i32 %shl39, 16320
  %or41 = or i32 %and38, %and40
  %36 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %36, i32 0, i32 1
  %s43 = bitcast %union.anon.3* %u42 to %struct.anon.4*
  %info44 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s43, i32 0, i32 0
  %37 = load i32, i32* %info44, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %38, i32 0, i32 0
  %39 = load %struct.Proto*, %struct.Proto** %f46, align 8
  %code47 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i32 0, i32 4
  %40 = load i32*, i32** %code47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %40, i64 %idxprom45
  store i32 %or41, i32* %arrayidx48, align 4
  %41 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  call void @luaK_reserveregs(%struct.FuncState* %41, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_setoneret(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %1, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k1 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 0
  store i32 12, i32* %k1, align 4
  %3 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %4 = load i32, i32* %info, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 0
  %6 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 4
  %7 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %8, 6
  %and = and i32 %shr, 255
  %9 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u2 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 1
  %s3 = bitcast %union.anon.3* %u2 to %struct.anon.4*
  %info4 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s3, i32 0, i32 0
  store i32 %and, i32* %info4, align 4
  br label %if.end.24

if.else:                                          ; preds = %entry
  %10 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 0
  %11 = load i32, i32* %k5, align 4
  %cmp6 = icmp eq i32 %11, 14
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %12 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 1
  %s9 = bitcast %union.anon.3* %u8 to %struct.anon.4*
  %info10 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s9, i32 0, i32 0
  %13 = load i32, i32* %info10, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %15 = load %struct.Proto*, %struct.Proto** %f12, align 8
  %code13 = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i32 0, i32 4
  %16 = load i32*, i32** %code13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %16, i64 %idxprom11
  %17 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %17, 8388607
  %or = or i32 %and15, 16777216
  %18 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 1
  %s17 = bitcast %union.anon.3* %u16 to %struct.anon.4*
  %info18 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s17, i32 0, i32 0
  %19 = load i32, i32* %info18, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %20, i32 0, i32 0
  %21 = load %struct.Proto*, %struct.Proto** %f20, align 8
  %code21 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i32 0, i32 4
  %22 = load i32*, i32** %code21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %22, i64 %idxprom19
  store i32 %or, i32* %arrayidx22, align 4
  %23 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 0
  store i32 11, i32* %k23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_dischargevars(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  switch i32 %1, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb.2
    i32 8, label %sw.bb.7
    i32 9, label %sw.bb.16
    i32 14, label %sw.bb.33
    i32 13, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k1 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 0
  store i32 12, i32* %k1, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %4 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %5 = load i32, i32* %info, align 4
  %call = call i32 @luaK_codeABC(%struct.FuncState* %3, i32 4, i32 0, i32 %5, i32 0)
  %6 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i32 0, i32 1
  %s4 = bitcast %union.anon.3* %u3 to %struct.anon.4*
  %info5 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s4, i32 0, i32 0
  store i32 %call, i32* %info5, align 4
  %7 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 0
  store i32 11, i32* %k6, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 1
  %s9 = bitcast %union.anon.3* %u8 to %struct.anon.4*
  %info10 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s9, i32 0, i32 0
  %10 = load i32, i32* %info10, align 4
  %call11 = call i32 @luaK_codeABx(%struct.FuncState* %8, i32 5, i32 0, i32 %10)
  %11 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i32 0, i32 1
  %s13 = bitcast %union.anon.3* %u12 to %struct.anon.4*
  %info14 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s13, i32 0, i32 0
  store i32 %call11, i32* %info14, align 4
  %12 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 0
  store i32 11, i32* %k15, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %13 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 1
  %s18 = bitcast %union.anon.3* %u17 to %struct.anon.4*
  %aux = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s18, i32 0, i32 1
  %15 = load i32, i32* %aux, align 4
  call void @freereg(%struct.FuncState* %13, i32 %15)
  %16 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 1
  %s20 = bitcast %union.anon.3* %u19 to %struct.anon.4*
  %info21 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s20, i32 0, i32 0
  %18 = load i32, i32* %info21, align 4
  call void @freereg(%struct.FuncState* %16, i32 %18)
  %19 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %20 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %20, i32 0, i32 1
  %s23 = bitcast %union.anon.3* %u22 to %struct.anon.4*
  %info24 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s23, i32 0, i32 0
  %21 = load i32, i32* %info24, align 4
  %22 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %22, i32 0, i32 1
  %s26 = bitcast %union.anon.3* %u25 to %struct.anon.4*
  %aux27 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s26, i32 0, i32 1
  %23 = load i32, i32* %aux27, align 4
  %call28 = call i32 @luaK_codeABC(%struct.FuncState* %19, i32 6, i32 0, i32 %21, i32 %23)
  %24 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %24, i32 0, i32 1
  %s30 = bitcast %union.anon.3* %u29 to %struct.anon.4*
  %info31 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s30, i32 0, i32 0
  store i32 %call28, i32* %info31, align 4
  %25 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %25, i32 0, i32 0
  store i32 11, i32* %k32, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry, %entry
  %26 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %27 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_setoneret(%struct.FuncState* %26, %struct.expdesc* %27)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.33, %sw.bb.16, %sw.bb.7, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freereg(%struct.FuncState* %fs, i32 %reg) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %reg.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %reg, i32* %reg.addr, align 4
  %0 = load i32, i32* %reg.addr, align 4
  %and = and i32 %0, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %reg.addr, align 4
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %2, i32 0, i32 13
  %3 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 9
  %5 = load i32, i32* %freereg, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %freereg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2nextreg(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @freeexp(%struct.FuncState* %2, %struct.expdesc* %3)
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  call void @luaK_reserveregs(%struct.FuncState* %4, i32 1)
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 9
  %8 = load i32, i32* %freereg, align 4
  %sub = sub nsw i32 %8, 1
  call void @exp2reg(%struct.FuncState* %5, %struct.expdesc* %6, i32 %sub)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeexp(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %1, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %4 = load i32, i32* %info, align 4
  call void @freereg(%struct.FuncState* %2, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @exp2reg(%struct.FuncState* %fs, %struct.expdesc* %e, i32 %reg) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %reg.addr = alloca i32, align 4
  %final = alloca i32, align 4
  %p_f = alloca i32, align 4
  %p_t = alloca i32, align 4
  %fj = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  store i32 %reg, i32* %reg.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %2 = load i32, i32* %reg.addr, align 4
  call void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %2)
  %3 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 0
  %4 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %4, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i32 0, i32 2
  %7 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %8 = load i32, i32* %info, align 4
  call void @luaK_concat(%struct.FuncState* %5, i32* %t, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t1 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 2
  %10 = load i32, i32* %t1, align 4
  %11 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i32 0, i32 3
  %12 = load i32, i32* %f, align 4
  %cmp2 = icmp ne i32 %10, %12
  br i1 %cmp2, label %if.then.3, label %if.end.18

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %p_f, align 4
  store i32 -1, i32* %p_t, align 4
  %13 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 2
  %15 = load i32, i32* %t4, align 4
  %call = call i32 @need_value(%struct.FuncState* %13, i32 %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %16 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 3
  %18 = load i32, i32* %f5, align 4
  %call6 = call i32 @need_value(%struct.FuncState* %16, i32 %18)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %lor.lhs.false, %if.then.3
  %19 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 0
  %20 = load i32, i32* %k9, align 4
  %cmp10 = icmp eq i32 %20, 10
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %21 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call11 = call i32 @luaK_jump(%struct.FuncState* %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call11, %cond.false ]
  store i32 %cond, i32* %fj, align 4
  %22 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %23 = load i32, i32* %reg.addr, align 4
  %call12 = call i32 @code_label(%struct.FuncState* %22, i32 %23, i32 0, i32 1)
  store i32 %call12, i32* %p_f, align 4
  %24 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %25 = load i32, i32* %reg.addr, align 4
  %call13 = call i32 @code_label(%struct.FuncState* %24, i32 %25, i32 1, i32 0)
  store i32 %call13, i32* %p_t, align 4
  %26 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %27 = load i32, i32* %fj, align 4
  call void @luaK_patchtohere(%struct.FuncState* %26, i32 %27)
  br label %if.end.14

if.end.14:                                        ; preds = %cond.end, %lor.lhs.false
  %28 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call15 = call i32 @luaK_getlabel(%struct.FuncState* %28)
  store i32 %call15, i32* %final, align 4
  %29 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %30 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %30, i32 0, i32 3
  %31 = load i32, i32* %f16, align 4
  %32 = load i32, i32* %final, align 4
  %33 = load i32, i32* %reg.addr, align 4
  %34 = load i32, i32* %p_f, align 4
  call void @patchlistaux(%struct.FuncState* %29, i32 %31, i32 %32, i32 %33, i32 %34)
  %35 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %36 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %36, i32 0, i32 2
  %37 = load i32, i32* %t17, align 4
  %38 = load i32, i32* %final, align 4
  %39 = load i32, i32* %reg.addr, align 4
  %40 = load i32, i32* %p_t, align 4
  call void @patchlistaux(%struct.FuncState* %35, i32 %37, i32 %38, i32 %39, i32 %40)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.14, %if.end
  %41 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %41, i32 0, i32 2
  store i32 -1, i32* %t19, align 4
  %42 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %42, i32 0, i32 3
  store i32 -1, i32* %f20, align 4
  %43 = load i32, i32* %reg.addr, align 4
  %44 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %44, i32 0, i32 1
  %s22 = bitcast %union.anon.3* %u21 to %struct.anon.4*
  %info23 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s22, i32 0, i32 0
  store i32 %43, i32* %info23, align 4
  %45 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %45, i32 0, i32 0
  store i32 12, i32* %k24, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2anyreg(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 0
  %3 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %3, 12
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 2
  %5 = load i32, i32* %t, align 4
  %6 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i32 0, i32 3
  %7 = load i32, i32* %f, align 4
  %cmp1 = icmp ne i32 %5, %7
  br i1 %cmp1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %9 = load i32, i32* %info, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 1
  %s4 = bitcast %union.anon.3* %u3 to %struct.anon.4*
  %info5 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s4, i32 0, i32 0
  %11 = load i32, i32* %info5, align 4
  %12 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nactvar = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 13
  %13 = load i8, i8* %nactvar, align 1
  %conv = zext i8 %13 to i32
  %cmp6 = icmp sge i32 %11, %conv
  br i1 %cmp6, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.end
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i32 0, i32 1
  %s10 = bitcast %union.anon.3* %u9 to %struct.anon.4*
  %info11 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s10, i32 0, i32 0
  %17 = load i32, i32* %info11, align 4
  call void @exp2reg(%struct.FuncState* %14, %struct.expdesc* %15, i32 %17)
  %18 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 1
  %s13 = bitcast %union.anon.3* %u12 to %struct.anon.4*
  %info14 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s13, i32 0, i32 0
  %19 = load i32, i32* %info14, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %20 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %21 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %20, %struct.expdesc* %21)
  %22 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %22, i32 0, i32 1
  %s18 = bitcast %union.anon.3* %u17 to %struct.anon.4*
  %info19 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s18, i32 0, i32 0
  %23 = load i32, i32* %info19, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.8, %if.then.2
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2val(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i32 0, i32 2
  %1 = load i32, i32* %t, align 4
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 3
  %3 = load i32, i32* %f, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %call = call i32 @luaK_exp2anyreg(%struct.FuncState* %4, %struct.expdesc* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_dischargevars(%struct.FuncState* %6, %struct.expdesc* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2RK(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_exp2val(%struct.FuncState* %0, %struct.expdesc* %1)
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 0
  %3 = load i32, i32* %k, align 4
  switch i32 %3, label %sw.default [
    i32 5, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb
    i32 4, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %nk = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 10
  %5 = load i32, i32* %nk, align 4
  %cmp = icmp sle i32 %5, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k1 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i32 0, i32 0
  %7 = load i32, i32* %k1, align 4
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call = call i32 @nilK(%struct.FuncState* %8)
  br label %cond.end.11

cond.false:                                       ; preds = %if.then
  %9 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 0
  %10 = load i32, i32* %k3, align 4
  %cmp4 = icmp eq i32 %10, 5
  br i1 %cmp4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.false
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %12 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 1
  %nval = bitcast %union.anon.3* %u to double*
  %13 = load double, double* %nval, align 8
  %call6 = call i32 @luaK_numberK(%struct.FuncState* %11, double %13)
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %15, i32 0, i32 0
  %16 = load i32, i32* %k8, align 4
  %cmp9 = icmp eq i32 %16, 2
  %conv = zext i1 %cmp9 to i32
  %call10 = call i32 @boolK(%struct.FuncState* %14, i32 %conv)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.5
  %cond = phi i32 [ %call6, %cond.true.5 ], [ %call10, %cond.false.7 ]
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.end, %cond.true
  %cond12 = phi i32 [ %call, %cond.true ], [ %cond, %cond.end ]
  %17 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 1
  %s = bitcast %union.anon.3* %u13 to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  store i32 %cond12, i32* %info, align 4
  %18 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 0
  store i32 4, i32* %k14, align 4
  %19 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %s16 = bitcast %union.anon.3* %u15 to %struct.anon.4*
  %info17 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s16, i32 0, i32 0
  %20 = load i32, i32* %info17, align 4
  %or = or i32 %20, 256
  store i32 %or, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %21 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %21, i32 0, i32 1
  %s20 = bitcast %union.anon.3* %u19 to %struct.anon.4*
  %info21 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s20, i32 0, i32 0
  %22 = load i32, i32* %info21, align 4
  %cmp22 = icmp sle i32 %22, 255
  br i1 %cmp22, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %sw.bb.18
  %23 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 1
  %s26 = bitcast %union.anon.3* %u25 to %struct.anon.4*
  %info27 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s26, i32 0, i32 0
  %24 = load i32, i32* %info27, align 4
  %or28 = or i32 %24, 256
  store i32 %or28, i32* %retval
  br label %return

if.else.29:                                       ; preds = %sw.bb.18
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else.29, %if.else
  %25 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %26 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %call30 = call i32 @luaK_exp2anyreg(%struct.FuncState* %25, %struct.expdesc* %26)
  store i32 %call30, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.24, %cond.end.11
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @nilK(%struct.FuncState* %fs) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %k = alloca %struct.lua_TValue, align 8
  %v = alloca %struct.lua_TValue, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %v, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  store %struct.lua_TValue* %k, %struct.lua_TValue** %i_o, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %h = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 1
  %1 = load %struct.Table*, %struct.Table** %h, align 8
  %2 = bitcast %struct.Table* %1 to %union.GCObject*
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %2, %union.GCObject** %gc, align 8
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 1
  store i32 5, i32* %tt1, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call = call i32 @addk(%struct.FuncState* %5, %struct.lua_TValue* %k, %struct.lua_TValue* %v)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @boolK(%struct.FuncState* %fs, i32 %b) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %b.addr = alloca i32, align 4
  %o = alloca %struct.lua_TValue, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store %struct.lua_TValue* %o, %struct.lua_TValue** %i_o, align 8
  %0 = load i32, i32* %b.addr, align 4
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i32 0, i32 0
  %b1 = bitcast %union.Value* %value to i32*
  store i32 %0, i32* %b1, align 4
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  store i32 1, i32* %tt, align 4
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call = call i32 @addk(%struct.FuncState* %3, %struct.lua_TValue* %o, %struct.lua_TValue* %o)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_storevar(%struct.FuncState* %fs, %struct.expdesc* %var, %struct.expdesc* %ex) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %var.addr = alloca %struct.expdesc*, align 8
  %ex.addr = alloca %struct.expdesc*, align 8
  %e = alloca i32, align 4
  %e7 = alloca i32, align 4
  %e14 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %var, %struct.expdesc** %var.addr, align 8
  store %struct.expdesc* %ex, %struct.expdesc** %ex.addr, align 8
  %0 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  switch i32 %1, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb.1
    i32 8, label %sw.bb.6
    i32 9, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %ex.addr, align 8
  call void @freeexp(%struct.FuncState* %2, %struct.expdesc* %3)
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %ex.addr, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %7 = load i32, i32* %info, align 4
  call void @exp2reg(%struct.FuncState* %4, %struct.expdesc* %5, i32 %7)
  br label %return

sw.bb.1:                                          ; preds = %entry
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %ex.addr, align 8
  %call = call i32 @luaK_exp2anyreg(%struct.FuncState* %8, %struct.expdesc* %9)
  store i32 %call, i32* %e, align 4
  %10 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %11 = load i32, i32* %e, align 4
  %12 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %u2 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 1
  %s3 = bitcast %union.anon.3* %u2 to %struct.anon.4*
  %info4 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s3, i32 0, i32 0
  %13 = load i32, i32* %info4, align 4
  %call5 = call i32 @luaK_codeABC(%struct.FuncState* %10, i32 8, i32 %11, i32 %13, i32 0)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %ex.addr, align 8
  %call8 = call i32 @luaK_exp2anyreg(%struct.FuncState* %14, %struct.expdesc* %15)
  store i32 %call8, i32* %e7, align 4
  %16 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %17 = load i32, i32* %e7, align 4
  %18 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %u9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 1
  %s10 = bitcast %union.anon.3* %u9 to %struct.anon.4*
  %info11 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s10, i32 0, i32 0
  %19 = load i32, i32* %info11, align 4
  %call12 = call i32 @luaK_codeABx(%struct.FuncState* %16, i32 7, i32 %17, i32 %19)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %20 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %21 = load %struct.expdesc*, %struct.expdesc** %ex.addr, align 8
  %call15 = call i32 @luaK_exp2RK(%struct.FuncState* %20, %struct.expdesc* %21)
  store i32 %call15, i32* %e14, align 4
  %22 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %23 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %u16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 1
  %s17 = bitcast %union.anon.3* %u16 to %struct.anon.4*
  %info18 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s17, i32 0, i32 0
  %24 = load i32, i32* %info18, align 4
  %25 = load %struct.expdesc*, %struct.expdesc** %var.addr, align 8
  %u19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %25, i32 0, i32 1
  %s20 = bitcast %union.anon.3* %u19 to %struct.anon.4*
  %aux = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s20, i32 0, i32 1
  %26 = load i32, i32* %aux, align 4
  %27 = load i32, i32* %e14, align 4
  %call21 = call i32 @luaK_codeABC(%struct.FuncState* %22, i32 9, i32 %24, i32 %26, i32 %27)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.13, %sw.bb.6, %sw.bb.1
  %28 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %29 = load %struct.expdesc*, %struct.expdesc** %ex.addr, align 8
  call void @freeexp(%struct.FuncState* %28, %struct.expdesc* %29)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_self(%struct.FuncState* %fs, %struct.expdesc* %e, %struct.expdesc* %key) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %key.addr = alloca %struct.expdesc*, align 8
  %func = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  store %struct.expdesc* %key, %struct.expdesc** %key.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %call = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1)
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @freeexp(%struct.FuncState* %2, %struct.expdesc* %3)
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 9
  %5 = load i32, i32* %freereg, align 4
  store i32 %5, i32* %func, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  call void @luaK_reserveregs(%struct.FuncState* %6, i32 2)
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %8 = load i32, i32* %func, align 4
  %9 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %10 = load i32, i32* %info, align 4
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %12 = load %struct.expdesc*, %struct.expdesc** %key.addr, align 8
  %call1 = call i32 @luaK_exp2RK(%struct.FuncState* %11, %struct.expdesc* %12)
  %call2 = call i32 @luaK_codeABC(%struct.FuncState* %7, i32 11, i32 %8, i32 %10, i32 %call1)
  %13 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %key.addr, align 8
  call void @freeexp(%struct.FuncState* %13, %struct.expdesc* %14)
  %15 = load i32, i32* %func, align 4
  %16 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i32 0, i32 1
  %s4 = bitcast %union.anon.3* %u3 to %struct.anon.4*
  %info5 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s4, i32 0, i32 0
  store i32 %15, i32* %info5, align 4
  %17 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 0
  store i32 12, i32* %k, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiftrue(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %pc = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 0
  %3 = load i32, i32* %k, align 4
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.1
    i32 10, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 -1, i32* %pc, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call = call i32 @luaK_jump(%struct.FuncState* %4)
  store i32 %call, i32* %pc, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @invertjump(%struct.FuncState* %5, %struct.expdesc* %6)
  %7 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %8 = load i32, i32* %info, align 4
  store i32 %8, i32* %pc, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %9 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %10 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %call3 = call i32 @jumponcond(%struct.FuncState* %9, %struct.expdesc* %10, i32 0)
  store i32 %call3, i32* %pc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %12 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 3
  %13 = load i32, i32* %pc, align 4
  call void @luaK_concat(%struct.FuncState* %11, i32* %f, i32 %13)
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t = getelementptr inbounds %struct.expdesc, %struct.expdesc* %15, i32 0, i32 2
  %16 = load i32, i32* %t, align 4
  call void @luaK_patchtohere(%struct.FuncState* %14, i32 %16)
  %17 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 2
  store i32 -1, i32* %t4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @invertjump(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %pc = alloca i32*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %2 = load i32, i32* %info, align 4
  %call = call i32* @getjumpcontrol(%struct.FuncState* %0, i32 %2)
  store i32* %call, i32** %pc, align 8
  %3 = load i32*, i32** %pc, align 8
  %4 = load i32, i32* %3, align 4
  %and = and i32 %4, -16321
  %5 = load i32*, i32** %pc, align 8
  %6 = load i32, i32* %5, align 4
  %shr = lshr i32 %6, 6
  %and1 = and i32 %shr, 255
  %tobool = icmp ne i32 %and1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %shl = shl i32 %lnot.ext, 6
  %and2 = and i32 %shl, 16320
  %or = or i32 %and, %and2
  %7 = load i32*, i32** %pc, align 8
  store i32 %or, i32* %7, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @jumponcond(%struct.FuncState* %fs, %struct.expdesc* %e, i32 %cond) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %cond.addr = alloca i32, align 4
  %ie = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  store i32 %cond, i32* %cond.addr, align 4
  %0 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %1, 11
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %3 = load i32, i32* %info, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i32 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i32 0, i32 4
  %6 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %ie, align 4
  %8 = load i32, i32* %ie, align 4
  %shr = lshr i32 %8, 0
  %and = and i32 %shr, 63
  %cmp1 = icmp eq i32 %and, 19
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 6
  %10 = load i32, i32* %pc, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %pc, align 4
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %12 = load i32, i32* %ie, align 4
  %shr3 = lshr i32 %12, 23
  %and4 = and i32 %shr3, 511
  %13 = load i32, i32* %cond.addr, align 4
  %tobool = icmp ne i32 %13, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %call = call i32 @condjump(%struct.FuncState* %11, i32 26, i32 %and4, i32 0, i32 %lnot.ext)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @discharge2anyreg(%struct.FuncState* %14, %struct.expdesc* %15)
  %16 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @freeexp(%struct.FuncState* %16, %struct.expdesc* %17)
  %18 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %19 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %s7 = bitcast %union.anon.3* %u6 to %struct.anon.4*
  %info8 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s7, i32 0, i32 0
  %20 = load i32, i32* %info8, align 4
  %21 = load i32, i32* %cond.addr, align 4
  %call9 = call i32 @condjump(%struct.FuncState* %18, i32 27, i32 255, i32 %20, i32 %21)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_indexed(%struct.FuncState* %fs, %struct.expdesc* %t, %struct.expdesc* %k) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %t.addr = alloca %struct.expdesc*, align 8
  %k.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %t, %struct.expdesc** %t.addr, align 8
  store %struct.expdesc* %k, %struct.expdesc** %k.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %k.addr, align 8
  %call = call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %1)
  %2 = load %struct.expdesc*, %struct.expdesc** %t.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %aux = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 1
  store i32 %call, i32* %aux, align 4
  %3 = load %struct.expdesc*, %struct.expdesc** %t.addr, align 8
  %k1 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 0
  store i32 9, i32* %k1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_prefix(%struct.FuncState* %fs, i32 %op, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %op.addr = alloca i32, align 4
  %e.addr = alloca %struct.expdesc*, align 8
  %e2 = alloca %struct.expdesc, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e2, i32 0, i32 3
  store i32 -1, i32* %f, align 4
  %t = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e2, i32 0, i32 2
  store i32 -1, i32* %t, align 4
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e2, i32 0, i32 0
  store i32 5, i32* %k, align 4
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %e2, i32 0, i32 1
  %nval = bitcast %union.anon.3* %u to double*
  store double 0.000000e+00, double* %nval, align 8
  %0 = load i32, i32* %op.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %call = call i32 @isnumeral(%struct.expdesc* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %call1 = call i32 @luaK_exp2anyreg(%struct.FuncState* %2, %struct.expdesc* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @codearith(%struct.FuncState* %4, i32 18, %struct.expdesc* %5, %struct.expdesc* %e2)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @codenot(%struct.FuncState* %6, %struct.expdesc* %7)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %call4 = call i32 @luaK_exp2anyreg(%struct.FuncState* %8, %struct.expdesc* %9)
  %10 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @codearith(%struct.FuncState* %10, i32 20, %struct.expdesc* %11, %struct.expdesc* %e2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @isnumeral(%struct.expdesc* %e) #0 {
entry:
  %e.addr = alloca %struct.expdesc*, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 2
  %3 = load i32, i32* %t, align 4
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 3
  %5 = load i32, i32* %f, align 4
  %cmp2 = icmp eq i32 %5, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @codearith(%struct.FuncState* %fs, i32 %op, %struct.expdesc* %e1, %struct.expdesc* %e2) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %op.addr = alloca i32, align 4
  %e1.addr = alloca %struct.expdesc*, align 8
  %e2.addr = alloca %struct.expdesc*, align 8
  %o2 = alloca i32, align 4
  %o1 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store %struct.expdesc* %e1, %struct.expdesc** %e1.addr, align 8
  store %struct.expdesc* %e2, %struct.expdesc** %e2.addr, align 8
  %0 = load i32, i32* %op.addr, align 4
  %1 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %2 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %call = call i32 @constfolding(i32 %0, %struct.expdesc* %1, %struct.expdesc* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.8

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %op.addr, align 4
  %cmp = icmp ne i32 %3, 18
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %4 = load i32, i32* %op.addr, align 4
  %cmp1 = icmp ne i32 %4, 20
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %call2 = call i32 @luaK_exp2RK(%struct.FuncState* %5, %struct.expdesc* %6)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %o2, align 4
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %8 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %call3 = call i32 @luaK_exp2RK(%struct.FuncState* %7, %struct.expdesc* %8)
  store i32 %call3, i32* %o1, align 4
  %9 = load i32, i32* %o1, align 4
  %10 = load i32, i32* %o2, align 4
  %cmp4 = icmp sgt i32 %9, %10
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %12 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  call void @freeexp(%struct.FuncState* %11, %struct.expdesc* %12)
  %13 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @freeexp(%struct.FuncState* %13, %struct.expdesc* %14)
  br label %if.end

if.else.6:                                        ; preds = %cond.end
  %15 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @freeexp(%struct.FuncState* %15, %struct.expdesc* %16)
  %17 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  call void @freeexp(%struct.FuncState* %17, %struct.expdesc* %18)
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  %19 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %20 = load i32, i32* %op.addr, align 4
  %21 = load i32, i32* %o1, align 4
  %22 = load i32, i32* %o2, align 4
  %call7 = call i32 @luaK_codeABC(%struct.FuncState* %19, i32 %20, i32 0, i32 %21, i32 %22)
  %23 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  store i32 %call7, i32* %info, align 4
  %24 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %24, i32 0, i32 0
  store i32 11, i32* %k, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @codenot(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %temp = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 0
  %3 = load i32, i32* %k, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb.2
    i32 5, label %sw.bb.2
    i32 2, label %sw.bb.2
    i32 10, label %sw.bb.4
    i32 11, label %sw.bb.5
    i32 12, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry, %entry
  %4 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k1 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 0
  store i32 2, i32* %k1, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry, %entry, %entry
  %5 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 0
  store i32 3, i32* %k3, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @invertjump(%struct.FuncState* %6, %struct.expdesc* %7)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry, %entry
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @discharge2anyreg(%struct.FuncState* %8, %struct.expdesc* %9)
  %10 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @freeexp(%struct.FuncState* %10, %struct.expdesc* %11)
  %12 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %14 = load i32, i32* %info, align 4
  %call = call i32 @luaK_codeABC(%struct.FuncState* %12, i32 19, i32 0, i32 %14, i32 0)
  %15 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %15, i32 0, i32 1
  %s7 = bitcast %union.anon.3* %u6 to %struct.anon.4*
  %info8 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s7, i32 0, i32 0
  store i32 %call, i32* %info8, align 4
  %16 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i32 0, i32 0
  store i32 11, i32* %k9, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.4, %sw.bb.2, %sw.bb
  %17 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 3
  %18 = load i32, i32* %f, align 4
  store i32 %18, i32* %temp, align 4
  %19 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 2
  %20 = load i32, i32* %t, align 4
  %21 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %21, i32 0, i32 3
  store i32 %20, i32* %f10, align 4
  %22 = load i32, i32* %temp, align 4
  %23 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 2
  store i32 %22, i32* %t11, align 4
  %24 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %25, i32 0, i32 3
  %26 = load i32, i32* %f12, align 4
  call void @removevalues(%struct.FuncState* %24, i32 %26)
  %27 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %28 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %28, i32 0, i32 2
  %29 = load i32, i32* %t13, align 4
  call void @removevalues(%struct.FuncState* %27, i32 %29)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_infix(%struct.FuncState* %fs, i32 %op, %struct.expdesc* %v) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %op.addr = alloca i32, align 4
  %v.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store %struct.expdesc* %v, %struct.expdesc** %v.addr, align 8
  %0 = load i32, i32* %op.addr, align 4
  switch i32 %0, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb.1
    i32 6, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.3
    i32 5, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %2 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_goiftrue(%struct.FuncState* %1, %struct.expdesc* %2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %4 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_goiffalse(%struct.FuncState* %3, %struct.expdesc* %4)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %7 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %call = call i32 @isnumeral(%struct.expdesc* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %call4 = call i32 @luaK_exp2RK(%struct.FuncState* %8, %struct.expdesc* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %v.addr, align 8
  %call5 = call i32 @luaK_exp2RK(%struct.FuncState* %10, %struct.expdesc* %11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @luaK_goiffalse(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %pc = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 0
  %3 = load i32, i32* %k, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.1
    i32 10, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 -1, i32* %pc, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call = call i32 @luaK_jump(%struct.FuncState* %4)
  store i32 %call, i32* %pc, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %6 = load i32, i32* %info, align 4
  store i32 %6, i32* %pc, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %8 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %call3 = call i32 @jumponcond(%struct.FuncState* %7, %struct.expdesc* %8, i32 1)
  store i32 %call3, i32* %pc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %10 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %t = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 2
  %11 = load i32, i32* %pc, align 4
  call void @luaK_concat(%struct.FuncState* %9, i32* %t, i32 %11)
  %12 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %13 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i32 0, i32 3
  %14 = load i32, i32* %f, align 4
  call void @luaK_patchtohere(%struct.FuncState* %12, i32 %14)
  %15 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %f4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %15, i32 0, i32 3
  store i32 -1, i32* %f4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_posfix(%struct.FuncState* %fs, i32 %op, %struct.expdesc* %e1, %struct.expdesc* %e2) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %op.addr = alloca i32, align 4
  %e1.addr = alloca %struct.expdesc*, align 8
  %e2.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store %struct.expdesc* %e1, %struct.expdesc** %e1.addr, align 8
  store %struct.expdesc* %e2, %struct.expdesc** %e2.addr, align 8
  %0 = load i32, i32* %op.addr, align 4
  switch i32 %0, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb.2
    i32 6, label %sw.bb.4
    i32 0, label %sw.bb.33
    i32 1, label %sw.bb.34
    i32 2, label %sw.bb.35
    i32 3, label %sw.bb.36
    i32 4, label %sw.bb.37
    i32 5, label %sw.bb.38
    i32 8, label %sw.bb.39
    i32 7, label %sw.bb.40
    i32 9, label %sw.bb.41
    i32 10, label %sw.bb.42
    i32 11, label %sw.bb.43
    i32 12, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %2 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @luaK_dischargevars(%struct.FuncState* %1, %struct.expdesc* %2)
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %4 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %f = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 3
  %5 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %f1 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 3
  %6 = load i32, i32* %f1, align 4
  call void @luaK_concat(%struct.FuncState* %3, i32* %f, i32 %6)
  %7 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %8 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %9 = bitcast %struct.expdesc* %7 to i8*
  %10 = bitcast %struct.expdesc* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 24, i32 8, i1 false)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %12 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @luaK_dischargevars(%struct.FuncState* %11, %struct.expdesc* %12)
  %13 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %14 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %t = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i32 0, i32 2
  %15 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %t3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %15, i32 0, i32 2
  %16 = load i32, i32* %t3, align 4
  call void @luaK_concat(%struct.FuncState* %13, i32* %t, i32 %16)
  %17 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %19 = bitcast %struct.expdesc* %17 to i8*
  %20 = bitcast %struct.expdesc* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 24, i32 8, i1 false)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %21 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @luaK_exp2val(%struct.FuncState* %21, %struct.expdesc* %22)
  %23 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 0
  %24 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %24, 11
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.4
  %25 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %25, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %26 = load i32, i32* %info, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i32 0, i32 0
  %28 = load %struct.Proto*, %struct.Proto** %f5, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 4
  %29 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %29, i64 %idxprom
  %30 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %30, 0
  %and = and i32 %shr, 63
  %cmp6 = icmp eq i32 %and, 21
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %31 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %32 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  call void @freeexp(%struct.FuncState* %31, %struct.expdesc* %32)
  %33 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %u7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %33, i32 0, i32 1
  %s8 = bitcast %union.anon.3* %u7 to %struct.anon.4*
  %info9 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s8, i32 0, i32 0
  %34 = load i32, i32* %info9, align 4
  %idxprom10 = sext i32 %34 to i64
  %35 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %35, i32 0, i32 0
  %36 = load %struct.Proto*, %struct.Proto** %f11, align 8
  %code12 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 4
  %37 = load i32*, i32** %code12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %37, i64 %idxprom10
  %38 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %38, 8388607
  %39 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %u15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %39, i32 0, i32 1
  %s16 = bitcast %union.anon.3* %u15 to %struct.anon.4*
  %info17 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s16, i32 0, i32 0
  %40 = load i32, i32* %info17, align 4
  %shl = shl i32 %40, 23
  %and18 = and i32 %shl, -8388608
  %or = or i32 %and14, %and18
  %41 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %u19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %41, i32 0, i32 1
  %s20 = bitcast %union.anon.3* %u19 to %struct.anon.4*
  %info21 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s20, i32 0, i32 0
  %42 = load i32, i32* %info21, align 4
  %idxprom22 = sext i32 %42 to i64
  %43 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %43, i32 0, i32 0
  %44 = load %struct.Proto*, %struct.Proto** %f23, align 8
  %code24 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 4
  %45 = load i32*, i32** %code24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %45, i64 %idxprom22
  store i32 %or, i32* %arrayidx25, align 4
  %46 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %k26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %46, i32 0, i32 0
  store i32 11, i32* %k26, align 4
  %47 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %u27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %47, i32 0, i32 1
  %s28 = bitcast %union.anon.3* %u27 to %struct.anon.4*
  %info29 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s28, i32 0, i32 0
  %48 = load i32, i32* %info29, align 4
  %49 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %u30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %49, i32 0, i32 1
  %s31 = bitcast %union.anon.3* %u30 to %struct.anon.4*
  %info32 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s31, i32 0, i32 0
  store i32 %48, i32* %info32, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %sw.bb.4
  %50 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %51 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %50, %struct.expdesc* %51)
  %52 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %53 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %54 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codearith(%struct.FuncState* %52, i32 21, %struct.expdesc* %53, %struct.expdesc* %54)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %55 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %56 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %57 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codearith(%struct.FuncState* %55, i32 12, %struct.expdesc* %56, %struct.expdesc* %57)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry
  %58 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %59 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %60 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codearith(%struct.FuncState* %58, i32 13, %struct.expdesc* %59, %struct.expdesc* %60)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %61 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %62 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %63 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codearith(%struct.FuncState* %61, i32 14, %struct.expdesc* %62, %struct.expdesc* %63)
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %64 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %65 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %66 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codearith(%struct.FuncState* %64, i32 15, %struct.expdesc* %65, %struct.expdesc* %66)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %67 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %68 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %69 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codearith(%struct.FuncState* %67, i32 16, %struct.expdesc* %68, %struct.expdesc* %69)
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %70 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %71 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %72 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codearith(%struct.FuncState* %70, i32 17, %struct.expdesc* %71, %struct.expdesc* %72)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %73 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %74 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %75 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codecomp(%struct.FuncState* %73, i32 23, i32 1, %struct.expdesc* %74, %struct.expdesc* %75)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %entry
  %76 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %77 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %78 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codecomp(%struct.FuncState* %76, i32 23, i32 0, %struct.expdesc* %77, %struct.expdesc* %78)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %79 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %80 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %81 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codecomp(%struct.FuncState* %79, i32 24, i32 1, %struct.expdesc* %80, %struct.expdesc* %81)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %82 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %83 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %84 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codecomp(%struct.FuncState* %82, i32 25, i32 1, %struct.expdesc* %83, %struct.expdesc* %84)
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  %85 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %86 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %87 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codecomp(%struct.FuncState* %85, i32 24, i32 0, %struct.expdesc* %86, %struct.expdesc* %87)
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %88 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %89 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %90 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @codecomp(%struct.FuncState* %88, i32 25, i32 0, %struct.expdesc* %89, %struct.expdesc* %90)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.44, %sw.bb.43, %sw.bb.42, %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb.34, %sw.bb.33, %if.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @codecomp(%struct.FuncState* %fs, i32 %op, i32 %cond, %struct.expdesc* %e1, %struct.expdesc* %e2) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %op.addr = alloca i32, align 4
  %cond.addr = alloca i32, align 4
  %e1.addr = alloca %struct.expdesc*, align 8
  %e2.addr = alloca %struct.expdesc*, align 8
  %o1 = alloca i32, align 4
  %o2 = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %cond, i32* %cond.addr, align 4
  store %struct.expdesc* %e1, %struct.expdesc** %e1.addr, align 8
  store %struct.expdesc* %e2, %struct.expdesc** %e2.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %call = call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %1)
  store i32 %call, i32* %o1, align 4
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %3 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %call1 = call i32 @luaK_exp2RK(%struct.FuncState* %2, %struct.expdesc* %3)
  store i32 %call1, i32* %o2, align 4
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %5 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  call void @freeexp(%struct.FuncState* %4, %struct.expdesc* %5)
  %6 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  call void @freeexp(%struct.FuncState* %6, %struct.expdesc* %7)
  %8 = load i32, i32* %cond.addr, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %op.addr, align 4
  %cmp2 = icmp ne i32 %9, 23
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %o1, align 4
  store i32 %10, i32* %temp, align 4
  %11 = load i32, i32* %o2, align 4
  store i32 %11, i32* %o1, align 4
  %12 = load i32, i32* %temp, align 4
  store i32 %12, i32* %o2, align 4
  store i32 1, i32* %cond.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %14 = load i32, i32* %op.addr, align 4
  %15 = load i32, i32* %cond.addr, align 4
  %16 = load i32, i32* %o1, align 4
  %17 = load i32, i32* %o2, align 4
  %call3 = call i32 @condjump(%struct.FuncState* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %18 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  store i32 %call3, i32* %info, align 4
  %19 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 0
  store i32 10, i32* %k, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_fixline(%struct.FuncState* %fs, i32 %line) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %line.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load i32, i32* %line.addr, align 4
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i32 0, i32 6
  %2 = load i32, i32* %pc, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i32 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %f, align 8
  %lineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i32 0, i32 6
  %5 = load i32*, i32** %lineinfo, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @luaK_code(%struct.FuncState* %fs, i32 %i, i32 %line) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %i.addr = alloca i32, align 4
  %line.addr = alloca i32, align 4
  %f = alloca %struct.Proto*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i32 0, i32 0
  %1 = load %struct.Proto*, %struct.Proto** %f1, align 8
  store %struct.Proto* %1, %struct.Proto** %f, align 8
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  call void @dischargejpc(%struct.FuncState* %2)
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i32 0, i32 6
  %4 = load i32, i32* %pc, align 4
  %add = add nsw i32 %4, 1
  %5 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizecode = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i32 0, i32 12
  %6 = load i32, i32* %sizecode, align 4
  %cmp = icmp sgt i32 %add, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %L = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 4
  %8 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %9 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i32 0, i32 4
  %10 = load i32*, i32** %code, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizecode2 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 12
  %call = call i8* @luaM_growaux_(%struct.lua_State* %8, i8* %11, i32* %sizecode2, i64 4, i32 2147483645, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  %13 = bitcast i8* %call to i32*
  %14 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code3 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 4
  store i32* %13, i32** %code3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %i.addr, align 4
  %16 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 6
  %17 = load i32, i32* %pc4, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code5 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 4
  %19 = load i32*, i32** %code5, align 8
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  store i32 %15, i32* %arrayidx, align 4
  %20 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %20, i32 0, i32 6
  %21 = load i32, i32* %pc6, align 4
  %add7 = add nsw i32 %21, 1
  %22 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 13
  %23 = load i32, i32* %sizelineinfo, align 4
  %cmp8 = icmp sgt i32 %add7, %23
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end
  %24 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %L10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i32 0, i32 4
  %25 = load %struct.lua_State*, %struct.lua_State** %L10, align 8
  %26 = load %struct.Proto*, %struct.Proto** %f, align 8
  %lineinfo = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 6
  %27 = load i32*, i32** %lineinfo, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load %struct.Proto*, %struct.Proto** %f, align 8
  %sizelineinfo11 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 13
  %call12 = call i8* @luaM_growaux_(%struct.lua_State* %25, i8* %28, i32* %sizelineinfo11, i64 4, i32 2147483645, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  %30 = bitcast i8* %call12 to i32*
  %31 = load %struct.Proto*, %struct.Proto** %f, align 8
  %lineinfo13 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 6
  store i32* %30, i32** %lineinfo13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %if.end
  %32 = load i32, i32* %line.addr, align 4
  %33 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %33, i32 0, i32 6
  %34 = load i32, i32* %pc15, align 4
  %idxprom16 = sext i32 %34 to i64
  %35 = load %struct.Proto*, %struct.Proto** %f, align 8
  %lineinfo17 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i32 0, i32 6
  %36 = load i32*, i32** %lineinfo17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %36, i64 %idxprom16
  store i32 %32, i32* %arrayidx18, align 4
  %37 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i32 0, i32 6
  %38 = load i32, i32* %pc19, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %pc19, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_setlist(%struct.FuncState* %fs, i32 %base, i32 %nelems, i32 %tostore) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %base.addr = alloca i32, align 4
  %nelems.addr = alloca i32, align 4
  %tostore.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %nelems, i32* %nelems.addr, align 4
  store i32 %tostore, i32* %tostore.addr, align 4
  %0 = load i32, i32* %nelems.addr, align 4
  %sub = sub nsw i32 %0, 1
  %div = sdiv i32 %sub, 50
  %add = add nsw i32 %div, 1
  store i32 %add, i32* %c, align 4
  %1 = load i32, i32* %tostore.addr, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %tostore.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %b, align 4
  %3 = load i32, i32* %c, align 4
  %cmp1 = icmp sle i32 %3, 511
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %5 = load i32, i32* %base.addr, align 4
  %6 = load i32, i32* %b, align 4
  %7 = load i32, i32* %c, align 4
  %call = call i32 @luaK_codeABC(%struct.FuncState* %4, i32 34, i32 %5, i32 %6, i32 %7)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %8 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %9 = load i32, i32* %base.addr, align 4
  %10 = load i32, i32* %b, align 4
  %call2 = call i32 @luaK_codeABC(%struct.FuncState* %8, i32 34, i32 %9, i32 %10, i32 0)
  %11 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %12 = load i32, i32* %c, align 4
  %13 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %ls = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 3
  %14 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %lastline = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 2
  %15 = load i32, i32* %lastline, align 4
  %call3 = call i32 @luaK_code(%struct.FuncState* %11, i32 %12, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %base.addr, align 4
  %add4 = add nsw i32 %16, 1
  %17 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %17, i32 0, i32 9
  store i32 %add4, i32* %freereg, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @patchtestreg(%struct.FuncState* %fs, i32 %node, i32 %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.FuncState*, align 8
  %node.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %i = alloca i32*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %node, i32* %node.addr, align 4
  store i32 %reg, i32* %reg.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load i32, i32* %node.addr, align 4
  %call = call i32* @getjumpcontrol(%struct.FuncState* %0, i32 %1)
  store i32* %call, i32** %i, align 8
  %2 = load i32*, i32** %i, align 8
  %3 = load i32, i32* %2, align 4
  %shr = lshr i32 %3, 0
  %and = and i32 %shr, 63
  %cmp = icmp ne i32 %and, 27
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %reg.addr, align 4
  %cmp1 = icmp ne i32 %4, 255
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %reg.addr, align 4
  %6 = load i32*, i32** %i, align 8
  %7 = load i32, i32* %6, align 4
  %shr2 = lshr i32 %7, 23
  %and3 = and i32 %shr2, 511
  %cmp4 = icmp ne i32 %5, %and3
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %8 = load i32*, i32** %i, align 8
  %9 = load i32, i32* %8, align 4
  %and6 = and i32 %9, -16321
  %10 = load i32, i32* %reg.addr, align 4
  %shl = shl i32 %10, 6
  %and7 = and i32 %shl, 16320
  %or = or i32 %and6, %and7
  %11 = load i32*, i32** %i, align 8
  store i32 %or, i32* %11, align 4
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load i32*, i32** %i, align 8
  %13 = load i32, i32* %12, align 4
  %shr8 = lshr i32 %13, 23
  %and9 = and i32 %shr8, 511
  %shl10 = shl i32 %and9, 6
  %or11 = or i32 26, %shl10
  %14 = load i32*, i32** %i, align 8
  %15 = load i32, i32* %14, align 4
  %shr12 = lshr i32 %15, 14
  %and13 = and i32 %shr12, 511
  %shl14 = shl i32 %and13, 14
  %or15 = or i32 %or11, %shl14
  %16 = load i32*, i32** %i, align 8
  store i32 %or15, i32* %16, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.5
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32* @getjumpcontrol(%struct.FuncState* %fs, i32 %pc) #0 {
entry:
  %retval = alloca i32*, align 8
  %fs.addr = alloca %struct.FuncState*, align 8
  %pc.addr = alloca i32, align 4
  %pi = alloca i32*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %pc, i32* %pc.addr, align 4
  %0 = load i32, i32* %pc.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i32 0, i32 0
  %2 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %2, i32 0, i32 4
  %3 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32* %arrayidx, i32** %pi, align 8
  %4 = load i32, i32* %pc.addr, align 4
  %cmp = icmp sge i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32*, i32** %pi, align 8
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 -1
  %6 = load i32, i32* %add.ptr, align 4
  %shr = lshr i32 %6, 0
  %and = and i32 %shr, 63
  %idxprom1 = zext i32 %and to i64
  %arrayidx2 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i32 0, i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  %and3 = and i32 %conv, 128
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32*, i32** %pi, align 8
  %add.ptr4 = getelementptr inbounds i32, i32* %8, i64 -1
  store i32* %add.ptr4, i32** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load i32*, i32** %pi, align 8
  store i32* %9, i32** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i32*, i32** %retval
  ret i32* %10
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #1

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32*, i64, i32, i8*) #1

declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) #1

; Function Attrs: nounwind uwtable
define internal void @discharge2reg(%struct.FuncState* %fs, %struct.expdesc* %e, i32 %reg) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  %reg.addr = alloca i32, align 4
  %pc = alloca i32*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  store i32 %reg, i32* %reg.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %2 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 0
  %3 = load i32, i32* %k, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.3
    i32 5, label %sw.bb.5
    i32 11, label %sw.bb.9
    i32 12, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %5 = load i32, i32* %reg.addr, align 4
  call void @luaK_nil(%struct.FuncState* %4, i32 %5, i32 1)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  %6 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %7 = load i32, i32* %reg.addr, align 4
  %8 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k2 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %9 = load i32, i32* %k2, align 4
  %cmp = icmp eq i32 %9, 2
  %conv = zext i1 %cmp to i32
  %call = call i32 @luaK_codeABC(%struct.FuncState* %6, i32 2, i32 %7, i32 %conv, i32 0)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %11 = load i32, i32* %reg.addr, align 4
  %12 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 1
  %s = bitcast %union.anon.3* %u to %struct.anon.4*
  %info = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s, i32 0, i32 0
  %13 = load i32, i32* %info, align 4
  %call4 = call i32 @luaK_codeABx(%struct.FuncState* %10, i32 1, i32 %11, i32 %13)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %14 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %15 = load i32, i32* %reg.addr, align 4
  %16 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 1
  %nval = bitcast %union.anon.3* %u6 to double*
  %18 = load double, double* %nval, align 8
  %call7 = call i32 @luaK_numberK(%struct.FuncState* %16, double %18)
  %call8 = call i32 @luaK_codeABx(%struct.FuncState* %14, i32 1, i32 %15, i32 %call7)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %19 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i32 0, i32 1
  %s11 = bitcast %union.anon.3* %u10 to %struct.anon.4*
  %info12 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s11, i32 0, i32 0
  %20 = load i32, i32* %info12, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %f = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i32 0, i32 0
  %22 = load %struct.Proto*, %struct.Proto** %f, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 4
  %23 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %23, i64 %idxprom
  store i32* %arrayidx, i32** %pc, align 8
  %24 = load i32*, i32** %pc, align 8
  %25 = load i32, i32* %24, align 4
  %and = and i32 %25, -16321
  %26 = load i32, i32* %reg.addr, align 4
  %shl = shl i32 %26, 6
  %and13 = and i32 %shl, 16320
  %or = or i32 %and, %and13
  %27 = load i32*, i32** %pc, align 8
  store i32 %or, i32* %27, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %28 = load i32, i32* %reg.addr, align 4
  %29 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %29, i32 0, i32 1
  %s16 = bitcast %union.anon.3* %u15 to %struct.anon.4*
  %info17 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s16, i32 0, i32 0
  %30 = load i32, i32* %info17, align 4
  %cmp18 = icmp ne i32 %28, %30
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.14
  %31 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %32 = load i32, i32* %reg.addr, align 4
  %33 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %33, i32 0, i32 1
  %s21 = bitcast %union.anon.3* %u20 to %struct.anon.4*
  %info22 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s21, i32 0, i32 0
  %34 = load i32, i32* %info22, align 4
  %call23 = call i32 @luaK_codeABC(%struct.FuncState* %31, i32 0, i32 %32, i32 %34, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %if.end, %sw.bb.9, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %35 = load i32, i32* %reg.addr, align 4
  %36 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %u24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %36, i32 0, i32 1
  %s25 = bitcast %union.anon.3* %u24 to %struct.anon.4*
  %info26 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %s25, i32 0, i32 0
  store i32 %35, i32* %info26, align 4
  %37 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %37, i32 0, i32 0
  store i32 12, i32* %k27, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @need_value(%struct.FuncState* %fs, i32 %list) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.FuncState*, align 8
  %list.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %list, i32* %list.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %list.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %2 = load i32, i32* %list.addr, align 4
  %call = call i32* @getjumpcontrol(%struct.FuncState* %1, i32 %2)
  %3 = load i32, i32* %call, align 4
  store i32 %3, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %shr = lshr i32 %4, 0
  %and = and i32 %shr, 63
  %cmp1 = icmp ne i32 %and, 27
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %6 = load i32, i32* %list.addr, align 4
  %call2 = call i32 @getjump(%struct.FuncState* %5, i32 %6)
  store i32 %call2, i32* %list.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @code_label(%struct.FuncState* %fs, i32 %A, i32 %b, i32 %jump) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %A.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %jump.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %A, i32* %A.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %jump, i32* %jump.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call = call i32 @luaK_getlabel(%struct.FuncState* %0)
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %2 = load i32, i32* %A.addr, align 4
  %3 = load i32, i32* %b.addr, align 4
  %4 = load i32, i32* %jump.addr, align 4
  %call1 = call i32 @luaK_codeABC(%struct.FuncState* %1, i32 2, i32 %2, i32 %3, i32 %4)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @condjump(%struct.FuncState* %fs, i32 %op, i32 %A, i32 %B, i32 %C) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %op.addr = alloca i32, align 4
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %A, i32* %A.addr, align 4
  store i32 %B, i32* %B.addr, align 4
  store i32 %C, i32* %C.addr, align 4
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load i32, i32* %op.addr, align 4
  %2 = load i32, i32* %A.addr, align 4
  %3 = load i32, i32* %B.addr, align 4
  %4 = load i32, i32* %C.addr, align 4
  %call = call i32 @luaK_codeABC(%struct.FuncState* %0, i32 %1, i32 %2, i32 %3, i32 %4)
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %call1 = call i32 @luaK_jump(%struct.FuncState* %5)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal void @discharge2anyreg(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %e.addr = alloca %struct.expdesc*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store %struct.expdesc* %e, %struct.expdesc** %e.addr, align 8
  %0 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %k = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i32 0, i32 0
  %1 = load i32, i32* %k, align 4
  %cmp = icmp ne i32 %1, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  call void @luaK_reserveregs(%struct.FuncState* %2, i32 1)
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %4 = load %struct.expdesc*, %struct.expdesc** %e.addr, align 8
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %freereg = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 9
  %6 = load i32, i32* %freereg, align 4
  %sub = sub nsw i32 %6, 1
  call void @discharge2reg(%struct.FuncState* %3, %struct.expdesc* %4, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @constfolding(i32 %op, %struct.expdesc* %e1, %struct.expdesc* %e2) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %e1.addr = alloca %struct.expdesc*, align 8
  %e2.addr = alloca %struct.expdesc*, align 8
  %v1 = alloca double, align 8
  %v2 = alloca double, align 8
  %r = alloca double, align 8
  store i32 %op, i32* %op.addr, align 4
  store %struct.expdesc* %e1, %struct.expdesc** %e1.addr, align 8
  store %struct.expdesc* %e2, %struct.expdesc** %e2.addr, align 8
  %0 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %call = call i32 @isnumeral(%struct.expdesc* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %call1 = call i32 @isnumeral(%struct.expdesc* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %u = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i32 0, i32 1
  %nval = bitcast %union.anon.3* %u to double*
  %3 = load double, double* %nval, align 8
  store double %3, double* %v1, align 8
  %4 = load %struct.expdesc*, %struct.expdesc** %e2.addr, align 8
  %u3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 1
  %nval4 = bitcast %union.anon.3* %u3 to double*
  %5 = load double, double* %nval4, align 8
  store double %5, double* %v2, align 8
  %6 = load i32, i32* %op.addr, align 4
  switch i32 %6, label %sw.default [
    i32 12, label %sw.bb
    i32 13, label %sw.bb.5
    i32 14, label %sw.bb.6
    i32 15, label %sw.bb.7
    i32 16, label %sw.bb.10
    i32 17, label %sw.bb.18
    i32 18, label %sw.bb.20
    i32 20, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load double, double* %v1, align 8
  %8 = load double, double* %v2, align 8
  %add = fadd double %7, %8
  store double %add, double* %r, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %9 = load double, double* %v1, align 8
  %10 = load double, double* %v2, align 8
  %sub = fsub double %9, %10
  store double %sub, double* %r, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %11 = load double, double* %v1, align 8
  %12 = load double, double* %v2, align 8
  %mul = fmul double %11, %12
  store double %mul, double* %r, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %13 = load double, double* %v2, align 8
  %cmp = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %sw.bb.7
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %sw.bb.7
  %14 = load double, double* %v1, align 8
  %15 = load double, double* %v2, align 8
  %div = fdiv double %14, %15
  store double %div, double* %r, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  %16 = load double, double* %v2, align 8
  %cmp11 = fcmp oeq double %16, 0.000000e+00
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb.10
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %sw.bb.10
  %17 = load double, double* %v1, align 8
  %18 = load double, double* %v1, align 8
  %19 = load double, double* %v2, align 8
  %div14 = fdiv double %18, %19
  %call15 = call double @floor(double %div14) #5
  %20 = load double, double* %v2, align 8
  %mul16 = fmul double %call15, %20
  %sub17 = fsub double %17, %mul16
  store double %sub17, double* %r, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %21 = load double, double* %v1, align 8
  %22 = load double, double* %v2, align 8
  %call19 = call double @pow(double %21, double %22) #2
  store double %call19, double* %r, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %23 = load double, double* %v1, align 8
  %sub21 = fsub double -0.000000e+00, %23
  store double %sub21, double* %r, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store double 0.000000e+00, double* %r, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.20, %sw.bb.18, %if.end.13, %if.end.9, %sw.bb.6, %sw.bb.5, %sw.bb
  %24 = load double, double* %r, align 8
  %25 = load double, double* %r, align 8
  %cmp23 = fcmp oeq double %24, %25
  br i1 %cmp23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %sw.epilog
  %26 = load double, double* %r, align 8
  %27 = load %struct.expdesc*, %struct.expdesc** %e1.addr, align 8
  %u26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %27, i32 0, i32 1
  %nval27 = bitcast %union.anon.3* %u26 to double*
  store double %26, double* %nval27, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %sw.bb.22, %if.then.12, %if.then.8, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind uwtable
define internal void @removevalues(%struct.FuncState* %fs, i32 %list) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  %list.addr = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  store i32 %list, i32* %list.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %list.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %2 = load i32, i32* %list.addr, align 4
  %call = call i32 @patchtestreg(%struct.FuncState* %1, i32 %2, i32 255)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %4 = load i32, i32* %list.addr, align 4
  %call1 = call i32 @getjump(%struct.FuncState* %3, i32 %4)
  store i32 %call1, i32* %list.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dischargejpc(%struct.FuncState* %fs) #0 {
entry:
  %fs.addr = alloca %struct.FuncState*, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %fs.addr, align 8
  %0 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %1 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %jpc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i32 0, i32 8
  %2 = load i32, i32* %jpc, align 4
  %3 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i32 0, i32 6
  %4 = load i32, i32* %pc, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %pc1 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 6
  %6 = load i32, i32* %pc1, align 4
  call void @patchlistaux(%struct.FuncState* %0, i32 %2, i32 %4, i32 255, i32 %6)
  %7 = load %struct.FuncState*, %struct.FuncState** %fs.addr, align 8
  %jpc2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 8
  store i32 -1, i32* %jpc2, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
