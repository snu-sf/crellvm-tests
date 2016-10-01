; ModuleID = './MultiSource.Benchmarks.Olden/19.em3d.make_graph.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_t = type { double*, %struct.node_t*, %struct.node_t**, double**, double*, i32, i32 }
%struct.table_t = type { [1 x %struct.node_t**], [1 x %struct.node_t**] }
%struct.graph_t = type { [1 x %struct.node_t*], [1 x %struct.node_t*] }

@.str = private unnamed_addr constant [19 x i8] c"Assertion failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Uncaught malloc error\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Error! on dest %d @ %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error! no to_nodes filed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Help! no from count (from_count=%d) \0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Help!!\0A\00", align 1
@n_nodes = common global i32 0, align 4
@d_nodes = common global i32 0, align 4
@local_p = common global i32 0, align 4
@NumMisses = common global i32 0, align 4
@NumNodes = external global i32, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"making tables \0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"making neighbors\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"updating from and coeffs\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"filling from fields\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"localizing coeffs, from_nodes\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"cleanup for return now\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Clearing NumMisses\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Returning\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.node_t** @make_table(i32 %size, i32 %procname) #0 {
entry:
  %size.addr = alloca i32, align 4
  %procname.addr = alloca i32, align 4
  %retval1 = alloca %struct.node_t**, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %procname, i32* %procname.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #4
  %1 = bitcast i8* %call to %struct.node_t**
  store %struct.node_t** %1, %struct.node_t*** %retval1, align 8
  %2 = load %struct.node_t**, %struct.node_t*** %retval1, align 8
  %tobool = icmp ne %struct.node_t** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct.node_t**, %struct.node_t*** %retval1, align 8
  ret %struct.node_t** %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @fill_table(%struct.node_t** %node_table, double* %values, i32 %size, i32 %procname) #0 {
entry:
  %node_table.addr = alloca %struct.node_t**, align 8
  %values.addr = alloca double*, align 8
  %size.addr = alloca i32, align 4
  %procname.addr = alloca i32, align 4
  %cur_node = alloca %struct.node_t*, align 8
  %prev_node = alloca %struct.node_t*, align 8
  %i = alloca i32, align 4
  store %struct.node_t** %node_table, %struct.node_t*** %node_table.addr, align 8
  store double* %values, double** %values.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %procname, i32* %procname.addr, align 4
  %call = call noalias i8* @malloc(i64 48) #4
  %0 = bitcast i8* %call to %struct.node_t*
  store %struct.node_t* %0, %struct.node_t** %prev_node, align 8
  %1 = load %struct.node_t*, %struct.node_t** %prev_node, align 8
  %2 = load %struct.node_t**, %struct.node_t*** %node_table.addr, align 8
  %arrayidx = getelementptr inbounds %struct.node_t*, %struct.node_t** %2, i64 0
  store %struct.node_t* %1, %struct.node_t** %arrayidx, align 8
  %call1 = call double @gen_uniform_double()
  %3 = load double*, double** %values.addr, align 8
  store double %call1, double* %3, align 8
  %4 = load double*, double** %values.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %4, i32 1
  store double* %incdec.ptr, double** %values.addr, align 8
  %5 = load %struct.node_t*, %struct.node_t** %prev_node, align 8
  %value = getelementptr inbounds %struct.node_t, %struct.node_t* %5, i32 0, i32 0
  store double* %4, double** %value, align 8
  %6 = load %struct.node_t*, %struct.node_t** %prev_node, align 8
  %from_count = getelementptr inbounds %struct.node_t, %struct.node_t* %6, i32 0, i32 5
  store i32 0, i32* %from_count, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call noalias i8* @malloc(i64 48) #4
  %9 = bitcast i8* %call2 to %struct.node_t*
  store %struct.node_t* %9, %struct.node_t** %cur_node, align 8
  %call3 = call double @gen_uniform_double()
  %10 = load double*, double** %values.addr, align 8
  store double %call3, double* %10, align 8
  %11 = load double*, double** %values.addr, align 8
  %incdec.ptr4 = getelementptr inbounds double, double* %11, i32 1
  store double* %incdec.ptr4, double** %values.addr, align 8
  %12 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %value5 = getelementptr inbounds %struct.node_t, %struct.node_t* %12, i32 0, i32 0
  store double* %11, double** %value5, align 8
  %13 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %from_count6 = getelementptr inbounds %struct.node_t, %struct.node_t* %13, i32 0, i32 5
  store i32 0, i32* %from_count6, align 4
  %14 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.node_t**, %struct.node_t*** %node_table.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.node_t*, %struct.node_t** %16, i64 %idxprom
  store %struct.node_t* %14, %struct.node_t** %arrayidx7, align 8
  %17 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %18 = load %struct.node_t*, %struct.node_t** %prev_node, align 8
  %next = getelementptr inbounds %struct.node_t, %struct.node_t* %18, i32 0, i32 1
  store %struct.node_t* %17, %struct.node_t** %next, align 8
  %19 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  store %struct.node_t* %19, %struct.node_t** %prev_node, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %next8 = getelementptr inbounds %struct.node_t, %struct.node_t* %21, i32 0, i32 1
  store %struct.node_t* null, %struct.node_t** %next8, align 8
  ret void
}

declare double @gen_uniform_double() #2

; Function Attrs: nounwind uwtable
define void @make_neighbors(%struct.node_t* %nodelist, %struct.node_t*** %table, i32 %tablesz, i32 %degree, i32 %percent_local, i32 %id) #0 {
entry:
  %nodelist.addr = alloca %struct.node_t*, align 8
  %table.addr = alloca %struct.node_t***, align 8
  %tablesz.addr = alloca i32, align 4
  %degree.addr = alloca i32, align 4
  %percent_local.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %cur_node = alloca %struct.node_t*, align 8
  %other_node = alloca %struct.node_t*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dest_proc = alloca i32, align 4
  %local_table = alloca %struct.node_t**, align 8
  %number = alloca i32, align 4
  store %struct.node_t* %nodelist, %struct.node_t** %nodelist.addr, align 8
  store %struct.node_t*** %table, %struct.node_t**** %table.addr, align 8
  store i32 %tablesz, i32* %tablesz.addr, align 4
  store i32 %degree, i32* %degree.addr, align 4
  store i32 %percent_local, i32* %percent_local.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = load %struct.node_t*, %struct.node_t** %nodelist.addr, align 8
  store %struct.node_t* %0, %struct.node_t** %cur_node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %entry
  %1 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %tobool = icmp ne %struct.node_t* %1, null
  br i1 %tobool, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %degree.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #4
  %3 = bitcast i8* %call to %struct.node_t**
  %4 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %to_nodes = getelementptr inbounds %struct.node_t, %struct.node_t* %4, i32 0, i32 2
  store %struct.node_t** %3, %struct.node_t*** %to_nodes, align 8
  %5 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %to_nodes1 = getelementptr inbounds %struct.node_t, %struct.node_t* %5, i32 0, i32 2
  %6 = load %struct.node_t**, %struct.node_t*** %to_nodes1, align 8
  %tobool2 = icmp ne %struct.node_t** %6, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.44, %if.end
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %degree.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body.6, label %for.end.46

for.body.6:                                       ; preds = %for.cond.4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.6
  %9 = load i32, i32* %tablesz.addr, align 4
  %call7 = call i32 @gen_number(i32 %9)
  store i32 %call7, i32* %number, align 4
  %10 = load i32, i32* %percent_local.addr, align 4
  %call8 = call i32 @check_percent(i32 %10)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  %11 = load i32, i32* %id.addr, align 4
  store i32 %11, i32* %dest_proc, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %12 = load i32, i32* %id.addr, align 4
  %add = add nsw i32 %12, 1
  %call11 = call i32 @gen_signed_number(i32 1)
  %mul12 = mul nsw i32 4, %call11
  %add13 = add nsw i32 %add, %mul12
  %rem = srem i32 %add13, 1
  store i32 %rem, i32* %dest_proc, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  %13 = load i32, i32* %dest_proc, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.node_t***, %struct.node_t**** %table.addr, align 8
  %arrayidx = getelementptr inbounds %struct.node_t**, %struct.node_t*** %14, i64 %idxprom
  %15 = load %struct.node_t**, %struct.node_t*** %arrayidx, align 8
  store %struct.node_t** %15, %struct.node_t*** %local_table, align 8
  %16 = load i32, i32* %number, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx16 = getelementptr inbounds %struct.node_t*, %struct.node_t** %17, i64 %idxprom15
  %18 = load %struct.node_t*, %struct.node_t** %arrayidx16, align 8
  store %struct.node_t* %18, %struct.node_t** %other_node, align 8
  %19 = load %struct.node_t*, %struct.node_t** %other_node, align 8
  %tobool17 = icmp ne %struct.node_t* %19, null
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.14
  %20 = load i32, i32* %number, align 4
  %21 = load i32, i32* %dest_proc, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %20, i32 %21)
  call void @exit(i32 1) #5
  unreachable

if.end.20:                                        ; preds = %if.end.14
  store i32 0, i32* %k, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %if.end.20
  %22 = load i32, i32* %k, align 4
  %23 = load i32, i32* %j, align 4
  %cmp22 = icmp slt i32 %22, %23
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %24 = load %struct.node_t*, %struct.node_t** %other_node, align 8
  %25 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %to_nodes26 = getelementptr inbounds %struct.node_t, %struct.node_t* %26, i32 0, i32 2
  %27 = load %struct.node_t**, %struct.node_t*** %to_nodes26, align 8
  %arrayidx27 = getelementptr inbounds %struct.node_t*, %struct.node_t** %27, i64 %idxprom25
  %28 = load %struct.node_t*, %struct.node_t** %arrayidx27, align 8
  %cmp28 = icmp eq %struct.node_t* %24, %28
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.body.24
  br label %for.end

if.end.31:                                        ; preds = %for.body.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %29 = load i32, i32* %k, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.21

for.end:                                          ; preds = %if.then.30, %for.cond.21
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %j, align 4
  %cmp32 = icmp slt i32 %30, %31
  br i1 %cmp32, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %32 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %tobool34 = icmp ne %struct.node_t* %32, null
  br i1 %tobool34, label %lor.lhs.false, label %if.then.37

lor.lhs.false:                                    ; preds = %do.end
  %33 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %to_nodes35 = getelementptr inbounds %struct.node_t, %struct.node_t* %33, i32 0, i32 2
  %34 = load %struct.node_t**, %struct.node_t*** %to_nodes35, align 8
  %tobool36 = icmp ne %struct.node_t** %34, null
  br i1 %tobool36, label %if.end.39, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false, %do.end
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.39:                                        ; preds = %lor.lhs.false
  %35 = load %struct.node_t*, %struct.node_t** %other_node, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %36 to i64
  %37 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %to_nodes41 = getelementptr inbounds %struct.node_t, %struct.node_t* %37, i32 0, i32 2
  %38 = load %struct.node_t**, %struct.node_t*** %to_nodes41, align 8
  %arrayidx42 = getelementptr inbounds %struct.node_t*, %struct.node_t** %38, i64 %idxprom40
  store %struct.node_t* %35, %struct.node_t** %arrayidx42, align 8
  %39 = load %struct.node_t*, %struct.node_t** %other_node, align 8
  %from_count = getelementptr inbounds %struct.node_t, %struct.node_t* %39, i32 0, i32 5
  %40 = load i32, i32* %from_count, align 4
  %inc43 = add nsw i32 %40, 1
  store i32 %inc43, i32* %from_count, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.39
  %41 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %41, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond.4

for.end.46:                                       ; preds = %for.cond.4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end.46
  %42 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %next = getelementptr inbounds %struct.node_t, %struct.node_t* %42, i32 0, i32 1
  %43 = load %struct.node_t*, %struct.node_t** %next, align 8
  store %struct.node_t* %43, %struct.node_t** %cur_node, align 8
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  ret void
}

declare i32 @gen_number(i32) #2

declare i32 @check_percent(i32) #2

declare i32 @gen_signed_number(i32) #2

; Function Attrs: nounwind uwtable
define void @update_from_coeffs(%struct.node_t* %nodelist) #0 {
entry:
  %nodelist.addr = alloca %struct.node_t*, align 8
  %cur_node = alloca %struct.node_t*, align 8
  %from_count = alloca i32, align 4
  store %struct.node_t* %nodelist, %struct.node_t** %nodelist.addr, align 8
  %0 = load %struct.node_t*, %struct.node_t** %nodelist.addr, align 8
  store %struct.node_t* %0, %struct.node_t** %cur_node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %tobool = icmp ne %struct.node_t* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %from_count1 = getelementptr inbounds %struct.node_t, %struct.node_t* %2, i32 0, i32 5
  %3 = load i32, i32* %from_count1, align 4
  store i32 %3, i32* %from_count, align 4
  %4 = load i32, i32* %from_count, align 4
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %from_count, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i32 %5)
  %call2 = call noalias i8* @malloc(i64 160) #4
  %6 = bitcast i8* %call2 to double**
  %7 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %from_values = getelementptr inbounds %struct.node_t, %struct.node_t* %7, i32 0, i32 3
  store double** %6, double*** %from_values, align 8
  %call3 = call noalias i8* @malloc(i64 160) #4
  %8 = bitcast i8* %call3 to double*
  %9 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %coeffs = getelementptr inbounds %struct.node_t, %struct.node_t* %9, i32 0, i32 4
  store double* %8, double** %coeffs, align 8
  %10 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %from_length = getelementptr inbounds %struct.node_t, %struct.node_t* %10, i32 0, i32 6
  store i32 0, i32* %from_length, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %from_count, align 4
  %conv = sext i32 %11 to i64
  %mul = mul i64 %conv, 8
  %call4 = call noalias i8* @malloc(i64 %mul) #4
  %12 = bitcast i8* %call4 to double**
  %13 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %from_values5 = getelementptr inbounds %struct.node_t, %struct.node_t* %13, i32 0, i32 3
  store double** %12, double*** %from_values5, align 8
  %14 = load i32, i32* %from_count, align 4
  %conv6 = sext i32 %14 to i64
  %mul7 = mul i64 %conv6, 8
  %call8 = call noalias i8* @malloc(i64 %mul7) #4
  %15 = bitcast i8* %call8 to double*
  %16 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %coeffs9 = getelementptr inbounds %struct.node_t, %struct.node_t* %16, i32 0, i32 4
  store double* %15, double** %coeffs9, align 8
  %17 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %from_length10 = getelementptr inbounds %struct.node_t, %struct.node_t* %17, i32 0, i32 6
  store i32 0, i32* %from_length10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %next = getelementptr inbounds %struct.node_t, %struct.node_t* %18, i32 0, i32 1
  %19 = load %struct.node_t*, %struct.node_t** %next, align 8
  store %struct.node_t* %19, %struct.node_t** %cur_node, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fill_from_fields(%struct.node_t* %nodelist, i32 %degree) #0 {
entry:
  %nodelist.addr = alloca %struct.node_t*, align 8
  %degree.addr = alloca i32, align 4
  %cur_node = alloca %struct.node_t*, align 8
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %thecount = alloca i32, align 4
  %other_node = alloca %struct.node_t*, align 8
  %otherlist = alloca double**, align 8
  %value = alloca double*, align 8
  store %struct.node_t* %nodelist, %struct.node_t** %nodelist.addr, align 8
  store i32 %degree, i32* %degree.addr, align 4
  %0 = load %struct.node_t*, %struct.node_t** %nodelist.addr, align 8
  store %struct.node_t* %0, %struct.node_t** %cur_node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %1 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %tobool = icmp ne %struct.node_t* %1, null
  br i1 %tobool, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %degree.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body.2, label %for.end

for.body.2:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %to_nodes = getelementptr inbounds %struct.node_t, %struct.node_t* %5, i32 0, i32 2
  %6 = load %struct.node_t**, %struct.node_t*** %to_nodes, align 8
  %arrayidx = getelementptr inbounds %struct.node_t*, %struct.node_t** %6, i64 %idxprom
  %7 = load %struct.node_t*, %struct.node_t** %arrayidx, align 8
  store %struct.node_t* %7, %struct.node_t** %other_node, align 8
  %8 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %value3 = getelementptr inbounds %struct.node_t, %struct.node_t* %8, i32 0, i32 0
  %9 = load double*, double** %value3, align 8
  store double* %9, double** %value, align 8
  %10 = load %struct.node_t*, %struct.node_t** %other_node, align 8
  %tobool4 = icmp ne %struct.node_t* %10, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.2
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.2
  %11 = load %struct.node_t*, %struct.node_t** %other_node, align 8
  %from_length = getelementptr inbounds %struct.node_t, %struct.node_t* %11, i32 0, i32 6
  %12 = load i32, i32* %from_length, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %from_length, align 4
  store i32 %12, i32* %count, align 4
  %13 = load %struct.node_t*, %struct.node_t** %other_node, align 8
  %from_values = getelementptr inbounds %struct.node_t, %struct.node_t* %13, i32 0, i32 3
  %14 = load double**, double*** %from_values, align 8
  store double** %14, double*** %otherlist, align 8
  %15 = load %struct.node_t*, %struct.node_t** %other_node, align 8
  %from_count = getelementptr inbounds %struct.node_t, %struct.node_t* %15, i32 0, i32 5
  %16 = load i32, i32* %from_count, align 4
  store i32 %16, i32* %thecount, align 4
  %17 = load double**, double*** %otherlist, align 8
  %tobool5 = icmp ne double** %17, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %18 = load %struct.node_t*, %struct.node_t** %other_node, align 8
  %from_values7 = getelementptr inbounds %struct.node_t, %struct.node_t* %18, i32 0, i32 3
  %19 = load double**, double*** %from_values7, align 8
  store double** %19, double*** %otherlist, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %20 = load double*, double** %value, align 8
  %21 = load i32, i32* %count, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load double**, double*** %otherlist, align 8
  %arrayidx10 = getelementptr inbounds double*, double** %22, i64 %idxprom9
  store double* %20, double** %arrayidx10, align 8
  %call11 = call double @gen_uniform_double()
  %23 = load i32, i32* %count, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct.node_t*, %struct.node_t** %other_node, align 8
  %coeffs = getelementptr inbounds %struct.node_t, %struct.node_t* %24, i32 0, i32 4
  %25 = load double*, double** %coeffs, align 8
  %arrayidx13 = getelementptr inbounds double, double* %25, i64 %idxprom12
  store double %call11, double* %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %26 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %26, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %27 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %next = getelementptr inbounds %struct.node_t, %struct.node_t* %27, i32 0, i32 1
  %28 = load %struct.node_t*, %struct.node_t** %next, align 8
  store %struct.node_t* %28, %struct.node_t** %cur_node, align 8
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @localize_local(%struct.node_t* %nodelist) #0 {
entry:
  %nodelist.addr = alloca %struct.node_t*, align 8
  %cur_node = alloca %struct.node_t*, align 8
  store %struct.node_t* %nodelist, %struct.node_t** %nodelist.addr, align 8
  %0 = load %struct.node_t*, %struct.node_t** %nodelist.addr, align 8
  store %struct.node_t* %0, %struct.node_t** %cur_node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %tobool = icmp ne %struct.node_t* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %coeffs = getelementptr inbounds %struct.node_t, %struct.node_t* %2, i32 0, i32 4
  %3 = load double*, double** %coeffs, align 8
  %4 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %coeffs1 = getelementptr inbounds %struct.node_t, %struct.node_t* %4, i32 0, i32 4
  store double* %3, double** %coeffs1, align 8
  %5 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %from_values = getelementptr inbounds %struct.node_t, %struct.node_t* %5, i32 0, i32 3
  %6 = load double**, double*** %from_values, align 8
  %7 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %from_values2 = getelementptr inbounds %struct.node_t, %struct.node_t* %7, i32 0, i32 3
  store double** %6, double*** %from_values2, align 8
  %8 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %value = getelementptr inbounds %struct.node_t, %struct.node_t* %8, i32 0, i32 0
  %9 = load double*, double** %value, align 8
  %10 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %value3 = getelementptr inbounds %struct.node_t, %struct.node_t* %10, i32 0, i32 0
  store double* %9, double** %value3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.node_t*, %struct.node_t** %cur_node, align 8
  %next = getelementptr inbounds %struct.node_t, %struct.node_t* %11, i32 0, i32 1
  %12 = load %struct.node_t*, %struct.node_t** %next, align 8
  store %struct.node_t* %12, %struct.node_t** %cur_node, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @make_tables(%struct.table_t* %table, i32 %groupname) #0 {
entry:
  %table.addr = alloca %struct.table_t*, align 8
  %groupname.addr = alloca i32, align 4
  %h_table = alloca %struct.node_t**, align 8
  %e_table = alloca %struct.node_t**, align 8
  %h_values = alloca double*, align 8
  %e_values = alloca double*, align 8
  %procname = alloca i32, align 4
  store %struct.table_t* %table, %struct.table_t** %table.addr, align 8
  store i32 %groupname, i32* %groupname.addr, align 4
  store i32 0, i32* %procname, align 4
  %0 = load i32, i32* %groupname.addr, align 4
  %mul = mul nsw i32 793, %0
  call void @init_random(i32 %mul)
  %1 = load i32, i32* @n_nodes, align 4
  %div = sdiv i32 %1, 1
  %conv = sext i32 %div to i64
  %mul1 = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul1) #4
  %2 = bitcast i8* %call to double*
  store double* %2, double** %h_values, align 8
  %3 = load i32, i32* @n_nodes, align 4
  %div2 = sdiv i32 %3, 1
  %4 = load i32, i32* %procname, align 4
  %call3 = call %struct.node_t** @make_table(i32 %div2, i32 %4)
  store %struct.node_t** %call3, %struct.node_t*** %h_table, align 8
  %5 = load %struct.node_t**, %struct.node_t*** %h_table, align 8
  %6 = load double*, double** %h_values, align 8
  %7 = load i32, i32* @n_nodes, align 4
  %div4 = sdiv i32 %7, 1
  %8 = load i32, i32* %procname, align 4
  call void @fill_table(%struct.node_t** %5, double* %6, i32 %div4, i32 %8)
  %9 = load i32, i32* @n_nodes, align 4
  %div5 = sdiv i32 %9, 1
  %conv6 = sext i32 %div5 to i64
  %mul7 = mul i64 %conv6, 8
  %call8 = call noalias i8* @malloc(i64 %mul7) #4
  %10 = bitcast i8* %call8 to double*
  store double* %10, double** %e_values, align 8
  %11 = load i32, i32* @n_nodes, align 4
  %div9 = sdiv i32 %11, 1
  %12 = load i32, i32* %procname, align 4
  %call10 = call %struct.node_t** @make_table(i32 %div9, i32 %12)
  store %struct.node_t** %call10, %struct.node_t*** %e_table, align 8
  %13 = load %struct.node_t**, %struct.node_t*** %e_table, align 8
  %14 = load double*, double** %e_values, align 8
  %15 = load i32, i32* @n_nodes, align 4
  %div11 = sdiv i32 %15, 1
  %16 = load i32, i32* %procname, align 4
  call void @fill_table(%struct.node_t** %13, double* %14, i32 %div11, i32 %16)
  %17 = load %struct.node_t**, %struct.node_t*** %e_table, align 8
  %18 = load i32, i32* %groupname.addr, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %e_table12 = getelementptr inbounds %struct.table_t, %struct.table_t* %19, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %e_table12, i32 0, i64 %idxprom
  store %struct.node_t** %17, %struct.node_t*** %arrayidx, align 8
  %20 = load %struct.node_t**, %struct.node_t*** %h_table, align 8
  %21 = load i32, i32* %groupname.addr, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %h_table14 = getelementptr inbounds %struct.table_t, %struct.table_t* %22, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %h_table14, i32 0, i64 %idxprom13
  store %struct.node_t** %20, %struct.node_t*** %arrayidx15, align 8
  ret void
}

declare void @init_random(i32) #2

; Function Attrs: nounwind uwtable
define void @make_all_neighbors(%struct.table_t* %table, i32 %groupname) #0 {
entry:
  %table.addr = alloca %struct.table_t*, align 8
  %groupname.addr = alloca i32, align 4
  %first_node = alloca %struct.node_t*, align 8
  %local_table = alloca %struct.node_t**, align 8
  %local_table_array = alloca %struct.node_t***, align 8
  store %struct.table_t* %table, %struct.table_t** %table.addr, align 8
  store i32 %groupname, i32* %groupname.addr, align 4
  %0 = load i32, i32* %groupname.addr, align 4
  %mul = mul nsw i32 39, %0
  call void @init_random(i32 %mul)
  %1 = load i32, i32* %groupname.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %h_table = getelementptr inbounds %struct.table_t, %struct.table_t* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %h_table, i32 0, i64 %idxprom
  %3 = load %struct.node_t**, %struct.node_t*** %arrayidx, align 8
  store %struct.node_t** %3, %struct.node_t*** %local_table, align 8
  %4 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %e_table = getelementptr inbounds %struct.table_t, %struct.table_t* %4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %e_table, i32 0, i32 0
  store %struct.node_t*** %arraydecay, %struct.node_t**** %local_table_array, align 8
  %5 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx1 = getelementptr inbounds %struct.node_t*, %struct.node_t** %5, i64 0
  %6 = load %struct.node_t*, %struct.node_t** %arrayidx1, align 8
  store %struct.node_t* %6, %struct.node_t** %first_node, align 8
  %7 = load %struct.node_t*, %struct.node_t** %first_node, align 8
  %8 = load %struct.node_t***, %struct.node_t**** %local_table_array, align 8
  %9 = load i32, i32* @n_nodes, align 4
  %div = sdiv i32 %9, 1
  %10 = load i32, i32* @d_nodes, align 4
  %11 = load i32, i32* @local_p, align 4
  %12 = load i32, i32* %groupname.addr, align 4
  call void @make_neighbors(%struct.node_t* %7, %struct.node_t*** %8, i32 %div, i32 %10, i32 %11, i32 %12)
  %13 = load i32, i32* %groupname.addr, align 4
  %idxprom2 = sext i32 %13 to i64
  %14 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %e_table3 = getelementptr inbounds %struct.table_t, %struct.table_t* %14, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %e_table3, i32 0, i64 %idxprom2
  %15 = load %struct.node_t**, %struct.node_t*** %arrayidx4, align 8
  store %struct.node_t** %15, %struct.node_t*** %local_table, align 8
  %16 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %h_table5 = getelementptr inbounds %struct.table_t, %struct.table_t* %16, i32 0, i32 1
  %arraydecay6 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %h_table5, i32 0, i32 0
  store %struct.node_t*** %arraydecay6, %struct.node_t**** %local_table_array, align 8
  %17 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx7 = getelementptr inbounds %struct.node_t*, %struct.node_t** %17, i64 0
  %18 = load %struct.node_t*, %struct.node_t** %arrayidx7, align 8
  store %struct.node_t* %18, %struct.node_t** %first_node, align 8
  %19 = load %struct.node_t*, %struct.node_t** %first_node, align 8
  %20 = load %struct.node_t***, %struct.node_t**** %local_table_array, align 8
  %21 = load i32, i32* @n_nodes, align 4
  %div8 = sdiv i32 %21, 1
  %22 = load i32, i32* @d_nodes, align 4
  %23 = load i32, i32* @local_p, align 4
  %24 = load i32, i32* %groupname.addr, align 4
  call void @make_neighbors(%struct.node_t* %19, %struct.node_t*** %20, i32 %div8, i32 %22, i32 %23, i32 %24)
  ret void
}

; Function Attrs: nounwind uwtable
define void @update_all_from_coeffs(%struct.table_t* %table, i32 %groupname) #0 {
entry:
  %table.addr = alloca %struct.table_t*, align 8
  %groupname.addr = alloca i32, align 4
  %local_table = alloca %struct.node_t**, align 8
  %first_node = alloca %struct.node_t*, align 8
  store %struct.table_t* %table, %struct.table_t** %table.addr, align 8
  store i32 %groupname, i32* %groupname.addr, align 4
  %0 = load i32, i32* %groupname.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %h_table = getelementptr inbounds %struct.table_t, %struct.table_t* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %h_table, i32 0, i64 %idxprom
  %2 = load %struct.node_t**, %struct.node_t*** %arrayidx, align 8
  store %struct.node_t** %2, %struct.node_t*** %local_table, align 8
  %3 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx1 = getelementptr inbounds %struct.node_t*, %struct.node_t** %3, i64 0
  %4 = load %struct.node_t*, %struct.node_t** %arrayidx1, align 8
  store %struct.node_t* %4, %struct.node_t** %first_node, align 8
  %5 = load %struct.node_t*, %struct.node_t** %first_node, align 8
  call void @update_from_coeffs(%struct.node_t* %5)
  %6 = load i32, i32* %groupname.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %e_table = getelementptr inbounds %struct.table_t, %struct.table_t* %7, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %e_table, i32 0, i64 %idxprom2
  %8 = load %struct.node_t**, %struct.node_t*** %arrayidx3, align 8
  store %struct.node_t** %8, %struct.node_t*** %local_table, align 8
  %9 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx4 = getelementptr inbounds %struct.node_t*, %struct.node_t** %9, i64 0
  %10 = load %struct.node_t*, %struct.node_t** %arrayidx4, align 8
  store %struct.node_t* %10, %struct.node_t** %first_node, align 8
  %11 = load %struct.node_t*, %struct.node_t** %first_node, align 8
  call void @update_from_coeffs(%struct.node_t* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fill_all_from_fields(%struct.table_t* %table, i32 %groupname) #0 {
entry:
  %table.addr = alloca %struct.table_t*, align 8
  %groupname.addr = alloca i32, align 4
  %local_table = alloca %struct.node_t**, align 8
  %first_node = alloca %struct.node_t*, align 8
  store %struct.table_t* %table, %struct.table_t** %table.addr, align 8
  store i32 %groupname, i32* %groupname.addr, align 4
  %0 = load i32, i32* %groupname.addr, align 4
  %mul = mul nsw i32 17, %0
  call void @init_random(i32 %mul)
  %1 = load i32, i32* %groupname.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %h_table = getelementptr inbounds %struct.table_t, %struct.table_t* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %h_table, i32 0, i64 %idxprom
  %3 = load %struct.node_t**, %struct.node_t*** %arrayidx, align 8
  store %struct.node_t** %3, %struct.node_t*** %local_table, align 8
  %4 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx1 = getelementptr inbounds %struct.node_t*, %struct.node_t** %4, i64 0
  %5 = load %struct.node_t*, %struct.node_t** %arrayidx1, align 8
  store %struct.node_t* %5, %struct.node_t** %first_node, align 8
  %6 = load %struct.node_t*, %struct.node_t** %first_node, align 8
  %7 = load i32, i32* @d_nodes, align 4
  call void @fill_from_fields(%struct.node_t* %6, i32 %7)
  %8 = load i32, i32* %groupname.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %e_table = getelementptr inbounds %struct.table_t, %struct.table_t* %9, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %e_table, i32 0, i64 %idxprom2
  %10 = load %struct.node_t**, %struct.node_t*** %arrayidx3, align 8
  store %struct.node_t** %10, %struct.node_t*** %local_table, align 8
  %11 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx4 = getelementptr inbounds %struct.node_t*, %struct.node_t** %11, i64 0
  %12 = load %struct.node_t*, %struct.node_t** %arrayidx4, align 8
  store %struct.node_t* %12, %struct.node_t** %first_node, align 8
  %13 = load %struct.node_t*, %struct.node_t** %first_node, align 8
  %14 = load i32, i32* @d_nodes, align 4
  call void @fill_from_fields(%struct.node_t* %13, i32 %14)
  ret void
}

; Function Attrs: nounwind uwtable
define void @localize(%struct.table_t* %table, i32 %groupname) #0 {
entry:
  %table.addr = alloca %struct.table_t*, align 8
  %groupname.addr = alloca i32, align 4
  %local_table = alloca %struct.node_t**, align 8
  %first_node = alloca %struct.node_t*, align 8
  store %struct.table_t* %table, %struct.table_t** %table.addr, align 8
  store i32 %groupname, i32* %groupname.addr, align 4
  %0 = load i32, i32* %groupname.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %h_table = getelementptr inbounds %struct.table_t, %struct.table_t* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %h_table, i32 0, i64 %idxprom
  %2 = load %struct.node_t**, %struct.node_t*** %arrayidx, align 8
  store %struct.node_t** %2, %struct.node_t*** %local_table, align 8
  %3 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx1 = getelementptr inbounds %struct.node_t*, %struct.node_t** %3, i64 0
  %4 = load %struct.node_t*, %struct.node_t** %arrayidx1, align 8
  store %struct.node_t* %4, %struct.node_t** %first_node, align 8
  %5 = load %struct.node_t*, %struct.node_t** %first_node, align 8
  call void @localize_local(%struct.node_t* %5)
  %6 = load i32, i32* %groupname.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %e_table = getelementptr inbounds %struct.table_t, %struct.table_t* %7, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %e_table, i32 0, i64 %idxprom2
  %8 = load %struct.node_t**, %struct.node_t*** %arrayidx3, align 8
  store %struct.node_t** %8, %struct.node_t*** %local_table, align 8
  %9 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx4 = getelementptr inbounds %struct.node_t*, %struct.node_t** %9, i64 0
  %10 = load %struct.node_t*, %struct.node_t** %arrayidx4, align 8
  store %struct.node_t* %10, %struct.node_t** %first_node, align 8
  %11 = load %struct.node_t*, %struct.node_t** %first_node, align 8
  call void @localize_local(%struct.node_t* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clear_nummiss(%struct.table_t* %table, i32 %groupname) #0 {
entry:
  %table.addr = alloca %struct.table_t*, align 8
  %groupname.addr = alloca i32, align 4
  store %struct.table_t* %table, %struct.table_t** %table.addr, align 8
  store i32 %groupname, i32* %groupname.addr, align 4
  store i32 0, i32* @NumMisses, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_all(%struct.table_t* %table, i32 %groupname, i32 %nproc, void (%struct.table_t*, i32)* %func, i32 %groupsize) #0 {
entry:
  %table.addr = alloca %struct.table_t*, align 8
  %groupname.addr = alloca i32, align 4
  %nproc.addr = alloca i32, align 4
  %func.addr = alloca void (%struct.table_t*, i32)*, align 8
  %groupsize.addr = alloca i32, align 4
  store %struct.table_t* %table, %struct.table_t** %table.addr, align 8
  store i32 %groupname, i32* %groupname.addr, align 4
  store i32 %nproc, i32* %nproc.addr, align 4
  store void (%struct.table_t*, i32)* %func, void (%struct.table_t*, i32)** %func.addr, align 8
  store i32 %groupsize, i32* %groupsize.addr, align 4
  %0 = load i32, i32* %nproc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %2 = load i32, i32* %groupname.addr, align 4
  %3 = load i32, i32* %nproc.addr, align 4
  %div = sdiv i32 %3, 2
  %add = add nsw i32 %2, %div
  %4 = load i32, i32* %nproc.addr, align 4
  %div1 = sdiv i32 %4, 2
  %5 = load void (%struct.table_t*, i32)*, void (%struct.table_t*, i32)** %func.addr, align 8
  %6 = load i32, i32* %groupsize.addr, align 4
  call void @do_all(%struct.table_t* %1, i32 %add, i32 %div1, void (%struct.table_t*, i32)* %5, i32 %6)
  %7 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %8 = load i32, i32* %groupname.addr, align 4
  %9 = load i32, i32* %nproc.addr, align 4
  %div2 = sdiv i32 %9, 2
  %10 = load void (%struct.table_t*, i32)*, void (%struct.table_t*, i32)** %func.addr, align 8
  %11 = load i32, i32* %groupsize.addr, align 4
  call void @do_all(%struct.table_t* %7, i32 %8, i32 %div2, void (%struct.table_t*, i32)* %10, i32 %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load void (%struct.table_t*, i32)*, void (%struct.table_t*, i32)** %func.addr, align 8
  %13 = load %struct.table_t*, %struct.table_t** %table.addr, align 8
  %14 = load i32, i32* %groupname.addr, align 4
  call void %12(%struct.table_t* %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.graph_t* @initialize_graph() #0 {
entry:
  %table = alloca %struct.table_t*, align 8
  %retval1 = alloca %struct.graph_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %blocksize = alloca i32, align 4
  %groupsize = alloca i32, align 4
  %local_table = alloca %struct.node_t**, align 8
  %local_node_r = alloca %struct.node_t*, align 8
  %local_node_l = alloca %struct.node_t*, align 8
  %call = call noalias i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.table_t*
  store %struct.table_t* %0, %struct.table_t** %table, align 8
  %call2 = call noalias i8* @malloc(i64 16) #4
  %1 = bitcast i8* %call2 to %struct.graph_t*
  store %struct.graph_t* %1, %struct.graph_t** %retval1, align 8
  %2 = load i32, i32* @NumNodes, align 4
  %div = sdiv i32 1, %2
  store i32 %div, i32* %groupsize, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  %3 = load %struct.table_t*, %struct.table_t** %table, align 8
  %4 = load i32, i32* %groupsize, align 4
  call void @do_all(%struct.table_t* %3, i32 0, i32 1, void (%struct.table_t*, i32)* @make_tables, i32 %4)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  %5 = load %struct.table_t*, %struct.table_t** %table, align 8
  %6 = load i32, i32* %groupsize, align 4
  call void @do_all(%struct.table_t* %5, i32 0, i32 1, void (%struct.table_t*, i32)* @make_all_neighbors, i32 %6)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  %7 = load %struct.table_t*, %struct.table_t** %table, align 8
  %8 = load i32, i32* %groupsize, align 4
  call void @do_all(%struct.table_t* %7, i32 0, i32 1, void (%struct.table_t*, i32)* @update_all_from_coeffs, i32 %8)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0))
  %9 = load %struct.table_t*, %struct.table_t** %table, align 8
  %10 = load i32, i32* %groupsize, align 4
  call void @do_all(%struct.table_t* %9, i32 0, i32 1, void (%struct.table_t*, i32)* @fill_all_from_fields, i32 %10)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0))
  %11 = load %struct.table_t*, %struct.table_t** %table, align 8
  %12 = load i32, i32* %groupsize, align 4
  call void @do_all(%struct.table_t* %11, i32 0, i32 1, void (%struct.table_t*, i32)* @localize, i32 %12)
  %13 = load i32, i32* @NumNodes, align 4
  %div8 = sdiv i32 1, %13
  store i32 %div8, i32* %blocksize, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @NumNodes, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %blocksize, align 4
  %mul = mul nsw i32 %16, %17
  %idxprom = sext i32 %mul to i64
  %18 = load %struct.table_t*, %struct.table_t** %table, align 8
  %e_table = getelementptr inbounds %struct.table_t, %struct.table_t* %18, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %e_table, i32 0, i64 %idxprom
  %19 = load %struct.node_t**, %struct.node_t*** %arrayidx, align 8
  store %struct.node_t** %19, %struct.node_t*** %local_table, align 8
  %20 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx10 = getelementptr inbounds %struct.node_t*, %struct.node_t** %20, i64 0
  %21 = load %struct.node_t*, %struct.node_t** %arrayidx10, align 8
  store %struct.node_t* %21, %struct.node_t** %local_node_r, align 8
  %22 = load %struct.node_t*, %struct.node_t** %local_node_r, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %23 to i64
  %24 = load %struct.graph_t*, %struct.graph_t** %retval1, align 8
  %e_nodes = getelementptr inbounds %struct.graph_t, %struct.graph_t* %24, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [1 x %struct.node_t*], [1 x %struct.node_t*]* %e_nodes, i32 0, i64 %idxprom11
  store %struct.node_t* %22, %struct.node_t** %arrayidx12, align 8
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %blocksize, align 4
  %mul13 = mul nsw i32 %25, %26
  %idxprom14 = sext i32 %mul13 to i64
  %27 = load %struct.table_t*, %struct.table_t** %table, align 8
  %h_table = getelementptr inbounds %struct.table_t, %struct.table_t* %27, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %h_table, i32 0, i64 %idxprom14
  %28 = load %struct.node_t**, %struct.node_t*** %arrayidx15, align 8
  store %struct.node_t** %28, %struct.node_t*** %local_table, align 8
  %29 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx16 = getelementptr inbounds %struct.node_t*, %struct.node_t** %29, i64 0
  %30 = load %struct.node_t*, %struct.node_t** %arrayidx16, align 8
  store %struct.node_t* %30, %struct.node_t** %local_node_r, align 8
  %31 = load %struct.node_t*, %struct.node_t** %local_node_r, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load %struct.graph_t*, %struct.graph_t** %retval1, align 8
  %h_nodes = getelementptr inbounds %struct.graph_t, %struct.graph_t* %33, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %struct.node_t*], [1 x %struct.node_t*]* %h_nodes, i32 0, i64 %idxprom17
  store %struct.node_t* %31, %struct.node_t** %arrayidx18, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %blocksize, align 4
  %cmp20 = icmp slt i32 %34, %35
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %blocksize, align 4
  %mul22 = mul nsw i32 %36, %37
  %38 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul22, %38
  %sub = sub nsw i32 %add, 1
  %idxprom23 = sext i32 %sub to i64
  %39 = load %struct.table_t*, %struct.table_t** %table, align 8
  %e_table24 = getelementptr inbounds %struct.table_t, %struct.table_t* %39, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %e_table24, i32 0, i64 %idxprom23
  %40 = load %struct.node_t**, %struct.node_t*** %arrayidx25, align 8
  store %struct.node_t** %40, %struct.node_t*** %local_table, align 8
  %41 = load i32, i32* @n_nodes, align 4
  %div26 = sdiv i32 %41, 1
  %sub27 = sub nsw i32 %div26, 1
  %idxprom28 = sext i32 %sub27 to i64
  %42 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx29 = getelementptr inbounds %struct.node_t*, %struct.node_t** %42, i64 %idxprom28
  %43 = load %struct.node_t*, %struct.node_t** %arrayidx29, align 8
  store %struct.node_t* %43, %struct.node_t** %local_node_l, align 8
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %blocksize, align 4
  %mul30 = mul nsw i32 %44, %45
  %46 = load i32, i32* %j, align 4
  %add31 = add nsw i32 %mul30, %46
  %idxprom32 = sext i32 %add31 to i64
  %47 = load %struct.table_t*, %struct.table_t** %table, align 8
  %e_table33 = getelementptr inbounds %struct.table_t, %struct.table_t* %47, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %e_table33, i32 0, i64 %idxprom32
  %48 = load %struct.node_t**, %struct.node_t*** %arrayidx34, align 8
  store %struct.node_t** %48, %struct.node_t*** %local_table, align 8
  %49 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx35 = getelementptr inbounds %struct.node_t*, %struct.node_t** %49, i64 0
  %50 = load %struct.node_t*, %struct.node_t** %arrayidx35, align 8
  store %struct.node_t* %50, %struct.node_t** %local_node_r, align 8
  %51 = load %struct.node_t*, %struct.node_t** %local_node_r, align 8
  %52 = load %struct.node_t*, %struct.node_t** %local_node_l, align 8
  %next = getelementptr inbounds %struct.node_t, %struct.node_t* %52, i32 0, i32 1
  store %struct.node_t* %51, %struct.node_t** %next, align 8
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %blocksize, align 4
  %mul36 = mul nsw i32 %53, %54
  %55 = load i32, i32* %j, align 4
  %add37 = add nsw i32 %mul36, %55
  %sub38 = sub nsw i32 %add37, 1
  %idxprom39 = sext i32 %sub38 to i64
  %56 = load %struct.table_t*, %struct.table_t** %table, align 8
  %h_table40 = getelementptr inbounds %struct.table_t, %struct.table_t* %56, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %h_table40, i32 0, i64 %idxprom39
  %57 = load %struct.node_t**, %struct.node_t*** %arrayidx41, align 8
  store %struct.node_t** %57, %struct.node_t*** %local_table, align 8
  %58 = load i32, i32* @n_nodes, align 4
  %div42 = sdiv i32 %58, 1
  %sub43 = sub nsw i32 %div42, 1
  %idxprom44 = sext i32 %sub43 to i64
  %59 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx45 = getelementptr inbounds %struct.node_t*, %struct.node_t** %59, i64 %idxprom44
  %60 = load %struct.node_t*, %struct.node_t** %arrayidx45, align 8
  store %struct.node_t* %60, %struct.node_t** %local_node_l, align 8
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %blocksize, align 4
  %mul46 = mul nsw i32 %61, %62
  %63 = load i32, i32* %j, align 4
  %add47 = add nsw i32 %mul46, %63
  %idxprom48 = sext i32 %add47 to i64
  %64 = load %struct.table_t*, %struct.table_t** %table, align 8
  %h_table49 = getelementptr inbounds %struct.table_t, %struct.table_t* %64, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %h_table49, i32 0, i64 %idxprom48
  %65 = load %struct.node_t**, %struct.node_t*** %arrayidx50, align 8
  store %struct.node_t** %65, %struct.node_t*** %local_table, align 8
  %66 = load %struct.node_t**, %struct.node_t*** %local_table, align 8
  %arrayidx51 = getelementptr inbounds %struct.node_t*, %struct.node_t** %66, i64 0
  %67 = load %struct.node_t*, %struct.node_t** %arrayidx51, align 8
  store %struct.node_t* %67, %struct.node_t** %local_node_r, align 8
  %68 = load %struct.node_t*, %struct.node_t** %local_node_r, align 8
  %69 = load %struct.node_t*, %struct.node_t** %local_node_l, align 8
  %next52 = getelementptr inbounds %struct.node_t, %struct.node_t* %69, i32 0, i32 1
  store %struct.node_t* %68, %struct.node_t** %next52, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %70 = load i32, i32* %j, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end
  %71 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %71, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  %72 = load %struct.table_t*, %struct.table_t** %table, align 8
  %73 = load i32, i32* %groupsize, align 4
  call void @do_all(%struct.table_t* %72, i32 0, i32 1, void (%struct.table_t*, i32)* @clear_nummiss, i32 %73)
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  %74 = load %struct.graph_t*, %struct.graph_t** %retval1, align 8
  ret %struct.graph_t* %74
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
