; ModuleID = './MultiSource.Applications.lua/16.llex.bc'
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
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %union.TString*, i8 }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.Table*, %struct.FuncState*, %struct.LexState*, %struct.lua_State*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, [60 x %struct.upvaldesc], [200 x i16] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.BlockCnt = type opaque
%struct.upvaldesc = type { i8, i8 }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"~=\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"<number>\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"<name>\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1
@luaX_tokens = hidden constant [32 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* null], align 16
@.str.31 = private unnamed_addr constant [9 x i8] c"char(%d)\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"%s near '%s'\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"lexical element too long\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"invalid long string delimiter\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"chunk has too many lines\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"unfinished long string\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"unfinished long comment\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"nesting of [[...]] is deprecated\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"unfinished string\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"escape sequence too large\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"Ee\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"malformed number\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @luaX_init(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %i = alloca i32, align 4
  %ts = alloca %union.TString*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x i8*], [32 x i8*]* @luaX_tokens, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [32 x i8*], [32 x i8*]* @luaX_tokens, i32 0, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  %call = call i64 @strlen(i8* %5) #6
  %call3 = call %union.TString* @luaS_newlstr(%struct.lua_State* %1, i8* %3, i64 %call)
  store %union.TString* %call3, %union.TString** %ts, align 8
  %6 = load %union.TString*, %union.TString** %ts, align 8
  %tsv = bitcast %union.TString* %6 to %struct.anon.1*
  %marked = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 2
  %7 = load i8, i8* %marked, align 1
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, 32
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, i8* %marked, align 1
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %conv5 = trunc i32 %add to i8
  %9 = load %union.TString*, %union.TString** %ts, align 8
  %tsv6 = bitcast %union.TString* %9 to %struct.anon.1*
  %reserved = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv6, i32 0, i32 3
  store i8 %conv5, i8* %reserved, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define hidden i8* @luaX_token2str(%struct.LexState* %ls, i32 %token) #0 {
entry:
  %retval = alloca i8*, align 8
  %ls.addr = alloca %struct.LexState*, align 8
  %token.addr = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %token, i32* %token.addr, align 4
  %0 = load i32, i32* %token.addr, align 4
  %cmp = icmp slt i32 %0, 257
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %token.addr, align 4
  %idxprom = sext i32 %1 to i64
  %call = call i16** @__ctype_b_loc() #7
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 6
  %5 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %6 = load i32, i32* %token.addr, align 4
  %call1 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %6)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L2 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 6
  %8 = load %struct.lua_State*, %struct.lua_State** %L2, align 8
  %9 = load i32, i32* %token.addr, align 4
  %call3 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i32 %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call1, %cond.true ], [ %call3, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %token.addr, align 4
  %sub = sub nsw i32 %10, 257
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [32 x i8*], [32 x i8*]* @luaX_tokens, i32 0, i64 %idxprom4
  %11 = load i8*, i8** %arrayidx5, align 8
  store i8* %11, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %cond.end
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define hidden void @luaX_lexerror(%struct.LexState* %ls, i8* %msg, i32 %token) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %msg.addr = alloca i8*, align 8
  %token.addr = alloca i32, align 4
  %buff = alloca [80 x i8], align 16
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store i32 %token, i32* %token.addr, align 4
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buff, i32 0, i32 0
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %source = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 9
  %1 = load %union.TString*, %union.TString** %source, align 8
  %add.ptr = getelementptr inbounds %union.TString, %union.TString* %1, i64 1
  %2 = bitcast %union.TString* %add.ptr to i8*
  call void @luaO_chunkid(i8* %arraydecay, i8* %2, i64 80)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 6
  %4 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %arraydecay1 = getelementptr inbounds [80 x i8], [80 x i8]* %buff, i32 0, i32 0
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 1
  %6 = load i32, i32* %linenumber, align 4
  %7 = load i8*, i8** %msg.addr, align 8
  %call = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* %arraydecay1, i32 %6, i8* %7)
  store i8* %call, i8** %msg.addr, align 8
  %8 = load i32, i32* %token.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L2 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 6
  %10 = load %struct.lua_State*, %struct.lua_State** %L2, align 8
  %11 = load i8*, i8** %msg.addr, align 8
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %13 = load i32, i32* %token.addr, align 4
  %call3 = call i8* @txtToken(%struct.LexState* %12, i32 %13)
  %call4 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* %11, i8* %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L5 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 6
  %15 = load %struct.lua_State*, %struct.lua_State** %L5, align 8
  call void @luaD_throw(%struct.lua_State* %15, i32 3)
  ret void
}

declare hidden void @luaO_chunkid(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @txtToken(%struct.LexState* %ls, i32 %token) #0 {
entry:
  %retval = alloca i8*, align 8
  %ls.addr = alloca %struct.LexState*, align 8
  %token.addr = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %token, i32* %token.addr, align 4
  %0 = load i32, i32* %token.addr, align 4
  switch i32 %0, label %sw.default [
    i32 285, label %sw.bb
    i32 286, label %sw.bb
    i32 284, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @save(%struct.LexState* %1, i32 0)
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 8
  %3 = load %struct.Mbuffer*, %struct.Mbuffer** %buff, align 8
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %3, i32 0, i32 0
  %4 = load i8*, i8** %buffer, align 8
  store i8* %4, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %6 = load i32, i32* %token.addr, align 4
  %call = call i8* @luaX_token2str(%struct.LexState* %5, i32 %6)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %7 = load i8*, i8** %retval
  ret i8* %7
}

declare hidden void @luaD_throw(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define hidden void @luaX_syntaxerror(%struct.LexState* %ls, i8* %msg) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %msg.addr = alloca i8*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 3
  %token = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %3 = load i32, i32* %token, align 4
  call void @luaX_lexerror(%struct.LexState* %0, i8* %1, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden %union.TString* @luaX_newstring(%struct.LexState* %ls, i8* %str, i64 %l) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %str.addr = alloca i8*, align 8
  %l.addr = alloca i64, align 8
  %L = alloca %struct.lua_State*, align 8
  %ts = alloca %union.TString*, align 8
  %o = alloca %struct.lua_TValue*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %l, i64* %l.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L1 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 6
  %1 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  store %struct.lua_State* %1, %struct.lua_State** %L, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i64, i64* %l.addr, align 8
  %call = call %union.TString* @luaS_newlstr(%struct.lua_State* %2, i8* %3, i64 %4)
  store %union.TString* %call, %union.TString** %ts, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %fs, align 8
  %h = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 1
  %8 = load %struct.Table*, %struct.Table** %h, align 8
  %9 = load %union.TString*, %union.TString** %ts, align 8
  %call2 = call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %5, %struct.Table* %8, %union.TString* %9)
  store %struct.lua_TValue* %call2, %struct.lua_TValue** %o, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %11 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %o, align 8
  store %struct.lua_TValue* %12, %struct.lua_TValue** %i_o, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %b = bitcast %union.Value* %value to i32*
  store i32 1, i32* %b, align 4
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  store i32 1, i32* %tt3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %union.TString*, %union.TString** %ts, align 8
  ret %union.TString* %15
}

declare hidden %struct.lua_TValue* @luaH_setstr(%struct.lua_State*, %struct.Table*, %union.TString*) #1

; Function Attrs: nounwind uwtable
define hidden void @luaX_setinput(%struct.lua_State* %L, %struct.LexState* %ls, %struct.Zio* %z, %union.TString* %source) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ls.addr = alloca %struct.LexState*, align 8
  %z.addr = alloca %struct.Zio*, align 8
  %source.addr = alloca %union.TString*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.Zio* %z, %struct.Zio** %z.addr, align 8
  store %union.TString* %source, %union.TString** %source.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %decpoint = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 10
  store i8 46, i8* %decpoint, align 1
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L1 = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 6
  store %struct.lua_State* %1, %struct.lua_State** %L1, align 8
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %lookahead = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 4
  %token = getelementptr inbounds %struct.Token, %struct.Token* %lookahead, i32 0, i32 0
  store i32 287, i32* %token, align 4
  %4 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z2 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 7
  store %struct.Zio* %4, %struct.Zio** %z2, align 8
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %fs = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 5
  store %struct.FuncState* null, %struct.FuncState** %fs, align 8
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 1
  store i32 1, i32* %linenumber, align 4
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %lastline = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 2
  store i32 1, i32* %lastline, align 4
  %9 = load %union.TString*, %union.TString** %source.addr, align 8
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %source3 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 9
  store %union.TString* %9, %union.TString** %source3, align 8
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L4 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 6
  %12 = load %struct.lua_State*, %struct.lua_State** %L4, align 8
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 8
  %14 = load %struct.Mbuffer*, %struct.Mbuffer** %buff, align 8
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %14, i32 0, i32 0
  %15 = load i8*, i8** %buffer, align 8
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff5 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 8
  %17 = load %struct.Mbuffer*, %struct.Mbuffer** %buff5, align 8
  %buffsize = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %17, i32 0, i32 2
  %18 = load i64, i64* %buffsize, align 8
  %mul = mul i64 %18, 1
  %call = call i8* @luaM_realloc_(%struct.lua_State* %12, i8* %15, i64 %mul, i64 32)
  %19 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff6 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 8
  %20 = load %struct.Mbuffer*, %struct.Mbuffer** %buff6, align 8
  %buffer7 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %20, i32 0, i32 0
  store i8* %call, i8** %buffer7, align 8
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff8 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 8
  %22 = load %struct.Mbuffer*, %struct.Mbuffer** %buff8, align 8
  %buffsize9 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %22, i32 0, i32 2
  store i64 32, i64* %buffsize9, align 8
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z10 = getelementptr inbounds %struct.LexState, %struct.LexState* %23, i32 0, i32 7
  %24 = load %struct.Zio*, %struct.Zio** %z10, align 8
  %n = getelementptr inbounds %struct.Zio, %struct.Zio* %24, i32 0, i32 0
  %25 = load i64, i64* %n, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %n, align 8
  %cmp = icmp ugt i64 %25, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %26 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z11 = getelementptr inbounds %struct.LexState, %struct.LexState* %26, i32 0, i32 7
  %27 = load %struct.Zio*, %struct.Zio** %z11, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %27, i32 0, i32 1
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv = zext i8 %29 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %30 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z12 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 7
  %31 = load %struct.Zio*, %struct.Zio** %z12, align 8
  %call13 = call i32 @luaZ_fill(%struct.Zio* %31)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call13, %cond.false ]
  %32 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current = getelementptr inbounds %struct.LexState, %struct.LexState* %32, i32 0, i32 0
  store i32 %cond, i32* %current, align 4
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

declare hidden i32 @luaZ_fill(%struct.Zio*) #1

; Function Attrs: nounwind uwtable
define hidden void @luaX_next(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 1
  %1 = load i32, i32* %linenumber, align 4
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %lastline = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 2
  store i32 %1, i32* %lastline, align 4
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %lookahead = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 4
  %token = getelementptr inbounds %struct.Token, %struct.Token* %lookahead, i32 0, i32 0
  %4 = load i32, i32* %token, align 4
  %cmp = icmp ne i32 %4, 287
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 3
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %lookahead1 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 4
  %7 = bitcast %struct.Token* %t to i8*
  %8 = bitcast %struct.Token* %lookahead1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %lookahead2 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 4
  %token3 = getelementptr inbounds %struct.Token, %struct.Token* %lookahead2, i32 0, i32 0
  store i32 287, i32* %token3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t4 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 3
  %seminfo = getelementptr inbounds %struct.Token, %struct.Token* %t4, i32 0, i32 1
  %call = call i32 @llex(%struct.LexState* %10, %union.SemInfo* %seminfo)
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %t5 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 3
  %token6 = getelementptr inbounds %struct.Token, %struct.Token* %t5, i32 0, i32 0
  store i32 %call, i32* %token6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i32 @llex(%struct.LexState* %ls, %union.SemInfo* %seminfo) #0 {
entry:
  %retval = alloca i32, align 4
  %ls.addr = alloca %struct.LexState*, align 8
  %seminfo.addr = alloca %union.SemInfo*, align 8
  %sep = alloca i32, align 4
  %sep65 = alloca i32, align 4
  %ts = alloca %union.TString*, align 8
  %c = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %union.SemInfo* %seminfo, %union.SemInfo** %seminfo.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 8
  %1 = load %struct.Mbuffer*, %struct.Mbuffer** %buff, align 8
  %n = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i32 0, i32 1
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.283, %while.end, %if.then.34, %sw.bb, %entry
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 0
  %3 = load i32, i32* %current, align 4
  switch i32 %3, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 45, label %sw.bb.1
    i32 91, label %sw.bb.64
    i32 61, label %sw.bb.76
    i32 60, label %sw.bb.114
    i32 62, label %sw.bb.152
    i32 126, label %sw.bb.190
    i32 34, label %sw.bb.228
    i32 39, label %sw.bb.228
    i32 46, label %sw.bb.230
    i32 -1, label %sw.bb.261
  ]

sw.bb:                                            ; preds = %for.cond, %for.cond
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @inclinenumber(%struct.LexState* %4)
  br label %for.cond

sw.bb.1:                                          ; preds = %for.cond
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 7
  %6 = load %struct.Zio*, %struct.Zio** %z, align 8
  %n2 = getelementptr inbounds %struct.Zio, %struct.Zio* %6, i32 0, i32 0
  %7 = load i64, i64* %n2, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %n2, align 8
  %cmp = icmp ugt i64 %7, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z3 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 7
  %9 = load %struct.Zio*, %struct.Zio** %z3, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %9, i32 0, i32 1
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z4 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 7
  %13 = load %struct.Zio*, %struct.Zio** %z4, align 8
  %call = call i32 @luaZ_fill(%struct.Zio* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current5 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 0
  store i32 %cond, i32* %current5, align 4
  %15 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current6 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 0
  %16 = load i32, i32* %current6, align 4
  %cmp7 = icmp ne i32 %16, 45
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 45, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z9 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 7
  %18 = load %struct.Zio*, %struct.Zio** %z9, align 8
  %n10 = getelementptr inbounds %struct.Zio, %struct.Zio* %18, i32 0, i32 0
  %19 = load i64, i64* %n10, align 8
  %dec11 = add i64 %19, -1
  store i64 %dec11, i64* %n10, align 8
  %cmp12 = icmp ugt i64 %19, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.19

cond.true.14:                                     ; preds = %if.end
  %20 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z15 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 7
  %21 = load %struct.Zio*, %struct.Zio** %z15, align 8
  %p16 = getelementptr inbounds %struct.Zio, %struct.Zio* %21, i32 0, i32 1
  %22 = load i8*, i8** %p16, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr17, i8** %p16, align 8
  %23 = load i8, i8* %22, align 1
  %conv18 = zext i8 %23 to i32
  br label %cond.end.22

cond.false.19:                                    ; preds = %if.end
  %24 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z20 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i32 0, i32 7
  %25 = load %struct.Zio*, %struct.Zio** %z20, align 8
  %call21 = call i32 @luaZ_fill(%struct.Zio* %25)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.14
  %cond23 = phi i32 [ %conv18, %cond.true.14 ], [ %call21, %cond.false.19 ]
  %26 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current24 = getelementptr inbounds %struct.LexState, %struct.LexState* %26, i32 0, i32 0
  store i32 %cond23, i32* %current24, align 4
  %27 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current25 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i32 0, i32 0
  %28 = load i32, i32* %current25, align 4
  %cmp26 = icmp eq i32 %28, 91
  br i1 %cmp26, label %if.then.28, label %if.end.38

if.then.28:                                       ; preds = %cond.end.22
  %29 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call29 = call i32 @skip_sep(%struct.LexState* %29)
  store i32 %call29, i32* %sep, align 4
  %30 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff30 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 8
  %31 = load %struct.Mbuffer*, %struct.Mbuffer** %buff30, align 8
  %n31 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %31, i32 0, i32 1
  store i64 0, i64* %n31, align 8
  %32 = load i32, i32* %sep, align 4
  %cmp32 = icmp sge i32 %32, 0
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.then.28
  %33 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %34 = load i32, i32* %sep, align 4
  call void @read_long_string(%struct.LexState* %33, %union.SemInfo* null, i32 %34)
  %35 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff35 = getelementptr inbounds %struct.LexState, %struct.LexState* %35, i32 0, i32 8
  %36 = load %struct.Mbuffer*, %struct.Mbuffer** %buff35, align 8
  %n36 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %36, i32 0, i32 1
  store i64 0, i64* %n36, align 8
  br label %for.cond

if.end.37:                                        ; preds = %if.then.28
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %cond.end.22
  br label %while.cond

while.cond:                                       ; preds = %cond.end.61, %if.end.38
  %37 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current39 = getelementptr inbounds %struct.LexState, %struct.LexState* %37, i32 0, i32 0
  %38 = load i32, i32* %current39, align 4
  %cmp40 = icmp eq i32 %38, 10
  br i1 %cmp40, label %land.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %39 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current42 = getelementptr inbounds %struct.LexState, %struct.LexState* %39, i32 0, i32 0
  %40 = load i32, i32* %current42, align 4
  %cmp43 = icmp eq i32 %40, 13
  br i1 %cmp43, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false
  %41 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current45 = getelementptr inbounds %struct.LexState, %struct.LexState* %41, i32 0, i32 0
  %42 = load i32, i32* %current45, align 4
  %cmp46 = icmp ne i32 %42, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %while.cond
  %43 = phi i1 [ false, %lor.lhs.false ], [ false, %while.cond ], [ %cmp46, %land.rhs ]
  br i1 %43, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %44 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z48 = getelementptr inbounds %struct.LexState, %struct.LexState* %44, i32 0, i32 7
  %45 = load %struct.Zio*, %struct.Zio** %z48, align 8
  %n49 = getelementptr inbounds %struct.Zio, %struct.Zio* %45, i32 0, i32 0
  %46 = load i64, i64* %n49, align 8
  %dec50 = add i64 %46, -1
  store i64 %dec50, i64* %n49, align 8
  %cmp51 = icmp ugt i64 %46, 0
  br i1 %cmp51, label %cond.true.53, label %cond.false.58

cond.true.53:                                     ; preds = %while.body
  %47 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z54 = getelementptr inbounds %struct.LexState, %struct.LexState* %47, i32 0, i32 7
  %48 = load %struct.Zio*, %struct.Zio** %z54, align 8
  %p55 = getelementptr inbounds %struct.Zio, %struct.Zio* %48, i32 0, i32 1
  %49 = load i8*, i8** %p55, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr56, i8** %p55, align 8
  %50 = load i8, i8* %49, align 1
  %conv57 = zext i8 %50 to i32
  br label %cond.end.61

cond.false.58:                                    ; preds = %while.body
  %51 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z59 = getelementptr inbounds %struct.LexState, %struct.LexState* %51, i32 0, i32 7
  %52 = load %struct.Zio*, %struct.Zio** %z59, align 8
  %call60 = call i32 @luaZ_fill(%struct.Zio* %52)
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.58, %cond.true.53
  %cond62 = phi i32 [ %conv57, %cond.true.53 ], [ %call60, %cond.false.58 ]
  %53 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current63 = getelementptr inbounds %struct.LexState, %struct.LexState* %53, i32 0, i32 0
  store i32 %cond62, i32* %current63, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %for.cond

sw.bb.64:                                         ; preds = %for.cond
  %54 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call66 = call i32 @skip_sep(%struct.LexState* %54)
  store i32 %call66, i32* %sep65, align 4
  %55 = load i32, i32* %sep65, align 4
  %cmp67 = icmp sge i32 %55, 0
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %sw.bb.64
  %56 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %57 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  %58 = load i32, i32* %sep65, align 4
  call void @read_long_string(%struct.LexState* %56, %union.SemInfo* %57, i32 %58)
  store i32 286, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.64
  %59 = load i32, i32* %sep65, align 4
  %cmp70 = icmp eq i32 %59, -1
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.else
  store i32 91, i32* %retval
  br label %return

if.else.73:                                       ; preds = %if.else
  %60 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_lexerror(%struct.LexState* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0), i32 286)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74
  br label %sw.bb.76

sw.bb.76:                                         ; preds = %for.cond, %if.end.75
  %61 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z77 = getelementptr inbounds %struct.LexState, %struct.LexState* %61, i32 0, i32 7
  %62 = load %struct.Zio*, %struct.Zio** %z77, align 8
  %n78 = getelementptr inbounds %struct.Zio, %struct.Zio* %62, i32 0, i32 0
  %63 = load i64, i64* %n78, align 8
  %dec79 = add i64 %63, -1
  store i64 %dec79, i64* %n78, align 8
  %cmp80 = icmp ugt i64 %63, 0
  br i1 %cmp80, label %cond.true.82, label %cond.false.87

cond.true.82:                                     ; preds = %sw.bb.76
  %64 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z83 = getelementptr inbounds %struct.LexState, %struct.LexState* %64, i32 0, i32 7
  %65 = load %struct.Zio*, %struct.Zio** %z83, align 8
  %p84 = getelementptr inbounds %struct.Zio, %struct.Zio* %65, i32 0, i32 1
  %66 = load i8*, i8** %p84, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr85, i8** %p84, align 8
  %67 = load i8, i8* %66, align 1
  %conv86 = zext i8 %67 to i32
  br label %cond.end.90

cond.false.87:                                    ; preds = %sw.bb.76
  %68 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z88 = getelementptr inbounds %struct.LexState, %struct.LexState* %68, i32 0, i32 7
  %69 = load %struct.Zio*, %struct.Zio** %z88, align 8
  %call89 = call i32 @luaZ_fill(%struct.Zio* %69)
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.87, %cond.true.82
  %cond91 = phi i32 [ %conv86, %cond.true.82 ], [ %call89, %cond.false.87 ]
  %70 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current92 = getelementptr inbounds %struct.LexState, %struct.LexState* %70, i32 0, i32 0
  store i32 %cond91, i32* %current92, align 4
  %71 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current93 = getelementptr inbounds %struct.LexState, %struct.LexState* %71, i32 0, i32 0
  %72 = load i32, i32* %current93, align 4
  %cmp94 = icmp ne i32 %72, 61
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %cond.end.90
  store i32 61, i32* %retval
  br label %return

if.else.97:                                       ; preds = %cond.end.90
  %73 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z98 = getelementptr inbounds %struct.LexState, %struct.LexState* %73, i32 0, i32 7
  %74 = load %struct.Zio*, %struct.Zio** %z98, align 8
  %n99 = getelementptr inbounds %struct.Zio, %struct.Zio* %74, i32 0, i32 0
  %75 = load i64, i64* %n99, align 8
  %dec100 = add i64 %75, -1
  store i64 %dec100, i64* %n99, align 8
  %cmp101 = icmp ugt i64 %75, 0
  br i1 %cmp101, label %cond.true.103, label %cond.false.108

cond.true.103:                                    ; preds = %if.else.97
  %76 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z104 = getelementptr inbounds %struct.LexState, %struct.LexState* %76, i32 0, i32 7
  %77 = load %struct.Zio*, %struct.Zio** %z104, align 8
  %p105 = getelementptr inbounds %struct.Zio, %struct.Zio* %77, i32 0, i32 1
  %78 = load i8*, i8** %p105, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr106, i8** %p105, align 8
  %79 = load i8, i8* %78, align 1
  %conv107 = zext i8 %79 to i32
  br label %cond.end.111

cond.false.108:                                   ; preds = %if.else.97
  %80 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z109 = getelementptr inbounds %struct.LexState, %struct.LexState* %80, i32 0, i32 7
  %81 = load %struct.Zio*, %struct.Zio** %z109, align 8
  %call110 = call i32 @luaZ_fill(%struct.Zio* %81)
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.108, %cond.true.103
  %cond112 = phi i32 [ %conv107, %cond.true.103 ], [ %call110, %cond.false.108 ]
  %82 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current113 = getelementptr inbounds %struct.LexState, %struct.LexState* %82, i32 0, i32 0
  store i32 %cond112, i32* %current113, align 4
  store i32 280, i32* %retval
  br label %return

sw.bb.114:                                        ; preds = %for.cond
  %83 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z115 = getelementptr inbounds %struct.LexState, %struct.LexState* %83, i32 0, i32 7
  %84 = load %struct.Zio*, %struct.Zio** %z115, align 8
  %n116 = getelementptr inbounds %struct.Zio, %struct.Zio* %84, i32 0, i32 0
  %85 = load i64, i64* %n116, align 8
  %dec117 = add i64 %85, -1
  store i64 %dec117, i64* %n116, align 8
  %cmp118 = icmp ugt i64 %85, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.125

cond.true.120:                                    ; preds = %sw.bb.114
  %86 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z121 = getelementptr inbounds %struct.LexState, %struct.LexState* %86, i32 0, i32 7
  %87 = load %struct.Zio*, %struct.Zio** %z121, align 8
  %p122 = getelementptr inbounds %struct.Zio, %struct.Zio* %87, i32 0, i32 1
  %88 = load i8*, i8** %p122, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr123, i8** %p122, align 8
  %89 = load i8, i8* %88, align 1
  %conv124 = zext i8 %89 to i32
  br label %cond.end.128

cond.false.125:                                   ; preds = %sw.bb.114
  %90 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z126 = getelementptr inbounds %struct.LexState, %struct.LexState* %90, i32 0, i32 7
  %91 = load %struct.Zio*, %struct.Zio** %z126, align 8
  %call127 = call i32 @luaZ_fill(%struct.Zio* %91)
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.125, %cond.true.120
  %cond129 = phi i32 [ %conv124, %cond.true.120 ], [ %call127, %cond.false.125 ]
  %92 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current130 = getelementptr inbounds %struct.LexState, %struct.LexState* %92, i32 0, i32 0
  store i32 %cond129, i32* %current130, align 4
  %93 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current131 = getelementptr inbounds %struct.LexState, %struct.LexState* %93, i32 0, i32 0
  %94 = load i32, i32* %current131, align 4
  %cmp132 = icmp ne i32 %94, 61
  br i1 %cmp132, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %cond.end.128
  store i32 60, i32* %retval
  br label %return

if.else.135:                                      ; preds = %cond.end.128
  %95 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z136 = getelementptr inbounds %struct.LexState, %struct.LexState* %95, i32 0, i32 7
  %96 = load %struct.Zio*, %struct.Zio** %z136, align 8
  %n137 = getelementptr inbounds %struct.Zio, %struct.Zio* %96, i32 0, i32 0
  %97 = load i64, i64* %n137, align 8
  %dec138 = add i64 %97, -1
  store i64 %dec138, i64* %n137, align 8
  %cmp139 = icmp ugt i64 %97, 0
  br i1 %cmp139, label %cond.true.141, label %cond.false.146

cond.true.141:                                    ; preds = %if.else.135
  %98 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z142 = getelementptr inbounds %struct.LexState, %struct.LexState* %98, i32 0, i32 7
  %99 = load %struct.Zio*, %struct.Zio** %z142, align 8
  %p143 = getelementptr inbounds %struct.Zio, %struct.Zio* %99, i32 0, i32 1
  %100 = load i8*, i8** %p143, align 8
  %incdec.ptr144 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr144, i8** %p143, align 8
  %101 = load i8, i8* %100, align 1
  %conv145 = zext i8 %101 to i32
  br label %cond.end.149

cond.false.146:                                   ; preds = %if.else.135
  %102 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z147 = getelementptr inbounds %struct.LexState, %struct.LexState* %102, i32 0, i32 7
  %103 = load %struct.Zio*, %struct.Zio** %z147, align 8
  %call148 = call i32 @luaZ_fill(%struct.Zio* %103)
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.146, %cond.true.141
  %cond150 = phi i32 [ %conv145, %cond.true.141 ], [ %call148, %cond.false.146 ]
  %104 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current151 = getelementptr inbounds %struct.LexState, %struct.LexState* %104, i32 0, i32 0
  store i32 %cond150, i32* %current151, align 4
  store i32 282, i32* %retval
  br label %return

sw.bb.152:                                        ; preds = %for.cond
  %105 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z153 = getelementptr inbounds %struct.LexState, %struct.LexState* %105, i32 0, i32 7
  %106 = load %struct.Zio*, %struct.Zio** %z153, align 8
  %n154 = getelementptr inbounds %struct.Zio, %struct.Zio* %106, i32 0, i32 0
  %107 = load i64, i64* %n154, align 8
  %dec155 = add i64 %107, -1
  store i64 %dec155, i64* %n154, align 8
  %cmp156 = icmp ugt i64 %107, 0
  br i1 %cmp156, label %cond.true.158, label %cond.false.163

cond.true.158:                                    ; preds = %sw.bb.152
  %108 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z159 = getelementptr inbounds %struct.LexState, %struct.LexState* %108, i32 0, i32 7
  %109 = load %struct.Zio*, %struct.Zio** %z159, align 8
  %p160 = getelementptr inbounds %struct.Zio, %struct.Zio* %109, i32 0, i32 1
  %110 = load i8*, i8** %p160, align 8
  %incdec.ptr161 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr161, i8** %p160, align 8
  %111 = load i8, i8* %110, align 1
  %conv162 = zext i8 %111 to i32
  br label %cond.end.166

cond.false.163:                                   ; preds = %sw.bb.152
  %112 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z164 = getelementptr inbounds %struct.LexState, %struct.LexState* %112, i32 0, i32 7
  %113 = load %struct.Zio*, %struct.Zio** %z164, align 8
  %call165 = call i32 @luaZ_fill(%struct.Zio* %113)
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.163, %cond.true.158
  %cond167 = phi i32 [ %conv162, %cond.true.158 ], [ %call165, %cond.false.163 ]
  %114 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current168 = getelementptr inbounds %struct.LexState, %struct.LexState* %114, i32 0, i32 0
  store i32 %cond167, i32* %current168, align 4
  %115 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current169 = getelementptr inbounds %struct.LexState, %struct.LexState* %115, i32 0, i32 0
  %116 = load i32, i32* %current169, align 4
  %cmp170 = icmp ne i32 %116, 61
  br i1 %cmp170, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %cond.end.166
  store i32 62, i32* %retval
  br label %return

if.else.173:                                      ; preds = %cond.end.166
  %117 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z174 = getelementptr inbounds %struct.LexState, %struct.LexState* %117, i32 0, i32 7
  %118 = load %struct.Zio*, %struct.Zio** %z174, align 8
  %n175 = getelementptr inbounds %struct.Zio, %struct.Zio* %118, i32 0, i32 0
  %119 = load i64, i64* %n175, align 8
  %dec176 = add i64 %119, -1
  store i64 %dec176, i64* %n175, align 8
  %cmp177 = icmp ugt i64 %119, 0
  br i1 %cmp177, label %cond.true.179, label %cond.false.184

cond.true.179:                                    ; preds = %if.else.173
  %120 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z180 = getelementptr inbounds %struct.LexState, %struct.LexState* %120, i32 0, i32 7
  %121 = load %struct.Zio*, %struct.Zio** %z180, align 8
  %p181 = getelementptr inbounds %struct.Zio, %struct.Zio* %121, i32 0, i32 1
  %122 = load i8*, i8** %p181, align 8
  %incdec.ptr182 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr182, i8** %p181, align 8
  %123 = load i8, i8* %122, align 1
  %conv183 = zext i8 %123 to i32
  br label %cond.end.187

cond.false.184:                                   ; preds = %if.else.173
  %124 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z185 = getelementptr inbounds %struct.LexState, %struct.LexState* %124, i32 0, i32 7
  %125 = load %struct.Zio*, %struct.Zio** %z185, align 8
  %call186 = call i32 @luaZ_fill(%struct.Zio* %125)
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.184, %cond.true.179
  %cond188 = phi i32 [ %conv183, %cond.true.179 ], [ %call186, %cond.false.184 ]
  %126 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current189 = getelementptr inbounds %struct.LexState, %struct.LexState* %126, i32 0, i32 0
  store i32 %cond188, i32* %current189, align 4
  store i32 281, i32* %retval
  br label %return

sw.bb.190:                                        ; preds = %for.cond
  %127 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z191 = getelementptr inbounds %struct.LexState, %struct.LexState* %127, i32 0, i32 7
  %128 = load %struct.Zio*, %struct.Zio** %z191, align 8
  %n192 = getelementptr inbounds %struct.Zio, %struct.Zio* %128, i32 0, i32 0
  %129 = load i64, i64* %n192, align 8
  %dec193 = add i64 %129, -1
  store i64 %dec193, i64* %n192, align 8
  %cmp194 = icmp ugt i64 %129, 0
  br i1 %cmp194, label %cond.true.196, label %cond.false.201

cond.true.196:                                    ; preds = %sw.bb.190
  %130 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z197 = getelementptr inbounds %struct.LexState, %struct.LexState* %130, i32 0, i32 7
  %131 = load %struct.Zio*, %struct.Zio** %z197, align 8
  %p198 = getelementptr inbounds %struct.Zio, %struct.Zio* %131, i32 0, i32 1
  %132 = load i8*, i8** %p198, align 8
  %incdec.ptr199 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr199, i8** %p198, align 8
  %133 = load i8, i8* %132, align 1
  %conv200 = zext i8 %133 to i32
  br label %cond.end.204

cond.false.201:                                   ; preds = %sw.bb.190
  %134 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z202 = getelementptr inbounds %struct.LexState, %struct.LexState* %134, i32 0, i32 7
  %135 = load %struct.Zio*, %struct.Zio** %z202, align 8
  %call203 = call i32 @luaZ_fill(%struct.Zio* %135)
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.201, %cond.true.196
  %cond205 = phi i32 [ %conv200, %cond.true.196 ], [ %call203, %cond.false.201 ]
  %136 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current206 = getelementptr inbounds %struct.LexState, %struct.LexState* %136, i32 0, i32 0
  store i32 %cond205, i32* %current206, align 4
  %137 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current207 = getelementptr inbounds %struct.LexState, %struct.LexState* %137, i32 0, i32 0
  %138 = load i32, i32* %current207, align 4
  %cmp208 = icmp ne i32 %138, 61
  br i1 %cmp208, label %if.then.210, label %if.else.211

if.then.210:                                      ; preds = %cond.end.204
  store i32 126, i32* %retval
  br label %return

if.else.211:                                      ; preds = %cond.end.204
  %139 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z212 = getelementptr inbounds %struct.LexState, %struct.LexState* %139, i32 0, i32 7
  %140 = load %struct.Zio*, %struct.Zio** %z212, align 8
  %n213 = getelementptr inbounds %struct.Zio, %struct.Zio* %140, i32 0, i32 0
  %141 = load i64, i64* %n213, align 8
  %dec214 = add i64 %141, -1
  store i64 %dec214, i64* %n213, align 8
  %cmp215 = icmp ugt i64 %141, 0
  br i1 %cmp215, label %cond.true.217, label %cond.false.222

cond.true.217:                                    ; preds = %if.else.211
  %142 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z218 = getelementptr inbounds %struct.LexState, %struct.LexState* %142, i32 0, i32 7
  %143 = load %struct.Zio*, %struct.Zio** %z218, align 8
  %p219 = getelementptr inbounds %struct.Zio, %struct.Zio* %143, i32 0, i32 1
  %144 = load i8*, i8** %p219, align 8
  %incdec.ptr220 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr220, i8** %p219, align 8
  %145 = load i8, i8* %144, align 1
  %conv221 = zext i8 %145 to i32
  br label %cond.end.225

cond.false.222:                                   ; preds = %if.else.211
  %146 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z223 = getelementptr inbounds %struct.LexState, %struct.LexState* %146, i32 0, i32 7
  %147 = load %struct.Zio*, %struct.Zio** %z223, align 8
  %call224 = call i32 @luaZ_fill(%struct.Zio* %147)
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.222, %cond.true.217
  %cond226 = phi i32 [ %conv221, %cond.true.217 ], [ %call224, %cond.false.222 ]
  %148 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current227 = getelementptr inbounds %struct.LexState, %struct.LexState* %148, i32 0, i32 0
  store i32 %cond226, i32* %current227, align 4
  store i32 283, i32* %retval
  br label %return

sw.bb.228:                                        ; preds = %for.cond, %for.cond
  %149 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %150 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current229 = getelementptr inbounds %struct.LexState, %struct.LexState* %150, i32 0, i32 0
  %151 = load i32, i32* %current229, align 4
  %152 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  call void @read_string(%struct.LexState* %149, i32 %151, %union.SemInfo* %152)
  store i32 286, i32* %retval
  br label %return

sw.bb.230:                                        ; preds = %for.cond
  %153 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %154 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current231 = getelementptr inbounds %struct.LexState, %struct.LexState* %154, i32 0, i32 0
  %155 = load i32, i32* %current231, align 4
  call void @save(%struct.LexState* %153, i32 %155)
  %156 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z232 = getelementptr inbounds %struct.LexState, %struct.LexState* %156, i32 0, i32 7
  %157 = load %struct.Zio*, %struct.Zio** %z232, align 8
  %n233 = getelementptr inbounds %struct.Zio, %struct.Zio* %157, i32 0, i32 0
  %158 = load i64, i64* %n233, align 8
  %dec234 = add i64 %158, -1
  store i64 %dec234, i64* %n233, align 8
  %cmp235 = icmp ugt i64 %158, 0
  br i1 %cmp235, label %cond.true.237, label %cond.false.242

cond.true.237:                                    ; preds = %sw.bb.230
  %159 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z238 = getelementptr inbounds %struct.LexState, %struct.LexState* %159, i32 0, i32 7
  %160 = load %struct.Zio*, %struct.Zio** %z238, align 8
  %p239 = getelementptr inbounds %struct.Zio, %struct.Zio* %160, i32 0, i32 1
  %161 = load i8*, i8** %p239, align 8
  %incdec.ptr240 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr240, i8** %p239, align 8
  %162 = load i8, i8* %161, align 1
  %conv241 = zext i8 %162 to i32
  br label %cond.end.245

cond.false.242:                                   ; preds = %sw.bb.230
  %163 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z243 = getelementptr inbounds %struct.LexState, %struct.LexState* %163, i32 0, i32 7
  %164 = load %struct.Zio*, %struct.Zio** %z243, align 8
  %call244 = call i32 @luaZ_fill(%struct.Zio* %164)
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.242, %cond.true.237
  %cond246 = phi i32 [ %conv241, %cond.true.237 ], [ %call244, %cond.false.242 ]
  %165 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current247 = getelementptr inbounds %struct.LexState, %struct.LexState* %165, i32 0, i32 0
  store i32 %cond246, i32* %current247, align 4
  %166 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call248 = call i32 @check_next(%struct.LexState* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  %tobool = icmp ne i32 %call248, 0
  br i1 %tobool, label %if.then.249, label %if.else.254

if.then.249:                                      ; preds = %cond.end.245
  %167 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call250 = call i32 @check_next(%struct.LexState* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %if.then.252, label %if.else.253

if.then.252:                                      ; preds = %if.then.249
  store i32 279, i32* %retval
  br label %return

if.else.253:                                      ; preds = %if.then.249
  store i32 278, i32* %retval
  br label %return

if.else.254:                                      ; preds = %cond.end.245
  %168 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current255 = getelementptr inbounds %struct.LexState, %struct.LexState* %168, i32 0, i32 0
  %169 = load i32, i32* %current255, align 4
  %idxprom = sext i32 %169 to i64
  %call256 = call i16** @__ctype_b_loc() #7
  %170 = load i16*, i16** %call256, align 8
  %arrayidx = getelementptr inbounds i16, i16* %170, i64 %idxprom
  %171 = load i16, i16* %arrayidx, align 2
  %conv257 = zext i16 %171 to i32
  %and = and i32 %conv257, 2048
  %tobool258 = icmp ne i32 %and, 0
  br i1 %tobool258, label %if.else.260, label %if.then.259

if.then.259:                                      ; preds = %if.else.254
  store i32 46, i32* %retval
  br label %return

if.else.260:                                      ; preds = %if.else.254
  %172 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %173 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  call void @read_numeral(%struct.LexState* %172, %union.SemInfo* %173)
  store i32 284, i32* %retval
  br label %return

sw.bb.261:                                        ; preds = %for.cond
  store i32 287, i32* %retval
  br label %return

sw.default:                                       ; preds = %for.cond
  %174 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current262 = getelementptr inbounds %struct.LexState, %struct.LexState* %174, i32 0, i32 0
  %175 = load i32, i32* %current262, align 4
  %idxprom263 = sext i32 %175 to i64
  %call264 = call i16** @__ctype_b_loc() #7
  %176 = load i16*, i16** %call264, align 8
  %arrayidx265 = getelementptr inbounds i16, i16* %176, i64 %idxprom263
  %177 = load i16, i16* %arrayidx265, align 2
  %conv266 = zext i16 %177 to i32
  %and267 = and i32 %conv266, 8192
  %tobool268 = icmp ne i32 %and267, 0
  br i1 %tobool268, label %if.then.269, label %if.else.286

if.then.269:                                      ; preds = %sw.default
  %178 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z270 = getelementptr inbounds %struct.LexState, %struct.LexState* %178, i32 0, i32 7
  %179 = load %struct.Zio*, %struct.Zio** %z270, align 8
  %n271 = getelementptr inbounds %struct.Zio, %struct.Zio* %179, i32 0, i32 0
  %180 = load i64, i64* %n271, align 8
  %dec272 = add i64 %180, -1
  store i64 %dec272, i64* %n271, align 8
  %cmp273 = icmp ugt i64 %180, 0
  br i1 %cmp273, label %cond.true.275, label %cond.false.280

cond.true.275:                                    ; preds = %if.then.269
  %181 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z276 = getelementptr inbounds %struct.LexState, %struct.LexState* %181, i32 0, i32 7
  %182 = load %struct.Zio*, %struct.Zio** %z276, align 8
  %p277 = getelementptr inbounds %struct.Zio, %struct.Zio* %182, i32 0, i32 1
  %183 = load i8*, i8** %p277, align 8
  %incdec.ptr278 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr278, i8** %p277, align 8
  %184 = load i8, i8* %183, align 1
  %conv279 = zext i8 %184 to i32
  br label %cond.end.283

cond.false.280:                                   ; preds = %if.then.269
  %185 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z281 = getelementptr inbounds %struct.LexState, %struct.LexState* %185, i32 0, i32 7
  %186 = load %struct.Zio*, %struct.Zio** %z281, align 8
  %call282 = call i32 @luaZ_fill(%struct.Zio* %186)
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.280, %cond.true.275
  %cond284 = phi i32 [ %conv279, %cond.true.275 ], [ %call282, %cond.false.280 ]
  %187 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current285 = getelementptr inbounds %struct.LexState, %struct.LexState* %187, i32 0, i32 0
  store i32 %cond284, i32* %current285, align 4
  br label %for.cond

if.else.286:                                      ; preds = %sw.default
  %188 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current287 = getelementptr inbounds %struct.LexState, %struct.LexState* %188, i32 0, i32 0
  %189 = load i32, i32* %current287, align 4
  %idxprom288 = sext i32 %189 to i64
  %call289 = call i16** @__ctype_b_loc() #7
  %190 = load i16*, i16** %call289, align 8
  %arrayidx290 = getelementptr inbounds i16, i16* %190, i64 %idxprom288
  %191 = load i16, i16* %arrayidx290, align 2
  %conv291 = zext i16 %191 to i32
  %and292 = and i32 %conv291, 2048
  %tobool293 = icmp ne i32 %and292, 0
  br i1 %tobool293, label %if.then.294, label %if.else.295

if.then.294:                                      ; preds = %if.else.286
  %192 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %193 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  call void @read_numeral(%struct.LexState* %192, %union.SemInfo* %193)
  store i32 284, i32* %retval
  br label %return

if.else.295:                                      ; preds = %if.else.286
  %194 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current296 = getelementptr inbounds %struct.LexState, %struct.LexState* %194, i32 0, i32 0
  %195 = load i32, i32* %current296, align 4
  %idxprom297 = sext i32 %195 to i64
  %call298 = call i16** @__ctype_b_loc() #7
  %196 = load i16*, i16** %call298, align 8
  %arrayidx299 = getelementptr inbounds i16, i16* %196, i64 %idxprom297
  %197 = load i16, i16* %arrayidx299, align 2
  %conv300 = zext i16 %197 to i32
  %and301 = and i32 %conv300, 1024
  %tobool302 = icmp ne i32 %and301, 0
  br i1 %tobool302, label %if.then.307, label %lor.lhs.false.303

lor.lhs.false.303:                                ; preds = %if.else.295
  %198 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current304 = getelementptr inbounds %struct.LexState, %struct.LexState* %198, i32 0, i32 0
  %199 = load i32, i32* %current304, align 4
  %cmp305 = icmp eq i32 %199, 95
  br i1 %cmp305, label %if.then.307, label %if.else.348

if.then.307:                                      ; preds = %lor.lhs.false.303, %if.else.295
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then.307
  %200 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %201 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current308 = getelementptr inbounds %struct.LexState, %struct.LexState* %201, i32 0, i32 0
  %202 = load i32, i32* %current308, align 4
  call void @save(%struct.LexState* %200, i32 %202)
  %203 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z309 = getelementptr inbounds %struct.LexState, %struct.LexState* %203, i32 0, i32 7
  %204 = load %struct.Zio*, %struct.Zio** %z309, align 8
  %n310 = getelementptr inbounds %struct.Zio, %struct.Zio* %204, i32 0, i32 0
  %205 = load i64, i64* %n310, align 8
  %dec311 = add i64 %205, -1
  store i64 %dec311, i64* %n310, align 8
  %cmp312 = icmp ugt i64 %205, 0
  br i1 %cmp312, label %cond.true.314, label %cond.false.319

cond.true.314:                                    ; preds = %do.body
  %206 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z315 = getelementptr inbounds %struct.LexState, %struct.LexState* %206, i32 0, i32 7
  %207 = load %struct.Zio*, %struct.Zio** %z315, align 8
  %p316 = getelementptr inbounds %struct.Zio, %struct.Zio* %207, i32 0, i32 1
  %208 = load i8*, i8** %p316, align 8
  %incdec.ptr317 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr317, i8** %p316, align 8
  %209 = load i8, i8* %208, align 1
  %conv318 = zext i8 %209 to i32
  br label %cond.end.322

cond.false.319:                                   ; preds = %do.body
  %210 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z320 = getelementptr inbounds %struct.LexState, %struct.LexState* %210, i32 0, i32 7
  %211 = load %struct.Zio*, %struct.Zio** %z320, align 8
  %call321 = call i32 @luaZ_fill(%struct.Zio* %211)
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.319, %cond.true.314
  %cond323 = phi i32 [ %conv318, %cond.true.314 ], [ %call321, %cond.false.319 ]
  %212 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current324 = getelementptr inbounds %struct.LexState, %struct.LexState* %212, i32 0, i32 0
  store i32 %cond323, i32* %current324, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end.322
  %213 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current325 = getelementptr inbounds %struct.LexState, %struct.LexState* %213, i32 0, i32 0
  %214 = load i32, i32* %current325, align 4
  %idxprom326 = sext i32 %214 to i64
  %call327 = call i16** @__ctype_b_loc() #7
  %215 = load i16*, i16** %call327, align 8
  %arrayidx328 = getelementptr inbounds i16, i16* %215, i64 %idxprom326
  %216 = load i16, i16* %arrayidx328, align 2
  %conv329 = zext i16 %216 to i32
  %and330 = and i32 %conv329, 8
  %tobool331 = icmp ne i32 %and330, 0
  br i1 %tobool331, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %217 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current332 = getelementptr inbounds %struct.LexState, %struct.LexState* %217, i32 0, i32 0
  %218 = load i32, i32* %current332, align 4
  %cmp333 = icmp eq i32 %218, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %219 = phi i1 [ true, %do.cond ], [ %cmp333, %lor.rhs ]
  br i1 %219, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %220 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %221 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff335 = getelementptr inbounds %struct.LexState, %struct.LexState* %221, i32 0, i32 8
  %222 = load %struct.Mbuffer*, %struct.Mbuffer** %buff335, align 8
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %222, i32 0, i32 0
  %223 = load i8*, i8** %buffer, align 8
  %224 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff336 = getelementptr inbounds %struct.LexState, %struct.LexState* %224, i32 0, i32 8
  %225 = load %struct.Mbuffer*, %struct.Mbuffer** %buff336, align 8
  %n337 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %225, i32 0, i32 1
  %226 = load i64, i64* %n337, align 8
  %call338 = call %union.TString* @luaX_newstring(%struct.LexState* %220, i8* %223, i64 %226)
  store %union.TString* %call338, %union.TString** %ts, align 8
  %227 = load %union.TString*, %union.TString** %ts, align 8
  %tsv = bitcast %union.TString* %227 to %struct.anon.1*
  %reserved = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 3
  %228 = load i8, i8* %reserved, align 1
  %conv339 = zext i8 %228 to i32
  %cmp340 = icmp sgt i32 %conv339, 0
  br i1 %cmp340, label %if.then.342, label %if.else.346

if.then.342:                                      ; preds = %do.end
  %229 = load %union.TString*, %union.TString** %ts, align 8
  %tsv343 = bitcast %union.TString* %229 to %struct.anon.1*
  %reserved344 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv343, i32 0, i32 3
  %230 = load i8, i8* %reserved344, align 1
  %conv345 = zext i8 %230 to i32
  %sub = sub nsw i32 %conv345, 1
  %add = add nsw i32 %sub, 257
  store i32 %add, i32* %retval
  br label %return

if.else.346:                                      ; preds = %do.end
  %231 = load %union.TString*, %union.TString** %ts, align 8
  %232 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  %ts347 = bitcast %union.SemInfo* %232 to %union.TString**
  store %union.TString* %231, %union.TString** %ts347, align 8
  store i32 285, i32* %retval
  br label %return

if.else.348:                                      ; preds = %lor.lhs.false.303
  %233 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current349 = getelementptr inbounds %struct.LexState, %struct.LexState* %233, i32 0, i32 0
  %234 = load i32, i32* %current349, align 4
  store i32 %234, i32* %c, align 4
  %235 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z350 = getelementptr inbounds %struct.LexState, %struct.LexState* %235, i32 0, i32 7
  %236 = load %struct.Zio*, %struct.Zio** %z350, align 8
  %n351 = getelementptr inbounds %struct.Zio, %struct.Zio* %236, i32 0, i32 0
  %237 = load i64, i64* %n351, align 8
  %dec352 = add i64 %237, -1
  store i64 %dec352, i64* %n351, align 8
  %cmp353 = icmp ugt i64 %237, 0
  br i1 %cmp353, label %cond.true.355, label %cond.false.360

cond.true.355:                                    ; preds = %if.else.348
  %238 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z356 = getelementptr inbounds %struct.LexState, %struct.LexState* %238, i32 0, i32 7
  %239 = load %struct.Zio*, %struct.Zio** %z356, align 8
  %p357 = getelementptr inbounds %struct.Zio, %struct.Zio* %239, i32 0, i32 1
  %240 = load i8*, i8** %p357, align 8
  %incdec.ptr358 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %incdec.ptr358, i8** %p357, align 8
  %241 = load i8, i8* %240, align 1
  %conv359 = zext i8 %241 to i32
  br label %cond.end.363

cond.false.360:                                   ; preds = %if.else.348
  %242 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z361 = getelementptr inbounds %struct.LexState, %struct.LexState* %242, i32 0, i32 7
  %243 = load %struct.Zio*, %struct.Zio** %z361, align 8
  %call362 = call i32 @luaZ_fill(%struct.Zio* %243)
  br label %cond.end.363

cond.end.363:                                     ; preds = %cond.false.360, %cond.true.355
  %cond364 = phi i32 [ %conv359, %cond.true.355 ], [ %call362, %cond.false.360 ]
  %244 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current365 = getelementptr inbounds %struct.LexState, %struct.LexState* %244, i32 0, i32 0
  store i32 %cond364, i32* %current365, align 4
  %245 = load i32, i32* %c, align 4
  store i32 %245, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.363, %if.else.346, %if.then.342, %if.then.294, %sw.bb.261, %if.else.260, %if.then.259, %if.else.253, %if.then.252, %sw.bb.228, %cond.end.225, %if.then.210, %cond.end.187, %if.then.172, %cond.end.149, %if.then.134, %cond.end.111, %if.then.96, %if.then.72, %if.then.69, %if.then
  %246 = load i32, i32* %retval
  ret i32 %246
}

; Function Attrs: nounwind uwtable
define hidden void @luaX_lookahead(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %lookahead = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i32 0, i32 4
  %seminfo = getelementptr inbounds %struct.Token, %struct.Token* %lookahead, i32 0, i32 1
  %call = call i32 @llex(%struct.LexState* %0, %union.SemInfo* %seminfo)
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %lookahead1 = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 4
  %token = getelementptr inbounds %struct.Token, %struct.Token* %lookahead1, i32 0, i32 0
  store i32 %call, i32* %token, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @save(%struct.LexState* %ls, i32 %c) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %c.addr = alloca i32, align 4
  %b = alloca %struct.Mbuffer*, align 8
  %newsize = alloca i64, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 8
  %1 = load %struct.Mbuffer*, %struct.Mbuffer** %buff, align 8
  store %struct.Mbuffer* %1, %struct.Mbuffer** %b, align 8
  %2 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %n = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %2, i32 0, i32 1
  %3 = load i64, i64* %n, align 8
  %add = add i64 %3, 1
  %4 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %buffsize = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i32 0, i32 2
  %5 = load i64, i64* %buffsize, align 8
  %cmp = icmp ugt i64 %add, %5
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %6 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %buffsize1 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %6, i32 0, i32 2
  %7 = load i64, i64* %buffsize1, align 8
  %cmp2 = icmp uge i64 %7, 9223372036854775806
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_lexerror(%struct.LexState* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0), i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %9 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %buffsize4 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %9, i32 0, i32 2
  %10 = load i64, i64* %buffsize4, align 8
  %mul = mul i64 %10, 2
  store i64 %mul, i64* %newsize, align 8
  %11 = load i64, i64* %newsize, align 8
  %add5 = add i64 %11, 1
  %cmp6 = icmp ule i64 %add5, -3
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 6
  %13 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %14 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %14, i32 0, i32 0
  %15 = load i8*, i8** %buffer, align 8
  %16 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %buffsize7 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %16, i32 0, i32 2
  %17 = load i64, i64* %buffsize7, align 8
  %mul8 = mul i64 %17, 1
  %18 = load i64, i64* %newsize, align 8
  %mul9 = mul i64 %18, 1
  %call = call i8* @luaM_realloc_(%struct.lua_State* %13, i8* %15, i64 %mul8, i64 %mul9)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %19 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %L10 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 6
  %20 = load %struct.lua_State*, %struct.lua_State** %L10, align 8
  %call11 = call i8* @luaM_toobig(%struct.lua_State* %20)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call11, %cond.false ]
  %21 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %buffer12 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %21, i32 0, i32 0
  store i8* %cond, i8** %buffer12, align 8
  %22 = load i64, i64* %newsize, align 8
  %23 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %buffsize13 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %23, i32 0, i32 2
  store i64 %22, i64* %buffsize13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %cond.end, %entry
  %24 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %24 to i8
  %25 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %n15 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %25, i32 0, i32 1
  %26 = load i64, i64* %n15, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %n15, align 8
  %27 = load %struct.Mbuffer*, %struct.Mbuffer** %b, align 8
  %buffer16 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %27, i32 0, i32 0
  %28 = load i8*, i8** %buffer16, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %26
  store i8 %conv, i8* %arrayidx, align 1
  ret void
}

declare hidden i8* @luaM_toobig(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define internal void @inclinenumber(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %old = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 0
  %1 = load i32, i32* %current, align 4
  store i32 %1, i32* %old, align 4
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 7
  %3 = load %struct.Zio*, %struct.Zio** %z, align 8
  %n = getelementptr inbounds %struct.Zio, %struct.Zio* %3, i32 0, i32 0
  %4 = load i64, i64* %n, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %n, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z1 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 7
  %6 = load %struct.Zio*, %struct.Zio** %z1, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %6, i32 0, i32 1
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z2 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 7
  %10 = load %struct.Zio*, %struct.Zio** %z2, align 8
  %call = call i32 @luaZ_fill(%struct.Zio* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current3 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 0
  store i32 %cond, i32* %current3, align 4
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current4 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 0
  %13 = load i32, i32* %current4, align 4
  %cmp5 = icmp eq i32 %13, 10
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current7 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 0
  %15 = load i32, i32* %current7, align 4
  %cmp8 = icmp eq i32 %15, 13
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %cond.end
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current10 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 0
  %17 = load i32, i32* %current10, align 4
  %18 = load i32, i32* %old, align 4
  %cmp11 = icmp ne i32 %17, %18
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z13 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 7
  %20 = load %struct.Zio*, %struct.Zio** %z13, align 8
  %n14 = getelementptr inbounds %struct.Zio, %struct.Zio* %20, i32 0, i32 0
  %21 = load i64, i64* %n14, align 8
  %dec15 = add i64 %21, -1
  store i64 %dec15, i64* %n14, align 8
  %cmp16 = icmp ugt i64 %21, 0
  br i1 %cmp16, label %cond.true.18, label %cond.false.23

cond.true.18:                                     ; preds = %if.then
  %22 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z19 = getelementptr inbounds %struct.LexState, %struct.LexState* %22, i32 0, i32 7
  %23 = load %struct.Zio*, %struct.Zio** %z19, align 8
  %p20 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i32 0, i32 1
  %24 = load i8*, i8** %p20, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr21, i8** %p20, align 8
  %25 = load i8, i8* %24, align 1
  %conv22 = zext i8 %25 to i32
  br label %cond.end.26

cond.false.23:                                    ; preds = %if.then
  %26 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z24 = getelementptr inbounds %struct.LexState, %struct.LexState* %26, i32 0, i32 7
  %27 = load %struct.Zio*, %struct.Zio** %z24, align 8
  %call25 = call i32 @luaZ_fill(%struct.Zio* %27)
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.23, %cond.true.18
  %cond27 = phi i32 [ %conv22, %cond.true.18 ], [ %call25, %cond.false.23 ]
  %28 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current28 = getelementptr inbounds %struct.LexState, %struct.LexState* %28, i32 0, i32 0
  store i32 %cond27, i32* %current28, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.26, %land.lhs.true, %lor.lhs.false
  %29 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %linenumber = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 1
  %30 = load i32, i32* %linenumber, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %linenumber, align 4
  %cmp29 = icmp sge i32 %inc, 2147483645
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  %31 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_syntaxerror(%struct.LexState* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @skip_sep(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %count = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 0
  %1 = load i32, i32* %current, align 4
  store i32 %1, i32* %s, align 4
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current1 = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 0
  %4 = load i32, i32* %current1, align 4
  call void @save(%struct.LexState* %2, i32 %4)
  %5 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 7
  %6 = load %struct.Zio*, %struct.Zio** %z, align 8
  %n = getelementptr inbounds %struct.Zio, %struct.Zio* %6, i32 0, i32 0
  %7 = load i64, i64* %n, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %n, align 8
  %cmp = icmp ugt i64 %7, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z2 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 7
  %9 = load %struct.Zio*, %struct.Zio** %z2, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %9, i32 0, i32 1
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z3 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 7
  %13 = load %struct.Zio*, %struct.Zio** %z3, align 8
  %call = call i32 @luaZ_fill(%struct.Zio* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current4 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 0
  store i32 %cond, i32* %current4, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.22, %cond.end
  %15 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current5 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 0
  %16 = load i32, i32* %current5, align 4
  %cmp6 = icmp eq i32 %16, 61
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %18 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current8 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i32 0, i32 0
  %19 = load i32, i32* %current8, align 4
  call void @save(%struct.LexState* %17, i32 %19)
  %20 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z9 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 7
  %21 = load %struct.Zio*, %struct.Zio** %z9, align 8
  %n10 = getelementptr inbounds %struct.Zio, %struct.Zio* %21, i32 0, i32 0
  %22 = load i64, i64* %n10, align 8
  %dec11 = add i64 %22, -1
  store i64 %dec11, i64* %n10, align 8
  %cmp12 = icmp ugt i64 %22, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.19

cond.true.14:                                     ; preds = %while.body
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z15 = getelementptr inbounds %struct.LexState, %struct.LexState* %23, i32 0, i32 7
  %24 = load %struct.Zio*, %struct.Zio** %z15, align 8
  %p16 = getelementptr inbounds %struct.Zio, %struct.Zio* %24, i32 0, i32 1
  %25 = load i8*, i8** %p16, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr17, i8** %p16, align 8
  %26 = load i8, i8* %25, align 1
  %conv18 = zext i8 %26 to i32
  br label %cond.end.22

cond.false.19:                                    ; preds = %while.body
  %27 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z20 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i32 0, i32 7
  %28 = load %struct.Zio*, %struct.Zio** %z20, align 8
  %call21 = call i32 @luaZ_fill(%struct.Zio* %28)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.14
  %cond23 = phi i32 [ %conv18, %cond.true.14 ], [ %call21, %cond.false.19 ]
  %29 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current24 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 0
  store i32 %cond23, i32* %current24, align 4
  %30 = load i32, i32* %count, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current25 = getelementptr inbounds %struct.LexState, %struct.LexState* %31, i32 0, i32 0
  %32 = load i32, i32* %current25, align 4
  %33 = load i32, i32* %s, align 4
  %cmp26 = icmp eq i32 %32, %33
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %while.end
  %34 = load i32, i32* %count, align 4
  br label %cond.end.31

cond.false.29:                                    ; preds = %while.end
  %35 = load i32, i32* %count, align 4
  %sub = sub nsw i32 0, %35
  %sub30 = sub nsw i32 %sub, 1
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.28
  %cond32 = phi i32 [ %34, %cond.true.28 ], [ %sub30, %cond.false.29 ]
  ret i32 %cond32
}

; Function Attrs: nounwind uwtable
define internal void @read_long_string(%struct.LexState* %ls, %union.SemInfo* %seminfo, i32 %sep) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %seminfo.addr = alloca %union.SemInfo*, align 8
  %sep.addr = alloca i32, align 4
  %cont = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %union.SemInfo* %seminfo, %union.SemInfo** %seminfo.addr, align 8
  store i32 %sep, i32* %sep.addr, align 4
  store i32 0, i32* %cont, align 4
  %0 = load i32, i32* %cont, align 4
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %2 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current = getelementptr inbounds %struct.LexState, %struct.LexState* %2, i32 0, i32 0
  %3 = load i32, i32* %current, align 4
  call void @save(%struct.LexState* %1, i32 %3)
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 7
  %5 = load %struct.Zio*, %struct.Zio** %z, align 8
  %n = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i32 0, i32 0
  %6 = load i64, i64* %n, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %n, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z1 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 7
  %8 = load %struct.Zio*, %struct.Zio** %z1, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %8, i32 0, i32 1
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z2 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 7
  %12 = load %struct.Zio*, %struct.Zio** %z2, align 8
  %call = call i32 @luaZ_fill(%struct.Zio* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current3 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 0
  store i32 %cond, i32* %current3, align 4
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current4 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 0
  %15 = load i32, i32* %current4, align 4
  %cmp5 = icmp eq i32 %15, 10
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current7 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 0
  %17 = load i32, i32* %current7, align 4
  %cmp8 = icmp eq i32 %17, 13
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %18 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @inclinenumber(%struct.LexState* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end
  %19 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current10 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 0
  %20 = load i32, i32* %current10, align 4
  switch i32 %20, label %sw.default [
    i32 -1, label %sw.bb
    i32 91, label %sw.bb.12
    i32 93, label %sw.bb.39
    i32 10, label %sw.bb.62
    i32 13, label %sw.bb.62
  ]

sw.bb:                                            ; preds = %for.cond
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %22 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  %tobool = icmp ne %union.SemInfo* %22, null
  %cond11 = select i1 %tobool, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0)
  call void @luaX_lexerror(%struct.LexState* %21, i8* %cond11, i32 287)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.cond
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call13 = call i32 @skip_sep(%struct.LexState* %23)
  %24 = load i32, i32* %sep.addr, align 4
  %cmp14 = icmp eq i32 %call13, %24
  br i1 %cmp14, label %if.then.16, label %if.end.38

if.then.16:                                       ; preds = %sw.bb.12
  %25 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %26 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current17 = getelementptr inbounds %struct.LexState, %struct.LexState* %26, i32 0, i32 0
  %27 = load i32, i32* %current17, align 4
  call void @save(%struct.LexState* %25, i32 %27)
  %28 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z18 = getelementptr inbounds %struct.LexState, %struct.LexState* %28, i32 0, i32 7
  %29 = load %struct.Zio*, %struct.Zio** %z18, align 8
  %n19 = getelementptr inbounds %struct.Zio, %struct.Zio* %29, i32 0, i32 0
  %30 = load i64, i64* %n19, align 8
  %dec20 = add i64 %30, -1
  store i64 %dec20, i64* %n19, align 8
  %cmp21 = icmp ugt i64 %30, 0
  br i1 %cmp21, label %cond.true.23, label %cond.false.28

cond.true.23:                                     ; preds = %if.then.16
  %31 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z24 = getelementptr inbounds %struct.LexState, %struct.LexState* %31, i32 0, i32 7
  %32 = load %struct.Zio*, %struct.Zio** %z24, align 8
  %p25 = getelementptr inbounds %struct.Zio, %struct.Zio* %32, i32 0, i32 1
  %33 = load i8*, i8** %p25, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr26, i8** %p25, align 8
  %34 = load i8, i8* %33, align 1
  %conv27 = zext i8 %34 to i32
  br label %cond.end.31

cond.false.28:                                    ; preds = %if.then.16
  %35 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z29 = getelementptr inbounds %struct.LexState, %struct.LexState* %35, i32 0, i32 7
  %36 = load %struct.Zio*, %struct.Zio** %z29, align 8
  %call30 = call i32 @luaZ_fill(%struct.Zio* %36)
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.28, %cond.true.23
  %cond32 = phi i32 [ %conv27, %cond.true.23 ], [ %call30, %cond.false.28 ]
  %37 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current33 = getelementptr inbounds %struct.LexState, %struct.LexState* %37, i32 0, i32 0
  store i32 %cond32, i32* %current33, align 4
  %38 = load i32, i32* %cont, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %cont, align 4
  %39 = load i32, i32* %sep.addr, align 4
  %cmp34 = icmp eq i32 %39, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %cond.end.31
  %40 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_lexerror(%struct.LexState* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i32 0, i32 0), i32 91)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %cond.end.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %sw.bb.12
  br label %sw.epilog

sw.bb.39:                                         ; preds = %for.cond
  %41 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call40 = call i32 @skip_sep(%struct.LexState* %41)
  %42 = load i32, i32* %sep.addr, align 4
  %cmp41 = icmp eq i32 %call40, %42
  br i1 %cmp41, label %if.then.43, label %if.end.61

if.then.43:                                       ; preds = %sw.bb.39
  %43 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %44 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current44 = getelementptr inbounds %struct.LexState, %struct.LexState* %44, i32 0, i32 0
  %45 = load i32, i32* %current44, align 4
  call void @save(%struct.LexState* %43, i32 %45)
  %46 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z45 = getelementptr inbounds %struct.LexState, %struct.LexState* %46, i32 0, i32 7
  %47 = load %struct.Zio*, %struct.Zio** %z45, align 8
  %n46 = getelementptr inbounds %struct.Zio, %struct.Zio* %47, i32 0, i32 0
  %48 = load i64, i64* %n46, align 8
  %dec47 = add i64 %48, -1
  store i64 %dec47, i64* %n46, align 8
  %cmp48 = icmp ugt i64 %48, 0
  br i1 %cmp48, label %cond.true.50, label %cond.false.55

cond.true.50:                                     ; preds = %if.then.43
  %49 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z51 = getelementptr inbounds %struct.LexState, %struct.LexState* %49, i32 0, i32 7
  %50 = load %struct.Zio*, %struct.Zio** %z51, align 8
  %p52 = getelementptr inbounds %struct.Zio, %struct.Zio* %50, i32 0, i32 1
  %51 = load i8*, i8** %p52, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr53, i8** %p52, align 8
  %52 = load i8, i8* %51, align 1
  %conv54 = zext i8 %52 to i32
  br label %cond.end.58

cond.false.55:                                    ; preds = %if.then.43
  %53 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z56 = getelementptr inbounds %struct.LexState, %struct.LexState* %53, i32 0, i32 7
  %54 = load %struct.Zio*, %struct.Zio** %z56, align 8
  %call57 = call i32 @luaZ_fill(%struct.Zio* %54)
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.55, %cond.true.50
  %cond59 = phi i32 [ %conv54, %cond.true.50 ], [ %call57, %cond.false.55 ]
  %55 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current60 = getelementptr inbounds %struct.LexState, %struct.LexState* %55, i32 0, i32 0
  store i32 %cond59, i32* %current60, align 4
  br label %endloop

if.end.61:                                        ; preds = %sw.bb.39
  br label %sw.epilog

sw.bb.62:                                         ; preds = %for.cond, %for.cond
  %56 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @save(%struct.LexState* %56, i32 10)
  %57 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @inclinenumber(%struct.LexState* %57)
  %58 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  %tobool63 = icmp ne %union.SemInfo* %58, null
  br i1 %tobool63, label %if.end.66, label %if.then.64

if.then.64:                                       ; preds = %sw.bb.62
  %59 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff = getelementptr inbounds %struct.LexState, %struct.LexState* %59, i32 0, i32 8
  %60 = load %struct.Mbuffer*, %struct.Mbuffer** %buff, align 8
  %n65 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %60, i32 0, i32 1
  store i64 0, i64* %n65, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %sw.bb.62
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %61 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  %tobool67 = icmp ne %union.SemInfo* %61, null
  br i1 %tobool67, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %sw.default
  %62 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %63 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current69 = getelementptr inbounds %struct.LexState, %struct.LexState* %63, i32 0, i32 0
  %64 = load i32, i32* %current69, align 4
  call void @save(%struct.LexState* %62, i32 %64)
  %65 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z70 = getelementptr inbounds %struct.LexState, %struct.LexState* %65, i32 0, i32 7
  %66 = load %struct.Zio*, %struct.Zio** %z70, align 8
  %n71 = getelementptr inbounds %struct.Zio, %struct.Zio* %66, i32 0, i32 0
  %67 = load i64, i64* %n71, align 8
  %dec72 = add i64 %67, -1
  store i64 %dec72, i64* %n71, align 8
  %cmp73 = icmp ugt i64 %67, 0
  br i1 %cmp73, label %cond.true.75, label %cond.false.80

cond.true.75:                                     ; preds = %if.then.68
  %68 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z76 = getelementptr inbounds %struct.LexState, %struct.LexState* %68, i32 0, i32 7
  %69 = load %struct.Zio*, %struct.Zio** %z76, align 8
  %p77 = getelementptr inbounds %struct.Zio, %struct.Zio* %69, i32 0, i32 1
  %70 = load i8*, i8** %p77, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr78, i8** %p77, align 8
  %71 = load i8, i8* %70, align 1
  %conv79 = zext i8 %71 to i32
  br label %cond.end.83

cond.false.80:                                    ; preds = %if.then.68
  %72 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z81 = getelementptr inbounds %struct.LexState, %struct.LexState* %72, i32 0, i32 7
  %73 = load %struct.Zio*, %struct.Zio** %z81, align 8
  %call82 = call i32 @luaZ_fill(%struct.Zio* %73)
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.80, %cond.true.75
  %cond84 = phi i32 [ %conv79, %cond.true.75 ], [ %call82, %cond.false.80 ]
  %74 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current85 = getelementptr inbounds %struct.LexState, %struct.LexState* %74, i32 0, i32 0
  store i32 %cond84, i32* %current85, align 4
  br label %if.end.102

if.else:                                          ; preds = %sw.default
  %75 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z86 = getelementptr inbounds %struct.LexState, %struct.LexState* %75, i32 0, i32 7
  %76 = load %struct.Zio*, %struct.Zio** %z86, align 8
  %n87 = getelementptr inbounds %struct.Zio, %struct.Zio* %76, i32 0, i32 0
  %77 = load i64, i64* %n87, align 8
  %dec88 = add i64 %77, -1
  store i64 %dec88, i64* %n87, align 8
  %cmp89 = icmp ugt i64 %77, 0
  br i1 %cmp89, label %cond.true.91, label %cond.false.96

cond.true.91:                                     ; preds = %if.else
  %78 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z92 = getelementptr inbounds %struct.LexState, %struct.LexState* %78, i32 0, i32 7
  %79 = load %struct.Zio*, %struct.Zio** %z92, align 8
  %p93 = getelementptr inbounds %struct.Zio, %struct.Zio* %79, i32 0, i32 1
  %80 = load i8*, i8** %p93, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr94, i8** %p93, align 8
  %81 = load i8, i8* %80, align 1
  %conv95 = zext i8 %81 to i32
  br label %cond.end.99

cond.false.96:                                    ; preds = %if.else
  %82 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z97 = getelementptr inbounds %struct.LexState, %struct.LexState* %82, i32 0, i32 7
  %83 = load %struct.Zio*, %struct.Zio** %z97, align 8
  %call98 = call i32 @luaZ_fill(%struct.Zio* %83)
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.96, %cond.true.91
  %cond100 = phi i32 [ %conv95, %cond.true.91 ], [ %call98, %cond.false.96 ]
  %84 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current101 = getelementptr inbounds %struct.LexState, %struct.LexState* %84, i32 0, i32 0
  store i32 %cond100, i32* %current101, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %cond.end.99, %cond.end.83
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.102, %if.end.66, %if.end.61, %if.end.38, %sw.bb
  br label %for.cond

endloop:                                          ; preds = %cond.end.58
  %85 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  %tobool103 = icmp ne %union.SemInfo* %85, null
  br i1 %tobool103, label %if.then.104, label %if.end.111

if.then.104:                                      ; preds = %endloop
  %86 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %87 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff105 = getelementptr inbounds %struct.LexState, %struct.LexState* %87, i32 0, i32 8
  %88 = load %struct.Mbuffer*, %struct.Mbuffer** %buff105, align 8
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %88, i32 0, i32 0
  %89 = load i8*, i8** %buffer, align 8
  %90 = load i32, i32* %sep.addr, align 4
  %add = add nsw i32 2, %90
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, i8* %89, i64 %idx.ext
  %91 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff106 = getelementptr inbounds %struct.LexState, %struct.LexState* %91, i32 0, i32 8
  %92 = load %struct.Mbuffer*, %struct.Mbuffer** %buff106, align 8
  %n107 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %92, i32 0, i32 1
  %93 = load i64, i64* %n107, align 8
  %94 = load i32, i32* %sep.addr, align 4
  %add108 = add nsw i32 2, %94
  %mul = mul nsw i32 2, %add108
  %conv109 = sext i32 %mul to i64
  %sub = sub i64 %93, %conv109
  %call110 = call %union.TString* @luaX_newstring(%struct.LexState* %86, i8* %add.ptr, i64 %sub)
  %95 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  %ts = bitcast %union.SemInfo* %95 to %union.TString**
  store %union.TString* %call110, %union.TString** %ts, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.104, %endloop
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_string(%struct.LexState* %ls, i32 %del, %union.SemInfo* %seminfo) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %del.addr = alloca i32, align 4
  %seminfo.addr = alloca %union.SemInfo*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i32 %del, i32* %del.addr, align 4
  store %union.SemInfo* %seminfo, %union.SemInfo** %seminfo.addr, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i32 0, i32 0
  %2 = load i32, i32* %current, align 4
  call void @save(%struct.LexState* %0, i32 %2)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 7
  %4 = load %struct.Zio*, %struct.Zio** %z, align 8
  %n = getelementptr inbounds %struct.Zio, %struct.Zio* %4, i32 0, i32 0
  %5 = load i64, i64* %n, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %n, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z1 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 7
  %7 = load %struct.Zio*, %struct.Zio** %z1, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %7, i32 0, i32 1
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z2 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 7
  %11 = load %struct.Zio*, %struct.Zio** %z2, align 8
  %call = call i32 @luaZ_fill(%struct.Zio* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current3 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 0
  store i32 %cond, i32* %current3, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.120, %cond.end.99, %if.end.85, %sw.bb.35, %sw.bb.34, %sw.bb.8, %sw.bb, %cond.end
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current4 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 0
  %14 = load i32, i32* %current4, align 4
  %15 = load i32, i32* %del.addr, align 4
  %cmp5 = icmp ne i32 %14, %15
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current7 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 0
  %17 = load i32, i32* %current7, align 4
  switch i32 %17, label %sw.default.102 [
    i32 -1, label %sw.bb
    i32 10, label %sw.bb.8
    i32 13, label %sw.bb.8
    i32 92, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %while.body
  %18 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_lexerror(%struct.LexState* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i32 287)
  br label %while.cond

sw.bb.8:                                          ; preds = %while.body, %while.body
  %19 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_lexerror(%struct.LexState* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i32 286)
  br label %while.cond

sw.bb.9:                                          ; preds = %while.body
  %20 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z10 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 7
  %21 = load %struct.Zio*, %struct.Zio** %z10, align 8
  %n11 = getelementptr inbounds %struct.Zio, %struct.Zio* %21, i32 0, i32 0
  %22 = load i64, i64* %n11, align 8
  %dec12 = add i64 %22, -1
  store i64 %dec12, i64* %n11, align 8
  %cmp13 = icmp ugt i64 %22, 0
  br i1 %cmp13, label %cond.true.15, label %cond.false.20

cond.true.15:                                     ; preds = %sw.bb.9
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z16 = getelementptr inbounds %struct.LexState, %struct.LexState* %23, i32 0, i32 7
  %24 = load %struct.Zio*, %struct.Zio** %z16, align 8
  %p17 = getelementptr inbounds %struct.Zio, %struct.Zio* %24, i32 0, i32 1
  %25 = load i8*, i8** %p17, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr18, i8** %p17, align 8
  %26 = load i8, i8* %25, align 1
  %conv19 = zext i8 %26 to i32
  br label %cond.end.23

cond.false.20:                                    ; preds = %sw.bb.9
  %27 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z21 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i32 0, i32 7
  %28 = load %struct.Zio*, %struct.Zio** %z21, align 8
  %call22 = call i32 @luaZ_fill(%struct.Zio* %28)
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.15
  %cond24 = phi i32 [ %conv19, %cond.true.15 ], [ %call22, %cond.false.20 ]
  %29 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current25 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 0
  store i32 %cond24, i32* %current25, align 4
  %30 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current26 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 0
  %31 = load i32, i32* %current26, align 4
  switch i32 %31, label %sw.default [
    i32 97, label %sw.bb.27
    i32 98, label %sw.bb.28
    i32 102, label %sw.bb.29
    i32 110, label %sw.bb.30
    i32 114, label %sw.bb.31
    i32 116, label %sw.bb.32
    i32 118, label %sw.bb.33
    i32 10, label %sw.bb.34
    i32 13, label %sw.bb.34
    i32 -1, label %sw.bb.35
  ]

sw.bb.27:                                         ; preds = %cond.end.23
  store i32 7, i32* %c, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %cond.end.23
  store i32 8, i32* %c, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %cond.end.23
  store i32 12, i32* %c, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %cond.end.23
  store i32 10, i32* %c, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %cond.end.23
  store i32 13, i32* %c, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %cond.end.23
  store i32 9, i32* %c, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %cond.end.23
  store i32 11, i32* %c, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %cond.end.23, %cond.end.23
  %32 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @save(%struct.LexState* %32, i32 10)
  %33 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @inclinenumber(%struct.LexState* %33)
  br label %while.cond

sw.bb.35:                                         ; preds = %cond.end.23
  br label %while.cond

sw.default:                                       ; preds = %cond.end.23
  %34 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current36 = getelementptr inbounds %struct.LexState, %struct.LexState* %34, i32 0, i32 0
  %35 = load i32, i32* %current36, align 4
  %idxprom = sext i32 %35 to i64
  %call37 = call i16** @__ctype_b_loc() #7
  %36 = load i16*, i16** %call37, align 8
  %arrayidx = getelementptr inbounds i16, i16* %36, i64 %idxprom
  %37 = load i16, i16* %arrayidx, align 2
  %conv38 = zext i16 %37 to i32
  %and = and i32 %conv38, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.default
  %38 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %39 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current39 = getelementptr inbounds %struct.LexState, %struct.LexState* %39, i32 0, i32 0
  %40 = load i32, i32* %current39, align 4
  call void @save(%struct.LexState* %38, i32 %40)
  %41 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z40 = getelementptr inbounds %struct.LexState, %struct.LexState* %41, i32 0, i32 7
  %42 = load %struct.Zio*, %struct.Zio** %z40, align 8
  %n41 = getelementptr inbounds %struct.Zio, %struct.Zio* %42, i32 0, i32 0
  %43 = load i64, i64* %n41, align 8
  %dec42 = add i64 %43, -1
  store i64 %dec42, i64* %n41, align 8
  %cmp43 = icmp ugt i64 %43, 0
  br i1 %cmp43, label %cond.true.45, label %cond.false.50

cond.true.45:                                     ; preds = %if.then
  %44 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z46 = getelementptr inbounds %struct.LexState, %struct.LexState* %44, i32 0, i32 7
  %45 = load %struct.Zio*, %struct.Zio** %z46, align 8
  %p47 = getelementptr inbounds %struct.Zio, %struct.Zio* %45, i32 0, i32 1
  %46 = load i8*, i8** %p47, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr48, i8** %p47, align 8
  %47 = load i8, i8* %46, align 1
  %conv49 = zext i8 %47 to i32
  br label %cond.end.53

cond.false.50:                                    ; preds = %if.then
  %48 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z51 = getelementptr inbounds %struct.LexState, %struct.LexState* %48, i32 0, i32 7
  %49 = load %struct.Zio*, %struct.Zio** %z51, align 8
  %call52 = call i32 @luaZ_fill(%struct.Zio* %49)
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.50, %cond.true.45
  %cond54 = phi i32 [ %conv49, %cond.true.45 ], [ %call52, %cond.false.50 ]
  %50 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current55 = getelementptr inbounds %struct.LexState, %struct.LexState* %50, i32 0, i32 0
  store i32 %cond54, i32* %current55, align 4
  br label %if.end.85

if.else:                                          ; preds = %sw.default
  store i32 0, i32* %i, align 4
  store i32 0, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %51 = load i32, i32* %c, align 4
  %mul = mul nsw i32 10, %51
  %52 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current56 = getelementptr inbounds %struct.LexState, %struct.LexState* %52, i32 0, i32 0
  %53 = load i32, i32* %current56, align 4
  %sub = sub nsw i32 %53, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %c, align 4
  %54 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z57 = getelementptr inbounds %struct.LexState, %struct.LexState* %54, i32 0, i32 7
  %55 = load %struct.Zio*, %struct.Zio** %z57, align 8
  %n58 = getelementptr inbounds %struct.Zio, %struct.Zio* %55, i32 0, i32 0
  %56 = load i64, i64* %n58, align 8
  %dec59 = add i64 %56, -1
  store i64 %dec59, i64* %n58, align 8
  %cmp60 = icmp ugt i64 %56, 0
  br i1 %cmp60, label %cond.true.62, label %cond.false.67

cond.true.62:                                     ; preds = %do.body
  %57 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z63 = getelementptr inbounds %struct.LexState, %struct.LexState* %57, i32 0, i32 7
  %58 = load %struct.Zio*, %struct.Zio** %z63, align 8
  %p64 = getelementptr inbounds %struct.Zio, %struct.Zio* %58, i32 0, i32 1
  %59 = load i8*, i8** %p64, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr65, i8** %p64, align 8
  %60 = load i8, i8* %59, align 1
  %conv66 = zext i8 %60 to i32
  br label %cond.end.70

cond.false.67:                                    ; preds = %do.body
  %61 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z68 = getelementptr inbounds %struct.LexState, %struct.LexState* %61, i32 0, i32 7
  %62 = load %struct.Zio*, %struct.Zio** %z68, align 8
  %call69 = call i32 @luaZ_fill(%struct.Zio* %62)
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.67, %cond.true.62
  %cond71 = phi i32 [ %conv66, %cond.true.62 ], [ %call69, %cond.false.67 ]
  %63 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current72 = getelementptr inbounds %struct.LexState, %struct.LexState* %63, i32 0, i32 0
  store i32 %cond71, i32* %current72, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end.70
  %64 = load i32, i32* %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4
  %cmp73 = icmp slt i32 %inc, 3
  br i1 %cmp73, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %65 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current75 = getelementptr inbounds %struct.LexState, %struct.LexState* %65, i32 0, i32 0
  %66 = load i32, i32* %current75, align 4
  %idxprom76 = sext i32 %66 to i64
  %call77 = call i16** @__ctype_b_loc() #7
  %67 = load i16*, i16** %call77, align 8
  %arrayidx78 = getelementptr inbounds i16, i16* %67, i64 %idxprom76
  %68 = load i16, i16* %arrayidx78, align 2
  %conv79 = zext i16 %68 to i32
  %and80 = and i32 %conv79, 2048
  %tobool81 = icmp ne i32 %and80, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %69 = phi i1 [ false, %do.cond ], [ %tobool81, %land.rhs ]
  br i1 %69, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %70 = load i32, i32* %c, align 4
  %cmp82 = icmp sgt i32 %70, 255
  br i1 %cmp82, label %if.then.84, label %if.end

if.then.84:                                       ; preds = %do.end
  %71 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_lexerror(%struct.LexState* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i32 0, i32 0), i32 286)
  br label %if.end

if.end:                                           ; preds = %if.then.84, %do.end
  %72 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %73 = load i32, i32* %c, align 4
  call void @save(%struct.LexState* %72, i32 %73)
  br label %if.end.85

if.end.85:                                        ; preds = %if.end, %cond.end.53
  br label %while.cond

sw.epilog:                                        ; preds = %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27
  %74 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %75 = load i32, i32* %c, align 4
  call void @save(%struct.LexState* %74, i32 %75)
  %76 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z86 = getelementptr inbounds %struct.LexState, %struct.LexState* %76, i32 0, i32 7
  %77 = load %struct.Zio*, %struct.Zio** %z86, align 8
  %n87 = getelementptr inbounds %struct.Zio, %struct.Zio* %77, i32 0, i32 0
  %78 = load i64, i64* %n87, align 8
  %dec88 = add i64 %78, -1
  store i64 %dec88, i64* %n87, align 8
  %cmp89 = icmp ugt i64 %78, 0
  br i1 %cmp89, label %cond.true.91, label %cond.false.96

cond.true.91:                                     ; preds = %sw.epilog
  %79 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z92 = getelementptr inbounds %struct.LexState, %struct.LexState* %79, i32 0, i32 7
  %80 = load %struct.Zio*, %struct.Zio** %z92, align 8
  %p93 = getelementptr inbounds %struct.Zio, %struct.Zio* %80, i32 0, i32 1
  %81 = load i8*, i8** %p93, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr94, i8** %p93, align 8
  %82 = load i8, i8* %81, align 1
  %conv95 = zext i8 %82 to i32
  br label %cond.end.99

cond.false.96:                                    ; preds = %sw.epilog
  %83 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z97 = getelementptr inbounds %struct.LexState, %struct.LexState* %83, i32 0, i32 7
  %84 = load %struct.Zio*, %struct.Zio** %z97, align 8
  %call98 = call i32 @luaZ_fill(%struct.Zio* %84)
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.96, %cond.true.91
  %cond100 = phi i32 [ %conv95, %cond.true.91 ], [ %call98, %cond.false.96 ]
  %85 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current101 = getelementptr inbounds %struct.LexState, %struct.LexState* %85, i32 0, i32 0
  store i32 %cond100, i32* %current101, align 4
  br label %while.cond

sw.default.102:                                   ; preds = %while.body
  %86 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %87 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current103 = getelementptr inbounds %struct.LexState, %struct.LexState* %87, i32 0, i32 0
  %88 = load i32, i32* %current103, align 4
  call void @save(%struct.LexState* %86, i32 %88)
  %89 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z104 = getelementptr inbounds %struct.LexState, %struct.LexState* %89, i32 0, i32 7
  %90 = load %struct.Zio*, %struct.Zio** %z104, align 8
  %n105 = getelementptr inbounds %struct.Zio, %struct.Zio* %90, i32 0, i32 0
  %91 = load i64, i64* %n105, align 8
  %dec106 = add i64 %91, -1
  store i64 %dec106, i64* %n105, align 8
  %cmp107 = icmp ugt i64 %91, 0
  br i1 %cmp107, label %cond.true.109, label %cond.false.114

cond.true.109:                                    ; preds = %sw.default.102
  %92 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z110 = getelementptr inbounds %struct.LexState, %struct.LexState* %92, i32 0, i32 7
  %93 = load %struct.Zio*, %struct.Zio** %z110, align 8
  %p111 = getelementptr inbounds %struct.Zio, %struct.Zio* %93, i32 0, i32 1
  %94 = load i8*, i8** %p111, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr112, i8** %p111, align 8
  %95 = load i8, i8* %94, align 1
  %conv113 = zext i8 %95 to i32
  br label %cond.end.117

cond.false.114:                                   ; preds = %sw.default.102
  %96 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z115 = getelementptr inbounds %struct.LexState, %struct.LexState* %96, i32 0, i32 7
  %97 = load %struct.Zio*, %struct.Zio** %z115, align 8
  %call116 = call i32 @luaZ_fill(%struct.Zio* %97)
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.114, %cond.true.109
  %cond118 = phi i32 [ %conv113, %cond.true.109 ], [ %call116, %cond.false.114 ]
  %98 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current119 = getelementptr inbounds %struct.LexState, %struct.LexState* %98, i32 0, i32 0
  store i32 %cond118, i32* %current119, align 4
  br label %sw.epilog.120

sw.epilog.120:                                    ; preds = %cond.end.117
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %99 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %100 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current121 = getelementptr inbounds %struct.LexState, %struct.LexState* %100, i32 0, i32 0
  %101 = load i32, i32* %current121, align 4
  call void @save(%struct.LexState* %99, i32 %101)
  %102 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z122 = getelementptr inbounds %struct.LexState, %struct.LexState* %102, i32 0, i32 7
  %103 = load %struct.Zio*, %struct.Zio** %z122, align 8
  %n123 = getelementptr inbounds %struct.Zio, %struct.Zio* %103, i32 0, i32 0
  %104 = load i64, i64* %n123, align 8
  %dec124 = add i64 %104, -1
  store i64 %dec124, i64* %n123, align 8
  %cmp125 = icmp ugt i64 %104, 0
  br i1 %cmp125, label %cond.true.127, label %cond.false.132

cond.true.127:                                    ; preds = %while.end
  %105 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z128 = getelementptr inbounds %struct.LexState, %struct.LexState* %105, i32 0, i32 7
  %106 = load %struct.Zio*, %struct.Zio** %z128, align 8
  %p129 = getelementptr inbounds %struct.Zio, %struct.Zio* %106, i32 0, i32 1
  %107 = load i8*, i8** %p129, align 8
  %incdec.ptr130 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr130, i8** %p129, align 8
  %108 = load i8, i8* %107, align 1
  %conv131 = zext i8 %108 to i32
  br label %cond.end.135

cond.false.132:                                   ; preds = %while.end
  %109 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z133 = getelementptr inbounds %struct.LexState, %struct.LexState* %109, i32 0, i32 7
  %110 = load %struct.Zio*, %struct.Zio** %z133, align 8
  %call134 = call i32 @luaZ_fill(%struct.Zio* %110)
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.132, %cond.true.127
  %cond136 = phi i32 [ %conv131, %cond.true.127 ], [ %call134, %cond.false.132 ]
  %111 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current137 = getelementptr inbounds %struct.LexState, %struct.LexState* %111, i32 0, i32 0
  store i32 %cond136, i32* %current137, align 4
  %112 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %113 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff = getelementptr inbounds %struct.LexState, %struct.LexState* %113, i32 0, i32 8
  %114 = load %struct.Mbuffer*, %struct.Mbuffer** %buff, align 8
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %114, i32 0, i32 0
  %115 = load i8*, i8** %buffer, align 8
  %add.ptr = getelementptr inbounds i8, i8* %115, i64 1
  %116 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff138 = getelementptr inbounds %struct.LexState, %struct.LexState* %116, i32 0, i32 8
  %117 = load %struct.Mbuffer*, %struct.Mbuffer** %buff138, align 8
  %n139 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %117, i32 0, i32 1
  %118 = load i64, i64* %n139, align 8
  %sub140 = sub i64 %118, 2
  %call141 = call %union.TString* @luaX_newstring(%struct.LexState* %112, i8* %add.ptr, i64 %sub140)
  %119 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  %ts = bitcast %union.SemInfo* %119 to %union.TString**
  store %union.TString* %call141, %union.TString** %ts, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @check_next(%struct.LexState* %ls, i8* %set) #0 {
entry:
  %retval = alloca i32, align 4
  %ls.addr = alloca %struct.LexState*, align 8
  %set.addr = alloca i8*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i8* %set, i8** %set.addr, align 8
  %0 = load i8*, i8** %set.addr, align 8
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i32 0, i32 0
  %2 = load i32, i32* %current, align 4
  %call = call i8* @strchr(i8* %0, i32 %2) #6
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %4 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current1 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 0
  %5 = load i32, i32* %current1, align 4
  call void @save(%struct.LexState* %3, i32 %5)
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 7
  %7 = load %struct.Zio*, %struct.Zio** %z, align 8
  %n = getelementptr inbounds %struct.Zio, %struct.Zio* %7, i32 0, i32 0
  %8 = load i64, i64* %n, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %n, align 8
  %cmp = icmp ugt i64 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z2 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 7
  %10 = load %struct.Zio*, %struct.Zio** %z2, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %10, i32 0, i32 1
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z3 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 7
  %14 = load %struct.Zio*, %struct.Zio** %z3, align 8
  %call4 = call i32 @luaZ_fill(%struct.Zio* %14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call4, %cond.false ]
  %15 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current5 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 0
  store i32 %cond, i32* %current5, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @read_numeral(%struct.LexState* %ls, %union.SemInfo* %seminfo) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %seminfo.addr = alloca %union.SemInfo*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %union.SemInfo* %seminfo, %union.SemInfo** %seminfo.addr, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i32 0, i32 0
  %2 = load i32, i32* %current, align 4
  call void @save(%struct.LexState* %0, i32 %2)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 7
  %4 = load %struct.Zio*, %struct.Zio** %z, align 8
  %n = getelementptr inbounds %struct.Zio, %struct.Zio* %4, i32 0, i32 0
  %5 = load i64, i64* %n, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %n, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z1 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 7
  %7 = load %struct.Zio*, %struct.Zio** %z1, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %7, i32 0, i32 1
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z2 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 7
  %11 = load %struct.Zio*, %struct.Zio** %z2, align 8
  %call = call i32 @luaZ_fill(%struct.Zio* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current3 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 0
  store i32 %cond, i32* %current3, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current4 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 0
  %14 = load i32, i32* %current4, align 4
  %idxprom = sext i32 %14 to i64
  %call5 = call i16** @__ctype_b_loc() #7
  %15 = load i16*, i16** %call5, align 8
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2
  %conv6 = zext i16 %16 to i32
  %and = and i32 %conv6, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %17 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current7 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 0
  %18 = load i32, i32* %current7, align 4
  %cmp8 = icmp eq i32 %18, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %19 = phi i1 [ true, %do.cond ], [ %cmp8, %lor.rhs ]
  br i1 %19, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %20 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call10 = call i32 @check_next(%struct.LexState* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call12 = call i32 @check_next(%struct.LexState* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  br label %while.cond

while.cond:                                       ; preds = %cond.end.39, %if.end
  %22 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current13 = getelementptr inbounds %struct.LexState, %struct.LexState* %22, i32 0, i32 0
  %23 = load i32, i32* %current13, align 4
  %idxprom14 = sext i32 %23 to i64
  %call15 = call i16** @__ctype_b_loc() #7
  %24 = load i16*, i16** %call15, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %24, i64 %idxprom14
  %25 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %25 to i32
  %and18 = and i32 %conv17, 8
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %lor.end.24, label %lor.rhs.20

lor.rhs.20:                                       ; preds = %while.cond
  %26 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current21 = getelementptr inbounds %struct.LexState, %struct.LexState* %26, i32 0, i32 0
  %27 = load i32, i32* %current21, align 4
  %cmp22 = icmp eq i32 %27, 95
  br label %lor.end.24

lor.end.24:                                       ; preds = %lor.rhs.20, %while.cond
  %28 = phi i1 [ true, %while.cond ], [ %cmp22, %lor.rhs.20 ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end.24
  %29 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %30 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current25 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 0
  %31 = load i32, i32* %current25, align 4
  call void @save(%struct.LexState* %29, i32 %31)
  %32 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z26 = getelementptr inbounds %struct.LexState, %struct.LexState* %32, i32 0, i32 7
  %33 = load %struct.Zio*, %struct.Zio** %z26, align 8
  %n27 = getelementptr inbounds %struct.Zio, %struct.Zio* %33, i32 0, i32 0
  %34 = load i64, i64* %n27, align 8
  %dec28 = add i64 %34, -1
  store i64 %dec28, i64* %n27, align 8
  %cmp29 = icmp ugt i64 %34, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false.36

cond.true.31:                                     ; preds = %while.body
  %35 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z32 = getelementptr inbounds %struct.LexState, %struct.LexState* %35, i32 0, i32 7
  %36 = load %struct.Zio*, %struct.Zio** %z32, align 8
  %p33 = getelementptr inbounds %struct.Zio, %struct.Zio* %36, i32 0, i32 1
  %37 = load i8*, i8** %p33, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr34, i8** %p33, align 8
  %38 = load i8, i8* %37, align 1
  %conv35 = zext i8 %38 to i32
  br label %cond.end.39

cond.false.36:                                    ; preds = %while.body
  %39 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %z37 = getelementptr inbounds %struct.LexState, %struct.LexState* %39, i32 0, i32 7
  %40 = load %struct.Zio*, %struct.Zio** %z37, align 8
  %call38 = call i32 @luaZ_fill(%struct.Zio* %40)
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.36, %cond.true.31
  %cond40 = phi i32 [ %conv35, %cond.true.31 ], [ %call38, %cond.false.36 ]
  %41 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %current41 = getelementptr inbounds %struct.LexState, %struct.LexState* %41, i32 0, i32 0
  store i32 %cond40, i32* %current41, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end.24
  %42 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @save(%struct.LexState* %42, i32 0)
  %43 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %44 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %decpoint = getelementptr inbounds %struct.LexState, %struct.LexState* %44, i32 0, i32 10
  %45 = load i8, i8* %decpoint, align 1
  call void @buffreplace(%struct.LexState* %43, i8 signext 46, i8 signext %45)
  %46 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff = getelementptr inbounds %struct.LexState, %struct.LexState* %46, i32 0, i32 8
  %47 = load %struct.Mbuffer*, %struct.Mbuffer** %buff, align 8
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %47, i32 0, i32 0
  %48 = load i8*, i8** %buffer, align 8
  %49 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  %r = bitcast %union.SemInfo* %49 to double*
  %call42 = call i32 @luaO_str2d(i8* %48, double* %r)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %while.end
  %50 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %51 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  call void @trydecpoint(%struct.LexState* %50, %union.SemInfo* %51)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %while.end
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @buffreplace(%struct.LexState* %ls, i8 signext %from, i8 signext %to) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %from.addr = alloca i8, align 1
  %to.addr = alloca i8, align 1
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i8 %from, i8* %from.addr, align 1
  store i8 %to, i8* %to.addr, align 1
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 8
  %1 = load %struct.Mbuffer*, %struct.Mbuffer** %buff, align 8
  %n1 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i32 0, i32 1
  %2 = load i64, i64* %n1, align 8
  store i64 %2, i64* %n, align 8
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff2 = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 8
  %4 = load %struct.Mbuffer*, %struct.Mbuffer** %buff2, align 8
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i64, i64* %n, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %n, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, i64* %n, align 8
  %8 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %7
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %10 = load i8, i8* %from.addr, align 1
  %conv3 = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i8, i8* %to.addr, align 1
  %12 = load i64, i64* %n, align 8
  %13 = load i8*, i8** %p, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 %12
  store i8 %11, i8* %arrayidx5, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare hidden i32 @luaO_str2d(i8*, double*) #1

; Function Attrs: nounwind uwtable
define internal void @trydecpoint(%struct.LexState* %ls, %union.SemInfo* %seminfo) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %seminfo.addr = alloca %union.SemInfo*, align 8
  %cv = alloca %struct.lconv*, align 8
  %old = alloca i8, align 1
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %union.SemInfo* %seminfo, %union.SemInfo** %seminfo.addr, align 8
  %call = call %struct.lconv* @localeconv() #4
  store %struct.lconv* %call, %struct.lconv** %cv, align 8
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %decpoint = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i32 0, i32 10
  %1 = load i8, i8* %decpoint, align 1
  store i8 %1, i8* %old, align 1
  %2 = load %struct.lconv*, %struct.lconv** %cv, align 8
  %tobool = icmp ne %struct.lconv* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.lconv*, %struct.lconv** %cv, align 8
  %decimal_point = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 0
  %4 = load i8*, i8** %decimal_point, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 46, %cond.false ]
  %conv1 = trunc i32 %cond to i8
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %decpoint2 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 10
  store i8 %conv1, i8* %decpoint2, align 1
  %7 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %8 = load i8, i8* %old, align 1
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %decpoint3 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 10
  %10 = load i8, i8* %decpoint3, align 1
  call void @buffreplace(%struct.LexState* %7, i8 signext %8, i8 signext %10)
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %buff = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 8
  %12 = load %struct.Mbuffer*, %struct.Mbuffer** %buff, align 8
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %12, i32 0, i32 0
  %13 = load i8*, i8** %buffer, align 8
  %14 = load %union.SemInfo*, %union.SemInfo** %seminfo.addr, align 8
  %r = bitcast %union.SemInfo* %14 to double*
  %call4 = call i32 @luaO_str2d(i8* %13, double* %r)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %15 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %decpoint6 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 10
  %17 = load i8, i8* %decpoint6, align 1
  call void @buffreplace(%struct.LexState* %15, i8 signext %17, i8 signext 46)
  %18 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  call void @luaX_lexerror(%struct.LexState* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 284)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret void
}

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
