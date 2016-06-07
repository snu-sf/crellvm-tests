; ModuleID = 'intrarefresh.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NumberOfMBs = internal global i32 0, align 4
@NumberIntraPerPicture = internal global i32 0, align 4
@RefreshPattern = internal global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"RandomIntraInit: RefreshPattern\00", align 1
@IntraMBs = internal global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"RandomIntraInit: IntraMBs\00", align 1
@WalkAround = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @RandomIntraInit(i32 %xsize, i32 %ysize, i32 %refresh) #0 {
entry:
  %xsize.addr = alloca i32, align 4
  %ysize.addr = alloca i32, align 4
  %refresh.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %xsize, i32* %xsize.addr, align 4
  store i32 %ysize, i32* %ysize.addr, align 4
  store i32 %refresh, i32* %refresh.addr, align 4
  call void @spec_srand(i32 1)
  %0 = load i32, i32* %xsize.addr, align 4
  %1 = load i32, i32* %ysize.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* @NumberOfMBs, align 4
  %2 = load i32, i32* %refresh.addr, align 4
  store i32 %2, i32* @NumberIntraPerPicture, align 4
  %3 = load i32, i32* @NumberOfMBs, align 4
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %mul1 = mul i64 4, %conv
  %call = call noalias i8* @malloc(i64 %mul1) #3
  %4 = bitcast i8* %call to i32*
  store i32* %4, i32** @RefreshPattern, align 8
  %5 = load i32*, i32** @RefreshPattern, align 8
  %cmp = icmp eq i32* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %refresh.addr, align 4
  %add3 = add nsw i32 %6, 1
  %conv4 = sext i32 %add3 to i64
  %mul5 = mul i64 4, %conv4
  %call6 = call noalias i8* @malloc(i64 %mul5) #3
  %7 = bitcast i8* %call6 to i32*
  store i32* %7, i32** @IntraMBs, align 8
  %8 = load i32*, i32** @IntraMBs, align 8
  %cmp7 = icmp eq i32* %8, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @NumberOfMBs, align 4
  %cmp11 = icmp slt i32 %9, %10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32*, i32** @RefreshPattern, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.26, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @NumberOfMBs, align 4
  %cmp14 = icmp slt i32 %14, %15
  br i1 %cmp14, label %for.body.16, label %for.end.28

for.body.16:                                      ; preds = %for.cond.13
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.16
  %call17 = call double @spec_rand()
  %mul18 = fmul double %call17, 0x41DFFFFFFFC00000
  %conv19 = fptosi double %mul18 to i32
  %16 = load i32, i32* @NumberOfMBs, align 4
  %rem = srem i32 %conv19, %16
  store i32 %rem, i32* %pos, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %17 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %17 to i64
  %18 = load i32*, i32** @RefreshPattern, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %18, i64 %idxprom20
  %19 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp ne i32 %19, -1
  br i1 %cmp22, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %21 to i64
  %22 = load i32*, i32** @RefreshPattern, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %22, i64 %idxprom24
  store i32 %20, i32* %arrayidx25, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %do.end
  %23 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.13

for.end.28:                                       ; preds = %for.cond.13
  ret void
}

declare void @spec_srand(i32) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @no_mem_exit(i8*) #1

declare double @spec_rand() #1

; Function Attrs: nounwind uwtable
define i32 @RandomIntra(i32 %mb) #0 {
entry:
  %retval = alloca i32, align 4
  %mb.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %mb, i32* %mb.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @NumberIntraPerPicture, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** @IntraMBs, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %mb.addr, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @RandomIntraNewPicture() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load i32, i32* @NumberIntraPerPicture, align 4
  %1 = load i32, i32* @WalkAround, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* @WalkAround, align 4
  store i32 0, i32* %j, align 4
  %2 = load i32, i32* @WalkAround, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* @NumberIntraPerPicture, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @NumberOfMBs, align 4
  %rem = srem i32 %5, %6
  %idxprom = sext i32 %rem to i64
  %7 = load i32*, i32** @RefreshPattern, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load i32*, i32** @IntraMBs, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %10, i64 %idxprom1
  store i32 %8, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  %12 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %12, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @RandomIntraUninit() #0 {
entry:
  %0 = load i32*, i32** @RefreshPattern, align 8
  %1 = bitcast i32* %0 to i8*
  call void @free(i8* %1) #3
  %2 = load i32*, i32** @IntraMBs, align 8
  %3 = bitcast i32* %2 to i8*
  call void @free(i8* %3) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
