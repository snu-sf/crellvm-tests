; ModuleID = './MultiSource.Applications.lua/11.lzio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
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

; Function Attrs: nounwind uwtable
define hidden i32 @luaZ_fill(%struct.Zio* %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca %struct.Zio*, align 8
  %size = alloca i64, align 8
  %L = alloca %struct.lua_State*, align 8
  %buff = alloca i8*, align 8
  store %struct.Zio* %z, %struct.Zio** %z.addr, align 8
  %0 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %L1 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i32 0, i32 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  store %struct.lua_State* %1, %struct.lua_State** %L, align 8
  %2 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %reader = getelementptr inbounds %struct.Zio, %struct.Zio* %2, i32 0, i32 2
  %3 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %reader, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %5 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %data = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i32 0, i32 3
  %6 = load i8*, i8** %data, align 8
  %call = call i8* %3(%struct.lua_State* %4, i8* %6, i64* %size)
  store i8* %call, i8** %buff, align 8
  %7 = load i8*, i8** %buff, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i64, i64* %size, align 8
  %cmp2 = icmp eq i64 %8, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i64, i64* %size, align 8
  %sub = sub i64 %9, 1
  %10 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %n = getelementptr inbounds %struct.Zio, %struct.Zio* %10, i32 0, i32 0
  store i64 %sub, i64* %n, align 8
  %11 = load i8*, i8** %buff, align 8
  %12 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %12, i32 0, i32 1
  store i8* %11, i8** %p, align 8
  %13 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %p3 = getelementptr inbounds %struct.Zio, %struct.Zio* %13, i32 0, i32 1
  %14 = load i8*, i8** %p3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p3, align 8
  %15 = load i8, i8* %14, align 1
  %conv = zext i8 %15 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaZ_lookahead(%struct.Zio* %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca %struct.Zio*, align 8
  store %struct.Zio* %z, %struct.Zio** %z.addr, align 8
  %0 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %n = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i32 0, i32 0
  %1 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %call = call i32 @luaZ_fill(%struct.Zio* %2)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %3 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %n3 = getelementptr inbounds %struct.Zio, %struct.Zio* %3, i32 0, i32 0
  %4 = load i64, i64* %n3, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %n3, align 8
  %5 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i32 0, i32 1
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %7 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %p5 = getelementptr inbounds %struct.Zio, %struct.Zio* %7, i32 0, i32 1
  %8 = load i8*, i8** %p5, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define hidden void @luaZ_init(%struct.lua_State* %L, %struct.Zio* %z, i8* (%struct.lua_State*, i8*, i64*)* %reader, i8* %data) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %z.addr = alloca %struct.Zio*, align 8
  %reader.addr = alloca i8* (%struct.lua_State*, i8*, i64*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Zio* %z, %struct.Zio** %z.addr, align 8
  store i8* (%struct.lua_State*, i8*, i64*)* %reader, i8* (%struct.lua_State*, i8*, i64*)** %reader.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %L1 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i32 0, i32 4
  store %struct.lua_State* %0, %struct.lua_State** %L1, align 8
  %2 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %reader.addr, align 8
  %3 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %reader2 = getelementptr inbounds %struct.Zio, %struct.Zio* %3, i32 0, i32 2
  store i8* (%struct.lua_State*, i8*, i64*)* %2, i8* (%struct.lua_State*, i8*, i64*)** %reader2, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %data3 = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i32 0, i32 3
  store i8* %4, i8** %data3, align 8
  %6 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %n = getelementptr inbounds %struct.Zio, %struct.Zio* %6, i32 0, i32 0
  store i64 0, i64* %n, align 8
  %7 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %7, i32 0, i32 1
  store i8* null, i8** %p, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @luaZ_read(%struct.Zio* %z, i8* %b, i64 %n) #0 {
entry:
  %retval = alloca i64, align 8
  %z.addr = alloca %struct.Zio*, align 8
  %b.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %m = alloca i64, align 8
  store %struct.Zio* %z, %struct.Zio** %z.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load i64, i64* %n.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %call = call i32 @luaZ_lookahead(%struct.Zio* %1)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load i64, i64* %n.addr, align 8
  store i64 %2, i64* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load i64, i64* %n.addr, align 8
  %4 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %n1 = getelementptr inbounds %struct.Zio, %struct.Zio* %4, i32 0, i32 0
  %5 = load i64, i64* %n1, align 8
  %cmp2 = icmp ule i64 %3, %5
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i64, i64* %n.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %n3 = getelementptr inbounds %struct.Zio, %struct.Zio* %7, i32 0, i32 0
  %8 = load i64, i64* %n3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %8, %cond.false ]
  store i64 %cond, i64* %m, align 8
  %9 = load i8*, i8** %b.addr, align 8
  %10 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %p = getelementptr inbounds %struct.Zio, %struct.Zio* %10, i32 0, i32 1
  %11 = load i8*, i8** %p, align 8
  %12 = load i64, i64* %m, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %11, i64 %12, i32 1, i1 false)
  %13 = load i64, i64* %m, align 8
  %14 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %n4 = getelementptr inbounds %struct.Zio, %struct.Zio* %14, i32 0, i32 0
  %15 = load i64, i64* %n4, align 8
  %sub = sub i64 %15, %13
  store i64 %sub, i64* %n4, align 8
  %16 = load i64, i64* %m, align 8
  %17 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %p5 = getelementptr inbounds %struct.Zio, %struct.Zio* %17, i32 0, i32 1
  %18 = load i8*, i8** %p5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %16
  store i8* %add.ptr, i8** %p5, align 8
  %19 = load i8*, i8** %b.addr, align 8
  %20 = load i64, i64* %m, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %add.ptr6, i8** %b.addr, align 8
  %21 = load i64, i64* %m, align 8
  %22 = load i64, i64* %n.addr, align 8
  %sub7 = sub i64 %22, %21
  store i64 %sub7, i64* %n.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %23 = load i64, i64* %retval
  ret i64 %23
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define hidden i8* @luaZ_openspace(%struct.lua_State* %L, %struct.Mbuffer* %buff, i64 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %buff.addr = alloca %struct.Mbuffer*, align 8
  %n.addr = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Mbuffer* %buff, %struct.Mbuffer** %buff.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load %struct.Mbuffer*, %struct.Mbuffer** %buff.addr, align 8
  %buffsize = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i32 0, i32 2
  %2 = load i64, i64* %buffsize, align 8
  %cmp = icmp ugt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp ult i64 %3, 32
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i64 32, i64* %n.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load i64, i64* %n.addr, align 8
  %add = add i64 %4, 1
  %cmp3 = icmp ule i64 %add, -3
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct.Mbuffer*, %struct.Mbuffer** %buff.addr, align 8
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %6, i32 0, i32 0
  %7 = load i8*, i8** %buffer, align 8
  %8 = load %struct.Mbuffer*, %struct.Mbuffer** %buff.addr, align 8
  %buffsize4 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %8, i32 0, i32 2
  %9 = load i64, i64* %buffsize4, align 8
  %mul = mul i64 %9, 1
  %10 = load i64, i64* %n.addr, align 8
  %mul5 = mul i64 %10, 1
  %call = call i8* @luaM_realloc_(%struct.lua_State* %5, i8* %7, i64 %mul, i64 %mul5)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i8* @luaM_toobig(%struct.lua_State* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call6, %cond.false ]
  %12 = load %struct.Mbuffer*, %struct.Mbuffer** %buff.addr, align 8
  %buffer7 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %12, i32 0, i32 0
  store i8* %cond, i8** %buffer7, align 8
  %13 = load i64, i64* %n.addr, align 8
  %14 = load %struct.Mbuffer*, %struct.Mbuffer** %buff.addr, align 8
  %buffsize8 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %14, i32 0, i32 2
  store i64 %13, i64* %buffsize8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end, %entry
  %15 = load %struct.Mbuffer*, %struct.Mbuffer** %buff.addr, align 8
  %buffer10 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %15, i32 0, i32 0
  %16 = load i8*, i8** %buffer10, align 8
  ret i8* %16
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #2

declare hidden i8* @luaM_toobig(%struct.lua_State*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
