; ModuleID = './MultiSource.Benchmarks.Ptrdist/22.bc.storage.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.estack_rec = type { %struct.bc_struct*, %struct.estack_rec* }
%struct.bc_struct = type { i32, i32, i32, i32, [1024 x i8] }
%struct.fstack_rec = type { i32, %struct.fstack_rec* }
%struct.bc_function = type { i8, [16 x i8*], i32, %struct.bc_label_group*, %struct.arg_list*, %struct.arg_list* }
%struct.bc_label_group = type { [64 x i64], %struct.bc_label_group* }
%struct.arg_list = type { i32, %struct.arg_list* }
%struct.bc_var = type { %struct.bc_struct*, %struct.bc_var* }
%struct.bc_var_array = type { %struct.bc_array*, i8, %struct.bc_var_array* }
%struct.bc_array = type { %struct.bc_array_node*, i16 }
%struct.bc_array_node = type { [16 x %struct.bc_struct*], [16 x %struct.bc_array_node*] }
%struct.program_counter = type { i32, i32 }

@f_count = external global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"(main)\00", align 1
@f_names = external global i8**, align 8
@v_count = external global i32, align 4
@a_count = external global i32, align 4
@ex_stack = external global %struct.estack_rec*, align 8
@fn_stack = external global %struct.fstack_rec*, align 8
@i_base = external global i32, align 4
@o_base = external global i32, align 4
@scale = external global i32, align 4
@c_code = external global i8, align 1
@functions = external global %struct.bc_function*, align 8
@variables = external global %struct.bc_var**, align 8
@v_names = external global i8**, align 8
@arrays = external global %struct.bc_var_array**, align 8
@a_names = external global i8**, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Stack error.\00", align 1
@_zero_ = external global %struct.bc_struct*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"negative ibase, set to 2\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"negative obase, set to 2\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"negative scale, set to 0\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ibase too small, set to 2\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"ibase too large, set to 16\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"obase too small, set to 2\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"obase too large, set to %d\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"scale too large, set to %d\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Array %s subscript out of bounds.\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"ibase too small in --\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"obase too small in --\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"scale can not be negative in -- \00", align 1
@_one_ = external global %struct.bc_struct*, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"ibase too big in ++\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"obase too big in ++\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Scale too big in ++\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Parameter type mismatch parameter %s.\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Parameter type mismatch, parameter %s.\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Parameter number mismatch\00", align 1

; Function Attrs: nounwind uwtable
define void @init_storage() #0 {
entry:
  store i32 0, i32* @f_count, align 4
  call void @more_functions()
  %0 = load i8**, i8*** @f_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %arrayidx, align 8
  store i32 0, i32* @v_count, align 4
  call void @more_variables()
  store i32 0, i32* @a_count, align 4
  call void @more_arrays()
  store %struct.estack_rec* null, %struct.estack_rec** @ex_stack, align 8
  store %struct.fstack_rec* null, %struct.fstack_rec** @fn_stack, align 8
  store i32 10, i32* @i_base, align 4
  store i32 10, i32* @o_base, align 4
  store i32 0, i32* @scale, align 4
  store i8 0, i8* @c_code, align 1
  call void @init_numbers()
  ret void
}

; Function Attrs: nounwind uwtable
define void @more_functions() #0 {
entry:
  %old_count = alloca i32, align 4
  %indx1 = alloca i32, align 4
  %indx2 = alloca i32, align 4
  %old_f = alloca %struct.bc_function*, align 8
  %f = alloca %struct.bc_function*, align 8
  %old_names = alloca i8**, align 8
  %0 = load i32, i32* @f_count, align 4
  store i32 %0, i32* %old_count, align 4
  %1 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  store %struct.bc_function* %1, %struct.bc_function** %old_f, align 8
  %2 = load i8**, i8*** @f_names, align 8
  store i8** %2, i8*** %old_names, align 8
  %3 = load i32, i32* @f_count, align 4
  %add = add nsw i32 %3, 32
  store i32 %add, i32* @f_count, align 4
  %4 = load i32, i32* @f_count, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 168
  %call = call noalias i8* @malloc(i64 %mul) #3
  %5 = bitcast i8* %call to %struct.bc_function*
  store %struct.bc_function* %5, %struct.bc_function** @functions, align 8
  %6 = load i32, i32* @f_count, align 4
  %conv1 = sext i32 %6 to i64
  %mul2 = mul i64 %conv1, 8
  %call3 = call noalias i8* @malloc(i64 %mul2) #3
  %7 = bitcast i8* %call3 to i8**
  store i8** %7, i8*** @f_names, align 8
  store i32 0, i32* %indx1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %indx1, align 4
  %9 = load i32, i32* %old_count, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %indx1, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx = getelementptr inbounds %struct.bc_function, %struct.bc_function* %11, i64 %idxprom
  %12 = load i32, i32* %indx1, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.bc_function*, %struct.bc_function** %old_f, align 8
  %arrayidx6 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %13, i64 %idxprom5
  %14 = bitcast %struct.bc_function* %arrayidx to i8*
  %15 = bitcast %struct.bc_function* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 168, i32 8, i1 false)
  %16 = load i32, i32* %indx1, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load i8**, i8*** %old_names, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %17, i64 %idxprom7
  %18 = load i8*, i8** %arrayidx8, align 8
  %19 = load i32, i32* %indx1, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load i8**, i8*** @f_names, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %20, i64 %idxprom9
  store i8* %18, i8** %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %indx1, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %indx1, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.26, %for.end
  %22 = load i32, i32* %indx1, align 4
  %23 = load i32, i32* @f_count, align 4
  %cmp12 = icmp slt i32 %22, %23
  br i1 %cmp12, label %for.body.14, label %for.end.28

for.body.14:                                      ; preds = %for.cond.11
  %24 = load i32, i32* %indx1, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx16 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %25, i64 %idxprom15
  store %struct.bc_function* %arrayidx16, %struct.bc_function** %f, align 8
  %26 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_defined = getelementptr inbounds %struct.bc_function, %struct.bc_function* %26, i32 0, i32 0
  store i8 0, i8* %f_defined, align 1
  store i32 0, i32* %indx2, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.23, %for.body.14
  %27 = load i32, i32* %indx2, align 4
  %cmp18 = icmp slt i32 %27, 16
  br i1 %cmp18, label %for.body.20, label %for.end.25

for.body.20:                                      ; preds = %for.cond.17
  %28 = load i32, i32* %indx2, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_body = getelementptr inbounds %struct.bc_function, %struct.bc_function* %29, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [16 x i8*], [16 x i8*]* %f_body, i32 0, i64 %idxprom21
  store i8* null, i8** %arrayidx22, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.20
  %30 = load i32, i32* %indx2, align 4
  %inc24 = add nsw i32 %30, 1
  store i32 %inc24, i32* %indx2, align 4
  br label %for.cond.17

for.end.25:                                       ; preds = %for.cond.17
  %31 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_code_size = getelementptr inbounds %struct.bc_function, %struct.bc_function* %31, i32 0, i32 2
  store i32 0, i32* %f_code_size, align 4
  %32 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_label = getelementptr inbounds %struct.bc_function, %struct.bc_function* %32, i32 0, i32 3
  store %struct.bc_label_group* null, %struct.bc_label_group** %f_label, align 8
  %33 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_autos = getelementptr inbounds %struct.bc_function, %struct.bc_function* %33, i32 0, i32 5
  store %struct.arg_list* null, %struct.arg_list** %f_autos, align 8
  %34 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_params = getelementptr inbounds %struct.bc_function, %struct.bc_function* %34, i32 0, i32 4
  store %struct.arg_list* null, %struct.arg_list** %f_params, align 8
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end.25
  %35 = load i32, i32* %indx1, align 4
  %inc27 = add nsw i32 %35, 1
  store i32 %inc27, i32* %indx1, align 4
  br label %for.cond.11

for.end.28:                                       ; preds = %for.cond.11
  %36 = load i32, i32* %old_count, align 4
  %cmp29 = icmp ne i32 %36, 0
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.28
  %37 = load %struct.bc_function*, %struct.bc_function** %old_f, align 8
  %38 = bitcast %struct.bc_function* %37 to i8*
  call void @free(i8* %38) #3
  %39 = load i8**, i8*** %old_names, align 8
  %40 = bitcast i8** %39 to i8*
  call void @free(i8* %40) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.28
  ret void
}

; Function Attrs: nounwind uwtable
define void @more_variables() #0 {
entry:
  %indx = alloca i32, align 4
  %old_count = alloca i32, align 4
  %old_var = alloca %struct.bc_var**, align 8
  %old_names = alloca i8**, align 8
  %0 = load i32, i32* @v_count, align 4
  store i32 %0, i32* %old_count, align 4
  %1 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  store %struct.bc_var** %1, %struct.bc_var*** %old_var, align 8
  %2 = load i8**, i8*** @v_names, align 8
  store i8** %2, i8*** %old_names, align 8
  %3 = load i32, i32* @v_count, align 4
  %add = add nsw i32 %3, 32
  store i32 %add, i32* @v_count, align 4
  %4 = load i32, i32* @v_count, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %5 = bitcast i8* %call to %struct.bc_var**
  store %struct.bc_var** %5, %struct.bc_var*** @variables, align 8
  %6 = load i32, i32* @v_count, align 4
  %conv1 = sext i32 %6 to i64
  %mul2 = mul i64 %conv1, 8
  %call3 = call noalias i8* @malloc(i64 %mul2) #3
  %7 = bitcast i8* %call3 to i8**
  store i8** %7, i8*** @v_names, align 8
  store i32 3, i32* %indx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %indx, align 4
  %9 = load i32, i32* %old_count, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %indx, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.bc_var**, %struct.bc_var*** %old_var, align 8
  %arrayidx = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %11, i64 %idxprom
  %12 = load %struct.bc_var*, %struct.bc_var** %arrayidx, align 8
  %13 = load i32, i32* %indx, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx6 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %14, i64 %idxprom5
  store %struct.bc_var* %12, %struct.bc_var** %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %indx, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %indx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %for.end
  %16 = load i32, i32* %indx, align 4
  %17 = load i32, i32* @v_count, align 4
  %cmp8 = icmp slt i32 %16, %17
  br i1 %cmp8, label %for.body.10, label %for.end.15

for.body.10:                                      ; preds = %for.cond.7
  %18 = load i32, i32* %indx, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx12 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %19, i64 %idxprom11
  store %struct.bc_var* null, %struct.bc_var** %arrayidx12, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.10
  %20 = load i32, i32* %indx, align 4
  %inc14 = add nsw i32 %20, 1
  store i32 %inc14, i32* %indx, align 4
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %21 = load i32, i32* %old_count, align 4
  %cmp16 = icmp ne i32 %21, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.15
  %22 = load %struct.bc_var**, %struct.bc_var*** %old_var, align 8
  %23 = bitcast %struct.bc_var** %22 to i8*
  call void @free(i8* %23) #3
  %24 = load i8**, i8*** %old_names, align 8
  %25 = bitcast i8** %24 to i8*
  call void @free(i8* %25) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define void @more_arrays() #0 {
entry:
  %indx = alloca i32, align 4
  %old_count = alloca i32, align 4
  %old_ary = alloca %struct.bc_var_array**, align 8
  %old_names = alloca i8**, align 8
  %0 = load i32, i32* @a_count, align 4
  store i32 %0, i32* %old_count, align 4
  %1 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  store %struct.bc_var_array** %1, %struct.bc_var_array*** %old_ary, align 8
  %2 = load i8**, i8*** @a_names, align 8
  store i8** %2, i8*** %old_names, align 8
  %3 = load i32, i32* @a_count, align 4
  %add = add nsw i32 %3, 32
  store i32 %add, i32* @a_count, align 4
  %4 = load i32, i32* @a_count, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %5 = bitcast i8* %call to %struct.bc_var_array**
  store %struct.bc_var_array** %5, %struct.bc_var_array*** @arrays, align 8
  %6 = load i32, i32* @a_count, align 4
  %conv1 = sext i32 %6 to i64
  %mul2 = mul i64 %conv1, 8
  %call3 = call noalias i8* @malloc(i64 %mul2) #3
  %7 = bitcast i8* %call3 to i8**
  store i8** %7, i8*** @a_names, align 8
  store i32 1, i32* %indx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %indx, align 4
  %9 = load i32, i32* %old_count, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %indx, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.bc_var_array**, %struct.bc_var_array*** %old_ary, align 8
  %arrayidx = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %11, i64 %idxprom
  %12 = load %struct.bc_var_array*, %struct.bc_var_array** %arrayidx, align 8
  %13 = load i32, i32* %indx, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx6 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %14, i64 %idxprom5
  store %struct.bc_var_array* %12, %struct.bc_var_array** %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %indx, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %indx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %for.end
  %16 = load i32, i32* %indx, align 4
  %17 = load i32, i32* @v_count, align 4
  %cmp8 = icmp slt i32 %16, %17
  br i1 %cmp8, label %for.body.10, label %for.end.15

for.body.10:                                      ; preds = %for.cond.7
  %18 = load i32, i32* %indx, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx12 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %19, i64 %idxprom11
  store %struct.bc_var_array* null, %struct.bc_var_array** %arrayidx12, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.10
  %20 = load i32, i32* %indx, align 4
  %inc14 = add nsw i32 %20, 1
  store i32 %inc14, i32* %indx, align 4
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %21 = load i32, i32* %old_count, align 4
  %cmp16 = icmp ne i32 %21, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.15
  %22 = load %struct.bc_var_array**, %struct.bc_var_array*** %old_ary, align 8
  %23 = bitcast %struct.bc_var_array** %22 to i8*
  call void @free(i8* %23) #3
  %24 = load i8**, i8*** %old_names, align 8
  %25 = bitcast i8** %24 to i8*
  call void @free(i8* %25) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.15
  ret void
}

declare void @init_numbers() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @clear_func(i8 signext %func) #0 {
entry:
  %func.addr = alloca i8, align 1
  %f = alloca %struct.bc_function*, align 8
  %indx = alloca i32, align 4
  %lg = alloca %struct.bc_label_group*, align 8
  store i8 %func, i8* %func.addr, align 1
  %0 = load i8, i8* %func.addr, align 1
  %idxprom = sext i8 %0 to i64
  %1 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx = getelementptr inbounds %struct.bc_function, %struct.bc_function* %1, i64 %idxprom
  store %struct.bc_function* %arrayidx, %struct.bc_function** %f, align 8
  %2 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_defined = getelementptr inbounds %struct.bc_function, %struct.bc_function* %2, i32 0, i32 0
  store i8 0, i8* %f_defined, align 1
  store i32 0, i32* %indx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %indx, align 4
  %cmp = icmp slt i32 %3, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %indx, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_body = getelementptr inbounds %struct.bc_function, %struct.bc_function* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [16 x i8*], [16 x i8*]* %f_body, i32 0, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx2, align 8
  %cmp3 = icmp ne i8* %6, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %indx, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_body5 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [16 x i8*], [16 x i8*]* %f_body5, i32 0, i64 %idxprom4
  %9 = load i8*, i8** %arrayidx6, align 8
  call void @free(i8* %9) #3
  %10 = load i32, i32* %indx, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_body8 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %11, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [16 x i8*], [16 x i8*]* %f_body8, i32 0, i64 %idxprom7
  store i8* null, i8** %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %indx, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %indx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_code_size = getelementptr inbounds %struct.bc_function, %struct.bc_function* %13, i32 0, i32 2
  store i32 0, i32* %f_code_size, align 4
  %14 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_autos = getelementptr inbounds %struct.bc_function, %struct.bc_function* %14, i32 0, i32 5
  %15 = load %struct.arg_list*, %struct.arg_list** %f_autos, align 8
  %cmp10 = icmp ne %struct.arg_list* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %for.end
  %16 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_autos12 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %16, i32 0, i32 5
  %17 = load %struct.arg_list*, %struct.arg_list** %f_autos12, align 8
  call void @free_args(%struct.arg_list* %17)
  %18 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_autos13 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %18, i32 0, i32 5
  store %struct.arg_list* null, %struct.arg_list** %f_autos13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %for.end
  %19 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_params = getelementptr inbounds %struct.bc_function, %struct.bc_function* %19, i32 0, i32 4
  %20 = load %struct.arg_list*, %struct.arg_list** %f_params, align 8
  %cmp15 = icmp ne %struct.arg_list* %20, null
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %21 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_params17 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %21, i32 0, i32 4
  %22 = load %struct.arg_list*, %struct.arg_list** %f_params17, align 8
  call void @free_args(%struct.arg_list* %22)
  %23 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_params18 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %23, i32 0, i32 4
  store %struct.arg_list* null, %struct.arg_list** %f_params18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.19
  %24 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_label = getelementptr inbounds %struct.bc_function, %struct.bc_function* %24, i32 0, i32 3
  %25 = load %struct.bc_label_group*, %struct.bc_label_group** %f_label, align 8
  %cmp20 = icmp ne %struct.bc_label_group* %25, null
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_label21 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %26, i32 0, i32 3
  %27 = load %struct.bc_label_group*, %struct.bc_label_group** %f_label21, align 8
  %l_next = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %27, i32 0, i32 1
  %28 = load %struct.bc_label_group*, %struct.bc_label_group** %l_next, align 8
  store %struct.bc_label_group* %28, %struct.bc_label_group** %lg, align 8
  %29 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_label22 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %29, i32 0, i32 3
  %30 = load %struct.bc_label_group*, %struct.bc_label_group** %f_label22, align 8
  %31 = bitcast %struct.bc_label_group* %30 to i8*
  call void @free(i8* %31) #3
  %32 = load %struct.bc_label_group*, %struct.bc_label_group** %lg, align 8
  %33 = load %struct.bc_function*, %struct.bc_function** %f, align 8
  %f_label23 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %33, i32 0, i32 3
  store %struct.bc_label_group* %32, %struct.bc_label_group** %f_label23, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @free_args(%struct.arg_list*) #1

; Function Attrs: nounwind uwtable
define i32 @fpop() #0 {
entry:
  %temp = alloca %struct.fstack_rec*, align 8
  %retval1 = alloca i32, align 4
  %0 = load %struct.fstack_rec*, %struct.fstack_rec** @fn_stack, align 8
  %cmp = icmp ne %struct.fstack_rec* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.fstack_rec*, %struct.fstack_rec** @fn_stack, align 8
  store %struct.fstack_rec* %1, %struct.fstack_rec** %temp, align 8
  %2 = load %struct.fstack_rec*, %struct.fstack_rec** %temp, align 8
  %s_next = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %2, i32 0, i32 1
  %3 = load %struct.fstack_rec*, %struct.fstack_rec** %s_next, align 8
  store %struct.fstack_rec* %3, %struct.fstack_rec** @fn_stack, align 8
  %4 = load %struct.fstack_rec*, %struct.fstack_rec** %temp, align 8
  %s_val = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %4, i32 0, i32 0
  %5 = load i32, i32* %s_val, align 4
  store i32 %5, i32* %retval1, align 4
  %6 = load %struct.fstack_rec*, %struct.fstack_rec** %temp, align 8
  %7 = bitcast %struct.fstack_rec* %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %retval1, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @fpush(i32 %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %temp = alloca %struct.fstack_rec*, align 8
  store i32 %val, i32* %val.addr, align 4
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.fstack_rec*
  store %struct.fstack_rec* %0, %struct.fstack_rec** %temp, align 8
  %1 = load %struct.fstack_rec*, %struct.fstack_rec** @fn_stack, align 8
  %2 = load %struct.fstack_rec*, %struct.fstack_rec** %temp, align 8
  %s_next = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %2, i32 0, i32 1
  store %struct.fstack_rec* %1, %struct.fstack_rec** %s_next, align 8
  %3 = load i32, i32* %val.addr, align 4
  %4 = load %struct.fstack_rec*, %struct.fstack_rec** %temp, align 8
  %s_val = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %4, i32 0, i32 0
  store i32 %3, i32* %s_val, align 4
  %5 = load %struct.fstack_rec*, %struct.fstack_rec** %temp, align 8
  store %struct.fstack_rec* %5, %struct.fstack_rec** @fn_stack, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @pop() #0 {
entry:
  %temp = alloca %struct.estack_rec*, align 8
  %0 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %cmp = icmp ne %struct.estack_rec* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  store %struct.estack_rec* %1, %struct.estack_rec** %temp, align 8
  %2 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  %s_next = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %2, i32 0, i32 1
  %3 = load %struct.estack_rec*, %struct.estack_rec** %s_next, align 8
  store %struct.estack_rec* %3, %struct.estack_rec** @ex_stack, align 8
  %4 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %4, i32 0, i32 0
  call void @free_num(%struct.bc_struct** %s_num)
  %5 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  %6 = bitcast %struct.estack_rec* %5 to i8*
  call void @free(i8* %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free_num(%struct.bc_struct**) #1

; Function Attrs: nounwind uwtable
define void @push_copy(%struct.bc_struct* %num) #0 {
entry:
  %num.addr = alloca %struct.bc_struct*, align 8
  %temp = alloca %struct.estack_rec*, align 8
  store %struct.bc_struct* %num, %struct.bc_struct** %num.addr, align 8
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.estack_rec*
  store %struct.estack_rec* %0, %struct.estack_rec** %temp, align 8
  %1 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %call1 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %1)
  %2 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %2, i32 0, i32 0
  store %struct.bc_struct* %call1, %struct.bc_struct** %s_num, align 8
  %3 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %4 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  %s_next = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %4, i32 0, i32 1
  store %struct.estack_rec* %3, %struct.estack_rec** %s_next, align 8
  %5 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  store %struct.estack_rec* %5, %struct.estack_rec** @ex_stack, align 8
  ret void
}

declare %struct.bc_struct* @copy_num(%struct.bc_struct*) #1

; Function Attrs: nounwind uwtable
define void @push_num(%struct.bc_struct* %num) #0 {
entry:
  %num.addr = alloca %struct.bc_struct*, align 8
  %temp = alloca %struct.estack_rec*, align 8
  store %struct.bc_struct* %num, %struct.bc_struct** %num.addr, align 8
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.estack_rec*
  store %struct.estack_rec* %0, %struct.estack_rec** %temp, align 8
  %1 = load %struct.bc_struct*, %struct.bc_struct** %num.addr, align 8
  %2 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %2, i32 0, i32 0
  store %struct.bc_struct* %1, %struct.bc_struct** %s_num, align 8
  %3 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %4 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  %s_next = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %4, i32 0, i32 1
  store %struct.estack_rec* %3, %struct.estack_rec** %s_next, align 8
  %5 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  store %struct.estack_rec* %5, %struct.estack_rec** @ex_stack, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define signext i8 @check_stack(i32 %depth) #0 {
entry:
  %retval = alloca i8, align 1
  %depth.addr = alloca i32, align 4
  %temp = alloca %struct.estack_rec*, align 8
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  store %struct.estack_rec* %0, %struct.estack_rec** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  %cmp = icmp ne %struct.estack_rec* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %depth.addr, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.estack_rec*, %struct.estack_rec** %temp, align 8
  %s_next = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %4, i32 0, i32 1
  %5 = load %struct.estack_rec*, %struct.estack_rec** %s_next, align 8
  store %struct.estack_rec* %5, %struct.estack_rec** %temp, align 8
  %6 = load i32, i32* %depth.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %depth.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %depth.addr, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %while.end
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8, i8* %retval
  ret i8 %8
}

declare void @rt_error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.bc_var* @get_var(i32 %var_name) #0 {
entry:
  %var_name.addr = alloca i32, align 4
  %var_ptr = alloca %struct.bc_var*, align 8
  store i32 %var_name, i32* %var_name.addr, align 4
  %0 = load i32, i32* %var_name.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %1, i64 %idxprom
  %2 = load %struct.bc_var*, %struct.bc_var** %arrayidx, align 8
  store %struct.bc_var* %2, %struct.bc_var** %var_ptr, align 8
  %3 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %cmp = icmp eq %struct.bc_var* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 16) #3
  %4 = bitcast i8* %call to %struct.bc_var*
  %5 = load i32, i32* %var_name.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx2 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %6, i64 %idxprom1
  store %struct.bc_var* %4, %struct.bc_var** %arrayidx2, align 8
  store %struct.bc_var* %4, %struct.bc_var** %var_ptr, align 8
  %7 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %v_value = getelementptr inbounds %struct.bc_var, %struct.bc_var* %7, i32 0, i32 0
  call void @init_num(%struct.bc_struct** %v_value)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  ret %struct.bc_var* %8
}

declare void @init_num(%struct.bc_struct**) #1

; Function Attrs: nounwind uwtable
define %struct.bc_struct** @get_array_num(i32 %var_index, i64 %index) #0 {
entry:
  %var_index.addr = alloca i32, align 4
  %index.addr = alloca i64, align 8
  %ary_ptr = alloca %struct.bc_var_array*, align 8
  %a_var = alloca %struct.bc_array*, align 8
  %temp = alloca %struct.bc_array_node*, align 8
  %log = alloca i32, align 4
  %ix = alloca i32, align 4
  %ix1 = alloca i32, align 4
  %sub = alloca [4 x i32], align 16
  store i32 %var_index, i32* %var_index.addr, align 4
  store i64 %index, i64* %index.addr, align 8
  %0 = load i32, i32* %var_index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %1, i64 %idxprom
  %2 = load %struct.bc_var_array*, %struct.bc_var_array** %arrayidx, align 8
  store %struct.bc_var_array* %2, %struct.bc_var_array** %ary_ptr, align 8
  %3 = load %struct.bc_var_array*, %struct.bc_var_array** %ary_ptr, align 8
  %cmp = icmp eq %struct.bc_var_array* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 24) #3
  %4 = bitcast i8* %call to %struct.bc_var_array*
  %5 = load i32, i32* %var_index.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx2 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %6, i64 %idxprom1
  store %struct.bc_var_array* %4, %struct.bc_var_array** %arrayidx2, align 8
  store %struct.bc_var_array* %4, %struct.bc_var_array** %ary_ptr, align 8
  %7 = load %struct.bc_var_array*, %struct.bc_var_array** %ary_ptr, align 8
  %a_value = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %7, i32 0, i32 0
  store %struct.bc_array* null, %struct.bc_array** %a_value, align 8
  %8 = load %struct.bc_var_array*, %struct.bc_var_array** %ary_ptr, align 8
  %a_next = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %8, i32 0, i32 2
  store %struct.bc_var_array* null, %struct.bc_var_array** %a_next, align 8
  %9 = load %struct.bc_var_array*, %struct.bc_var_array** %ary_ptr, align 8
  %a_param = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %9, i32 0, i32 1
  store i8 0, i8* %a_param, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.bc_var_array*, %struct.bc_var_array** %ary_ptr, align 8
  %a_value3 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %10, i32 0, i32 0
  %11 = load %struct.bc_array*, %struct.bc_array** %a_value3, align 8
  store %struct.bc_array* %11, %struct.bc_array** %a_var, align 8
  %12 = load %struct.bc_array*, %struct.bc_array** %a_var, align 8
  %cmp4 = icmp eq %struct.bc_array* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %call6 = call noalias i8* @malloc(i64 16) #3
  %13 = bitcast i8* %call6 to %struct.bc_array*
  %14 = load %struct.bc_var_array*, %struct.bc_var_array** %ary_ptr, align 8
  %a_value7 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %14, i32 0, i32 0
  store %struct.bc_array* %13, %struct.bc_array** %a_value7, align 8
  store %struct.bc_array* %13, %struct.bc_array** %a_var, align 8
  %15 = load %struct.bc_array*, %struct.bc_array** %a_var, align 8
  %a_tree = getelementptr inbounds %struct.bc_array, %struct.bc_array* %15, i32 0, i32 0
  store %struct.bc_array_node* null, %struct.bc_array_node** %a_tree, align 8
  %16 = load %struct.bc_array*, %struct.bc_array** %a_var, align 8
  %a_depth = getelementptr inbounds %struct.bc_array, %struct.bc_array* %16, i32 0, i32 1
  store i16 0, i16* %a_depth, align 2
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %17 = load i64, i64* %index.addr, align 8
  %and = and i64 %17, 15
  %conv = trunc i64 %and to i32
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %sub, i32 0, i64 0
  store i32 %conv, i32* %arrayidx9, align 4
  %18 = load i64, i64* %index.addr, align 8
  %shr = ashr i64 %18, 4
  %conv10 = trunc i64 %shr to i32
  store i32 %conv10, i32* %ix, align 4
  store i32 1, i32* %log, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %19 = load i32, i32* %ix, align 4
  %cmp11 = icmp sgt i32 %19, 0
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %20 = load i32, i32* %log, align 4
  %21 = load %struct.bc_array*, %struct.bc_array** %a_var, align 8
  %a_depth13 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %21, i32 0, i32 1
  %22 = load i16, i16* %a_depth13, align 2
  %conv14 = sext i16 %22 to i32
  %cmp15 = icmp slt i32 %20, %conv14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %23 = phi i1 [ true, %while.cond ], [ %cmp15, %lor.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %24 = load i32, i32* %ix, align 4
  %and17 = and i32 %24, 15
  %25 = load i32, i32* %log, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %sub, i32 0, i64 %idxprom18
  store i32 %and17, i32* %arrayidx19, align 4
  %26 = load i32, i32* %ix, align 4
  %shr20 = ashr i32 %26, 4
  store i32 %shr20, i32* %ix, align 4
  %27 = load i32, i32* %log, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %log, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %while.cond.21

while.cond.21:                                    ; preds = %if.end.51, %while.end
  %28 = load i32, i32* %log, align 4
  %29 = load %struct.bc_array*, %struct.bc_array** %a_var, align 8
  %a_depth22 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %29, i32 0, i32 1
  %30 = load i16, i16* %a_depth22, align 2
  %conv23 = sext i16 %30 to i32
  %cmp24 = icmp sgt i32 %28, %conv23
  br i1 %cmp24, label %while.body.26, label %while.end.55

while.body.26:                                    ; preds = %while.cond.21
  %call27 = call noalias i8* @malloc(i64 256) #3
  %31 = bitcast i8* %call27 to %struct.bc_array_node*
  store %struct.bc_array_node* %31, %struct.bc_array_node** %temp, align 8
  %32 = load %struct.bc_array*, %struct.bc_array** %a_var, align 8
  %a_depth28 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %32, i32 0, i32 1
  %33 = load i16, i16* %a_depth28, align 2
  %conv29 = sext i16 %33 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %while.body.26
  %34 = load %struct.bc_array*, %struct.bc_array** %a_var, align 8
  %a_tree33 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %34, i32 0, i32 0
  %35 = load %struct.bc_array_node*, %struct.bc_array_node** %a_tree33, align 8
  %36 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %n_down = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %36, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %n_down, i32 0, i64 0
  store %struct.bc_array_node* %35, %struct.bc_array_node** %arrayidx34, align 8
  store i32 1, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.32
  %37 = load i32, i32* %ix, align 4
  %cmp35 = icmp slt i32 %37, 16
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %ix, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %n_down38 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %39, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %n_down38, i32 0, i64 %idxprom37
  store %struct.bc_array_node* null, %struct.bc_array_node** %arrayidx39, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %ix, align 4
  %inc40 = add nsw i32 %40, 1
  store i32 %inc40, i32* %ix, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.51

if.else:                                          ; preds = %while.body.26
  store i32 0, i32* %ix, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.48, %if.else
  %41 = load i32, i32* %ix, align 4
  %cmp42 = icmp slt i32 %41, 16
  br i1 %cmp42, label %for.body.44, label %for.end.50

for.body.44:                                      ; preds = %for.cond.41
  %42 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %call45 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %42)
  %43 = load i32, i32* %ix, align 4
  %idxprom46 = sext i32 %43 to i64
  %44 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %n_num = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %44, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [16 x %struct.bc_struct*], [16 x %struct.bc_struct*]* %n_num, i32 0, i64 %idxprom46
  store %struct.bc_struct* %call45, %struct.bc_struct** %arrayidx47, align 8
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.44
  %45 = load i32, i32* %ix, align 4
  %inc49 = add nsw i32 %45, 1
  store i32 %inc49, i32* %ix, align 4
  br label %for.cond.41

for.end.50:                                       ; preds = %for.cond.41
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %for.end
  %46 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %47 = load %struct.bc_array*, %struct.bc_array** %a_var, align 8
  %a_tree52 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %47, i32 0, i32 0
  store %struct.bc_array_node* %46, %struct.bc_array_node** %a_tree52, align 8
  %48 = load %struct.bc_array*, %struct.bc_array** %a_var, align 8
  %a_depth53 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %48, i32 0, i32 1
  %49 = load i16, i16* %a_depth53, align 2
  %inc54 = add i16 %49, 1
  store i16 %inc54, i16* %a_depth53, align 2
  br label %while.cond.21

while.end.55:                                     ; preds = %while.cond.21
  %50 = load %struct.bc_array*, %struct.bc_array** %a_var, align 8
  %a_tree56 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %50, i32 0, i32 0
  %51 = load %struct.bc_array_node*, %struct.bc_array_node** %a_tree56, align 8
  store %struct.bc_array_node* %51, %struct.bc_array_node** %temp, align 8
  br label %while.cond.57

while.cond.57:                                    ; preds = %if.end.106, %while.end.55
  %52 = load i32, i32* %log, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %log, align 4
  %cmp58 = icmp sgt i32 %52, 1
  br i1 %cmp58, label %while.body.60, label %while.end.107

while.body.60:                                    ; preds = %while.cond.57
  %53 = load i32, i32* %log, align 4
  %idxprom61 = sext i32 %53 to i64
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %sub, i32 0, i64 %idxprom61
  %54 = load i32, i32* %arrayidx62, align 4
  store i32 %54, i32* %ix1, align 4
  %55 = load i32, i32* %ix1, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %n_down64 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %56, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %n_down64, i32 0, i64 %idxprom63
  %57 = load %struct.bc_array_node*, %struct.bc_array_node** %arrayidx65, align 8
  %cmp66 = icmp eq %struct.bc_array_node* %57, null
  br i1 %cmp66, label %if.then.68, label %if.else.102

if.then.68:                                       ; preds = %while.body.60
  %call69 = call noalias i8* @malloc(i64 256) #3
  %58 = bitcast i8* %call69 to %struct.bc_array_node*
  %59 = load i32, i32* %ix1, align 4
  %idxprom70 = sext i32 %59 to i64
  %60 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %n_down71 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %60, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %n_down71, i32 0, i64 %idxprom70
  store %struct.bc_array_node* %58, %struct.bc_array_node** %arrayidx72, align 8
  %61 = load i32, i32* %ix1, align 4
  %idxprom73 = sext i32 %61 to i64
  %62 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %n_down74 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %62, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %n_down74, i32 0, i64 %idxprom73
  %63 = load %struct.bc_array_node*, %struct.bc_array_node** %arrayidx75, align 8
  store %struct.bc_array_node* %63, %struct.bc_array_node** %temp, align 8
  %64 = load i32, i32* %log, align 4
  %cmp76 = icmp sgt i32 %64, 1
  br i1 %cmp76, label %if.then.78, label %if.else.89

if.then.78:                                       ; preds = %if.then.68
  store i32 0, i32* %ix, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.86, %if.then.78
  %65 = load i32, i32* %ix, align 4
  %cmp80 = icmp slt i32 %65, 16
  br i1 %cmp80, label %for.body.82, label %for.end.88

for.body.82:                                      ; preds = %for.cond.79
  %66 = load i32, i32* %ix, align 4
  %idxprom83 = sext i32 %66 to i64
  %67 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %n_down84 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %67, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %n_down84, i32 0, i64 %idxprom83
  store %struct.bc_array_node* null, %struct.bc_array_node** %arrayidx85, align 8
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.82
  %68 = load i32, i32* %ix, align 4
  %inc87 = add nsw i32 %68, 1
  store i32 %inc87, i32* %ix, align 4
  br label %for.cond.79

for.end.88:                                       ; preds = %for.cond.79
  br label %if.end.101

if.else.89:                                       ; preds = %if.then.68
  store i32 0, i32* %ix, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.98, %if.else.89
  %69 = load i32, i32* %ix, align 4
  %cmp91 = icmp slt i32 %69, 16
  br i1 %cmp91, label %for.body.93, label %for.end.100

for.body.93:                                      ; preds = %for.cond.90
  %70 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %call94 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %70)
  %71 = load i32, i32* %ix, align 4
  %idxprom95 = sext i32 %71 to i64
  %72 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %n_num96 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %72, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [16 x %struct.bc_struct*], [16 x %struct.bc_struct*]* %n_num96, i32 0, i64 %idxprom95
  store %struct.bc_struct* %call94, %struct.bc_struct** %arrayidx97, align 8
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.93
  %73 = load i32, i32* %ix, align 4
  %inc99 = add nsw i32 %73, 1
  store i32 %inc99, i32* %ix, align 4
  br label %for.cond.90

for.end.100:                                      ; preds = %for.cond.90
  br label %if.end.101

if.end.101:                                       ; preds = %for.end.100, %for.end.88
  br label %if.end.106

if.else.102:                                      ; preds = %while.body.60
  %74 = load i32, i32* %ix1, align 4
  %idxprom103 = sext i32 %74 to i64
  %75 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %n_down104 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %75, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %n_down104, i32 0, i64 %idxprom103
  %76 = load %struct.bc_array_node*, %struct.bc_array_node** %arrayidx105, align 8
  store %struct.bc_array_node* %76, %struct.bc_array_node** %temp, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.102, %if.end.101
  br label %while.cond.57

while.end.107:                                    ; preds = %while.cond.57
  %arrayidx108 = getelementptr inbounds [4 x i32], [4 x i32]* %sub, i32 0, i64 0
  %77 = load i32, i32* %arrayidx108, align 4
  %idxprom109 = sext i32 %77 to i64
  %78 = load %struct.bc_array_node*, %struct.bc_array_node** %temp, align 8
  %n_num110 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %78, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [16 x %struct.bc_struct*], [16 x %struct.bc_struct*]* %n_num110, i32 0, i64 %idxprom109
  ret %struct.bc_struct** %arrayidx111
}

; Function Attrs: nounwind uwtable
define void @store_var(i32 %var_name) #0 {
entry:
  %var_name.addr = alloca i32, align 4
  %var_ptr = alloca %struct.bc_var*, align 8
  %temp = alloca i64, align 8
  %toobig = alloca i8, align 1
  store i32 %var_name, i32* %var_name.addr, align 4
  %0 = load i32, i32* %var_name.addr, align 4
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %var_name.addr, align 4
  %call = call %struct.bc_var* @get_var(i32 %1)
  store %struct.bc_var* %call, %struct.bc_var** %var_ptr, align 8
  %2 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %cmp1 = icmp ne %struct.bc_var* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %v_value = getelementptr inbounds %struct.bc_var, %struct.bc_var* %3, i32 0, i32 0
  call void @free_num(%struct.bc_struct** %v_value)
  %4 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %4, i32 0, i32 0
  %5 = load %struct.bc_struct*, %struct.bc_struct** %s_num, align 8
  %call3 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %5)
  %6 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %v_value4 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %6, i32 0, i32 0
  store %struct.bc_struct* %call3, %struct.bc_struct** %v_value4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.61

if.else:                                          ; preds = %entry
  store i8 0, i8* %toobig, align 1
  %7 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num5 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %7, i32 0, i32 0
  %8 = load %struct.bc_struct*, %struct.bc_struct** %s_num5, align 8
  %call6 = call signext i8 @is_neg(%struct.bc_struct* %8)
  %tobool = icmp ne i8 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else
  %9 = load i32, i32* %var_name.addr, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.then.7
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  store i64 2, i64* %temp, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then.7
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  store i64 2, i64* %temp, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then.7
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  store i64 0, i64* %temp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.7, %sw.bb.9, %sw.bb.8, %sw.bb
  br label %if.end.19

if.else.10:                                       ; preds = %if.else
  %10 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num11 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %10, i32 0, i32 0
  %11 = load %struct.bc_struct*, %struct.bc_struct** %s_num11, align 8
  %call12 = call i64 @num2long(%struct.bc_struct* %11)
  store i64 %call12, i64* %temp, align 8
  %12 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num13 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %12, i32 0, i32 0
  %13 = load %struct.bc_struct*, %struct.bc_struct** %s_num13, align 8
  %call14 = call signext i8 @is_zero(%struct.bc_struct* %13)
  %tobool15 = icmp ne i8 %call14, 0
  br i1 %tobool15, label %if.end.18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.10
  %14 = load i64, i64* %temp, align 8
  %cmp16 = icmp eq i64 %14, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  store i8 1, i8* %toobig, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.else.10
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %sw.epilog
  %15 = load i32, i32* %var_name.addr, align 4
  switch i32 %15, label %sw.epilog.60 [
    i32 0, label %sw.bb.20
    i32 1, label %sw.bb.33
    i32 2, label %sw.bb.50
  ]

sw.bb.20:                                         ; preds = %if.end.19
  %16 = load i64, i64* %temp, align 8
  %cmp21 = icmp slt i64 %16, 2
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.25

land.lhs.true.22:                                 ; preds = %sw.bb.20
  %17 = load i8, i8* %toobig, align 1
  %tobool23 = icmp ne i8 %17, 0
  br i1 %tobool23, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22
  store i32 2, i32* @i_base, align 4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.32

if.else.25:                                       ; preds = %land.lhs.true.22, %sw.bb.20
  %18 = load i64, i64* %temp, align 8
  %cmp26 = icmp sgt i64 %18, 16
  br i1 %cmp26, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.25
  %19 = load i8, i8* %toobig, align 1
  %conv = sext i8 %19 to i32
  %tobool27 = icmp ne i32 %conv, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %lor.lhs.false, %if.else.25
  store i32 16, i32* @i_base, align 4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.31

if.else.29:                                       ; preds = %lor.lhs.false
  %20 = load i64, i64* %temp, align 8
  %conv30 = trunc i64 %20 to i32
  store i32 %conv30, i32* @i_base, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.24
  br label %sw.epilog.60

sw.bb.33:                                         ; preds = %if.end.19
  %21 = load i64, i64* %temp, align 8
  %cmp34 = icmp slt i64 %21, 2
  br i1 %cmp34, label %land.lhs.true.36, label %if.else.39

land.lhs.true.36:                                 ; preds = %sw.bb.33
  %22 = load i8, i8* %toobig, align 1
  %tobool37 = icmp ne i8 %22, 0
  br i1 %tobool37, label %if.else.39, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.36
  store i32 2, i32* @o_base, align 4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.49

if.else.39:                                       ; preds = %land.lhs.true.36, %sw.bb.33
  %23 = load i64, i64* %temp, align 8
  %cmp40 = icmp sgt i64 %23, 99
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.else.39
  %24 = load i8, i8* %toobig, align 1
  %conv43 = sext i8 %24 to i32
  %tobool44 = icmp ne i32 %conv43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %lor.lhs.false.42, %if.else.39
  store i32 99, i32* @o_base, align 4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 99)
  br label %if.end.48

if.else.46:                                       ; preds = %lor.lhs.false.42
  %25 = load i64, i64* %temp, align 8
  %conv47 = trunc i64 %25 to i32
  store i32 %conv47, i32* @o_base, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.38
  br label %sw.epilog.60

sw.bb.50:                                         ; preds = %if.end.19
  %26 = load i64, i64* %temp, align 8
  %cmp51 = icmp sgt i64 %26, 99
  br i1 %cmp51, label %if.then.56, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %sw.bb.50
  %27 = load i8, i8* %toobig, align 1
  %conv54 = sext i8 %27 to i32
  %tobool55 = icmp ne i32 %conv54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %lor.lhs.false.53, %sw.bb.50
  store i32 99, i32* @scale, align 4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 99)
  br label %if.end.59

if.else.57:                                       ; preds = %lor.lhs.false.53
  %28 = load i64, i64* %temp, align 8
  %conv58 = trunc i64 %28 to i32
  store i32 %conv58, i32* @scale, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %sw.epilog.60

sw.epilog.60:                                     ; preds = %if.end.59, %if.end.19, %if.end.49, %if.end.32
  br label %if.end.61

if.end.61:                                        ; preds = %sw.epilog.60, %if.end
  ret void
}

declare signext i8 @is_neg(%struct.bc_struct*) #1

declare void @rt_warn(i8*, ...) #1

declare i64 @num2long(%struct.bc_struct*) #1

declare signext i8 @is_zero(%struct.bc_struct*) #1

; Function Attrs: nounwind uwtable
define void @store_array(i32 %var_name) #0 {
entry:
  %var_name.addr = alloca i32, align 4
  %num_ptr = alloca %struct.bc_struct**, align 8
  %index = alloca i64, align 8
  store i32 %var_name, i32* %var_name.addr, align 4
  %call = call signext i8 @check_stack(i32 2)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.22

if.end:                                           ; preds = %entry
  %0 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %0, i32 0, i32 1
  %1 = load %struct.estack_rec*, %struct.estack_rec** %s_next, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %1, i32 0, i32 0
  %2 = load %struct.bc_struct*, %struct.bc_struct** %s_num, align 8
  %call1 = call i64 @num2long(%struct.bc_struct* %2)
  store i64 %call1, i64* %index, align 8
  %3 = load i64, i64* %index, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %index, align 8
  %cmp2 = icmp sgt i64 %4, 2048
  br i1 %cmp2, label %if.then.9, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load i64, i64* %index, align 8
  %cmp4 = icmp eq i64 %5, 0
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %6 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next5 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %6, i32 0, i32 1
  %7 = load %struct.estack_rec*, %struct.estack_rec** %s_next5, align 8
  %s_num6 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %7, i32 0, i32 0
  %8 = load %struct.bc_struct*, %struct.bc_struct** %s_num6, align 8
  %call7 = call signext i8 @is_zero(%struct.bc_struct* %8)
  %tobool8 = icmp ne i8 %call7, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %9 = load i32, i32* %var_name.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** @a_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i8* %11)
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.3
  %12 = load i32, i32* %var_name.addr, align 4
  %13 = load i64, i64* %index, align 8
  %call10 = call %struct.bc_struct** @get_array_num(i32 %12, i64 %13)
  store %struct.bc_struct** %call10, %struct.bc_struct*** %num_ptr, align 8
  %14 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  %cmp11 = icmp ne %struct.bc_struct** %14, null
  br i1 %cmp11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.else
  %15 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  call void @free_num(%struct.bc_struct** %15)
  %16 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num13 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %16, i32 0, i32 0
  %17 = load %struct.bc_struct*, %struct.bc_struct** %s_num13, align 8
  %call14 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %17)
  %18 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  store %struct.bc_struct* %call14, %struct.bc_struct** %18, align 8
  %19 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next15 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %19, i32 0, i32 1
  %20 = load %struct.estack_rec*, %struct.estack_rec** %s_next15, align 8
  %s_num16 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %20, i32 0, i32 0
  call void @free_num(%struct.bc_struct** %s_num16)
  %21 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num17 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %21, i32 0, i32 0
  %22 = load %struct.bc_struct*, %struct.bc_struct** %s_num17, align 8
  %23 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next18 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %23, i32 0, i32 1
  %24 = load %struct.estack_rec*, %struct.estack_rec** %s_next18, align 8
  %s_num19 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %24, i32 0, i32 0
  store %struct.bc_struct* %22, %struct.bc_struct** %s_num19, align 8
  %25 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num20 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %25, i32 0, i32 0
  call void @init_num(%struct.bc_struct** %s_num20)
  call void @pop()
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.12, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.then, %if.end.21, %if.then.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @load_var(i32 %var_name) #0 {
entry:
  %var_name.addr = alloca i32, align 4
  %var_ptr = alloca %struct.bc_var*, align 8
  store i32 %var_name, i32* %var_name.addr, align 4
  %0 = load i32, i32* %var_name.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %1)
  %2 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %2, i32 0, i32 0
  %3 = load i32, i32* @i_base, align 4
  call void @int2num(%struct.bc_struct** %s_num, i32 %3)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %4)
  %5 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num2 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %5, i32 0, i32 0
  %6 = load i32, i32* @o_base, align 4
  call void @int2num(%struct.bc_struct** %s_num2, i32 %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %7)
  %8 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num4 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %8, i32 0, i32 0
  %9 = load i32, i32* @scale, align 4
  call void @int2num(%struct.bc_struct** %s_num4, i32 %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load i32, i32* %var_name.addr, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %11, i64 %idxprom
  %12 = load %struct.bc_var*, %struct.bc_var** %arrayidx, align 8
  store %struct.bc_var* %12, %struct.bc_var** %var_ptr, align 8
  %13 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %cmp = icmp ne %struct.bc_var* %13, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %14 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %v_value = getelementptr inbounds %struct.bc_var, %struct.bc_var* %14, i32 0, i32 0
  %15 = load %struct.bc_struct*, %struct.bc_struct** %v_value, align 8
  call void @push_copy(%struct.bc_struct* %15)
  br label %if.end

if.else:                                          ; preds = %sw.default
  %16 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.3, %sw.bb.1, %sw.bb
  ret void
}

declare void @int2num(%struct.bc_struct**, i32) #1

; Function Attrs: nounwind uwtable
define void @load_array(i32 %var_name) #0 {
entry:
  %var_name.addr = alloca i32, align 4
  %num_ptr = alloca %struct.bc_struct**, align 8
  %index = alloca i64, align 8
  store i32 %var_name, i32* %var_name.addr, align 4
  %call = call signext i8 @check_stack(i32 1)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.13

if.end:                                           ; preds = %entry
  %0 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %0, i32 0, i32 0
  %1 = load %struct.bc_struct*, %struct.bc_struct** %s_num, align 8
  %call1 = call i64 @num2long(%struct.bc_struct* %1)
  store i64 %call1, i64* %index, align 8
  %2 = load i64, i64* %index, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* %index, align 8
  %cmp2 = icmp sgt i64 %3, 2048
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i64, i64* %index, align 8
  %cmp4 = icmp eq i64 %4, 0
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %5 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num5 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %5, i32 0, i32 0
  %6 = load %struct.bc_struct*, %struct.bc_struct** %s_num5, align 8
  %call6 = call signext i8 @is_zero(%struct.bc_struct* %6)
  %tobool7 = icmp ne i8 %call6, 0
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %7 = load i32, i32* %var_name.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** @a_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i8* %9)
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.3
  %10 = load i32, i32* %var_name.addr, align 4
  %11 = load i64, i64* %index, align 8
  %call9 = call %struct.bc_struct** @get_array_num(i32 %10, i64 %11)
  store %struct.bc_struct** %call9, %struct.bc_struct*** %num_ptr, align 8
  %12 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  %cmp10 = icmp ne %struct.bc_struct** %12, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  call void @pop()
  %13 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  %14 = load %struct.bc_struct*, %struct.bc_struct** %13, align 8
  call void @push_copy(%struct.bc_struct* %14)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.end.12, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @decr_var(i32 %var_name) #0 {
entry:
  %var_name.addr = alloca i32, align 4
  %var_ptr = alloca %struct.bc_var*, align 8
  store i32 %var_name, i32* %var_name.addr, align 4
  %0 = load i32, i32* %var_name.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* @i_base, align 4
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %2 = load i32, i32* @i_base, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @i_base, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load i32, i32* @o_base, align 4
  %cmp2 = icmp sgt i32 %3, 2
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %sw.bb.1
  %4 = load i32, i32* @o_base, align 4
  %dec4 = add nsw i32 %4, -1
  store i32 %dec4, i32* @o_base, align 4
  br label %if.end.6

if.else.5:                                        ; preds = %sw.bb.1
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.3
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %5 = load i32, i32* @scale, align 4
  %cmp8 = icmp sgt i32 %5, 0
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %sw.bb.7
  %6 = load i32, i32* @scale, align 4
  %dec10 = add nsw i32 %6, -1
  store i32 %dec10, i32* @scale, align 4
  br label %if.end.12

if.else.11:                                       ; preds = %sw.bb.7
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load i32, i32* %var_name.addr, align 4
  %call = call %struct.bc_var* @get_var(i32 %7)
  store %struct.bc_var* %call, %struct.bc_var** %var_ptr, align 8
  %8 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %cmp13 = icmp ne %struct.bc_var* %8, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %sw.default
  %9 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %v_value = getelementptr inbounds %struct.bc_var, %struct.bc_var* %9, i32 0, i32 0
  %10 = load %struct.bc_struct*, %struct.bc_struct** %v_value, align 8
  %11 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %12 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %v_value15 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %12, i32 0, i32 0
  call void @bc_sub(%struct.bc_struct* %10, %struct.bc_struct* %11, %struct.bc_struct** %v_value15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.16, %if.end.12, %if.end.6, %if.end
  ret void
}

declare void @bc_sub(%struct.bc_struct*, %struct.bc_struct*, %struct.bc_struct**) #1

; Function Attrs: nounwind uwtable
define void @decr_array(i8 signext %var_name) #0 {
entry:
  %var_name.addr = alloca i8, align 1
  %num_ptr = alloca %struct.bc_struct**, align 8
  %index = alloca i64, align 8
  store i8 %var_name, i8* %var_name.addr, align 1
  %call = call signext i8 @check_stack(i32 1)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %0 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %0, i32 0, i32 0
  %1 = load %struct.bc_struct*, %struct.bc_struct** %s_num, align 8
  %call1 = call i64 @num2long(%struct.bc_struct* %1)
  store i64 %call1, i64* %index, align 8
  %2 = load i64, i64* %index, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* %index, align 8
  %cmp2 = icmp sgt i64 %3, 2048
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i64, i64* %index, align 8
  %cmp4 = icmp eq i64 %4, 0
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %5 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num5 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %5, i32 0, i32 0
  %6 = load %struct.bc_struct*, %struct.bc_struct** %s_num5, align 8
  %call6 = call signext i8 @is_zero(%struct.bc_struct* %6)
  %tobool7 = icmp ne i8 %call6, 0
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %7 = load i8, i8* %var_name.addr, align 1
  %idxprom = sext i8 %7 to i64
  %8 = load i8**, i8*** @a_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i8* %9)
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.3
  %10 = load i8, i8* %var_name.addr, align 1
  %conv = sext i8 %10 to i32
  %11 = load i64, i64* %index, align 8
  %call9 = call %struct.bc_struct** @get_array_num(i32 %conv, i64 %11)
  store %struct.bc_struct** %call9, %struct.bc_struct*** %num_ptr, align 8
  %12 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  %cmp10 = icmp ne %struct.bc_struct** %12, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  call void @pop()
  %13 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  %14 = load %struct.bc_struct*, %struct.bc_struct** %13, align 8
  %15 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %16 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  call void @bc_sub(%struct.bc_struct* %14, %struct.bc_struct* %15, %struct.bc_struct** %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.end.13, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @incr_var(i32 %var_name) #0 {
entry:
  %var_name.addr = alloca i32, align 4
  %var_ptr = alloca %struct.bc_var*, align 8
  store i32 %var_name, i32* %var_name.addr, align 4
  %0 = load i32, i32* %var_name.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* @i_base, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %2 = load i32, i32* @i_base, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @i_base, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load i32, i32* @o_base, align 4
  %cmp2 = icmp slt i32 %3, 99
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %sw.bb.1
  %4 = load i32, i32* @o_base, align 4
  %inc4 = add nsw i32 %4, 1
  store i32 %inc4, i32* @o_base, align 4
  br label %if.end.6

if.else.5:                                        ; preds = %sw.bb.1
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.3
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %5 = load i32, i32* @scale, align 4
  %cmp8 = icmp slt i32 %5, 99
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %sw.bb.7
  %6 = load i32, i32* @scale, align 4
  %inc10 = add nsw i32 %6, 1
  store i32 %inc10, i32* @scale, align 4
  br label %if.end.12

if.else.11:                                       ; preds = %sw.bb.7
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load i32, i32* %var_name.addr, align 4
  %call = call %struct.bc_var* @get_var(i32 %7)
  store %struct.bc_var* %call, %struct.bc_var** %var_ptr, align 8
  %8 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %cmp13 = icmp ne %struct.bc_var* %8, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %sw.default
  %9 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %v_value = getelementptr inbounds %struct.bc_var, %struct.bc_var* %9, i32 0, i32 0
  %10 = load %struct.bc_struct*, %struct.bc_struct** %v_value, align 8
  %11 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %12 = load %struct.bc_var*, %struct.bc_var** %var_ptr, align 8
  %v_value15 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %12, i32 0, i32 0
  call void @bc_add(%struct.bc_struct* %10, %struct.bc_struct* %11, %struct.bc_struct** %v_value15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.16, %if.end.12, %if.end.6, %if.end
  ret void
}

declare void @bc_add(%struct.bc_struct*, %struct.bc_struct*, %struct.bc_struct**) #1

; Function Attrs: nounwind uwtable
define void @incr_array(i32 %var_name) #0 {
entry:
  %var_name.addr = alloca i32, align 4
  %num_ptr = alloca %struct.bc_struct**, align 8
  %index = alloca i64, align 8
  store i32 %var_name, i32* %var_name.addr, align 4
  %call = call signext i8 @check_stack(i32 1)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.13

if.end:                                           ; preds = %entry
  %0 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %0, i32 0, i32 0
  %1 = load %struct.bc_struct*, %struct.bc_struct** %s_num, align 8
  %call1 = call i64 @num2long(%struct.bc_struct* %1)
  store i64 %call1, i64* %index, align 8
  %2 = load i64, i64* %index, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* %index, align 8
  %cmp2 = icmp sgt i64 %3, 2048
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i64, i64* %index, align 8
  %cmp4 = icmp eq i64 %4, 0
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %5 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num5 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %5, i32 0, i32 0
  %6 = load %struct.bc_struct*, %struct.bc_struct** %s_num5, align 8
  %call6 = call signext i8 @is_zero(%struct.bc_struct* %6)
  %tobool7 = icmp ne i8 %call6, 0
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %7 = load i32, i32* %var_name.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** @a_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i8* %9)
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.3
  %10 = load i32, i32* %var_name.addr, align 4
  %11 = load i64, i64* %index, align 8
  %call9 = call %struct.bc_struct** @get_array_num(i32 %10, i64 %11)
  store %struct.bc_struct** %call9, %struct.bc_struct*** %num_ptr, align 8
  %12 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  %cmp10 = icmp ne %struct.bc_struct** %12, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  call void @pop()
  %13 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  %14 = load %struct.bc_struct*, %struct.bc_struct** %13, align 8
  %15 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %16 = load %struct.bc_struct**, %struct.bc_struct*** %num_ptr, align 8
  call void @bc_add(%struct.bc_struct* %14, %struct.bc_struct* %15, %struct.bc_struct** %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.end.12, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @auto_var(i32 %name) #0 {
entry:
  %name.addr = alloca i32, align 4
  %v_temp = alloca %struct.bc_var*, align 8
  %a_temp = alloca %struct.bc_var_array*, align 8
  %ix = alloca i32, align 4
  store i32 %name, i32* %name.addr, align 4
  %0 = load i32, i32* %name.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %name.addr, align 4
  store i32 %1, i32* %ix, align 4
  %call = call noalias i8* @malloc(i64 16) #3
  %2 = bitcast i8* %call to %struct.bc_var*
  store %struct.bc_var* %2, %struct.bc_var** %v_temp, align 8
  %3 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %4, i64 %idxprom
  %5 = load %struct.bc_var*, %struct.bc_var** %arrayidx, align 8
  %6 = load %struct.bc_var*, %struct.bc_var** %v_temp, align 8
  %v_next = getelementptr inbounds %struct.bc_var, %struct.bc_var* %6, i32 0, i32 1
  store %struct.bc_var* %5, %struct.bc_var** %v_next, align 8
  %7 = load %struct.bc_var*, %struct.bc_var** %v_temp, align 8
  %v_value = getelementptr inbounds %struct.bc_var, %struct.bc_var* %7, i32 0, i32 0
  call void @init_num(%struct.bc_struct** %v_value)
  %8 = load %struct.bc_var*, %struct.bc_var** %v_temp, align 8
  %9 = load i32, i32* %ix, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx2 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %10, i64 %idxprom1
  store %struct.bc_var* %8, %struct.bc_var** %arrayidx2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %name.addr, align 4
  %sub = sub nsw i32 0, %11
  store i32 %sub, i32* %ix, align 4
  %call3 = call noalias i8* @malloc(i64 24) #3
  %12 = bitcast i8* %call3 to %struct.bc_var_array*
  store %struct.bc_var_array* %12, %struct.bc_var_array** %a_temp, align 8
  %13 = load i32, i32* %ix, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx5 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %14, i64 %idxprom4
  %15 = load %struct.bc_var_array*, %struct.bc_var_array** %arrayidx5, align 8
  %16 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %a_next = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %16, i32 0, i32 2
  store %struct.bc_var_array* %15, %struct.bc_var_array** %a_next, align 8
  %17 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %a_value = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %17, i32 0, i32 0
  store %struct.bc_array* null, %struct.bc_array** %a_value, align 8
  %18 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %a_param = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %18, i32 0, i32 1
  store i8 0, i8* %a_param, align 1
  %19 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %20 = load i32, i32* %ix, align 4
  %idxprom6 = sext i32 %20 to i64
  %21 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx7 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %21, i64 %idxprom6
  store %struct.bc_var_array* %19, %struct.bc_var_array** %arrayidx7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_a_tree(%struct.bc_array_node* %root, i32 %depth) #0 {
entry:
  %root.addr = alloca %struct.bc_array_node*, align 8
  %depth.addr = alloca i32, align 4
  %ix = alloca i32, align 4
  store %struct.bc_array_node* %root, %struct.bc_array_node** %root.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load %struct.bc_array_node*, %struct.bc_array_node** %root.addr, align 8
  %cmp = icmp ne %struct.bc_array_node* %0, null
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %depth.addr, align 4
  %cmp1 = icmp sgt i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %2 = load i32, i32* %ix, align 4
  %cmp3 = icmp slt i32 %2, 16
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.bc_array_node*, %struct.bc_array_node** %root.addr, align 8
  %n_down = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %n_down, i32 0, i64 %idxprom
  %5 = load %struct.bc_array_node*, %struct.bc_array_node** %arrayidx, align 8
  %6 = load i32, i32* %depth.addr, align 4
  %sub = sub nsw i32 %6, 1
  call void @free_a_tree(%struct.bc_array_node* %5, i32 %sub)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %ix, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %ix, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %ix, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.9, %if.else
  %8 = load i32, i32* %ix, align 4
  %cmp5 = icmp slt i32 %8, 16
  br i1 %cmp5, label %for.body.6, label %for.end.11

for.body.6:                                       ; preds = %for.cond.4
  %9 = load i32, i32* %ix, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.bc_array_node*, %struct.bc_array_node** %root.addr, align 8
  %n_num = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %10, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [16 x %struct.bc_struct*], [16 x %struct.bc_struct*]* %n_num, i32 0, i64 %idxprom7
  call void @free_num(%struct.bc_struct** %arrayidx8)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.6
  %11 = load i32, i32* %ix, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %ix, align 4
  br label %for.cond.4

for.end.11:                                       ; preds = %for.cond.4
  br label %if.end

if.end:                                           ; preds = %for.end.11, %for.end
  %12 = load %struct.bc_array_node*, %struct.bc_array_node** %root.addr, align 8
  %13 = bitcast %struct.bc_array_node* %12 to i8*
  call void @free(i8* %13) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @pop_vars(%struct.arg_list* %list) #0 {
entry:
  %list.addr = alloca %struct.arg_list*, align 8
  %v_temp = alloca %struct.bc_var*, align 8
  %a_temp = alloca %struct.bc_var_array*, align 8
  %ix = alloca i32, align 4
  store %struct.arg_list* %list, %struct.arg_list** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %entry
  %0 = load %struct.arg_list*, %struct.arg_list** %list.addr, align 8
  %cmp = icmp ne %struct.arg_list* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.arg_list*, %struct.arg_list** %list.addr, align 8
  %av_name = getelementptr inbounds %struct.arg_list, %struct.arg_list* %1, i32 0, i32 0
  %2 = load i32, i32* %av_name, align 4
  store i32 %2, i32* %ix, align 4
  %3 = load i32, i32* %ix, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %5, i64 %idxprom
  %6 = load %struct.bc_var*, %struct.bc_var** %arrayidx, align 8
  store %struct.bc_var* %6, %struct.bc_var** %v_temp, align 8
  %7 = load %struct.bc_var*, %struct.bc_var** %v_temp, align 8
  %cmp2 = icmp ne %struct.bc_var* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.bc_var*, %struct.bc_var** %v_temp, align 8
  %v_next = getelementptr inbounds %struct.bc_var, %struct.bc_var* %8, i32 0, i32 1
  %9 = load %struct.bc_var*, %struct.bc_var** %v_next, align 8
  %10 = load i32, i32* %ix, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx5 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %11, i64 %idxprom4
  store %struct.bc_var* %9, %struct.bc_var** %arrayidx5, align 8
  %12 = load %struct.bc_var*, %struct.bc_var** %v_temp, align 8
  %v_value = getelementptr inbounds %struct.bc_var, %struct.bc_var* %12, i32 0, i32 0
  call void @free_num(%struct.bc_struct** %v_value)
  %13 = load %struct.bc_var*, %struct.bc_var** %v_temp, align 8
  %14 = bitcast %struct.bc_var* %13 to i8*
  call void @free(i8* %14) #3
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.19

if.else:                                          ; preds = %while.body
  %15 = load i32, i32* %ix, align 4
  %sub = sub nsw i32 0, %15
  store i32 %sub, i32* %ix, align 4
  %16 = load i32, i32* %ix, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx7 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %17, i64 %idxprom6
  %18 = load %struct.bc_var_array*, %struct.bc_var_array** %arrayidx7, align 8
  store %struct.bc_var_array* %18, %struct.bc_var_array** %a_temp, align 8
  %19 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %cmp8 = icmp ne %struct.bc_var_array* %19, null
  br i1 %cmp8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.else
  %20 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %a_next = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %20, i32 0, i32 2
  %21 = load %struct.bc_var_array*, %struct.bc_var_array** %a_next, align 8
  %22 = load i32, i32* %ix, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx11 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %23, i64 %idxprom10
  store %struct.bc_var_array* %21, %struct.bc_var_array** %arrayidx11, align 8
  %24 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %a_param = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %24, i32 0, i32 1
  %25 = load i8, i8* %a_param, align 1
  %tobool = icmp ne i8 %25, 0
  br i1 %tobool, label %if.end.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.9
  %26 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %a_value = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %26, i32 0, i32 0
  %27 = load %struct.bc_array*, %struct.bc_array** %a_value, align 8
  %cmp12 = icmp ne %struct.bc_array* %27, null
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %land.lhs.true
  %28 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %a_value14 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %28, i32 0, i32 0
  %29 = load %struct.bc_array*, %struct.bc_array** %a_value14, align 8
  %a_tree = getelementptr inbounds %struct.bc_array, %struct.bc_array* %29, i32 0, i32 0
  %30 = load %struct.bc_array_node*, %struct.bc_array_node** %a_tree, align 8
  %31 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %a_value15 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %31, i32 0, i32 0
  %32 = load %struct.bc_array*, %struct.bc_array** %a_value15, align 8
  %a_depth = getelementptr inbounds %struct.bc_array, %struct.bc_array* %32, i32 0, i32 1
  %33 = load i16, i16* %a_depth, align 2
  %conv = sext i16 %33 to i32
  call void @free_a_tree(%struct.bc_array_node* %30, i32 %conv)
  %34 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %a_value16 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %34, i32 0, i32 0
  %35 = load %struct.bc_array*, %struct.bc_array** %a_value16, align 8
  %36 = bitcast %struct.bc_array* %35 to i8*
  call void @free(i8* %36) #3
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %land.lhs.true, %if.then.9
  %37 = load %struct.bc_var_array*, %struct.bc_var_array** %a_temp, align 8
  %38 = bitcast %struct.bc_var_array* %37 to i8*
  call void @free(i8* %38) #3
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %39 = load %struct.arg_list*, %struct.arg_list** %list.addr, align 8
  %next = getelementptr inbounds %struct.arg_list, %struct.arg_list* %39, i32 0, i32 1
  %40 = load %struct.arg_list*, %struct.arg_list** %next, align 8
  store %struct.arg_list* %40, %struct.arg_list** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @process_params(%struct.program_counter* %pc, i32 %func) #0 {
entry:
  %pc.addr = alloca %struct.program_counter*, align 8
  %func.addr = alloca i32, align 4
  %ch = alloca i8, align 1
  %params = alloca %struct.arg_list*, align 8
  %warned = alloca i8, align 1
  %ix = alloca i32, align 4
  %ix1 = alloca i32, align 4
  %v_temp = alloca %struct.bc_var*, align 8
  %a_src = alloca %struct.bc_var_array*, align 8
  %a_dest = alloca %struct.bc_var_array*, align 8
  %n_temp = alloca %struct.bc_struct**, align 8
  store %struct.program_counter* %pc, %struct.program_counter** %pc.addr, align 8
  store i32 %func, i32* %func.addr, align 4
  store i8 0, i8* %warned, align 1
  %0 = load i32, i32* %func.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx = getelementptr inbounds %struct.bc_function, %struct.bc_function* %1, i64 %idxprom
  %f_params = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx, i32 0, i32 4
  %2 = load %struct.arg_list*, %struct.arg_list** %f_params, align 8
  store %struct.arg_list* %2, %struct.arg_list** %params, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.61, %entry
  %3 = load %struct.program_counter*, %struct.program_counter** %pc.addr, align 8
  %call = call zeroext i8 @byte(%struct.program_counter* %3)
  store i8 %call, i8* %ch, align 1
  %conv = sext i8 %call to i32
  %cmp = icmp ne i32 %conv, 58
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %cmp2 = icmp ne %struct.arg_list* %4, null
  br i1 %cmp2, label %if.then, label %if.else.58

if.then:                                          ; preds = %while.body
  %5 = load i8, i8* %ch, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 48
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %av_name = getelementptr inbounds %struct.arg_list, %struct.arg_list* %6, i32 0, i32 0
  %7 = load i32, i32* %av_name, align 4
  %cmp7 = icmp sgt i32 %7, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %8 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %av_name10 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %8, i32 0, i32 0
  %9 = load i32, i32* %av_name10, align 4
  store i32 %9, i32* %ix, align 4
  %call11 = call noalias i8* @malloc(i64 16) #3
  %10 = bitcast i8* %call11 to %struct.bc_var*
  store %struct.bc_var* %10, %struct.bc_var** %v_temp, align 8
  %11 = load i32, i32* %ix, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx13 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %12, i64 %idxprom12
  %13 = load %struct.bc_var*, %struct.bc_var** %arrayidx13, align 8
  %14 = load %struct.bc_var*, %struct.bc_var** %v_temp, align 8
  %v_next = getelementptr inbounds %struct.bc_var, %struct.bc_var* %14, i32 0, i32 1
  store %struct.bc_var* %13, %struct.bc_var** %v_next, align 8
  %15 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %15, i32 0, i32 0
  %16 = load %struct.bc_struct*, %struct.bc_struct** %s_num, align 8
  %17 = load %struct.bc_var*, %struct.bc_var** %v_temp, align 8
  %v_value = getelementptr inbounds %struct.bc_var, %struct.bc_var* %17, i32 0, i32 0
  store %struct.bc_struct* %16, %struct.bc_struct** %v_value, align 8
  %18 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num14 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %18, i32 0, i32 0
  call void @init_num(%struct.bc_struct** %s_num14)
  %19 = load %struct.bc_var*, %struct.bc_var** %v_temp, align 8
  %20 = load i32, i32* %ix, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %arrayidx16 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %21, i64 %idxprom15
  store %struct.bc_var* %19, %struct.bc_var** %arrayidx16, align 8
  br label %if.end.57

if.else:                                          ; preds = %land.lhs.true, %if.then
  %22 = load i8, i8* %ch, align 1
  %conv17 = sext i8 %22 to i32
  %cmp18 = icmp eq i32 %conv17, 49
  br i1 %cmp18, label %land.lhs.true.20, label %if.else.42

land.lhs.true.20:                                 ; preds = %if.else
  %23 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %av_name21 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %23, i32 0, i32 0
  %24 = load i32, i32* %av_name21, align 4
  %cmp22 = icmp slt i32 %24, 0
  br i1 %cmp22, label %if.then.24, label %if.else.42

if.then.24:                                       ; preds = %land.lhs.true.20
  %25 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num25 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %25, i32 0, i32 0
  %26 = load %struct.bc_struct*, %struct.bc_struct** %s_num25, align 8
  %call26 = call i64 @num2long(%struct.bc_struct* %26)
  %conv27 = trunc i64 %call26 to i32
  store i32 %conv27, i32* %ix, align 4
  %27 = load i32, i32* %ix, align 4
  %call28 = call %struct.bc_struct** @get_array_num(i32 %27, i64 0)
  store %struct.bc_struct** %call28, %struct.bc_struct*** %n_temp, align 8
  %28 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %av_name29 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %28, i32 0, i32 0
  %29 = load i32, i32* %av_name29, align 4
  call void @auto_var(i32 %29)
  %30 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %av_name30 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %30, i32 0, i32 0
  %31 = load i32, i32* %av_name30, align 4
  %sub = sub nsw i32 0, %31
  store i32 %sub, i32* %ix1, align 4
  %32 = load i32, i32* %ix, align 4
  %33 = load i32, i32* %ix1, align 4
  %cmp31 = icmp eq i32 %32, %33
  br i1 %cmp31, label %if.then.33, label %if.else.36

if.then.33:                                       ; preds = %if.then.24
  %34 = load i32, i32* %ix, align 4
  %idxprom34 = sext i32 %34 to i64
  %35 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx35 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %35, i64 %idxprom34
  %36 = load %struct.bc_var_array*, %struct.bc_var_array** %arrayidx35, align 8
  %a_next = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %36, i32 0, i32 2
  %37 = load %struct.bc_var_array*, %struct.bc_var_array** %a_next, align 8
  store %struct.bc_var_array* %37, %struct.bc_var_array** %a_src, align 8
  br label %if.end

if.else.36:                                       ; preds = %if.then.24
  %38 = load i32, i32* %ix, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx38 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %39, i64 %idxprom37
  %40 = load %struct.bc_var_array*, %struct.bc_var_array** %arrayidx38, align 8
  store %struct.bc_var_array* %40, %struct.bc_var_array** %a_src, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.36, %if.then.33
  %41 = load i32, i32* %ix1, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %arrayidx40 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %42, i64 %idxprom39
  %43 = load %struct.bc_var_array*, %struct.bc_var_array** %arrayidx40, align 8
  store %struct.bc_var_array* %43, %struct.bc_var_array** %a_dest, align 8
  %44 = load %struct.bc_var_array*, %struct.bc_var_array** %a_dest, align 8
  %a_param = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %44, i32 0, i32 1
  store i8 1, i8* %a_param, align 1
  %45 = load %struct.bc_var_array*, %struct.bc_var_array** %a_src, align 8
  %a_value = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %45, i32 0, i32 0
  %46 = load %struct.bc_array*, %struct.bc_array** %a_value, align 8
  %47 = load %struct.bc_var_array*, %struct.bc_var_array** %a_dest, align 8
  %a_value41 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %47, i32 0, i32 0
  store %struct.bc_array* %46, %struct.bc_array** %a_value41, align 8
  br label %if.end.56

if.else.42:                                       ; preds = %land.lhs.true.20, %if.else
  %48 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %av_name43 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %48, i32 0, i32 0
  %49 = load i32, i32* %av_name43, align 4
  %cmp44 = icmp slt i32 %49, 0
  br i1 %cmp44, label %if.then.46, label %if.else.51

if.then.46:                                       ; preds = %if.else.42
  %50 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %av_name47 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %50, i32 0, i32 0
  %51 = load i32, i32* %av_name47, align 4
  %sub48 = sub nsw i32 0, %51
  %idxprom49 = sext i32 %sub48 to i64
  %52 = load i8**, i8*** @a_names, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %52, i64 %idxprom49
  %53 = load i8*, i8** %arrayidx50, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0), i8* %53)
  br label %if.end.55

if.else.51:                                       ; preds = %if.else.42
  %54 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %av_name52 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %54, i32 0, i32 0
  %55 = load i32, i32* %av_name52, align 4
  %idxprom53 = sext i32 %55 to i64
  %56 = load i8**, i8*** @v_names, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %56, i64 %idxprom53
  %57 = load i8*, i8** %arrayidx54, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0), i8* %57)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.51, %if.then.46
  %58 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %incdec.ptr = getelementptr inbounds %struct.arg_list, %struct.arg_list* %58, i32 1
  store %struct.arg_list* %incdec.ptr, %struct.arg_list** %params, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.9
  call void @pop()
  br label %if.end.61

if.else.58:                                       ; preds = %while.body
  %59 = load i8, i8* %warned, align 1
  %tobool = icmp ne i8 %59, 0
  br i1 %tobool, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.else.58
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0))
  store i8 1, i8* %warned, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.else.58
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.57
  %60 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %next = getelementptr inbounds %struct.arg_list, %struct.arg_list* %60, i32 0, i32 1
  %61 = load %struct.arg_list*, %struct.arg_list** %next, align 8
  store %struct.arg_list* %61, %struct.arg_list** %params, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load %struct.arg_list*, %struct.arg_list** %params, align 8
  %cmp62 = icmp ne %struct.arg_list* %62, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %while.end
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %while.end
  ret void
}

declare zeroext i8 @byte(%struct.program_counter*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
