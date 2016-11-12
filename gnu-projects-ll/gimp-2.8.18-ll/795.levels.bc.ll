; ModuleID = './app/base/levels.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Levels = type { [5 x double], [5 x i32], [5 x i32], [5 x i32], [5 x i32] }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.levels_init = private unnamed_addr constant [12 x i8] c"levels_init\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"levels != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @levels_init(%struct._Levels* %levels) #0 {
entry:
  %levels.addr = alloca %struct._Levels*, align 8
  %channel = alloca i32, align 4
  store %struct._Levels* %levels, %struct._Levels** %levels.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %cmp = icmp ne %struct._Levels* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.levels_init, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %channel, align 4
  %cmp1 = icmp ule i32 %1, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %gamma = getelementptr inbounds %struct._Levels, %struct._Levels* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom
  store double 1.000000e+00, double* %arrayidx, align 8
  %4 = load i32, i32* %channel, align 4
  %idxprom2 = zext i32 %4 to i64
  %5 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_input = getelementptr inbounds %struct._Levels, %struct._Levels* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [5 x i32], [5 x i32]* %low_input, i32 0, i64 %idxprom2
  store i32 0, i32* %arrayidx3, align 4
  %6 = load i32, i32* %channel, align 4
  %idxprom4 = zext i32 %6 to i64
  %7 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %high_input = getelementptr inbounds %struct._Levels, %struct._Levels* %7, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [5 x i32], [5 x i32]* %high_input, i32 0, i64 %idxprom4
  store i32 255, i32* %arrayidx5, align 4
  %8 = load i32, i32* %channel, align 4
  %idxprom6 = zext i32 %8 to i64
  %9 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_output = getelementptr inbounds %struct._Levels, %struct._Levels* %9, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output, i32 0, i64 %idxprom6
  store i32 0, i32* %arrayidx7, align 4
  %10 = load i32, i32* %channel, align 4
  %idxprom8 = zext i32 %10 to i64
  %11 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %high_output = getelementptr inbounds %struct._Levels, %struct._Levels* %11, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [5 x i32], [5 x i32]* %high_output, i32 0, i64 %idxprom8
  store i32 255, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %channel, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define float @levels_lut_func(%struct._Levels* %levels, i32 %n_channels, i32 %channel, float %value) #0 {
entry:
  %retval = alloca float, align 4
  %levels.addr = alloca %struct._Levels*, align 8
  %n_channels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  %inten = alloca double, align 8
  %j = alloca i32, align 4
  store %struct._Levels* %levels, %struct._Levels** %levels.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %n_channels.addr, align 4
  %cmp = icmp sle i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %channel.addr, align 4
  store i32 %1, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %channel.addr, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load float, float* %value.addr, align 4
  %conv = fpext float %3 to double
  store double %conv, double* %inten, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %j, align 4
  %cmp1 = icmp sge i32 %4, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %n_channels.addr, align 4
  %cmp5 = icmp eq i32 %6, 2
  br i1 %cmp5, label %land.lhs.true.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load i32, i32* %n_channels.addr, align 4
  %cmp7 = icmp eq i32 %7, 4
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.14

land.lhs.true.9:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load i32, i32* %channel.addr, align 4
  %9 = load i32, i32* %n_channels.addr, align 4
  %sub = sub nsw i32 %9, 1
  %cmp10 = icmp eq i32 %8, %sub
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true.9
  %10 = load double, double* %inten, align 8
  %conv13 = fptrunc double %10 to float
  store float %conv13, float* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.9, %lor.lhs.false, %for.body
  %11 = load i32, i32* %j, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %high_input = getelementptr inbounds %struct._Levels, %struct._Levels* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %high_input, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_input = getelementptr inbounds %struct._Levels, %struct._Levels* %15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [5 x i32], [5 x i32]* %low_input, i32 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp ne i32 %13, %16
  br i1 %cmp17, label %if.then.19, label %if.else.33

if.then.19:                                       ; preds = %if.end.14
  %17 = load double, double* %inten, align 8
  %mul = fmul double 2.550000e+02, %17
  %18 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_input21 = getelementptr inbounds %struct._Levels, %struct._Levels* %19, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [5 x i32], [5 x i32]* %low_input21, i32 0, i64 %idxprom20
  %20 = load i32, i32* %arrayidx22, align 4
  %conv23 = sitofp i32 %20 to double
  %sub24 = fsub double %mul, %conv23
  %21 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %high_input26 = getelementptr inbounds %struct._Levels, %struct._Levels* %22, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [5 x i32], [5 x i32]* %high_input26, i32 0, i64 %idxprom25
  %23 = load i32, i32* %arrayidx27, align 4
  %24 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_input29 = getelementptr inbounds %struct._Levels, %struct._Levels* %25, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [5 x i32], [5 x i32]* %low_input29, i32 0, i64 %idxprom28
  %26 = load i32, i32* %arrayidx30, align 4
  %sub31 = sub nsw i32 %23, %26
  %conv32 = sitofp i32 %sub31 to double
  %div = fdiv double %sub24, %conv32
  store double %div, double* %inten, align 8
  br label %if.end.40

if.else.33:                                       ; preds = %if.end.14
  %27 = load double, double* %inten, align 8
  %mul34 = fmul double 2.550000e+02, %27
  %28 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_input36 = getelementptr inbounds %struct._Levels, %struct._Levels* %29, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [5 x i32], [5 x i32]* %low_input36, i32 0, i64 %idxprom35
  %30 = load i32, i32* %arrayidx37, align 4
  %conv38 = sitofp i32 %30 to double
  %sub39 = fsub double %mul34, %conv38
  store double %sub39, double* %inten, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.33, %if.then.19
  %31 = load double, double* %inten, align 8
  %cmp41 = fcmp ogt double %31, 1.000000e+00
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  br label %cond.end.47

cond.false:                                       ; preds = %if.end.40
  %32 = load double, double* %inten, align 8
  %cmp43 = fcmp olt double %32, 0.000000e+00
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.false
  br label %cond.end

cond.false.46:                                    ; preds = %cond.false
  %33 = load double, double* %inten, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.46, %cond.true.45
  %cond = phi double [ 0.000000e+00, %cond.true.45 ], [ %33, %cond.false.46 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end, %cond.true
  %cond48 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond48, double* %inten, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %34 to i64
  %35 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %gamma = getelementptr inbounds %struct._Levels, %struct._Levels* %35, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom49
  %36 = load double, double* %arrayidx50, align 8
  %cmp51 = fcmp une double %36, 0.000000e+00
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %cond.end.47
  %37 = load double, double* %inten, align 8
  %38 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %38 to i64
  %39 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %gamma55 = getelementptr inbounds %struct._Levels, %struct._Levels* %39, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [5 x double], [5 x double]* %gamma55, i32 0, i64 %idxprom54
  %40 = load double, double* %arrayidx56, align 8
  %div57 = fdiv double 1.000000e+00, %40
  %call = call double @pow(double %37, double %div57) #3
  store double %call, double* %inten, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %cond.end.47
  %41 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %41 to i64
  %42 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %high_output = getelementptr inbounds %struct._Levels, %struct._Levels* %42, i32 0, i32 4
  %arrayidx60 = getelementptr inbounds [5 x i32], [5 x i32]* %high_output, i32 0, i64 %idxprom59
  %43 = load i32, i32* %arrayidx60, align 4
  %44 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %44 to i64
  %45 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_output = getelementptr inbounds %struct._Levels, %struct._Levels* %45, i32 0, i32 3
  %arrayidx62 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output, i32 0, i64 %idxprom61
  %46 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp sge i32 %43, %46
  br i1 %cmp63, label %if.then.65, label %if.else.80

if.then.65:                                       ; preds = %if.end.58
  %47 = load double, double* %inten, align 8
  %48 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %48 to i64
  %49 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %high_output67 = getelementptr inbounds %struct._Levels, %struct._Levels* %49, i32 0, i32 4
  %arrayidx68 = getelementptr inbounds [5 x i32], [5 x i32]* %high_output67, i32 0, i64 %idxprom66
  %50 = load i32, i32* %arrayidx68, align 4
  %51 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %51 to i64
  %52 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_output70 = getelementptr inbounds %struct._Levels, %struct._Levels* %52, i32 0, i32 3
  %arrayidx71 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output70, i32 0, i64 %idxprom69
  %53 = load i32, i32* %arrayidx71, align 4
  %sub72 = sub nsw i32 %50, %53
  %conv73 = sitofp i32 %sub72 to double
  %mul74 = fmul double %47, %conv73
  %54 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %54 to i64
  %55 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_output76 = getelementptr inbounds %struct._Levels, %struct._Levels* %55, i32 0, i32 3
  %arrayidx77 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output76, i32 0, i64 %idxprom75
  %56 = load i32, i32* %arrayidx77, align 4
  %conv78 = sitofp i32 %56 to double
  %add79 = fadd double %mul74, %conv78
  store double %add79, double* %inten, align 8
  br label %if.end.105

if.else.80:                                       ; preds = %if.end.58
  %57 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %57 to i64
  %58 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %high_output82 = getelementptr inbounds %struct._Levels, %struct._Levels* %58, i32 0, i32 4
  %arrayidx83 = getelementptr inbounds [5 x i32], [5 x i32]* %high_output82, i32 0, i64 %idxprom81
  %59 = load i32, i32* %arrayidx83, align 4
  %60 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %60 to i64
  %61 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_output85 = getelementptr inbounds %struct._Levels, %struct._Levels* %61, i32 0, i32 3
  %arrayidx86 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output85, i32 0, i64 %idxprom84
  %62 = load i32, i32* %arrayidx86, align 4
  %cmp87 = icmp slt i32 %59, %62
  br i1 %cmp87, label %if.then.89, label %if.end.104

if.then.89:                                       ; preds = %if.else.80
  %63 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %63 to i64
  %64 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_output91 = getelementptr inbounds %struct._Levels, %struct._Levels* %64, i32 0, i32 3
  %arrayidx92 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output91, i32 0, i64 %idxprom90
  %65 = load i32, i32* %arrayidx92, align 4
  %conv93 = sitofp i32 %65 to double
  %66 = load double, double* %inten, align 8
  %67 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %67 to i64
  %68 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %low_output95 = getelementptr inbounds %struct._Levels, %struct._Levels* %68, i32 0, i32 3
  %arrayidx96 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output95, i32 0, i64 %idxprom94
  %69 = load i32, i32* %arrayidx96, align 4
  %70 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %70 to i64
  %71 = load %struct._Levels*, %struct._Levels** %levels.addr, align 8
  %high_output98 = getelementptr inbounds %struct._Levels, %struct._Levels* %71, i32 0, i32 4
  %arrayidx99 = getelementptr inbounds [5 x i32], [5 x i32]* %high_output98, i32 0, i64 %idxprom97
  %72 = load i32, i32* %arrayidx99, align 4
  %sub100 = sub nsw i32 %69, %72
  %conv101 = sitofp i32 %sub100 to double
  %mul102 = fmul double %66, %conv101
  %sub103 = fsub double %conv93, %mul102
  store double %sub103, double* %inten, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.89, %if.else.80
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.65
  %73 = load double, double* %inten, align 8
  %div106 = fdiv double %73, 2.550000e+02
  store double %div106, double* %inten, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.105
  %74 = load i32, i32* %channel.addr, align 4
  %add107 = add nsw i32 %74, 1
  %75 = load i32, i32* %j, align 4
  %sub108 = sub nsw i32 %75, %add107
  store i32 %sub108, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load double, double* %inten, align 8
  %conv109 = fptrunc double %76 to float
  store float %conv109, float* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12
  %77 = load float, float* %retval
  ret float %77
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
