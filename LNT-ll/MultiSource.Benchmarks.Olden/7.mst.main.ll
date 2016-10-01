; ModuleID = './MultiSource.Benchmarks.Olden/7.mst.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vert_st = type { i32, %struct.vert_st*, %struct.hash* }
%struct.hash = type { %struct.hash_entry**, i32 (i32)*, i32 }
%struct.hash_entry = type { i32, i8*, %struct.hash_entry* }
%struct.graph_st = type { [1 x %struct.vert_st*] }
%struct.blue_return = type { %struct.vert_st*, i32 }
%struct.fc_br = type { %struct.blue_return }

@.str = private unnamed_addr constant [25 x i8] c"Making graph of size %d\0A\00", align 1
@NumNodes = external global i32, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Graph completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"About to compute mst \0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"MST has cost %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Compute phase 1\0A\00", align 1
@MyVertexList = internal global %struct.vert_st* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"Compute phase 2\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Not found\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %graph = alloca %struct.graph_st*, align 8
  %dist = alloca i32, align 4
  %size = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @dealwithargs(i32 %0, i8** %1)
  store i32 %call, i32* %size, align 4
  %2 = load i32, i32* %size, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* %size, align 4
  %4 = load i32, i32* @NumNodes, align 4
  %call2 = call %struct.graph_st* @MakeGraph(i32 %3, i32 %4)
  store %struct.graph_st* %call2, %struct.graph_st** %graph, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  %5 = load %struct.graph_st*, %struct.graph_st** %graph, align 8
  %6 = load i32, i32* @NumNodes, align 4
  %7 = load i32, i32* %size, align 4
  %call5 = call i32 @ComputeMst(%struct.graph_st* %5, i32 %6, i32 %7)
  store i32 %call5, i32* %dist, align 4
  %8 = load i32, i32* %dist, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 %8)
  call void @exit(i32 0) #4
  unreachable

return:                                           ; No predecessors!
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @dealwithargs(i32, i8**) #1

declare i32 @printf(i8*, ...) #1

declare %struct.graph_st* @MakeGraph(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ComputeMst(%struct.graph_st* %graph, i32 %numproc, i32 %numvert) #0 {
entry:
  %graph.addr = alloca %struct.graph_st*, align 8
  %numproc.addr = alloca i32, align 4
  %numvert.addr = alloca i32, align 4
  %inserted = alloca %struct.vert_st*, align 8
  %tmp = alloca %struct.vert_st*, align 8
  %cost = alloca i32, align 4
  %dist = alloca i32, align 4
  %br = alloca %struct.blue_return, align 8
  %coerce = alloca %struct.blue_return, align 8
  store %struct.graph_st* %graph, %struct.graph_st** %graph.addr, align 8
  store i32 %numproc, i32* %numproc.addr, align 4
  store i32 %numvert, i32* %numvert.addr, align 4
  store i32 0, i32* %cost, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  %0 = load %struct.graph_st*, %struct.graph_st** %graph.addr, align 8
  %vlist = getelementptr inbounds %struct.graph_st, %struct.graph_st* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %vlist, i32 0, i64 0
  %1 = load %struct.vert_st*, %struct.vert_st** %arrayidx, align 8
  store %struct.vert_st* %1, %struct.vert_st** %inserted, align 8
  %2 = load %struct.vert_st*, %struct.vert_st** %inserted, align 8
  %next = getelementptr inbounds %struct.vert_st, %struct.vert_st* %2, i32 0, i32 1
  %3 = load %struct.vert_st*, %struct.vert_st** %next, align 8
  store %struct.vert_st* %3, %struct.vert_st** %tmp, align 8
  %4 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %5 = load %struct.graph_st*, %struct.graph_st** %graph.addr, align 8
  %vlist3 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %5, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %vlist3, i32 0, i64 0
  store %struct.vert_st* %4, %struct.vert_st** %arrayidx4, align 8
  %6 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  store %struct.vert_st* %6, %struct.vert_st** @MyVertexList, align 8
  %7 = load i32, i32* %numvert.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %numvert.addr, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i32, i32* %numvert.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.vert_st*, %struct.vert_st** %inserted, align 8
  %10 = load i32, i32* %numproc.addr, align 4
  %call7 = call { %struct.vert_st*, i32 } @Do_all_BlueRule(%struct.vert_st* %9, i32 %10, i32 0)
  %11 = bitcast %struct.blue_return* %coerce to { %struct.vert_st*, i32 }*
  %12 = getelementptr { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %11, i32 0, i32 0
  %13 = extractvalue { %struct.vert_st*, i32 } %call7, 0
  store %struct.vert_st* %13, %struct.vert_st** %12, align 8
  %14 = getelementptr { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %11, i32 0, i32 1
  %15 = extractvalue { %struct.vert_st*, i32 } %call7, 1
  store i32 %15, i32* %14, align 8
  %16 = bitcast %struct.blue_return* %br to i8*
  %17 = bitcast %struct.blue_return* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %vert = getelementptr inbounds %struct.blue_return, %struct.blue_return* %br, i32 0, i32 0
  %18 = load %struct.vert_st*, %struct.vert_st** %vert, align 8
  store %struct.vert_st* %18, %struct.vert_st** %inserted, align 8
  %dist8 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %br, i32 0, i32 1
  %19 = load i32, i32* %dist8, align 4
  store i32 %19, i32* %dist, align 4
  %20 = load i32, i32* %numvert.addr, align 4
  %dec9 = add nsw i32 %20, -1
  store i32 %dec9, i32* %numvert.addr, align 4
  %21 = load i32, i32* %cost, align 4
  %22 = load i32, i32* %dist, align 4
  %add = add nsw i32 %21, %22
  store i32 %add, i32* %cost, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %cost, align 4
  ret i32 %23
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define internal { %struct.vert_st*, i32 } @Do_all_BlueRule(%struct.vert_st* %inserted, i32 %nproc, i32 %pn) #0 {
entry:
  %retval = alloca %struct.blue_return, align 8
  %inserted.addr = alloca %struct.vert_st*, align 8
  %nproc.addr = alloca i32, align 4
  %pn.addr = alloca i32, align 4
  %fcleft = alloca %struct.fc_br, align 8
  %retright = alloca %struct.blue_return, align 8
  %coerce = alloca %struct.blue_return, align 8
  %coerce4 = alloca %struct.blue_return, align 8
  store %struct.vert_st* %inserted, %struct.vert_st** %inserted.addr, align 8
  store i32 %nproc, i32* %nproc.addr, align 4
  store i32 %pn, i32* %pn.addr, align 4
  %0 = load i32, i32* %nproc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.fc_br, %struct.fc_br* %fcleft, i32 0, i32 0
  %1 = load %struct.vert_st*, %struct.vert_st** %inserted.addr, align 8
  %2 = load i32, i32* %nproc.addr, align 4
  %div = sdiv i32 %2, 2
  %3 = load i32, i32* %pn.addr, align 4
  %4 = load i32, i32* %nproc.addr, align 4
  %div1 = sdiv i32 %4, 2
  %add = add nsw i32 %3, %div1
  %call = call { %struct.vert_st*, i32 } @Do_all_BlueRule(%struct.vert_st* %1, i32 %div, i32 %add)
  %5 = bitcast %struct.blue_return* %coerce to { %struct.vert_st*, i32 }*
  %6 = getelementptr { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %5, i32 0, i32 0
  %7 = extractvalue { %struct.vert_st*, i32 } %call, 0
  store %struct.vert_st* %7, %struct.vert_st** %6, align 8
  %8 = getelementptr { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %5, i32 0, i32 1
  %9 = extractvalue { %struct.vert_st*, i32 } %call, 1
  store i32 %9, i32* %8, align 8
  %10 = bitcast %struct.blue_return* %value to i8*
  %11 = bitcast %struct.blue_return* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load %struct.vert_st*, %struct.vert_st** %inserted.addr, align 8
  %13 = load i32, i32* %nproc.addr, align 4
  %div2 = sdiv i32 %13, 2
  %14 = load i32, i32* %pn.addr, align 4
  %call3 = call { %struct.vert_st*, i32 } @Do_all_BlueRule(%struct.vert_st* %12, i32 %div2, i32 %14)
  %15 = bitcast %struct.blue_return* %coerce4 to { %struct.vert_st*, i32 }*
  %16 = getelementptr { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %15, i32 0, i32 0
  %17 = extractvalue { %struct.vert_st*, i32 } %call3, 0
  store %struct.vert_st* %17, %struct.vert_st** %16, align 8
  %18 = getelementptr { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %15, i32 0, i32 1
  %19 = extractvalue { %struct.vert_st*, i32 } %call3, 1
  store i32 %19, i32* %18, align 8
  %20 = bitcast %struct.blue_return* %retright to i8*
  %21 = bitcast %struct.blue_return* %coerce4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  %value5 = getelementptr inbounds %struct.fc_br, %struct.fc_br* %fcleft, i32 0, i32 0
  %dist = getelementptr inbounds %struct.blue_return, %struct.blue_return* %value5, i32 0, i32 1
  %22 = load i32, i32* %dist, align 4
  %dist6 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retright, i32 0, i32 1
  %23 = load i32, i32* %dist6, align 4
  %cmp7 = icmp slt i32 %22, %23
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %value9 = getelementptr inbounds %struct.fc_br, %struct.fc_br* %fcleft, i32 0, i32 0
  %dist10 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %value9, i32 0, i32 1
  %24 = load i32, i32* %dist10, align 4
  %dist11 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retright, i32 0, i32 1
  store i32 %24, i32* %dist11, align 4
  %value12 = getelementptr inbounds %struct.fc_br, %struct.fc_br* %fcleft, i32 0, i32 0
  %vert = getelementptr inbounds %struct.blue_return, %struct.blue_return* %value12, i32 0, i32 0
  %25 = load %struct.vert_st*, %struct.vert_st** %vert, align 8
  %vert13 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retright, i32 0, i32 0
  store %struct.vert_st* %25, %struct.vert_st** %vert13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %26 = bitcast %struct.blue_return* %retval to i8*
  %27 = bitcast %struct.blue_return* %retright to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  br label %return

if.else:                                          ; preds = %entry
  %28 = load %struct.vert_st*, %struct.vert_st** %inserted.addr, align 8
  %29 = load %struct.vert_st*, %struct.vert_st** @MyVertexList, align 8
  %cmp14 = icmp eq %struct.vert_st* %28, %29
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  %30 = load %struct.vert_st*, %struct.vert_st** @MyVertexList, align 8
  %next = getelementptr inbounds %struct.vert_st, %struct.vert_st* %30, i32 0, i32 1
  %31 = load %struct.vert_st*, %struct.vert_st** %next, align 8
  store %struct.vert_st* %31, %struct.vert_st** @MyVertexList, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.else
  %32 = load %struct.vert_st*, %struct.vert_st** %inserted.addr, align 8
  %33 = load %struct.vert_st*, %struct.vert_st** @MyVertexList, align 8
  %call17 = call { %struct.vert_st*, i32 } @BlueRule(%struct.vert_st* %32, %struct.vert_st* %33)
  %34 = bitcast %struct.blue_return* %retval to { %struct.vert_st*, i32 }*
  %35 = getelementptr { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %34, i32 0, i32 0
  %36 = extractvalue { %struct.vert_st*, i32 } %call17, 0
  store %struct.vert_st* %36, %struct.vert_st** %35, align 8
  %37 = getelementptr { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %34, i32 0, i32 1
  %38 = extractvalue { %struct.vert_st*, i32 } %call17, 1
  store i32 %38, i32* %37, align 8
  br label %return

return:                                           ; preds = %if.end.16, %if.end
  %39 = bitcast %struct.blue_return* %retval to { %struct.vert_st*, i32 }*
  %40 = load { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %39, align 8
  ret { %struct.vert_st*, i32 } %40
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal { %struct.vert_st*, i32 } @BlueRule(%struct.vert_st* %inserted, %struct.vert_st* %vlist) #0 {
entry:
  %retval = alloca %struct.blue_return, align 8
  %inserted.addr = alloca %struct.vert_st*, align 8
  %vlist.addr = alloca %struct.vert_st*, align 8
  %retval1 = alloca %struct.blue_return, align 8
  %tmp = alloca %struct.vert_st*, align 8
  %prev = alloca %struct.vert_st*, align 8
  %hash = alloca %struct.hash*, align 8
  %dist = alloca i32, align 4
  %dist2 = alloca i32, align 4
  %count = alloca i32, align 4
  %next22 = alloca %struct.vert_st*, align 8
  store %struct.vert_st* %inserted, %struct.vert_st** %inserted.addr, align 8
  store %struct.vert_st* %vlist, %struct.vert_st** %vlist.addr, align 8
  %0 = load %struct.vert_st*, %struct.vert_st** %vlist.addr, align 8
  %tobool = icmp ne %struct.vert_st* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dist7 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retval1, i32 0, i32 1
  store i32 999999, i32* %dist7, align 4
  %1 = bitcast %struct.blue_return* %retval to i8*
  %2 = bitcast %struct.blue_return* %retval1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.vert_st*, %struct.vert_st** %vlist.addr, align 8
  store %struct.vert_st* %3, %struct.vert_st** %prev, align 8
  %4 = load %struct.vert_st*, %struct.vert_st** %vlist.addr, align 8
  %vert = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retval1, i32 0, i32 0
  store %struct.vert_st* %4, %struct.vert_st** %vert, align 8
  %5 = load %struct.vert_st*, %struct.vert_st** %vlist.addr, align 8
  %mindist = getelementptr inbounds %struct.vert_st, %struct.vert_st* %5, i32 0, i32 0
  %6 = load i32, i32* %mindist, align 4
  %dist8 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retval1, i32 0, i32 1
  store i32 %6, i32* %dist8, align 4
  %7 = load %struct.vert_st*, %struct.vert_st** %vlist.addr, align 8
  %edgehash = getelementptr inbounds %struct.vert_st, %struct.vert_st* %7, i32 0, i32 2
  %8 = load %struct.hash*, %struct.hash** %edgehash, align 8
  store %struct.hash* %8, %struct.hash** %hash, align 8
  %9 = load %struct.vert_st*, %struct.vert_st** %inserted.addr, align 8
  %10 = ptrtoint %struct.vert_st* %9 to i32
  %11 = load %struct.hash*, %struct.hash** %hash, align 8
  %call = call i8* @HashLookup(i32 %10, %struct.hash* %11)
  %12 = ptrtoint i8* %call to i32
  store i32 %12, i32* %dist, align 4
  %13 = load i32, i32* %dist, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %14 = load i32, i32* %dist, align 4
  %dist11 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retval1, i32 0, i32 1
  %15 = load i32, i32* %dist11, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.then.10
  %16 = load i32, i32* %dist, align 4
  %17 = load %struct.vert_st*, %struct.vert_st** %vlist.addr, align 8
  %mindist13 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %17, i32 0, i32 0
  store i32 %16, i32* %mindist13, align 4
  %18 = load i32, i32* %dist, align 4
  %dist14 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retval1, i32 0, i32 1
  store i32 %18, i32* %dist14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.then.10
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end.15
  store i32 0, i32* %count, align 4
  %19 = load %struct.vert_st*, %struct.vert_st** %vlist.addr, align 8
  %next = getelementptr inbounds %struct.vert_st, %struct.vert_st* %19, i32 0, i32 1
  %20 = load %struct.vert_st*, %struct.vert_st** %next, align 8
  store %struct.vert_st* %20, %struct.vert_st** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %21 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %tobool18 = icmp ne %struct.vert_st* %21, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %count, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %count, align 4
  %23 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %24 = load %struct.vert_st*, %struct.vert_st** %inserted.addr, align 8
  %cmp19 = icmp eq %struct.vert_st* %23, %24
  br i1 %cmp19, label %if.then.20, label %if.else.25

if.then.20:                                       ; preds = %for.body
  %25 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %next23 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %25, i32 0, i32 1
  %26 = load %struct.vert_st*, %struct.vert_st** %next23, align 8
  store %struct.vert_st* %26, %struct.vert_st** %next22, align 8
  %27 = load %struct.vert_st*, %struct.vert_st** %next22, align 8
  %28 = load %struct.vert_st*, %struct.vert_st** %prev, align 8
  %next24 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %28, i32 0, i32 1
  store %struct.vert_st* %27, %struct.vert_st** %next24, align 8
  br label %if.end.44

if.else.25:                                       ; preds = %for.body
  %29 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %edgehash26 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %29, i32 0, i32 2
  %30 = load %struct.hash*, %struct.hash** %edgehash26, align 8
  store %struct.hash* %30, %struct.hash** %hash, align 8
  %31 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %mindist27 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %31, i32 0, i32 0
  %32 = load i32, i32* %mindist27, align 4
  store i32 %32, i32* %dist2, align 4
  %33 = load %struct.vert_st*, %struct.vert_st** %inserted.addr, align 8
  %34 = ptrtoint %struct.vert_st* %33 to i32
  %35 = load %struct.hash*, %struct.hash** %hash, align 8
  %call28 = call i8* @HashLookup(i32 %34, %struct.hash* %35)
  %36 = ptrtoint i8* %call28 to i32
  store i32 %36, i32* %dist, align 4
  %37 = load i32, i32* %dist, align 4
  %tobool29 = icmp ne i32 %37, 0
  br i1 %tobool29, label %if.then.30, label %if.else.35

if.then.30:                                       ; preds = %if.else.25
  %38 = load i32, i32* %dist, align 4
  %39 = load i32, i32* %dist2, align 4
  %cmp31 = icmp slt i32 %38, %39
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.30
  %40 = load i32, i32* %dist, align 4
  %41 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %mindist33 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %41, i32 0, i32 0
  store i32 %40, i32* %mindist33, align 4
  %42 = load i32, i32* %dist, align 4
  store i32 %42, i32* %dist2, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.30
  br label %if.end.37

if.else.35:                                       ; preds = %if.else.25
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.end.34
  %43 = load i32, i32* %dist2, align 4
  %dist38 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retval1, i32 0, i32 1
  %44 = load i32, i32* %dist38, align 4
  %cmp39 = icmp slt i32 %43, %44
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.37
  %45 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %vert41 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retval1, i32 0, i32 0
  store %struct.vert_st* %45, %struct.vert_st** %vert41, align 8
  %46 = load i32, i32* %dist2, align 4
  %dist42 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %retval1, i32 0, i32 1
  store i32 %46, i32* %dist42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.37
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %47 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  store %struct.vert_st* %47, %struct.vert_st** %prev, align 8
  %48 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %next45 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %48, i32 0, i32 1
  %49 = load %struct.vert_st*, %struct.vert_st** %next45, align 8
  store %struct.vert_st* %49, %struct.vert_st** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = bitcast %struct.blue_return* %retval to i8*
  %51 = bitcast %struct.blue_return* %retval1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %for.end, %if.then
  %52 = bitcast %struct.blue_return* %retval to { %struct.vert_st*, i32 }*
  %53 = load { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %52, align 8
  ret { %struct.vert_st*, i32 } %53
}

declare i8* @HashLookup(i32, %struct.hash*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
