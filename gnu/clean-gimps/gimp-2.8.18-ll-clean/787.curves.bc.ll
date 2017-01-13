; ModuleID = './app/base/curves.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Curves = type { [5 x [256 x i8]] }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.curves_init = private unnamed_addr constant [12 x i8] c"curves_init\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"curves != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @curves_init(%struct._Curves* %curves) #0 {
entry:
  %curves.addr = alloca %struct._Curves*, align 8
  %channel = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._Curves* %curves, %struct._Curves** %curves.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Curves*, %struct._Curves** %curves.addr, align 8
  %cmp = icmp ne %struct._Curves* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.curves_init, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end.9

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %do.end
  %1 = load i32, i32* %channel, align 4
  %cmp1 = icmp ule i32 %1, 4
  br i1 %cmp1, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %2, 256
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %3 = load i32, i32* %j, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %channel, align 4
  %idxprom5 = zext i32 %5 to i64
  %6 = load %struct._Curves*, %struct._Curves** %curves.addr, align 8
  %curve = getelementptr inbounds %struct._Curves, %struct._Curves* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %curve, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %8 = load i32, i32* %channel, align 4
  %inc8 = add i32 %8, 1
  store i32 %inc8, i32* %channel, align 4
  br label %for.cond

for.end.9:                                        ; preds = %if.else, %for.cond
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define float @curves_lut_func(%struct._Curves* %curves, i32 %n_channels, i32 %channel, float %value) #0 {
entry:
  %retval = alloca float, align 4
  %curves.addr = alloca %struct._Curves*, align 8
  %n_channels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  %f = alloca float, align 4
  %index = alloca i32, align 4
  %inten = alloca double, align 8
  %j = alloca i32, align 4
  store %struct._Curves* %curves, %struct._Curves** %curves.addr, align 8
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
  %11 = load double, double* %inten, align 8
  %cmp15 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp15, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.end.14
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._Curves*, %struct._Curves** %curves.addr, align 8
  %curve = getelementptr inbounds %struct._Curves, %struct._Curves* %13, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %curve, i32 0, i64 %idxprom
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i64 0
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %14 to i32
  %conv20 = sitofp i32 %conv19 to double
  %div = fdiv double %conv20, 2.550000e+02
  store double %div, double* %inten, align 8
  br label %if.end.61

if.else.21:                                       ; preds = %if.end.14
  %15 = load double, double* %inten, align 8
  %cmp22 = fcmp oge double %15, 1.000000e+00
  br i1 %cmp22, label %if.then.24, label %if.else.32

if.then.24:                                       ; preds = %if.else.21
  %16 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %16 to i64
  %17 = load %struct._Curves*, %struct._Curves** %curves.addr, align 8
  %curve26 = getelementptr inbounds %struct._Curves, %struct._Curves* %17, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %curve26, i32 0, i64 %idxprom25
  %arrayidx28 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx27, i32 0, i64 255
  %18 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %18 to i32
  %conv30 = sitofp i32 %conv29 to double
  %div31 = fdiv double %conv30, 2.550000e+02
  store double %div31, double* %inten, align 8
  br label %if.end.60

if.else.32:                                       ; preds = %if.else.21
  %19 = load double, double* %inten, align 8
  %mul = fmul double %19, 2.550000e+02
  %call = call double @floor(double %mul) #3
  %conv33 = fptosi double %call to i32
  store i32 %conv33, i32* %index, align 4
  %20 = load double, double* %inten, align 8
  %mul34 = fmul double %20, 2.550000e+02
  %21 = load i32, i32* %index, align 4
  %conv35 = sitofp i32 %21 to double
  %sub36 = fsub double %mul34, %conv35
  %conv37 = fptrunc double %sub36 to float
  store float %conv37, float* %f, align 4
  %22 = load float, float* %f, align 4
  %conv38 = fpext float %22 to double
  %sub39 = fsub double 1.000000e+00, %conv38
  %23 = load i32, i32* %index, align 4
  %idxprom40 = sext i32 %23 to i64
  %24 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %24 to i64
  %25 = load %struct._Curves*, %struct._Curves** %curves.addr, align 8
  %curve42 = getelementptr inbounds %struct._Curves, %struct._Curves* %25, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %curve42, i32 0, i64 %idxprom41
  %arrayidx44 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx43, i32 0, i64 %idxprom40
  %26 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %26 to i32
  %conv46 = sitofp i32 %conv45 to double
  %mul47 = fmul double %sub39, %conv46
  %27 = load float, float* %f, align 4
  %28 = load i32, i32* %index, align 4
  %add48 = add nsw i32 %28, 1
  %idxprom49 = sext i32 %add48 to i64
  %29 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %29 to i64
  %30 = load %struct._Curves*, %struct._Curves** %curves.addr, align 8
  %curve51 = getelementptr inbounds %struct._Curves, %struct._Curves* %30, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %curve51, i32 0, i64 %idxprom50
  %arrayidx53 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx52, i32 0, i64 %idxprom49
  %31 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %31 to i32
  %conv55 = sitofp i32 %conv54 to float
  %mul56 = fmul float %27, %conv55
  %conv57 = fpext float %mul56 to double
  %add58 = fadd double %mul47, %conv57
  %div59 = fdiv double %add58, 2.550000e+02
  store double %div59, double* %inten, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.32, %if.then.24
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %32 = load i32, i32* %channel.addr, align 4
  %add62 = add nsw i32 %32, 1
  %33 = load i32, i32* %j, align 4
  %sub63 = sub nsw i32 %33, %add62
  store i32 %sub63, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load double, double* %inten, align 8
  %conv64 = fptrunc double %34 to float
  store float %conv64, float* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12
  %35 = load float, float* %retval
  ret float %35
}

; Function Attrs: nounwind readnone
declare double @floor(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
