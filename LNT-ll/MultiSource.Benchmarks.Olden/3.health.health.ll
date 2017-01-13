; ModuleID = './MultiSource.Benchmarks.Olden/3.health.health.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Village = type { [4 x %struct.Village*], %struct.Village*, %struct.List, %struct.Hosp, i32, i64 }
%struct.List = type { %struct.List*, %struct.Patient*, %struct.List* }
%struct.Patient = type { i32, i32, i32, %struct.Village* }
%struct.Hosp = type { i32, i32, i32, %struct.List, %struct.List, %struct.List, %struct.List }
%struct.Results = type { float, float, float }

@seed = common global i64 0, align 8
@max_level = common global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"\0A\0A    Columbian Health Care Simulator\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Working...\0A\00", align 1
@max_time = common global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Getting Results\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Done.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"# of people treated:              %f people\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Average length of stay:           %0.2f time units\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Average # of hospitals visited:   %f hospitals\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Village* @alloc_tree(i32 %level, i32 %label, %struct.Village* %back) #0 {
entry:
  %retval = alloca %struct.Village*, align 8
  %level.addr = alloca i32, align 4
  %label.addr = alloca i32, align 4
  %back.addr = alloca %struct.Village*, align 8
  %new = alloca %struct.Village*, align 8
  %i = alloca i32, align 4
  %fval = alloca [4 x %struct.Village*], align 16
  store i32 %level, i32* %level.addr, align 4
  store i32 %label, i32* %label.addr, align 4
  store %struct.Village* %back, %struct.Village** %back.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.Village* null, %struct.Village** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 192) #2
  %1 = bitcast i8* %call to %struct.Village*
  store %struct.Village* %1, %struct.Village** %new, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp sge i32 %2, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %3, 1
  %4 = load i32, i32* %label.addr, align 4
  %mul = mul nsw i32 %4, 4
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %5
  %add2 = add nsw i32 %add, 1
  %6 = load %struct.Village*, %struct.Village** %new, align 8
  %call3 = call %struct.Village* @alloc_tree(i32 %sub, i32 %add2, %struct.Village* %6)
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %fval, i32 0, i64 %idxprom
  store %struct.Village* %call3, %struct.Village** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.Village*, %struct.Village** %back.addr, align 8
  %10 = load %struct.Village*, %struct.Village** %new, align 8
  %back4 = getelementptr inbounds %struct.Village, %struct.Village* %10, i32 0, i32 1
  store %struct.Village* %9, %struct.Village** %back4, align 8
  %11 = load i32, i32* %label.addr, align 4
  %12 = load %struct.Village*, %struct.Village** %new, align 8
  %label5 = getelementptr inbounds %struct.Village, %struct.Village* %12, i32 0, i32 4
  store i32 %11, i32* %label5, align 4
  %13 = load i32, i32* %label.addr, align 4
  %conv = sext i32 %13 to i64
  %14 = load i64, i64* @seed, align 8
  %add6 = add nsw i64 127773, %14
  %mul7 = mul nsw i64 %conv, %add6
  %15 = load %struct.Village*, %struct.Village** %new, align 8
  %seed = getelementptr inbounds %struct.Village, %struct.Village* %15, i32 0, i32 5
  store i64 %mul7, i64* %seed, align 8
  %16 = load i32, i32* %level.addr, align 4
  %sub8 = sub nsw i32 %16, 1
  %conv9 = sitofp i32 %sub8 to double
  %call10 = call double @pow(double 2.000000e+00, double %conv9) #2
  %conv11 = fptosi double %call10 to i32
  %17 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp = getelementptr inbounds %struct.Village, %struct.Village* %17, i32 0, i32 3
  %personnel = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp, i32 0, i32 0
  store i32 %conv11, i32* %personnel, align 4
  %18 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp12 = getelementptr inbounds %struct.Village, %struct.Village* %18, i32 0, i32 3
  %personnel13 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp12, i32 0, i32 0
  %19 = load i32, i32* %personnel13, align 4
  %20 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp14 = getelementptr inbounds %struct.Village, %struct.Village* %20, i32 0, i32 3
  %free_personnel = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp14, i32 0, i32 1
  store i32 %19, i32* %free_personnel, align 4
  %21 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp15 = getelementptr inbounds %struct.Village, %struct.Village* %21, i32 0, i32 3
  %num_waiting_patients = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp15, i32 0, i32 2
  store i32 0, i32* %num_waiting_patients, align 4
  %22 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp16 = getelementptr inbounds %struct.Village, %struct.Village* %22, i32 0, i32 3
  %assess = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp16, i32 0, i32 4
  %forward = getelementptr inbounds %struct.List, %struct.List* %assess, i32 0, i32 0
  store %struct.List* null, %struct.List** %forward, align 8
  %23 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp17 = getelementptr inbounds %struct.Village, %struct.Village* %23, i32 0, i32 3
  %assess18 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp17, i32 0, i32 4
  %back19 = getelementptr inbounds %struct.List, %struct.List* %assess18, i32 0, i32 2
  store %struct.List* null, %struct.List** %back19, align 8
  %24 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp20 = getelementptr inbounds %struct.Village, %struct.Village* %24, i32 0, i32 3
  %assess21 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp20, i32 0, i32 4
  %patient = getelementptr inbounds %struct.List, %struct.List* %assess21, i32 0, i32 1
  store %struct.Patient* null, %struct.Patient** %patient, align 8
  %25 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp22 = getelementptr inbounds %struct.Village, %struct.Village* %25, i32 0, i32 3
  %waiting = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp22, i32 0, i32 3
  %forward23 = getelementptr inbounds %struct.List, %struct.List* %waiting, i32 0, i32 0
  store %struct.List* null, %struct.List** %forward23, align 8
  %26 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp24 = getelementptr inbounds %struct.Village, %struct.Village* %26, i32 0, i32 3
  %waiting25 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp24, i32 0, i32 3
  %back26 = getelementptr inbounds %struct.List, %struct.List* %waiting25, i32 0, i32 2
  store %struct.List* null, %struct.List** %back26, align 8
  %27 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp27 = getelementptr inbounds %struct.Village, %struct.Village* %27, i32 0, i32 3
  %waiting28 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp27, i32 0, i32 3
  %patient29 = getelementptr inbounds %struct.List, %struct.List* %waiting28, i32 0, i32 1
  store %struct.Patient* null, %struct.Patient** %patient29, align 8
  %28 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp30 = getelementptr inbounds %struct.Village, %struct.Village* %28, i32 0, i32 3
  %inside = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp30, i32 0, i32 5
  %forward31 = getelementptr inbounds %struct.List, %struct.List* %inside, i32 0, i32 0
  store %struct.List* null, %struct.List** %forward31, align 8
  %29 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp32 = getelementptr inbounds %struct.Village, %struct.Village* %29, i32 0, i32 3
  %inside33 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp32, i32 0, i32 5
  %back34 = getelementptr inbounds %struct.List, %struct.List* %inside33, i32 0, i32 2
  store %struct.List* null, %struct.List** %back34, align 8
  %30 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp35 = getelementptr inbounds %struct.Village, %struct.Village* %30, i32 0, i32 3
  %inside36 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp35, i32 0, i32 5
  %patient37 = getelementptr inbounds %struct.List, %struct.List* %inside36, i32 0, i32 1
  store %struct.Patient* null, %struct.Patient** %patient37, align 8
  %31 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp38 = getelementptr inbounds %struct.Village, %struct.Village* %31, i32 0, i32 3
  %up = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp38, i32 0, i32 6
  %forward39 = getelementptr inbounds %struct.List, %struct.List* %up, i32 0, i32 0
  store %struct.List* null, %struct.List** %forward39, align 8
  %32 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp40 = getelementptr inbounds %struct.Village, %struct.Village* %32, i32 0, i32 3
  %up41 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp40, i32 0, i32 6
  %back42 = getelementptr inbounds %struct.List, %struct.List* %up41, i32 0, i32 2
  store %struct.List* null, %struct.List** %back42, align 8
  %33 = load %struct.Village*, %struct.Village** %new, align 8
  %hosp43 = getelementptr inbounds %struct.Village, %struct.Village* %33, i32 0, i32 3
  %up44 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp43, i32 0, i32 6
  %patient45 = getelementptr inbounds %struct.List, %struct.List* %up44, i32 0, i32 1
  store %struct.Patient* null, %struct.Patient** %patient45, align 8
  %34 = load %struct.Village*, %struct.Village** %new, align 8
  %returned = getelementptr inbounds %struct.Village, %struct.Village* %34, i32 0, i32 2
  %back46 = getelementptr inbounds %struct.List, %struct.List* %returned, i32 0, i32 2
  store %struct.List* null, %struct.List** %back46, align 8
  %35 = load %struct.Village*, %struct.Village** %new, align 8
  %returned47 = getelementptr inbounds %struct.Village, %struct.Village* %35, i32 0, i32 2
  %forward48 = getelementptr inbounds %struct.List, %struct.List* %returned47, i32 0, i32 0
  store %struct.List* null, %struct.List** %forward48, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.58, %for.end
  %36 = load i32, i32* %i, align 4
  %cmp50 = icmp slt i32 %36, 4
  br i1 %cmp50, label %for.body.52, label %for.end.59

for.body.52:                                      ; preds = %for.cond.49
  %37 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %fval, i32 0, i64 %idxprom53
  %38 = load %struct.Village*, %struct.Village** %arrayidx54, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %39 to i64
  %40 = load %struct.Village*, %struct.Village** %new, align 8
  %forward56 = getelementptr inbounds %struct.Village, %struct.Village* %40, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %forward56, i32 0, i64 %idxprom55
  store %struct.Village* %38, %struct.Village** %arrayidx57, align 8
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.52
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.49

for.end.59:                                       ; preds = %for.cond.49
  %42 = load %struct.Village*, %struct.Village** %new, align 8
  store %struct.Village* %42, %struct.Village** %retval
  br label %return

return:                                           ; preds = %for.end.59, %if.then
  %43 = load %struct.Village*, %struct.Village** %retval
  ret %struct.Village* %43
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @get_results(%struct.Village* %village) #0 {
entry:
  %retval = alloca %struct.Results, align 4
  %village.addr = alloca %struct.Village*, align 8
  %i = alloca i32, align 4
  %list = alloca %struct.List*, align 8
  %p = alloca %struct.Patient*, align 8
  %fval = alloca [4 x %struct.Results], align 16
  %r1 = alloca %struct.Results, align 4
  %V = alloca %struct.Village*, align 8
  %coerce = alloca %struct.Results, align 4
  %tmp = alloca { <2 x float>, float }, align 4
  %coerce8 = alloca %struct.Results, align 4
  %tmp9 = alloca { <2 x float>, float }, align 4
  %tmp42 = alloca { <2 x float>, float }, align 4
  store %struct.Village* %village, %struct.Village** %village.addr, align 8
  %total_hosps = getelementptr inbounds %struct.Results, %struct.Results* %r1, i32 0, i32 2
  store float 0.000000e+00, float* %total_hosps, align 4
  %total_patients = getelementptr inbounds %struct.Results, %struct.Results* %r1, i32 0, i32 0
  store float 0.000000e+00, float* %total_patients, align 4
  %total_time = getelementptr inbounds %struct.Results, %struct.Results* %r1, i32 0, i32 1
  store float 0.000000e+00, float* %total_time, align 4
  %0 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %cmp = icmp eq %struct.Village* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.Results* %retval to i8*
  %2 = bitcast %struct.Results* %r1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 12, i32 4, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %forward = getelementptr inbounds %struct.Village, %struct.Village* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %forward, i32 0, i64 %idxprom
  %6 = load %struct.Village*, %struct.Village** %arrayidx, align 8
  store %struct.Village* %6, %struct.Village** %V, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %fval, i32 0, i64 %idxprom2
  %8 = load %struct.Village*, %struct.Village** %V, align 8
  %call = call { <2 x float>, float } @get_results(%struct.Village* %8)
  store { <2 x float>, float } %call, { <2 x float>, float }* %tmp, align 4
  %9 = bitcast { <2 x float>, float }* %tmp to i8*
  %10 = bitcast %struct.Results* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %9, i64 12, i32 4, i1 false)
  %11 = bitcast %struct.Results* %arrayidx3 to i8*
  %12 = bitcast %struct.Results* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 12, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %fval, i32 0, i64 0
  %14 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %forward5 = getelementptr inbounds %struct.Village, %struct.Village* %14, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %forward5, i32 0, i64 0
  %15 = load %struct.Village*, %struct.Village** %arrayidx6, align 8
  %call7 = call { <2 x float>, float } @get_results(%struct.Village* %15)
  store { <2 x float>, float } %call7, { <2 x float>, float }* %tmp9, align 4
  %16 = bitcast { <2 x float>, float }* %tmp9 to i8*
  %17 = bitcast %struct.Results* %coerce8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %16, i64 12, i32 4, i1 false)
  %18 = bitcast %struct.Results* %arrayidx4 to i8*
  %19 = bitcast %struct.Results* %coerce8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 12, i32 4, i1 false)
  store i32 3, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.27, %for.end
  %20 = load i32, i32* %i, align 4
  %cmp11 = icmp sge i32 %20, 0
  br i1 %cmp11, label %for.body.12, label %for.end.29

for.body.12:                                      ; preds = %for.cond.10
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %fval, i32 0, i64 %idxprom13
  %total_hosps15 = getelementptr inbounds %struct.Results, %struct.Results* %arrayidx14, i32 0, i32 2
  %22 = load float, float* %total_hosps15, align 4
  %total_hosps16 = getelementptr inbounds %struct.Results, %struct.Results* %r1, i32 0, i32 2
  %23 = load float, float* %total_hosps16, align 4
  %add = fadd float %23, %22
  store float %add, float* %total_hosps16, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %fval, i32 0, i64 %idxprom17
  %total_patients19 = getelementptr inbounds %struct.Results, %struct.Results* %arrayidx18, i32 0, i32 0
  %25 = load float, float* %total_patients19, align 4
  %total_patients20 = getelementptr inbounds %struct.Results, %struct.Results* %r1, i32 0, i32 0
  %26 = load float, float* %total_patients20, align 4
  %add21 = fadd float %26, %25
  store float %add21, float* %total_patients20, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %fval, i32 0, i64 %idxprom22
  %total_time24 = getelementptr inbounds %struct.Results, %struct.Results* %arrayidx23, i32 0, i32 1
  %28 = load float, float* %total_time24, align 4
  %total_time25 = getelementptr inbounds %struct.Results, %struct.Results* %r1, i32 0, i32 1
  %29 = load float, float* %total_time25, align 4
  %add26 = fadd float %29, %28
  store float %add26, float* %total_time25, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.12
  %30 = load i32, i32* %i, align 4
  %dec28 = add nsw i32 %30, -1
  store i32 %dec28, i32* %i, align 4
  br label %for.cond.10

for.end.29:                                       ; preds = %for.cond.10
  %31 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %returned = getelementptr inbounds %struct.Village, %struct.Village* %31, i32 0, i32 2
  %forward30 = getelementptr inbounds %struct.List, %struct.List* %returned, i32 0, i32 0
  %32 = load %struct.List*, %struct.List** %forward30, align 8
  store %struct.List* %32, %struct.List** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.29
  %33 = load %struct.List*, %struct.List** %list, align 8
  %cmp31 = icmp ne %struct.List* %33, null
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load %struct.List*, %struct.List** %list, align 8
  %patient = getelementptr inbounds %struct.List, %struct.List* %34, i32 0, i32 1
  %35 = load %struct.Patient*, %struct.Patient** %patient, align 8
  store %struct.Patient* %35, %struct.Patient** %p, align 8
  %36 = load %struct.Patient*, %struct.Patient** %p, align 8
  %hosps_visited = getelementptr inbounds %struct.Patient, %struct.Patient* %36, i32 0, i32 0
  %37 = load i32, i32* %hosps_visited, align 4
  %conv = sitofp i32 %37 to float
  %total_hosps32 = getelementptr inbounds %struct.Results, %struct.Results* %r1, i32 0, i32 2
  %38 = load float, float* %total_hosps32, align 4
  %add33 = fadd float %38, %conv
  store float %add33, float* %total_hosps32, align 4
  %39 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time = getelementptr inbounds %struct.Patient, %struct.Patient* %39, i32 0, i32 1
  %40 = load i32, i32* %time, align 4
  %conv34 = sitofp i32 %40 to float
  %total_time35 = getelementptr inbounds %struct.Results, %struct.Results* %r1, i32 0, i32 1
  %41 = load float, float* %total_time35, align 4
  %add36 = fadd float %41, %conv34
  store float %add36, float* %total_time35, align 4
  %total_patients37 = getelementptr inbounds %struct.Results, %struct.Results* %r1, i32 0, i32 0
  %42 = load float, float* %total_patients37, align 4
  %conv38 = fpext float %42 to double
  %add39 = fadd double %conv38, 1.000000e+00
  %conv40 = fptrunc double %add39 to float
  store float %conv40, float* %total_patients37, align 4
  %43 = load %struct.List*, %struct.List** %list, align 8
  %forward41 = getelementptr inbounds %struct.List, %struct.List* %43, i32 0, i32 0
  %44 = load %struct.List*, %struct.List** %forward41, align 8
  store %struct.List* %44, %struct.List** %list, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = bitcast %struct.Results* %retval to i8*
  %46 = bitcast %struct.Results* %r1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 12, i32 4, i1 false)
  br label %return

return:                                           ; preds = %while.end, %if.then
  %47 = bitcast { <2 x float>, float }* %tmp42 to i8*
  %48 = bitcast %struct.Results* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 12, i32 4, i1 false)
  %49 = load { <2 x float>, float }, { <2 x float>, float }* %tmp42, align 4
  ret { <2 x float>, float } %49
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @check_patients_inside(%struct.Village* %village, %struct.List* %list) #0 {
entry:
  %village.addr = alloca %struct.Village*, align 8
  %list.addr = alloca %struct.List*, align 8
  %l = alloca %struct.List*, align 8
  %p = alloca %struct.Patient*, align 8
  %t = alloca i32, align 4
  store %struct.Village* %village, %struct.Village** %village.addr, align 8
  store %struct.List* %list, %struct.List** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.List*, %struct.List** %list.addr, align 8
  %cmp = icmp ne %struct.List* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.List*, %struct.List** %list.addr, align 8
  %patient = getelementptr inbounds %struct.List, %struct.List* %1, i32 0, i32 1
  %2 = load %struct.Patient*, %struct.Patient** %patient, align 8
  store %struct.Patient* %2, %struct.Patient** %p, align 8
  %3 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time_left = getelementptr inbounds %struct.Patient, %struct.Patient* %3, i32 0, i32 2
  %4 = load i32, i32* %time_left, align 4
  store i32 %4, i32* %t, align 4
  %5 = load i32, i32* %t, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time_left1 = getelementptr inbounds %struct.Patient, %struct.Patient* %6, i32 0, i32 2
  store i32 %sub, i32* %time_left1, align 4
  %7 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time_left2 = getelementptr inbounds %struct.Patient, %struct.Patient* %7, i32 0, i32 2
  %8 = load i32, i32* %time_left2, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp = getelementptr inbounds %struct.Village, %struct.Village* %9, i32 0, i32 3
  %free_personnel = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp, i32 0, i32 1
  %10 = load i32, i32* %free_personnel, align 4
  store i32 %10, i32* %t, align 4
  %11 = load i32, i32* %t, align 4
  %add = add nsw i32 %11, 1
  %12 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp4 = getelementptr inbounds %struct.Village, %struct.Village* %12, i32 0, i32 3
  %free_personnel5 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp4, i32 0, i32 1
  store i32 %add, i32* %free_personnel5, align 4
  %13 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp6 = getelementptr inbounds %struct.Village, %struct.Village* %13, i32 0, i32 3
  %inside = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp6, i32 0, i32 5
  store %struct.List* %inside, %struct.List** %l, align 8
  %14 = load %struct.List*, %struct.List** %l, align 8
  %15 = load %struct.Patient*, %struct.Patient** %p, align 8
  call void @removeList(%struct.List* %14, %struct.Patient* %15)
  %16 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %returned = getelementptr inbounds %struct.Village, %struct.Village* %16, i32 0, i32 2
  store %struct.List* %returned, %struct.List** %l, align 8
  %17 = load %struct.List*, %struct.List** %l, align 8
  %18 = load %struct.Patient*, %struct.Patient** %p, align 8
  call void @addList(%struct.List* %17, %struct.Patient* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load %struct.List*, %struct.List** %list.addr, align 8
  %forward = getelementptr inbounds %struct.List, %struct.List* %19, i32 0, i32 0
  %20 = load %struct.List*, %struct.List** %forward, align 8
  store %struct.List* %20, %struct.List** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @removeList(%struct.List*, %struct.Patient*) #3

declare void @addList(%struct.List*, %struct.Patient*) #3

; Function Attrs: nounwind uwtable
define %struct.List* @check_patients_assess(%struct.Village* %village, %struct.List* %list) #0 {
entry:
  %village.addr = alloca %struct.Village*, align 8
  %list.addr = alloca %struct.List*, align 8
  %rand = alloca float, align 4
  %p = alloca %struct.Patient*, align 8
  %up = alloca %struct.List*, align 8
  %s = alloca i64, align 8
  %label = alloca i32, align 4
  %t = alloca i32, align 4
  store %struct.Village* %village, %struct.Village** %village.addr, align 8
  store %struct.List* %list, %struct.List** %list.addr, align 8
  store %struct.List* null, %struct.List** %up, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %0 = load %struct.List*, %struct.List** %list.addr, align 8
  %cmp = icmp ne %struct.List* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.List*, %struct.List** %list.addr, align 8
  %patient = getelementptr inbounds %struct.List, %struct.List* %1, i32 0, i32 1
  %2 = load %struct.Patient*, %struct.Patient** %patient, align 8
  store %struct.Patient* %2, %struct.Patient** %p, align 8
  %3 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time_left = getelementptr inbounds %struct.Patient, %struct.Patient* %3, i32 0, i32 2
  %4 = load i32, i32* %time_left, align 4
  store i32 %4, i32* %t, align 4
  %5 = load i32, i32* %t, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time_left1 = getelementptr inbounds %struct.Patient, %struct.Patient* %6, i32 0, i32 2
  store i32 %sub, i32* %time_left1, align 4
  %7 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %label2 = getelementptr inbounds %struct.Village, %struct.Village* %7, i32 0, i32 4
  %8 = load i32, i32* %label2, align 4
  store i32 %8, i32* %label, align 4
  %9 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time_left3 = getelementptr inbounds %struct.Patient, %struct.Patient* %9, i32 0, i32 2
  %10 = load i32, i32* %time_left3, align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then, label %if.end.24

if.then:                                          ; preds = %while.body
  %11 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %seed = getelementptr inbounds %struct.Village, %struct.Village* %11, i32 0, i32 5
  %12 = load i64, i64* %seed, align 8
  store i64 %12, i64* %s, align 8
  %13 = load i64, i64* %s, align 8
  %call = call float @my_rand(i64 %13)
  store float %call, float* %rand, align 4
  %14 = load float, float* %rand, align 4
  %mul = fmul float %14, 0x41E0000000000000
  %conv = fptosi float %mul to i64
  %15 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %seed5 = getelementptr inbounds %struct.Village, %struct.Village* %15, i32 0, i32 5
  store i64 %conv, i64* %seed5, align 8
  %16 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %label6 = getelementptr inbounds %struct.Village, %struct.Village* %16, i32 0, i32 4
  %17 = load i32, i32* %label6, align 4
  store i32 %17, i32* %label, align 4
  %18 = load float, float* %rand, align 4
  %conv7 = fpext float %18 to double
  %cmp8 = fcmp ogt double %conv7, 1.000000e-01
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %19 = load i32, i32* %label, align 4
  %cmp10 = icmp eq i32 %19, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %if.then
  %20 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp = getelementptr inbounds %struct.Village, %struct.Village* %20, i32 0, i32 3
  %assess = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp, i32 0, i32 4
  %21 = load %struct.Patient*, %struct.Patient** %p, align 8
  call void @removeList(%struct.List* %assess, %struct.Patient* %21)
  %22 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp13 = getelementptr inbounds %struct.Village, %struct.Village* %22, i32 0, i32 3
  %inside = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp13, i32 0, i32 5
  %23 = load %struct.Patient*, %struct.Patient** %p, align 8
  call void @addList(%struct.List* %inside, %struct.Patient* %23)
  %24 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time_left14 = getelementptr inbounds %struct.Patient, %struct.Patient* %24, i32 0, i32 2
  store i32 10, i32* %time_left14, align 4
  %25 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time = getelementptr inbounds %struct.Patient, %struct.Patient* %25, i32 0, i32 1
  %26 = load i32, i32* %time, align 4
  store i32 %26, i32* %t, align 4
  %27 = load i32, i32* %t, align 4
  %add = add nsw i32 %27, 10
  %28 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time15 = getelementptr inbounds %struct.Patient, %struct.Patient* %28, i32 0, i32 1
  store i32 %add, i32* %time15, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %29 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp16 = getelementptr inbounds %struct.Village, %struct.Village* %29, i32 0, i32 3
  %free_personnel = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp16, i32 0, i32 1
  %30 = load i32, i32* %free_personnel, align 4
  store i32 %30, i32* %t, align 4
  %31 = load i32, i32* %t, align 4
  %add17 = add nsw i32 %31, 1
  %32 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp18 = getelementptr inbounds %struct.Village, %struct.Village* %32, i32 0, i32 3
  %free_personnel19 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp18, i32 0, i32 1
  store i32 %add17, i32* %free_personnel19, align 4
  %33 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp20 = getelementptr inbounds %struct.Village, %struct.Village* %33, i32 0, i32 3
  %assess21 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp20, i32 0, i32 4
  %34 = load %struct.Patient*, %struct.Patient** %p, align 8
  call void @removeList(%struct.List* %assess21, %struct.Patient* %34)
  %35 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp22 = getelementptr inbounds %struct.Village, %struct.Village* %35, i32 0, i32 3
  %up23 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp22, i32 0, i32 6
  store %struct.List* %up23, %struct.List** %up, align 8
  %36 = load %struct.List*, %struct.List** %up, align 8
  %37 = load %struct.Patient*, %struct.Patient** %p, align 8
  call void @addList(%struct.List* %36, %struct.Patient* %37)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %while.body
  %38 = load %struct.List*, %struct.List** %list.addr, align 8
  %forward = getelementptr inbounds %struct.List, %struct.List* %38, i32 0, i32 0
  %39 = load %struct.List*, %struct.List** %forward, align 8
  store %struct.List* %39, %struct.List** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct.List*, %struct.List** %up, align 8
  ret %struct.List* %40
}

declare float @my_rand(i64) #3

; Function Attrs: nounwind uwtable
define void @check_patients_waiting(%struct.Village* %village, %struct.List* %list) #0 {
entry:
  %village.addr = alloca %struct.Village*, align 8
  %list.addr = alloca %struct.List*, align 8
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %p = alloca %struct.Patient*, align 8
  store %struct.Village* %village, %struct.Village** %village.addr, align 8
  store %struct.List* %list, %struct.List** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.List*, %struct.List** %list.addr, align 8
  %cmp = icmp ne %struct.List* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp = getelementptr inbounds %struct.Village, %struct.Village* %1, i32 0, i32 3
  %free_personnel = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp, i32 0, i32 1
  %2 = load i32, i32* %free_personnel, align 4
  store i32 %2, i32* %i, align 4
  %3 = load %struct.List*, %struct.List** %list.addr, align 8
  %patient = getelementptr inbounds %struct.List, %struct.List* %3, i32 0, i32 1
  %4 = load %struct.Patient*, %struct.Patient** %patient, align 8
  store %struct.Patient* %4, %struct.Patient** %p, align 8
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp2 = getelementptr inbounds %struct.Village, %struct.Village* %6, i32 0, i32 3
  %free_personnel3 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp2, i32 0, i32 1
  %7 = load i32, i32* %free_personnel3, align 4
  store i32 %7, i32* %t, align 4
  %8 = load i32, i32* %t, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp4 = getelementptr inbounds %struct.Village, %struct.Village* %9, i32 0, i32 3
  %free_personnel5 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp4, i32 0, i32 1
  store i32 %sub, i32* %free_personnel5, align 4
  %10 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time_left = getelementptr inbounds %struct.Patient, %struct.Patient* %10, i32 0, i32 2
  store i32 3, i32* %time_left, align 4
  %11 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time = getelementptr inbounds %struct.Patient, %struct.Patient* %11, i32 0, i32 1
  %12 = load i32, i32* %time, align 4
  store i32 %12, i32* %t, align 4
  %13 = load i32, i32* %t, align 4
  %add = add nsw i32 %13, 3
  %14 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time6 = getelementptr inbounds %struct.Patient, %struct.Patient* %14, i32 0, i32 1
  store i32 %add, i32* %time6, align 4
  %15 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp7 = getelementptr inbounds %struct.Village, %struct.Village* %15, i32 0, i32 3
  %waiting = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp7, i32 0, i32 3
  %16 = load %struct.Patient*, %struct.Patient** %p, align 8
  call void @removeList(%struct.List* %waiting, %struct.Patient* %16)
  %17 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp8 = getelementptr inbounds %struct.Village, %struct.Village* %17, i32 0, i32 3
  %assess = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp8, i32 0, i32 4
  %18 = load %struct.Patient*, %struct.Patient** %p, align 8
  call void @addList(%struct.List* %assess, %struct.Patient* %18)
  br label %if.end

if.else:                                          ; preds = %while.body
  %19 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time9 = getelementptr inbounds %struct.Patient, %struct.Patient* %19, i32 0, i32 1
  %20 = load i32, i32* %time9, align 4
  store i32 %20, i32* %t, align 4
  %21 = load i32, i32* %t, align 4
  %add10 = add nsw i32 %21, 1
  %22 = load %struct.Patient*, %struct.Patient** %p, align 8
  %time11 = getelementptr inbounds %struct.Patient, %struct.Patient* %22, i32 0, i32 1
  store i32 %add10, i32* %time11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.List*, %struct.List** %list.addr, align 8
  %forward = getelementptr inbounds %struct.List, %struct.List* %23, i32 0, i32 0
  %24 = load %struct.List*, %struct.List** %forward, align 8
  store %struct.List* %24, %struct.List** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @put_in_hosp(%struct.Hosp* %hosp, %struct.Patient* %patient) #0 {
entry:
  %hosp.addr = alloca %struct.Hosp*, align 8
  %patient.addr = alloca %struct.Patient*, align 8
  %t = alloca i32, align 4
  store %struct.Hosp* %hosp, %struct.Hosp** %hosp.addr, align 8
  store %struct.Patient* %patient, %struct.Patient** %patient.addr, align 8
  %0 = load %struct.Patient*, %struct.Patient** %patient.addr, align 8
  %hosps_visited = getelementptr inbounds %struct.Patient, %struct.Patient* %0, i32 0, i32 0
  %1 = load i32, i32* %hosps_visited, align 4
  store i32 %1, i32* %t, align 4
  %2 = load i32, i32* %t, align 4
  %add = add nsw i32 %2, 1
  %3 = load %struct.Patient*, %struct.Patient** %patient.addr, align 8
  %hosps_visited1 = getelementptr inbounds %struct.Patient, %struct.Patient* %3, i32 0, i32 0
  store i32 %add, i32* %hosps_visited1, align 4
  %4 = load %struct.Hosp*, %struct.Hosp** %hosp.addr, align 8
  %free_personnel = getelementptr inbounds %struct.Hosp, %struct.Hosp* %4, i32 0, i32 1
  %5 = load i32, i32* %free_personnel, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.Hosp*, %struct.Hosp** %hosp.addr, align 8
  %free_personnel2 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %6, i32 0, i32 1
  %7 = load i32, i32* %free_personnel2, align 4
  store i32 %7, i32* %t, align 4
  %8 = load i32, i32* %t, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load %struct.Hosp*, %struct.Hosp** %hosp.addr, align 8
  %free_personnel3 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %9, i32 0, i32 1
  store i32 %sub, i32* %free_personnel3, align 4
  %10 = load %struct.Hosp*, %struct.Hosp** %hosp.addr, align 8
  %assess = getelementptr inbounds %struct.Hosp, %struct.Hosp* %10, i32 0, i32 4
  %11 = load %struct.Patient*, %struct.Patient** %patient.addr, align 8
  call void @addList(%struct.List* %assess, %struct.Patient* %11)
  %12 = load %struct.Patient*, %struct.Patient** %patient.addr, align 8
  %time_left = getelementptr inbounds %struct.Patient, %struct.Patient* %12, i32 0, i32 2
  store i32 3, i32* %time_left, align 4
  %13 = load %struct.Patient*, %struct.Patient** %patient.addr, align 8
  %time = getelementptr inbounds %struct.Patient, %struct.Patient* %13, i32 0, i32 1
  %14 = load i32, i32* %time, align 4
  store i32 %14, i32* %t, align 4
  %15 = load i32, i32* %t, align 4
  %add4 = add nsw i32 %15, 3
  %16 = load %struct.Patient*, %struct.Patient** %patient.addr, align 8
  %time5 = getelementptr inbounds %struct.Patient, %struct.Patient* %16, i32 0, i32 1
  store i32 %add4, i32* %time5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load %struct.Hosp*, %struct.Hosp** %hosp.addr, align 8
  %waiting = getelementptr inbounds %struct.Hosp, %struct.Hosp* %17, i32 0, i32 3
  %18 = load %struct.Patient*, %struct.Patient** %patient.addr, align 8
  call void @addList(%struct.List* %waiting, %struct.Patient* %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Patient* @generate_patient(%struct.Village* %village) #0 {
entry:
  %retval = alloca %struct.Patient*, align 8
  %village.addr = alloca %struct.Village*, align 8
  %s = alloca i64, align 8
  %newseed = alloca i64, align 8
  %patient = alloca %struct.Patient*, align 8
  %rand = alloca float, align 4
  %label = alloca i32, align 4
  store %struct.Village* %village, %struct.Village** %village.addr, align 8
  %0 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %seed = getelementptr inbounds %struct.Village, %struct.Village* %0, i32 0, i32 5
  %1 = load i64, i64* %seed, align 8
  store i64 %1, i64* %s, align 8
  %2 = load i64, i64* %s, align 8
  %call = call float @my_rand(i64 %2)
  store float %call, float* %rand, align 4
  %3 = load float, float* %rand, align 4
  %mul = fmul float %3, 0x41E0000000000000
  %conv = fptosi float %mul to i64
  %4 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %seed1 = getelementptr inbounds %struct.Village, %struct.Village* %4, i32 0, i32 5
  store i64 %conv, i64* %seed1, align 8
  %5 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %seed2 = getelementptr inbounds %struct.Village, %struct.Village* %5, i32 0, i32 5
  %6 = load i64, i64* %seed2, align 8
  store i64 %6, i64* %newseed, align 8
  %7 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %label3 = getelementptr inbounds %struct.Village, %struct.Village* %7, i32 0, i32 4
  %8 = load i32, i32* %label3, align 4
  store i32 %8, i32* %label, align 4
  %9 = load float, float* %rand, align 4
  %conv4 = fpext float %9 to double
  %cmp = fcmp ogt double %conv4, 6.660000e-01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = call noalias i8* @malloc(i64 24) #2
  %10 = bitcast i8* %call6 to %struct.Patient*
  store %struct.Patient* %10, %struct.Patient** %patient, align 8
  %11 = load %struct.Patient*, %struct.Patient** %patient, align 8
  %hosps_visited = getelementptr inbounds %struct.Patient, %struct.Patient* %11, i32 0, i32 0
  store i32 0, i32* %hosps_visited, align 4
  %12 = load %struct.Patient*, %struct.Patient** %patient, align 8
  %time = getelementptr inbounds %struct.Patient, %struct.Patient* %12, i32 0, i32 1
  store i32 0, i32* %time, align 4
  %13 = load %struct.Patient*, %struct.Patient** %patient, align 8
  %time_left = getelementptr inbounds %struct.Patient, %struct.Patient* %13, i32 0, i32 2
  store i32 0, i32* %time_left, align 4
  %14 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %15 = load %struct.Patient*, %struct.Patient** %patient, align 8
  %home_village = getelementptr inbounds %struct.Patient, %struct.Patient* %15, i32 0, i32 3
  store %struct.Village* %14, %struct.Village** %home_village, align 8
  %16 = load %struct.Patient*, %struct.Patient** %patient, align 8
  store %struct.Patient* %16, %struct.Patient** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct.Patient* null, %struct.Patient** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load %struct.Patient*, %struct.Patient** %retval
  ret %struct.Patient* %17
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %results = alloca %struct.Results, align 4
  %top = alloca %struct.Village*, align 8
  %i = alloca i32, align 4
  %total_time = alloca float, align 4
  %total_patients = alloca float, align 4
  %total_hosps = alloca float, align 4
  %coerce = alloca %struct.Results, align 4
  %tmp = alloca { <2 x float>, float }, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.Village* null, %struct.Village** %top, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @dealwithargs(i32 %0, i8** %1)
  %2 = load i32, i32* @max_level, align 4
  %3 = load %struct.Village*, %struct.Village** %top, align 8
  %call = call %struct.Village* @alloc_tree(i32 %2, i32 0, %struct.Village* %3)
  store %struct.Village* %call, %struct.Village** %top, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, i64* @max_time, align 8
  %cmp = icmp slt i64 %conv, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %rem = srem i32 %6, 50
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load %struct.Village*, %struct.Village** %top, align 8
  %call7 = call %struct.List* @sim(%struct.Village* %8)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  %10 = load %struct.Village*, %struct.Village** %top, align 8
  %call9 = call { <2 x float>, float } @get_results(%struct.Village* %10)
  store { <2 x float>, float } %call9, { <2 x float>, float }* %tmp, align 4
  %11 = bitcast { <2 x float>, float }* %tmp to i8*
  %12 = bitcast %struct.Results* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %11, i64 12, i32 4, i1 false)
  %13 = bitcast %struct.Results* %results to i8*
  %14 = bitcast %struct.Results* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 12, i32 4, i1 false)
  %total_patients10 = getelementptr inbounds %struct.Results, %struct.Results* %results, i32 0, i32 0
  %15 = load float, float* %total_patients10, align 4
  store float %15, float* %total_patients, align 4
  %total_time11 = getelementptr inbounds %struct.Results, %struct.Results* %results, i32 0, i32 1
  %16 = load float, float* %total_time11, align 4
  store float %16, float* %total_time, align 4
  %total_hosps12 = getelementptr inbounds %struct.Results, %struct.Results* %results, i32 0, i32 2
  %17 = load float, float* %total_hosps12, align 4
  store float %17, float* %total_hosps, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  %18 = load float, float* %total_patients, align 4
  %conv14 = fpext float %18 to double
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0), double %conv14)
  %19 = load float, float* %total_time, align 4
  %20 = load float, float* %total_patients, align 4
  %div = fdiv float %19, %20
  %conv16 = fpext float %div to double
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i32 0, i32 0), double %conv16)
  %21 = load float, float* %total_hosps, align 4
  %22 = load float, float* %total_patients, align 4
  %div18 = fdiv float %21, %22
  %conv19 = fpext float %div18 to double
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), double %conv19)
  ret i32 0
}

declare void @dealwithargs(i32, i8**) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct.List* @sim(%struct.Village* %village) #0 {
entry:
  %retval = alloca %struct.List*, align 8
  %village.addr = alloca %struct.Village*, align 8
  %i = alloca i32, align 4
  %patient = alloca %struct.Patient*, align 8
  %l = alloca %struct.List*, align 8
  %up = alloca %struct.List*, align 8
  %h = alloca %struct.Hosp*, align 8
  %val = alloca [4 x %struct.List*], align 16
  %label = alloca i32, align 4
  %V = alloca %struct.Village*, align 8
  %L = alloca %struct.List*, align 8
  %valI = alloca %struct.List*, align 8
  store %struct.Village* %village, %struct.Village** %village.addr, align 8
  %0 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %cmp = icmp eq %struct.Village* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.List* null, %struct.List** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %label1 = getelementptr inbounds %struct.Village, %struct.Village* %1, i32 0, i32 4
  %2 = load i32, i32* %label1, align 4
  store i32 %2, i32* %label, align 4
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %forward = getelementptr inbounds %struct.Village, %struct.Village* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %forward, i32 0, i64 %idxprom
  %6 = load %struct.Village*, %struct.Village** %arrayidx, align 8
  store %struct.Village* %6, %struct.Village** %V, align 8
  %7 = load %struct.Village*, %struct.Village** %V, align 8
  %call = call %struct.List* @sim(%struct.Village* %7)
  store %struct.List* %call, %struct.List** %L, align 8
  %8 = load %struct.List*, %struct.List** %L, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [4 x %struct.List*], [4 x %struct.List*]* %val, i32 0, i64 %idxprom3
  store %struct.List* %8, %struct.List** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %forward5 = getelementptr inbounds %struct.Village, %struct.Village* %11, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %forward5, i32 0, i64 0
  %12 = load %struct.Village*, %struct.Village** %arrayidx6, align 8
  %call7 = call %struct.List* @sim(%struct.Village* %12)
  %arrayidx8 = getelementptr inbounds [4 x %struct.List*], [4 x %struct.List*]* %val, i32 0, i64 0
  store %struct.List* %call7, %struct.List** %arrayidx8, align 8
  %13 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp = getelementptr inbounds %struct.Village, %struct.Village* %13, i32 0, i32 3
  store %struct.Hosp* %hosp, %struct.Hosp** %h, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.22, %for.end
  %14 = load i32, i32* %i, align 4
  %cmp10 = icmp sge i32 %14, 0
  br i1 %cmp10, label %for.body.11, label %for.end.24

for.body.11:                                      ; preds = %for.cond.9
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [4 x %struct.List*], [4 x %struct.List*]* %val, i32 0, i64 %idxprom12
  %16 = load %struct.List*, %struct.List** %arrayidx13, align 8
  store %struct.List* %16, %struct.List** %l, align 8
  store %struct.List* %16, %struct.List** %valI, align 8
  %17 = load %struct.List*, %struct.List** %l, align 8
  %cmp14 = icmp ne %struct.List* %17, null
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %for.body.11
  %18 = load %struct.List*, %struct.List** %l, align 8
  %forward16 = getelementptr inbounds %struct.List, %struct.List* %18, i32 0, i32 0
  %19 = load %struct.List*, %struct.List** %forward16, align 8
  store %struct.List* %19, %struct.List** %l, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.15
  %20 = load %struct.List*, %struct.List** %l, align 8
  %cmp17 = icmp ne %struct.List* %20, null
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct.Hosp*, %struct.Hosp** %h, align 8
  %22 = load %struct.List*, %struct.List** %l, align 8
  %patient18 = getelementptr inbounds %struct.List, %struct.List* %22, i32 0, i32 1
  %23 = load %struct.Patient*, %struct.Patient** %patient18, align 8
  call void @put_in_hosp(%struct.Hosp* %21, %struct.Patient* %23)
  %24 = load %struct.List*, %struct.List** %valI, align 8
  %25 = load %struct.List*, %struct.List** %l, align 8
  %patient19 = getelementptr inbounds %struct.List, %struct.List* %25, i32 0, i32 1
  %26 = load %struct.Patient*, %struct.Patient** %patient19, align 8
  call void @removeList(%struct.List* %24, %struct.Patient* %26)
  %27 = load %struct.List*, %struct.List** %l, align 8
  %forward20 = getelementptr inbounds %struct.List, %struct.List* %27, i32 0, i32 0
  %28 = load %struct.List*, %struct.List** %forward20, align 8
  store %struct.List* %28, %struct.List** %l, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %for.body.11
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %29 = load i32, i32* %i, align 4
  %dec23 = add nsw i32 %29, -1
  store i32 %dec23, i32* %i, align 4
  br label %for.cond.9

for.end.24:                                       ; preds = %for.cond.9
  %30 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %31 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp25 = getelementptr inbounds %struct.Village, %struct.Village* %31, i32 0, i32 3
  %inside = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp25, i32 0, i32 5
  %forward26 = getelementptr inbounds %struct.List, %struct.List* %inside, i32 0, i32 0
  %32 = load %struct.List*, %struct.List** %forward26, align 8
  call void @check_patients_inside(%struct.Village* %30, %struct.List* %32)
  %33 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %34 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp27 = getelementptr inbounds %struct.Village, %struct.Village* %34, i32 0, i32 3
  %assess = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp27, i32 0, i32 4
  %forward28 = getelementptr inbounds %struct.List, %struct.List* %assess, i32 0, i32 0
  %35 = load %struct.List*, %struct.List** %forward28, align 8
  %call29 = call %struct.List* @check_patients_assess(%struct.Village* %33, %struct.List* %35)
  store %struct.List* %call29, %struct.List** %up, align 8
  %36 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %37 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp30 = getelementptr inbounds %struct.Village, %struct.Village* %37, i32 0, i32 3
  %waiting = getelementptr inbounds %struct.Hosp, %struct.Hosp* %hosp30, i32 0, i32 3
  %forward31 = getelementptr inbounds %struct.List, %struct.List* %waiting, i32 0, i32 0
  %38 = load %struct.List*, %struct.List** %forward31, align 8
  call void @check_patients_waiting(%struct.Village* %36, %struct.List* %38)
  %39 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %call32 = call %struct.Patient* @generate_patient(%struct.Village* %39)
  store %struct.Patient* %call32, %struct.Patient** %patient, align 8
  %cmp33 = icmp ne %struct.Patient* %call32, null
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %for.end.24
  %40 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %label35 = getelementptr inbounds %struct.Village, %struct.Village* %40, i32 0, i32 4
  %41 = load i32, i32* %label35, align 4
  store i32 %41, i32* %label, align 4
  %42 = load %struct.Village*, %struct.Village** %village.addr, align 8
  %hosp36 = getelementptr inbounds %struct.Village, %struct.Village* %42, i32 0, i32 3
  %43 = load %struct.Patient*, %struct.Patient** %patient, align 8
  call void @put_in_hosp(%struct.Hosp* %hosp36, %struct.Patient* %43)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %for.end.24
  %44 = load %struct.List*, %struct.List** %up, align 8
  store %struct.List* %44, %struct.List** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then
  %45 = load %struct.List*, %struct.List** %retval
  ret %struct.List* %45
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
