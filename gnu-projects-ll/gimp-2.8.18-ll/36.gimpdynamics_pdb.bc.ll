; ModuleID = './libgimp/gimpdynamics_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [22 x i8] c"gimp-dynamics-refresh\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gimp-dynamics-get-list\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_dynamics_refresh() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %1, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %3 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %2, i32 %3)
  %4 = load i32, i32* %success, align 4
  ret i32 %4
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i8** @gimp_dynamics_get_list(i8* %filter, i32* %num_dynamics) #0 {
entry:
  %filter.addr = alloca i8*, align 8
  %num_dynamics.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %dynamics_list = alloca i8**, align 8
  %i = alloca i32, align 4
  store i8* %filter, i8** %filter.addr, align 8
  store i32* %num_dynamics, i32** %num_dynamics.addr, align 8
  store i8** null, i8*** %dynamics_list, align 8
  %0 = load i8*, i8** %filter.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_dynamics.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  %6 = load i32*, i32** %num_dynamics.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_dynamics.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %9 = bitcast i8* %call3 to i8**
  store i8** %9, i8*** %dynamics_list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %11 = load i32*, i32** %num_dynamics.addr, align 8
  %12 = load i32, i32* %11, align 4
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data7 to i8***
  %15 = load i8**, i8*** %d_stringarray, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx8, align 8
  %call9 = call noalias i8* @g_strdup(i8* %16)
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i8**, i8*** %dynamics_list, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %18, i64 %idxprom10
  store i8* %call9, i8** %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %20 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %21 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %20, i32 %21)
  %22 = load i8**, i8*** %dynamics_list, align 8
  ret i8** %22
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @g_strdup(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}