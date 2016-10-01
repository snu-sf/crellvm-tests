; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/3.IRSmk.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Domain_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RadiationData_t = type { double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double* }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"\0ASequoia Benchmark Version 1.0\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Usage: %s <input>\0A\00", align 1
@i_ub = common global i32 0, align 4
@x_size = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"***** results \0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"i = %10d      b[i] = %e \0A\00", align 1
@kmin = common global i32 0, align 4
@kmax = common global i32 0, align 4
@jmin = common global i32 0, align 4
@jmax = common global i32 0, align 4
@imin = common global i32 0, align 4
@imax = common global i32 0, align 4
@kp = common global i32 0, align 4
@jp = common global i32 0, align 4
@i_lb = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %domain = alloca %struct.Domain_s, align 4
  %domain_ptr = alloca %struct.Domain_s*, align 8
  %rblk = alloca %struct.RadiationData_t, align 8
  %rblk_ptr = alloca %struct.RadiationData_t*, align 8
  %t0 = alloca %struct.timeval, align 8
  %t1 = alloca %struct.timeval, align 8
  %t0_cpu = alloca i64, align 8
  %t1_cpu = alloca i64, align 8
  %x = alloca double*, align 8
  %b = alloca double*, align 8
  %i = alloca i32, align 4
  %noIter = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.Domain_s* %domain, %struct.Domain_s** %domain_ptr, align 8
  store %struct.RadiationData_t* %rblk, %struct.RadiationData_t** %rblk_ptr, align 8
  store i64 0, i64* %t0_cpu, align 8
  store i64 0, i64* %t1_cpu, align 8
  store i32 0, i32* %i, align 4
  store i32 5000, i32* %noIter, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* %2)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx2, align 8
  call void @readInput(i8* %4)
  %5 = load i32, i32* @i_ub, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 8
  %call3 = call noalias i8* @malloc(i64 %mul) #3
  %6 = bitcast i8* %call3 to double*
  store double* %6, double** %b, align 8
  %7 = load i32, i32* @x_size, align 4
  %conv4 = sext i32 %7 to i64
  %mul5 = mul i64 %conv4, 8
  %call6 = call noalias i8* @malloc(i64 %mul5) #3
  %8 = bitcast i8* %call6 to double*
  store double* %8, double** %x, align 8
  %9 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk_ptr, align 8
  call void @allocMem(%struct.RadiationData_t* %9)
  %10 = load %struct.Domain_s*, %struct.Domain_s** %domain_ptr, align 8
  %11 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk_ptr, align 8
  %12 = load double*, double** %x, align 8
  %13 = load double*, double** %b, align 8
  call void @init(%struct.Domain_s* %10, %struct.RadiationData_t* %11, double* %12, double* %13)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %14, 5000
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.Domain_s*, %struct.Domain_s** %domain_ptr, align 8
  %16 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk_ptr, align 8
  %17 = load double*, double** %x, align 8
  %18 = load double*, double** %b, align 8
  call void @rmatmult3(%struct.Domain_s* %15, %struct.RadiationData_t* %16, double* %17, double* %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.16, %for.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* @i_ub, align 4
  %cmp11 = icmp slt i32 %20, %21
  br i1 %cmp11, label %for.body.13, label %for.end.17

for.body.13:                                      ; preds = %for.cond.10
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load double*, double** %b, align 8
  %arrayidx14 = getelementptr inbounds double, double* %24, i64 %idxprom
  %25 = load double, double* %arrayidx14, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i32 %22, double %25)
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.13
  %26 = load i32, i32* @i_ub, align 4
  %div = sdiv i32 %26, 5
  %27 = load i32, i32* %i, align 4
  %add = add nsw i32 %27, %div
  store i32 %add, i32* %i, align 4
  br label %for.cond.10

for.end.17:                                       ; preds = %for.cond.10
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.17, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @printf(i8*, ...) #1

declare void @readInput(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @allocMem(%struct.RadiationData_t*) #1

declare void @init(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #1

declare void @rmatmult3(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
