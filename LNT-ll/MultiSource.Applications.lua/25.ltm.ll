; ModuleID = './MultiSource.Applications.lua/25.ltm.bc'
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
%union.Udata = type { %struct.anon.2 }
%struct.anon.2 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"userdata\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"upval\00", align 1
@luaT_typenames = hidden constant [11 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)], align 16
@luaT_init.luaT_eventname = internal constant [17 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"__eq\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"__lt\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"__le\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"__concat\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8

; Function Attrs: nounwind uwtable
define hidden void @luaT_init(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [17 x i8*], [17 x i8*]* @luaT_init.luaT_eventname, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [17 x i8*], [17 x i8*]* @luaT_init.luaT_eventname, i32 0, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  %call = call i64 @strlen(i8* %5) #3
  %call3 = call %union.TString* @luaS_newlstr(%struct.lua_State* %1, i8* %3, i64 %call)
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %tmname = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 24
  %arrayidx5 = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %tmname, i32 0, i64 %idxprom4
  store %union.TString* %call3, %union.TString** %arrayidx5, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %11 = load %struct.global_State*, %struct.global_State** %l_G7, align 8
  %tmname8 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 24
  %arrayidx9 = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %tmname8, i32 0, i64 %idxprom6
  %12 = load %union.TString*, %union.TString** %arrayidx9, align 8
  %tsv = bitcast %union.TString* %12 to %struct.anon.1*
  %marked = getelementptr inbounds %struct.anon.1, %struct.anon.1* %tsv, i32 0, i32 2
  %13 = load i8, i8* %marked, align 1
  %conv = zext i8 %13 to i32
  %or = or i32 %conv, 32
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %marked, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define hidden %struct.lua_TValue* @luaT_gettm(%struct.Table* %events, i32 %event, %union.TString* %ename) #0 {
entry:
  %retval = alloca %struct.lua_TValue*, align 8
  %events.addr = alloca %struct.Table*, align 8
  %event.addr = alloca i32, align 4
  %ename.addr = alloca %union.TString*, align 8
  %tm = alloca %struct.lua_TValue*, align 8
  store %struct.Table* %events, %struct.Table** %events.addr, align 8
  store i32 %event, i32* %event.addr, align 4
  store %union.TString* %ename, %union.TString** %ename.addr, align 8
  %0 = load %struct.Table*, %struct.Table** %events.addr, align 8
  %1 = load %union.TString*, %union.TString** %ename.addr, align 8
  %call = call %struct.lua_TValue* @luaH_getstr(%struct.Table* %0, %union.TString* %1)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %tm, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %event.addr, align 4
  %shl = shl i32 1, %4
  %conv = trunc i32 %shl to i8
  %conv1 = zext i8 %conv to i32
  %5 = load %struct.Table*, %struct.Table** %events.addr, align 8
  %flags = getelementptr inbounds %struct.Table, %struct.Table* %5, i32 0, i32 3
  %6 = load i8, i8* %flags, align 1
  %conv2 = zext i8 %6 to i32
  %or = or i32 %conv2, %conv1
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %flags, align 1
  store %struct.lua_TValue* null, %struct.lua_TValue** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  store %struct.lua_TValue* %7, %struct.lua_TValue** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %retval
  ret %struct.lua_TValue* %8
}

declare hidden %struct.lua_TValue* @luaH_getstr(%struct.Table*, %union.TString*) #1

; Function Attrs: nounwind uwtable
define hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %L, %struct.lua_TValue* %o, i32 %event) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %o.addr = alloca %struct.lua_TValue*, align 8
  %event.addr = alloca i32, align 4
  %mt = alloca %struct.Table*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %o, %struct.lua_TValue** %o.addr, align 8
  store i32 %event, i32* %event.addr, align 4
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  switch i32 %1, label %sw.default [
    i32 5, label %sw.bb
    i32 7, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %3 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %3 to %struct.Table*
  %metatable = getelementptr inbounds %struct.Table, %struct.Table* %h, i32 0, i32 5
  %4 = load %struct.Table*, %struct.Table** %metatable, align 8
  store %struct.Table* %4, %struct.Table** %mt, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %gc3 = bitcast %union.Value* %value2 to %union.GCObject**
  %6 = load %union.GCObject*, %union.GCObject** %gc3, align 8
  %u = bitcast %union.GCObject* %6 to %union.Udata*
  %uv = bitcast %union.Udata* %u to %struct.anon.2*
  %metatable4 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %uv, i32 0, i32 3
  %7 = load %struct.Table*, %struct.Table** %metatable4, align 8
  store %struct.Table* %7, %struct.Table** %mt, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %o.addr, align 8
  %tt5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %9 = load i32, i32* %tt5, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %11 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %mt6 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 23
  %arrayidx = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %mt6, i32 0, i64 %idxprom
  %12 = load %struct.Table*, %struct.Table** %arrayidx, align 8
  store %struct.Table* %12, %struct.Table** %mt, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  %13 = load %struct.Table*, %struct.Table** %mt, align 8
  %tobool = icmp ne %struct.Table* %13, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %14 = load %struct.Table*, %struct.Table** %mt, align 8
  %15 = load i32, i32* %event.addr, align 4
  %idxprom7 = zext i32 %15 to i64
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %17 = load %struct.global_State*, %struct.global_State** %l_G8, align 8
  %tmname = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 24
  %arrayidx9 = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %tmname, i32 0, i64 %idxprom7
  %18 = load %union.TString*, %union.TString** %arrayidx9, align 8
  %call = call %struct.lua_TValue* @luaH_getstr(%struct.Table* %14, %union.TString* %18)
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lua_TValue* [ %call, %cond.true ], [ @luaO_nilobject_, %cond.false ]
  ret %struct.lua_TValue* %cond
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
