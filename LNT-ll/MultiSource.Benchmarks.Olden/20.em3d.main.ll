; ModuleID = './MultiSource.Benchmarks.Olden/20.em3d.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_t = type { [1 x %struct.node_t*], [1 x %struct.node_t*] }
%struct.node_t = type { double*, %struct.node_t*, %struct.node_t**, double**, double*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"E: value %f, from_count %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"H: value %f, from_count %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Hello world--Doing em3d with args %d %d %d %d\0A\00", align 1
@n_nodes = external global i32, align 4
@d_nodes = external global i32, align 4
@local_p = external global i32, align 4
@NumNodes = external global i32, align 4
@DebugFlag = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"nonlocals = %d\0A\00", align 1
@nonlocals = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @print_graph(%struct.graph_t* %graph, i32 %id) #0 {
entry:
  %graph.addr = alloca %struct.graph_t*, align 8
  %id.addr = alloca i32, align 4
  %cur_node = alloca %struct.node_t*, align 8
  store %struct.graph_t* %graph, %struct.graph_t** %graph.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  %0 = load i32, i32* %id.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.graph_t*, %struct.graph_t** %graph.addr, align 8
  %e_nodes = getelementptr inbounds %struct.graph_t, %struct.graph_t* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x %struct.node_t*], [1 x %struct.node_t*]* %e_nodes, i32 0, i64 %idxprom
  %2 = load %struct.node_t*, %struct.node_t** %arrayidx, align 8
  store %struct.node_t* %2, %struct.node_t** %cur_node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %tobool = icmp ne %struct.node_t* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %value = getelementptr inbounds %struct.node_t, %struct.node_t* %4, i32 0, i32 0
  %5 = load double*, double** %value, align 8
  %6 = load double, double* %5, align 8
  %7 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %from_count = getelementptr inbounds %struct.node_t, %struct.node_t* %7, i32 0, i32 5
  %8 = load i32, i32* %from_count, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), double %6, i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %next = getelementptr inbounds %struct.node_t, %struct.node_t* %9, i32 0, i32 1
  %10 = load %struct.node_t*, %struct.node_t** %next, align 8
  store %struct.node_t* %10, %struct.node_t** %cur_node, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %id.addr, align 4
  %idxprom1 = sext i32 %11 to i64
  %12 = load %struct.graph_t*, %struct.graph_t** %graph.addr, align 8
  %h_nodes = getelementptr inbounds %struct.graph_t, %struct.graph_t* %12, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %struct.node_t*], [1 x %struct.node_t*]* %h_nodes, i32 0, i64 %idxprom1
  %13 = load %struct.node_t*, %struct.node_t** %arrayidx2, align 8
  store %struct.node_t* %13, %struct.node_t** %cur_node, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.9, %for.end
  %14 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %tobool4 = icmp ne %struct.node_t* %14, null
  br i1 %tobool4, label %for.body.5, label %for.end.11

for.body.5:                                       ; preds = %for.cond.3
  %15 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %value6 = getelementptr inbounds %struct.node_t, %struct.node_t* %15, i32 0, i32 0
  %16 = load double*, double** %value6, align 8
  %17 = load double, double* %16, align 8
  %18 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %from_count7 = getelementptr inbounds %struct.node_t, %struct.node_t* %18, i32 0, i32 5
  %19 = load i32, i32* %from_count7, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), double %17, i32 %19)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.5
  %20 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %next10 = getelementptr inbounds %struct.node_t, %struct.node_t* %20, i32 0, i32 1
  %21 = load %struct.node_t*, %struct.node_t** %next10, align 8
  store %struct.node_t* %21, %struct.node_t** %cur_node, align 8
  br label %for.cond.3

for.end.11:                                       ; preds = %for.cond.3
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %graph = alloca %struct.graph_t*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @dealwithargs(i32 %0, i8** %1)
  %2 = load i32, i32* @n_nodes, align 4
  %3 = load i32, i32* @d_nodes, align 4
  %4 = load i32, i32* @local_p, align 4
  %5 = load i32, i32* @NumNodes, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i32 %2, i32 %3, i32 %4, i32 %5)
  %call1 = call %struct.graph_t* (...) @initialize_graph()
  store %struct.graph_t* %call1, %struct.graph_t** %graph, align 8
  %6 = load i32, i32* @DebugFlag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @NumNodes, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.graph_t*, %struct.graph_t** %graph, align 8
  %10 = load i32, i32* %i, align 4
  call void @print_graph(%struct.graph_t* %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %12 = load %struct.graph_t*, %struct.graph_t** %graph, align 8
  %e_nodes = getelementptr inbounds %struct.graph_t, %struct.graph_t* %12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x %struct.node_t*], [1 x %struct.node_t*]* %e_nodes, i32 0, i64 0
  %13 = load %struct.node_t*, %struct.node_t** %arrayidx, align 8
  call void @compute_nodes(%struct.node_t* %13)
  %14 = load %struct.graph_t*, %struct.graph_t** %graph, align 8
  %h_nodes = getelementptr inbounds %struct.graph_t, %struct.graph_t* %14, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %struct.node_t*], [1 x %struct.node_t*]* %h_nodes, i32 0, i64 0
  %15 = load %struct.node_t*, %struct.node_t** %arrayidx2, align 8
  call void @compute_nodes(%struct.node_t* %15)
  %16 = load i32, i32* @nonlocals, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 %16)
  call void @printstats()
  ret i32 0
}

declare void @dealwithargs(i32, i8**) #1

declare %struct.graph_t* @initialize_graph(...) #1

declare void @compute_nodes(%struct.node_t*) #1

declare void @printstats() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
