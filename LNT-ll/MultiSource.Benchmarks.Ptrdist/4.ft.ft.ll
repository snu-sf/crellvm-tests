; ModuleID = './MultiSource.Benchmarks.Ptrdist/4.ft.ft.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }
%struct._Heap = type { %struct._Vertices*, %struct._Heap*, %struct._Heap*, %struct._Heap*, %struct._Heap*, i32, i16 }

@debug = global i32 1, align 4
@.str = private unnamed_addr constant [34 x i8] c"Generating a connected graph ... \00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"done\0AFinding the mininmum spanning tree ... \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"done\0AThe graph:\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"The minimum spanning tree:\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Time spent in finding the mininum spanning tree:\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"vertex %d to %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %nVertex = alloca i32, align 4
  %nEdge = alloca i32, align 4
  %graph = alloca %struct._Vertices*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 10, i32* %nVertex, align 4
  store i32 9, i32* %nEdge, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #5
  store i32 %call, i32* %nVertex, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.then
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #5
  store i32 %call4, i32* %nEdge, align 4
  %6 = load i32, i32* %argc.addr, align 4
  %cmp5 = icmp sgt i32 %6, 3
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %7, i64 3
  %8 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i32 @atoi(i8* %8) #5
  call void @srandom(i32 %call8) #6
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.2
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %9 = load i32, i32* @debug, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.10
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.10
  %10 = load i32, i32* %nVertex, align 4
  %11 = load i32, i32* %nEdge, align 4
  %call14 = call %struct._Vertices* @GenGraph(i32 %10, i32 %11)
  store %struct._Vertices* %call14, %struct._Vertices** %graph, align 8
  %12 = load i32, i32* @debug, align 4
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  %13 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  %call19 = call %struct._Vertices* @MST(%struct._Vertices* %13)
  store %struct._Vertices* %call19, %struct._Vertices** %graph, align 8
  %14 = load i32, i32* @debug, align 4
  %tobool20 = icmp ne i32 %14, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.18
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %15 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  call void @PrintGraph(%struct._Vertices* %15)
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  %16 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  call void @PrintMST(%struct._Vertices* %16)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.18
  %17 = load i32, i32* @debug, align 4
  %tobool25 = icmp ne i32 %17, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare void @srandom(i32) #2

declare i32 @printf(i8*, ...) #3

declare %struct._Vertices* @GenGraph(i32, i32) #3

; Function Attrs: nounwind uwtable
define %struct._Vertices* @MST(%struct._Vertices* %graph) #0 {
entry:
  %graph.addr = alloca %struct._Vertices*, align 8
  %heap = alloca %struct._Heap*, align 8
  %vertex = alloca %struct._Vertices*, align 8
  %edge = alloca %struct._Edges*, align 8
  store %struct._Vertices* %graph, %struct._Vertices** %graph.addr, align 8
  call void (...) @InitFHeap()
  %0 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  store %struct._Vertices* %0, %struct._Vertices** %vertex, align 8
  %1 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %key = getelementptr inbounds %struct._Vertices, %struct._Vertices* %1, i32 0, i32 3
  store i32 0, i32* %key, align 4
  %call = call %struct._Heap* (...) @MakeHeap()
  store %struct._Heap* %call, %struct._Heap** %heap, align 8
  %2 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %call1 = call %struct._Heap* @Insert(%struct._Heap** %heap, %struct._Vertices* %2)
  %3 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %next = getelementptr inbounds %struct._Vertices, %struct._Vertices* %3, i32 0, i32 2
  %4 = load %struct._Vertices*, %struct._Vertices** %next, align 8
  store %struct._Vertices* %4, %struct._Vertices** %vertex, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %6 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  %cmp = icmp ne %struct._Vertices* %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %key2 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %7, i32 0, i32 3
  store i32 2147483647, i32* %key2, align 4
  %8 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %next3 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %8, i32 0, i32 2
  %9 = load %struct._Vertices*, %struct._Vertices** %next3, align 8
  store %struct._Vertices* %9, %struct._Vertices** %vertex, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.6, %while.end
  %10 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %11 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  %cmp5 = icmp ne %struct._Vertices* %10, %11
  br i1 %cmp5, label %while.body.6, label %while.end.7

while.body.6:                                     ; preds = %while.cond.4
  br label %while.cond.4

while.end.7:                                      ; preds = %while.cond.4
  %12 = load %struct._Heap*, %struct._Heap** %heap, align 8
  %call8 = call %struct._Vertices* @FindMin(%struct._Heap* %12)
  store %struct._Vertices* %call8, %struct._Vertices** %vertex, align 8
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.end.27, %while.end.7
  %13 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %cmp10 = icmp ne %struct._Vertices* %13, null
  br i1 %cmp10, label %while.body.11, label %while.end.29

while.body.11:                                    ; preds = %while.cond.9
  %14 = load %struct._Heap*, %struct._Heap** %heap, align 8
  %call12 = call %struct._Heap* @DeleteMin(%struct._Heap* %14)
  store %struct._Heap* %call12, %struct._Heap** %heap, align 8
  %15 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %key13 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %15, i32 0, i32 3
  store i32 -2147483648, i32* %key13, align 4
  %16 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %edges = getelementptr inbounds %struct._Vertices, %struct._Vertices* %16, i32 0, i32 1
  %17 = load %struct._Edges*, %struct._Edges** %edges, align 8
  store %struct._Edges* %17, %struct._Edges** %edge, align 8
  br label %while.cond.14

while.cond.14:                                    ; preds = %if.end, %while.body.11
  %18 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %cmp15 = icmp ne %struct._Edges* %18, null
  br i1 %cmp15, label %while.body.16, label %while.end.27

while.body.16:                                    ; preds = %while.cond.14
  %19 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %weight = getelementptr inbounds %struct._Edges, %struct._Edges* %19, i32 0, i32 0
  %20 = load i32, i32* %weight, align 4
  %21 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex17 = getelementptr inbounds %struct._Edges, %struct._Edges* %21, i32 0, i32 2
  %22 = load %struct._Vertices*, %struct._Vertices** %vertex17, align 8
  %key18 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %22, i32 0, i32 3
  %23 = load i32, i32* %key18, align 4
  %cmp19 = icmp slt i32 %20, %23
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.16
  %24 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %weight20 = getelementptr inbounds %struct._Edges, %struct._Edges* %24, i32 0, i32 0
  %25 = load i32, i32* %weight20, align 4
  %26 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex21 = getelementptr inbounds %struct._Edges, %struct._Edges* %26, i32 0, i32 2
  %27 = load %struct._Vertices*, %struct._Vertices** %vertex21, align 8
  %key22 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %27, i32 0, i32 3
  store i32 %25, i32* %key22, align 4
  %28 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %29 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex23 = getelementptr inbounds %struct._Edges, %struct._Edges* %29, i32 0, i32 2
  %30 = load %struct._Vertices*, %struct._Vertices** %vertex23, align 8
  %chosenEdge = getelementptr inbounds %struct._Vertices, %struct._Vertices* %30, i32 0, i32 4
  store %struct._Edges* %28, %struct._Edges** %chosenEdge, align 8
  %31 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex24 = getelementptr inbounds %struct._Edges, %struct._Edges* %31, i32 0, i32 2
  %32 = load %struct._Vertices*, %struct._Vertices** %vertex24, align 8
  %call25 = call %struct._Heap* @Insert(%struct._Heap** %heap, %struct._Vertices* %32)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.16
  %33 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %next26 = getelementptr inbounds %struct._Edges, %struct._Edges* %33, i32 0, i32 3
  %34 = load %struct._Edges*, %struct._Edges** %next26, align 8
  store %struct._Edges* %34, %struct._Edges** %edge, align 8
  br label %while.cond.14

while.end.27:                                     ; preds = %while.cond.14
  %35 = load %struct._Heap*, %struct._Heap** %heap, align 8
  %call28 = call %struct._Vertices* @FindMin(%struct._Heap* %35)
  store %struct._Vertices* %call28, %struct._Vertices** %vertex, align 8
  br label %while.cond.9

while.end.29:                                     ; preds = %while.cond.9
  %36 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  ret %struct._Vertices* %36
}

declare void @PrintGraph(%struct._Vertices*) #3

; Function Attrs: nounwind uwtable
define void @PrintMST(%struct._Vertices* %graph) #0 {
entry:
  %graph.addr = alloca %struct._Vertices*, align 8
  %vertex = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %graph, %struct._Vertices** %graph.addr, align 8
  %0 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  %next = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i32 0, i32 2
  %1 = load %struct._Vertices*, %struct._Vertices** %next, align 8
  store %struct._Vertices* %1, %struct._Vertices** %vertex, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %3 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  %cmp = icmp ne %struct._Vertices* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %id = getelementptr inbounds %struct._Vertices, %struct._Vertices* %4, i32 0, i32 0
  %5 = load i32, i32* %id, align 4
  %6 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %chosenEdge = getelementptr inbounds %struct._Vertices, %struct._Vertices* %6, i32 0, i32 4
  %7 = load %struct._Edges*, %struct._Edges** %chosenEdge, align 8
  %source = getelementptr inbounds %struct._Edges, %struct._Edges* %7, i32 0, i32 1
  %8 = load %struct._Vertices*, %struct._Vertices** %source, align 8
  %id1 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %8, i32 0, i32 0
  %9 = load i32, i32* %id1, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %5, i32 %9)
  %10 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %next2 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %10, i32 0, i32 2
  %11 = load %struct._Vertices*, %struct._Vertices** %next2, align 8
  store %struct._Vertices* %11, %struct._Vertices** %vertex, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare void @InitFHeap(...) #3

declare %struct._Heap* @MakeHeap(...) #3

declare %struct._Heap* @Insert(%struct._Heap**, %struct._Vertices*) #3

declare %struct._Vertices* @FindMin(%struct._Heap*) #3

declare %struct._Heap* @DeleteMin(%struct._Heap*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
