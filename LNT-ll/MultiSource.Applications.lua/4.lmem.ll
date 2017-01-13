; ModuleID = './MultiSource.Applications.lua/4.lmem.bc'
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

@.str = private unnamed_addr constant [39 x i8] c"memory allocation error: block too big\00", align 1

; Function Attrs: nounwind uwtable
define hidden i8* @luaM_growaux_(%struct.lua_State* %L, i8* %block, i32* %size, i64 %size_elems, i32 %limit, i8* %errormsg) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %block.addr = alloca i8*, align 8
  %size.addr = alloca i32*, align 8
  %size_elems.addr = alloca i64, align 8
  %limit.addr = alloca i32, align 4
  %errormsg.addr = alloca i8*, align 8
  %newblock = alloca i8*, align 8
  %newsize = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %block, i8** %block.addr, align 8
  store i32* %size, i32** %size.addr, align 8
  store i64 %size_elems, i64* %size_elems.addr, align 8
  store i32 %limit, i32* %limit.addr, align 4
  store i8* %errormsg, i8** %errormsg.addr, align 8
  %0 = load i32*, i32** %size.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32, i32* %limit.addr, align 4
  %div = sdiv i32 %2, 2
  %cmp = icmp sge i32 %1, %div
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %size.addr, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* %limit.addr, align 4
  %cmp1 = icmp sge i32 %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i8*, i8** %errormsg.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load i32, i32* %limit.addr, align 4
  store i32 %8, i32* %newsize, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %9 = load i32*, i32** %size.addr, align 8
  %10 = load i32, i32* %9, align 4
  %mul = mul nsw i32 %10, 2
  store i32 %mul, i32* %newsize, align 4
  %11 = load i32, i32* %newsize, align 4
  %cmp3 = icmp slt i32 %11, 4
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  store i32 4, i32* %newsize, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %12 = load i32, i32* %newsize, align 4
  %add = add nsw i32 %12, 1
  %conv = sext i32 %add to i64
  %13 = load i64, i64* %size_elems.addr, align 8
  %div7 = udiv i64 -3, %13
  %cmp8 = icmp ule i64 %conv, %div7
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load i8*, i8** %block.addr, align 8
  %16 = load i32*, i32** %size.addr, align 8
  %17 = load i32, i32* %16, align 4
  %conv10 = sext i32 %17 to i64
  %18 = load i64, i64* %size_elems.addr, align 8
  %mul11 = mul i64 %conv10, %18
  %19 = load i32, i32* %newsize, align 4
  %conv12 = sext i32 %19 to i64
  %20 = load i64, i64* %size_elems.addr, align 8
  %mul13 = mul i64 %conv12, %20
  %call = call i8* @luaM_realloc_(%struct.lua_State* %14, i8* %15, i64 %mul11, i64 %mul13)
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call14 = call i8* @luaM_toobig(%struct.lua_State* %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call14, %cond.false ]
  store i8* %cond, i8** %newblock, align 8
  %22 = load i32, i32* %newsize, align 4
  %23 = load i32*, i32** %size.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %newblock, align 8
  ret i8* %24
}

declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define hidden i8* @luaM_realloc_(%struct.lua_State* %L, i8* %block, i64 %osize, i64 %nsize) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %block.addr = alloca i8*, align 8
  %osize.addr = alloca i64, align 8
  %nsize.addr = alloca i64, align 8
  %g = alloca %struct.global_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %block, i8** %block.addr, align 8
  store i64 %osize, i64* %osize.addr, align 8
  store i64 %nsize, i64* %nsize.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 6
  %1 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  store %struct.global_State* %1, %struct.global_State** %g, align 8
  %2 = load %struct.global_State*, %struct.global_State** %g, align 8
  %frealloc = getelementptr inbounds %struct.global_State, %struct.global_State* %2, i32 0, i32 1
  %3 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %frealloc, align 8
  %4 = load %struct.global_State*, %struct.global_State** %g, align 8
  %ud = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 2
  %5 = load i8*, i8** %ud, align 8
  %6 = load i8*, i8** %block.addr, align 8
  %7 = load i64, i64* %osize.addr, align 8
  %8 = load i64, i64* %nsize.addr, align 8
  %call = call i8* %3(i8* %5, i8* %6, i64 %7, i64 %8)
  store i8* %call, i8** %block.addr, align 8
  %9 = load i8*, i8** %block.addr, align 8
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i64, i64* %nsize.addr, align 8
  %cmp1 = icmp ugt i64 %10, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_throw(%struct.lua_State* %11, i32 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 14
  %13 = load i64, i64* %totalbytes, align 8
  %14 = load i64, i64* %osize.addr, align 8
  %sub = sub i64 %13, %14
  %15 = load i64, i64* %nsize.addr, align 8
  %add = add i64 %sub, %15
  %16 = load %struct.global_State*, %struct.global_State** %g, align 8
  %totalbytes2 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 14
  store i64 %add, i64* %totalbytes2, align 8
  %17 = load i8*, i8** %block.addr, align 8
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define hidden i8* @luaM_toobig(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  ret i8* null
}

declare hidden void @luaD_throw(%struct.lua_State*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
