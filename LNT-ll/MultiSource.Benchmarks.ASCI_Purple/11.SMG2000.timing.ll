; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/11.SMG2000.timing.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_TimingType = type { double*, double*, double*, i8**, i32*, i32*, i32, i32, double, double, double }

@hypre_global_timing = global %struct.hypre_TimingType* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"=============================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"  wall clock time = %f seconds\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"  cpu clock time  = %f seconds\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @hypre_InitializeTiming(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %time_index = alloca i32, align 4
  %old_wall_time = alloca double*, align 8
  %old_cpu_time = alloca double*, align 8
  %old_flops = alloca double*, align 8
  %old_name = alloca i8**, align 8
  %old_state = alloca i32*, align 8
  %old_num_regs = alloca i32*, align 8
  %new_name = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cmp = icmp eq %struct.hypre_TimingType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @hypre_CAlloc(i32 1, i32 80)
  %1 = bitcast i8* %call to %struct.hypre_TimingType*
  store %struct.hypre_TimingType* %1, %struct.hypre_TimingType** @hypre_global_timing, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* %new_name, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %size = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %3, i32 0, i32 7
  %4 = load i32, i32* %size, align 4
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %6, i32 0, i32 5
  %7 = load i32*, i32** %num_regs, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp sgt i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.14

if.then.3:                                        ; preds = %for.body
  %9 = load i8*, i8** %name.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name5 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %11, i32 0, i32 3
  %12 = load i8**, i8*** %name5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %12, i64 %idxprom4
  %13 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i32 @strcmp(i8* %9, i8* %13) #4
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.then.3
  store i32 0, i32* %new_name, align 4
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %time_index, align 4
  %15 = load i32, i32* %time_index, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs11 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %16, i32 0, i32 5
  %17 = load i32*, i32** %num_regs11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %17, i64 %idxprom10
  %18 = load i32, i32* %arrayidx12, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %arrayidx12, align 4
  br label %for.end

if.end.13:                                        ; preds = %if.then.3
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %19 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %19, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %20 = load i32, i32* %new_name, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.16, label %if.end.30

if.then.16:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.27, %if.then.16
  %21 = load i32, i32* %i, align 4
  %22 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %size18 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %22, i32 0, i32 7
  %23 = load i32, i32* %size18, align 4
  %cmp19 = icmp slt i32 %21, %23
  br i1 %cmp19, label %for.body.20, label %for.end.29

for.body.20:                                      ; preds = %for.cond.17
  %24 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs22 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %25, i32 0, i32 5
  %26 = load i32*, i32** %num_regs22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %26, i64 %idxprom21
  %27 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp eq i32 %27, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body.20
  br label %for.end.29

if.end.26:                                        ; preds = %for.body.20
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %28 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.17

for.end.29:                                       ; preds = %if.then.25, %for.cond.17
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* %time_index, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %for.end
  %30 = load i32, i32* %new_name, align 4
  %tobool31 = icmp ne i32 %30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.109

if.then.32:                                       ; preds = %if.end.30
  %31 = load i32, i32* %time_index, align 4
  %32 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %size33 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %32, i32 0, i32 7
  %33 = load i32, i32* %size33, align 4
  %cmp34 = icmp eq i32 %31, %33
  br i1 %cmp34, label %if.then.35, label %if.end.93

if.then.35:                                       ; preds = %if.then.32
  %34 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_time = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %34, i32 0, i32 0
  %35 = load double*, double** %wall_time, align 8
  store double* %35, double** %old_wall_time, align 8
  %36 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cpu_time = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %36, i32 0, i32 1
  %37 = load double*, double** %cpu_time, align 8
  store double* %37, double** %old_cpu_time, align 8
  %38 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %flops = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %38, i32 0, i32 2
  %39 = load double*, double** %flops, align 8
  store double* %39, double** %old_flops, align 8
  %40 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name36 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %40, i32 0, i32 3
  %41 = load i8**, i8*** %name36, align 8
  store i8** %41, i8*** %old_name, align 8
  %42 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %state = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %42, i32 0, i32 4
  %43 = load i32*, i32** %state, align 8
  store i32* %43, i32** %old_state, align 8
  %44 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs37 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %44, i32 0, i32 5
  %45 = load i32*, i32** %num_regs37, align 8
  store i32* %45, i32** %old_num_regs, align 8
  %46 = load i32, i32* %time_index, align 4
  %add = add nsw i32 %46, 1
  %call38 = call i8* @hypre_CAlloc(i32 %add, i32 8)
  %47 = bitcast i8* %call38 to double*
  %48 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_time39 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %48, i32 0, i32 0
  store double* %47, double** %wall_time39, align 8
  %49 = load i32, i32* %time_index, align 4
  %add40 = add nsw i32 %49, 1
  %call41 = call i8* @hypre_CAlloc(i32 %add40, i32 8)
  %50 = bitcast i8* %call41 to double*
  %51 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cpu_time42 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %51, i32 0, i32 1
  store double* %50, double** %cpu_time42, align 8
  %52 = load i32, i32* %time_index, align 4
  %add43 = add nsw i32 %52, 1
  %call44 = call i8* @hypre_CAlloc(i32 %add43, i32 8)
  %53 = bitcast i8* %call44 to double*
  %54 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %flops45 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %54, i32 0, i32 2
  store double* %53, double** %flops45, align 8
  %55 = load i32, i32* %time_index, align 4
  %add46 = add nsw i32 %55, 1
  %call47 = call i8* @hypre_CAlloc(i32 %add46, i32 8)
  %56 = bitcast i8* %call47 to i8**
  %57 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name48 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %57, i32 0, i32 3
  store i8** %56, i8*** %name48, align 8
  %58 = load i32, i32* %time_index, align 4
  %add49 = add nsw i32 %58, 1
  %call50 = call i8* @hypre_CAlloc(i32 %add49, i32 4)
  %59 = bitcast i8* %call50 to i32*
  %60 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %state51 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %60, i32 0, i32 4
  store i32* %59, i32** %state51, align 8
  %61 = load i32, i32* %time_index, align 4
  %add52 = add nsw i32 %61, 1
  %call53 = call i8* @hypre_CAlloc(i32 %add52, i32 4)
  %62 = bitcast i8* %call53 to i32*
  %63 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs54 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %63, i32 0, i32 5
  store i32* %62, i32** %num_regs54, align 8
  %64 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %size55 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %64, i32 0, i32 7
  %65 = load i32, i32* %size55, align 4
  %inc56 = add nsw i32 %65, 1
  store i32 %inc56, i32* %size55, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.90, %if.then.35
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %time_index, align 4
  %cmp58 = icmp slt i32 %66, %67
  br i1 %cmp58, label %for.body.59, label %for.end.92

for.body.59:                                      ; preds = %for.cond.57
  %68 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %68 to i64
  %69 = load double*, double** %old_wall_time, align 8
  %arrayidx61 = getelementptr inbounds double, double* %69, i64 %idxprom60
  %70 = load double, double* %arrayidx61, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %71 to i64
  %72 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_time63 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %72, i32 0, i32 0
  %73 = load double*, double** %wall_time63, align 8
  %arrayidx64 = getelementptr inbounds double, double* %73, i64 %idxprom62
  store double %70, double* %arrayidx64, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %74 to i64
  %75 = load double*, double** %old_cpu_time, align 8
  %arrayidx66 = getelementptr inbounds double, double* %75, i64 %idxprom65
  %76 = load double, double* %arrayidx66, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %77 to i64
  %78 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cpu_time68 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %78, i32 0, i32 1
  %79 = load double*, double** %cpu_time68, align 8
  %arrayidx69 = getelementptr inbounds double, double* %79, i64 %idxprom67
  store double %76, double* %arrayidx69, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %80 to i64
  %81 = load double*, double** %old_flops, align 8
  %arrayidx71 = getelementptr inbounds double, double* %81, i64 %idxprom70
  %82 = load double, double* %arrayidx71, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %83 to i64
  %84 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %flops73 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %84, i32 0, i32 2
  %85 = load double*, double** %flops73, align 8
  %arrayidx74 = getelementptr inbounds double, double* %85, i64 %idxprom72
  store double %82, double* %arrayidx74, align 8
  %86 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %86 to i64
  %87 = load i8**, i8*** %old_name, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %87, i64 %idxprom75
  %88 = load i8*, i8** %arrayidx76, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %89 to i64
  %90 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name78 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %90, i32 0, i32 3
  %91 = load i8**, i8*** %name78, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %91, i64 %idxprom77
  store i8* %88, i8** %arrayidx79, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %92 to i64
  %93 = load i32*, i32** %old_state, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %93, i64 %idxprom80
  %94 = load i32, i32* %arrayidx81, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %95 to i64
  %96 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %state83 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %96, i32 0, i32 4
  %97 = load i32*, i32** %state83, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %97, i64 %idxprom82
  store i32 %94, i32* %arrayidx84, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %98 to i64
  %99 = load i32*, i32** %old_num_regs, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %99, i64 %idxprom85
  %100 = load i32, i32* %arrayidx86, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %101 to i64
  %102 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs88 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %102, i32 0, i32 5
  %103 = load i32*, i32** %num_regs88, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %103, i64 %idxprom87
  store i32 %100, i32* %arrayidx89, align 4
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.59
  %104 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %104, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond.57

for.end.92:                                       ; preds = %for.cond.57
  %105 = load double*, double** %old_wall_time, align 8
  %106 = bitcast double* %105 to i8*
  call void @hypre_Free(i8* %106)
  store double* null, double** %old_wall_time, align 8
  %107 = load double*, double** %old_cpu_time, align 8
  %108 = bitcast double* %107 to i8*
  call void @hypre_Free(i8* %108)
  store double* null, double** %old_cpu_time, align 8
  %109 = load double*, double** %old_flops, align 8
  %110 = bitcast double* %109 to i8*
  call void @hypre_Free(i8* %110)
  store double* null, double** %old_flops, align 8
  %111 = load i8**, i8*** %old_name, align 8
  %112 = bitcast i8** %111 to i8*
  call void @hypre_Free(i8* %112)
  store i8** null, i8*** %old_name, align 8
  %113 = load i32*, i32** %old_state, align 8
  %114 = bitcast i32* %113 to i8*
  call void @hypre_Free(i8* %114)
  store i32* null, i32** %old_state, align 8
  %115 = load i32*, i32** %old_num_regs, align 8
  %116 = bitcast i32* %115 to i8*
  call void @hypre_Free(i8* %116)
  store i32* null, i32** %old_num_regs, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %for.end.92, %if.then.32
  %call94 = call i8* @hypre_CAlloc(i32 80, i32 1)
  %117 = load i32, i32* %time_index, align 4
  %idxprom95 = sext i32 %117 to i64
  %118 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name96 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %118, i32 0, i32 3
  %119 = load i8**, i8*** %name96, align 8
  %arrayidx97 = getelementptr inbounds i8*, i8** %119, i64 %idxprom95
  store i8* %call94, i8** %arrayidx97, align 8
  %120 = load i32, i32* %time_index, align 4
  %idxprom98 = sext i32 %120 to i64
  %121 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name99 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %121, i32 0, i32 3
  %122 = load i8**, i8*** %name99, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %122, i64 %idxprom98
  %123 = load i8*, i8** %arrayidx100, align 8
  %124 = load i8*, i8** %name.addr, align 8
  %call101 = call i8* @strncpy(i8* %123, i8* %124, i64 79) #5
  %125 = load i32, i32* %time_index, align 4
  %idxprom102 = sext i32 %125 to i64
  %126 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %state103 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %126, i32 0, i32 4
  %127 = load i32*, i32** %state103, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %127, i64 %idxprom102
  store i32 0, i32* %arrayidx104, align 4
  %128 = load i32, i32* %time_index, align 4
  %idxprom105 = sext i32 %128 to i64
  %129 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs106 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %129, i32 0, i32 5
  %130 = load i32*, i32** %num_regs106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %130, i64 %idxprom105
  store i32 1, i32* %arrayidx107, align 4
  %131 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_names = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %131, i32 0, i32 6
  %132 = load i32, i32* %num_names, align 4
  %inc108 = add nsw i32 %132, 1
  store i32 %inc108, i32* %num_names, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.93, %if.end.30
  %133 = load i32, i32* %time_index, align 4
  ret i32 %133
}

declare i8* @hypre_CAlloc(i32, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @hypre_Free(i8*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @hypre_FinalizeTiming(i32 %time_index) #0 {
entry:
  %retval = alloca i32, align 4
  %time_index.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %time_index, i32* %time_index.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cmp = icmp eq %struct.hypre_TimingType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ierr, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %time_index.addr, align 4
  %3 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %size = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %3, i32 0, i32 7
  %4 = load i32, i32* %size, align 4
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %if.then.2, label %if.end.21

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %time_index.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %6, i32 0, i32 5
  %7 = load i32*, i32** %num_regs, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp sgt i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.then.2
  %9 = load i32, i32* %time_index.addr, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs6 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %10, i32 0, i32 5
  %11 = load i32*, i32** %num_regs6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx7, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %arrayidx7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.then.2
  %13 = load i32, i32* %time_index.addr, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs10 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %14, i32 0, i32 5
  %15 = load i32*, i32** %num_regs10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  %16 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end.8
  %17 = load i32, i32* %time_index.addr, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %18, i32 0, i32 3
  %19 = load i8**, i8*** %name, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %19, i64 %idxprom14
  %20 = load i8*, i8** %arrayidx15, align 8
  call void @hypre_Free(i8* %20)
  %21 = load i32, i32* %time_index.addr, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name17 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %22, i32 0, i32 3
  %23 = load i8**, i8*** %name17, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %23, i64 %idxprom16
  store i8* null, i8** %arrayidx18, align 8
  %24 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_names = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %24, i32 0, i32 6
  %25 = load i32, i32* %num_names, align 4
  %dec19 = add nsw i32 %25, -1
  store i32 %dec19, i32* %num_names, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.13, %if.end.8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %26 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_names22 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %26, i32 0, i32 6
  %27 = load i32, i32* %num_names22, align 4
  %cmp23 = icmp eq i32 %27, 0
  br i1 %cmp23, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %if.end.21
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %size25 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %29, i32 0, i32 7
  %30 = load i32, i32* %size25, align 4
  %cmp26 = icmp slt i32 %28, %30
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_time = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %31, i32 0, i32 0
  %32 = load double*, double** %wall_time, align 8
  %33 = bitcast double* %32 to i8*
  call void @hypre_Free(i8* %33)
  %34 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_time27 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %34, i32 0, i32 0
  store double* null, double** %wall_time27, align 8
  %35 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cpu_time = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %35, i32 0, i32 1
  %36 = load double*, double** %cpu_time, align 8
  %37 = bitcast double* %36 to i8*
  call void @hypre_Free(i8* %37)
  %38 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cpu_time28 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %38, i32 0, i32 1
  store double* null, double** %cpu_time28, align 8
  %39 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %flops = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %39, i32 0, i32 2
  %40 = load double*, double** %flops, align 8
  %41 = bitcast double* %40 to i8*
  call void @hypre_Free(i8* %41)
  %42 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %flops29 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %42, i32 0, i32 2
  store double* null, double** %flops29, align 8
  %43 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name30 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %43, i32 0, i32 3
  %44 = load i8**, i8*** %name30, align 8
  %45 = bitcast i8** %44 to i8*
  call void @hypre_Free(i8* %45)
  %46 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name31 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %46, i32 0, i32 3
  store i8** null, i8*** %name31, align 8
  %47 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %state = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %47, i32 0, i32 4
  %48 = load i32*, i32** %state, align 8
  %49 = bitcast i32* %48 to i8*
  call void @hypre_Free(i8* %49)
  %50 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %state32 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %50, i32 0, i32 4
  store i32* null, i32** %state32, align 8
  %51 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs33 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %51, i32 0, i32 5
  %52 = load i32*, i32** %num_regs33, align 8
  %53 = bitcast i32* %52 to i8*
  call void @hypre_Free(i8* %53)
  %54 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs34 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %54, i32 0, i32 5
  store i32* null, i32** %num_regs34, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %57 = bitcast %struct.hypre_TimingType* %56 to i8*
  call void @hypre_Free(i8* %57)
  store %struct.hypre_TimingType* null, %struct.hypre_TimingType** @hypre_global_timing, align 8
  store %struct.hypre_TimingType* null, %struct.hypre_TimingType** @hypre_global_timing, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %for.end, %if.end.21
  %58 = load i32, i32* %ierr, align 4
  store i32 %58, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @hypre_IncFLOPCount(i32 %inc) #0 {
entry:
  %retval = alloca i32, align 4
  %inc.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i32 %inc, i32* %inc.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cmp = icmp eq %struct.hypre_TimingType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ierr, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %inc.addr, align 4
  %conv = sitofp i32 %2 to double
  %3 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %FLOP_count = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %3, i32 0, i32 10
  %4 = load double, double* %FLOP_count, align 8
  %add = fadd double %4, %conv
  store double %add, double* %FLOP_count, align 8
  %5 = load i32, i32* %ierr, align 4
  store i32 %5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_BeginTiming(i32 %time_index) #0 {
entry:
  %retval = alloca i32, align 4
  %time_index.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i32 %time_index, i32* %time_index.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cmp = icmp eq %struct.hypre_TimingType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ierr, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %time_index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %state = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %3, i32 0, i32 4
  %4 = load i32*, i32** %state, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.21

if.then.2:                                        ; preds = %if.end
  %call = call double @time_getWallclockSeconds()
  %6 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_count = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %6, i32 0, i32 8
  %7 = load double, double* %wall_count, align 8
  %add = fadd double %7, %call
  store double %add, double* %wall_count, align 8
  %call3 = call double @time_getCPUSeconds()
  %8 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %CPU_count = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %8, i32 0, i32 9
  %9 = load double, double* %CPU_count, align 8
  %add4 = fadd double %9, %call3
  store double %add4, double* %CPU_count, align 8
  %10 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_count5 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %10, i32 0, i32 8
  %11 = load double, double* %wall_count5, align 8
  %12 = load i32, i32* %time_index.addr, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_time = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %13, i32 0, i32 0
  %14 = load double*, double** %wall_time, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 %idxprom6
  %15 = load double, double* %arrayidx7, align 8
  %sub = fsub double %15, %11
  store double %sub, double* %arrayidx7, align 8
  %16 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %CPU_count8 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %16, i32 0, i32 9
  %17 = load double, double* %CPU_count8, align 8
  %18 = load i32, i32* %time_index.addr, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cpu_time = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %19, i32 0, i32 1
  %20 = load double*, double** %cpu_time, align 8
  %arrayidx10 = getelementptr inbounds double, double* %20, i64 %idxprom9
  %21 = load double, double* %arrayidx10, align 8
  %sub11 = fsub double %21, %17
  store double %sub11, double* %arrayidx10, align 8
  %22 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %FLOP_count = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %22, i32 0, i32 10
  %23 = load double, double* %FLOP_count, align 8
  %24 = load i32, i32* %time_index.addr, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %flops = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %25, i32 0, i32 2
  %26 = load double*, double** %flops, align 8
  %arrayidx13 = getelementptr inbounds double, double* %26, i64 %idxprom12
  %27 = load double, double* %arrayidx13, align 8
  %sub14 = fsub double %27, %23
  store double %sub14, double* %arrayidx13, align 8
  %call15 = call double @time_getWallclockSeconds()
  %28 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_count16 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %28, i32 0, i32 8
  %29 = load double, double* %wall_count16, align 8
  %sub17 = fsub double %29, %call15
  store double %sub17, double* %wall_count16, align 8
  %call18 = call double @time_getCPUSeconds()
  %30 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %CPU_count19 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %30, i32 0, i32 9
  %31 = load double, double* %CPU_count19, align 8
  %sub20 = fsub double %31, %call18
  store double %sub20, double* %CPU_count19, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.2, %if.end
  %32 = load i32, i32* %time_index.addr, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %state23 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %33, i32 0, i32 4
  %34 = load i32*, i32** %state23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %34, i64 %idxprom22
  %35 = load i32, i32* %arrayidx24, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %arrayidx24, align 4
  %36 = load i32, i32* %ierr, align 4
  store i32 %36, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare double @time_getWallclockSeconds() #1

declare double @time_getCPUSeconds() #1

; Function Attrs: nounwind uwtable
define i32 @hypre_EndTiming(i32 %time_index) #0 {
entry:
  %retval = alloca i32, align 4
  %time_index.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i32 %time_index, i32* %time_index.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cmp = icmp eq %struct.hypre_TimingType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ierr, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %time_index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %state = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %3, i32 0, i32 4
  %4 = load i32*, i32** %state, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %arrayidx, align 4
  %6 = load i32, i32* %time_index.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %state2 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %7, i32 0, i32 4
  %8 = load i32*, i32** %state2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %9 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %if.then.5, label %if.end.24

if.then.5:                                        ; preds = %if.end
  %call = call double @time_getWallclockSeconds()
  %10 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_count = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %10, i32 0, i32 8
  %11 = load double, double* %wall_count, align 8
  %add = fadd double %11, %call
  store double %add, double* %wall_count, align 8
  %call6 = call double @time_getCPUSeconds()
  %12 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %CPU_count = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %12, i32 0, i32 9
  %13 = load double, double* %CPU_count, align 8
  %add7 = fadd double %13, %call6
  store double %add7, double* %CPU_count, align 8
  %14 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_count8 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %14, i32 0, i32 8
  %15 = load double, double* %wall_count8, align 8
  %16 = load i32, i32* %time_index.addr, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_time = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %17, i32 0, i32 0
  %18 = load double*, double** %wall_time, align 8
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 %idxprom9
  %19 = load double, double* %arrayidx10, align 8
  %add11 = fadd double %19, %15
  store double %add11, double* %arrayidx10, align 8
  %20 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %CPU_count12 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %20, i32 0, i32 9
  %21 = load double, double* %CPU_count12, align 8
  %22 = load i32, i32* %time_index.addr, align 4
  %idxprom13 = sext i32 %22 to i64
  %23 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cpu_time = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %23, i32 0, i32 1
  %24 = load double*, double** %cpu_time, align 8
  %arrayidx14 = getelementptr inbounds double, double* %24, i64 %idxprom13
  %25 = load double, double* %arrayidx14, align 8
  %add15 = fadd double %25, %21
  store double %add15, double* %arrayidx14, align 8
  %26 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %FLOP_count = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %26, i32 0, i32 10
  %27 = load double, double* %FLOP_count, align 8
  %28 = load i32, i32* %time_index.addr, align 4
  %idxprom16 = sext i32 %28 to i64
  %29 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %flops = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %29, i32 0, i32 2
  %30 = load double*, double** %flops, align 8
  %arrayidx17 = getelementptr inbounds double, double* %30, i64 %idxprom16
  %31 = load double, double* %arrayidx17, align 8
  %add18 = fadd double %31, %27
  store double %add18, double* %arrayidx17, align 8
  %call19 = call double @time_getWallclockSeconds()
  %32 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_count20 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %32, i32 0, i32 8
  %33 = load double, double* %wall_count20, align 8
  %sub = fsub double %33, %call19
  store double %sub, double* %wall_count20, align 8
  %call21 = call double @time_getCPUSeconds()
  %34 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %CPU_count22 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %34, i32 0, i32 9
  %35 = load double, double* %CPU_count22, align 8
  %sub23 = fsub double %35, %call21
  store double %sub23, double* %CPU_count22, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.5, %if.end
  %36 = load i32, i32* %ierr, align 4
  store i32 %36, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @hypre_ClearTiming() #0 {
entry:
  %retval = alloca i32, align 4
  %ierr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cmp = icmp eq %struct.hypre_TimingType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ierr, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %size = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %3, i32 0, i32 7
  %4 = load i32, i32* %size, align 4
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_time = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %6, i32 0, i32 0
  %7 = load double*, double** %wall_time, align 8
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cpu_time = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %9, i32 0, i32 1
  %10 = load double*, double** %cpu_time, align 8
  %arrayidx3 = getelementptr inbounds double, double* %10, i64 %idxprom2
  store double 0.000000e+00, double* %arrayidx3, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %flops = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %12, i32 0, i32 2
  %13 = load double*, double** %flops, align 8
  %arrayidx5 = getelementptr inbounds double, double* %13, i64 %idxprom4
  store double 0.000000e+00, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %ierr, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PrintTiming(i8* %heading, i32 %comm) #0 {
entry:
  %retval = alloca i32, align 4
  %heading.addr = alloca i8*, align 8
  %comm.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  %local_wall_time = alloca double, align 8
  %local_cpu_time = alloca double, align 8
  %wall_time = alloca double, align 8
  %cpu_time = alloca double, align 8
  %wall_mflops = alloca double, align 8
  %cpu_mflops = alloca double, align 8
  %i = alloca i32, align 4
  %myrank = alloca i32, align 4
  store i8* %heading, i8** %heading.addr, align 8
  store i32 %comm, i32* %comm.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cmp = icmp eq %struct.hypre_TimingType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ierr, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %comm.addr, align 4
  %call = call i32 @hypre_MPI_Comm_rank(i32 %2, i32* %myrank)
  %3 = load i32, i32* %myrank, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0))
  %4 = load i8*, i8** %heading.addr, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %size = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %6, i32 0, i32 7
  %7 = load i32, i32* %size, align 4
  %cmp7 = icmp slt i32 %5, %7
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %num_regs = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %9, i32 0, i32 5
  %10 = load i32*, i32** %num_regs, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %cmp8 = icmp sgt i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.end.40

if.then.9:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %wall_time11 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %13, i32 0, i32 0
  %14 = load double*, double** %wall_time11, align 8
  %arrayidx12 = getelementptr inbounds double, double* %14, i64 %idxprom10
  %15 = load double, double* %arrayidx12, align 8
  store double %15, double* %local_wall_time, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %cpu_time14 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %17, i32 0, i32 1
  %18 = load double*, double** %cpu_time14, align 8
  %arrayidx15 = getelementptr inbounds double, double* %18, i64 %idxprom13
  %19 = load double, double* %arrayidx15, align 8
  store double %19, double* %local_cpu_time, align 8
  %20 = bitcast double* %local_wall_time to i8*
  %21 = bitcast double* %wall_time to i8*
  %22 = load i32, i32* %comm.addr, align 4
  %call16 = call i32 @hypre_MPI_Allreduce(i8* %20, i8* %21, i32 1, i32 0, i32 2, i32 %22)
  %23 = bitcast double* %local_cpu_time to i8*
  %24 = bitcast double* %cpu_time to i8*
  %25 = load i32, i32* %comm.addr, align 4
  %call17 = call i32 @hypre_MPI_Allreduce(i8* %23, i8* %24, i32 1, i32 0, i32 2, i32 %25)
  %26 = load i32, i32* %myrank, align 4
  %cmp18 = icmp eq i32 %26, 0
  br i1 %cmp18, label %if.then.19, label %if.end.39

if.then.19:                                       ; preds = %if.then.9
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %name = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %28, i32 0, i32 3
  %29 = load i8**, i8*** %name, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %29, i64 %idxprom20
  %30 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %30)
  %31 = load double, double* %wall_time, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), double %31)
  %32 = load double, double* %wall_time, align 8
  %tobool = fcmp une double %32, 0.000000e+00
  br i1 %tobool, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.19
  %33 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %flops = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %34, i32 0, i32 2
  %35 = load double*, double** %flops, align 8
  %arrayidx26 = getelementptr inbounds double, double* %35, i64 %idxprom25
  %36 = load double, double* %arrayidx26, align 8
  %37 = load double, double* %wall_time, align 8
  %div = fdiv double %36, %37
  %div27 = fdiv double %div, 1.000000e+06
  store double %div27, double* %wall_mflops, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.then.19
  store double 0.000000e+00, double* %wall_mflops, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.24
  %38 = load double, double* %cpu_time, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), double %38)
  %39 = load double, double* %cpu_time, align 8
  %tobool30 = fcmp une double %39, 0.000000e+00
  br i1 %tobool30, label %if.then.31, label %if.else.37

if.then.31:                                       ; preds = %if.end.28
  %40 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %40 to i64
  %41 = load %struct.hypre_TimingType*, %struct.hypre_TimingType** @hypre_global_timing, align 8
  %flops33 = getelementptr inbounds %struct.hypre_TimingType, %struct.hypre_TimingType* %41, i32 0, i32 2
  %42 = load double*, double** %flops33, align 8
  %arrayidx34 = getelementptr inbounds double, double* %42, i64 %idxprom32
  %43 = load double, double* %arrayidx34, align 8
  %44 = load double, double* %cpu_time, align 8
  %div35 = fdiv double %43, %44
  %div36 = fdiv double %div35, 1.000000e+06
  store double %div36, double* %cpu_mflops, align 8
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.28
  store double 0.000000e+00, double* %cpu_mflops, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.31
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.9
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %ierr, align 4
  store i32 %46, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i32 @hypre_MPI_Comm_rank(i32, i32*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @hypre_MPI_Allreduce(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
