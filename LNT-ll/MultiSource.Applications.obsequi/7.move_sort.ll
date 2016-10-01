; ModuleID = './MultiSource.Applications.obsequi/7.move_sort.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Move = type { i32, i32, i32 }

@.str = private unnamed_addr constant [87 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/obsequi/move_sort.c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Not enough buckets.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @sort_moves(%struct.Move* %movelist, i32 %start, i32 %num_moves) #0 {
entry:
  %movelist.addr = alloca %struct.Move*, align 8
  %start.addr = alloca i32, align 4
  %num_moves.addr = alloca i32, align 4
  %bucket = alloca [128 x [256 x %struct.Move]], align 16
  %buck_val = alloca [128 x i32], align 16
  %buck_size = alloca [128 x i32], align 16
  %num_buckets = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %best = alloca i32, align 4
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.Move* %movelist, %struct.Move** %movelist.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %num_moves, i32* %num_moves.addr, align 4
  store i32 0, i32* %num_buckets, align 4
  %0 = load i32, i32* %start.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_moves.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %num_buckets, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Move, %struct.Move* %6, i64 %idxprom
  %info = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx, i32 0, i32 2
  %7 = load i32, i32* %info, align 4
  %8 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [128 x i32], [128 x i32]* %buck_val, i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp eq i32 %7, %9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %10 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [128 x i32], [128 x i32]* %buck_size, i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [128 x [256 x %struct.Move]], [128 x [256 x %struct.Move]]* %bucket, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %arrayidx11, i32 0, i64 %idxprom9
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.Move, %struct.Move* %14, i64 %idxprom13
  %15 = bitcast %struct.Move* %arrayidx12 to i8*
  %16 = bitcast %struct.Move* %arrayidx14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 12, i32 4, i1 false)
  br label %for.end

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %if.then, %for.cond.1
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %num_buckets, align 4
  %cmp16 = icmp eq i32 %18, %19
  br i1 %cmp16, label %if.then.17, label %if.end.34

if.then.17:                                       ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %cmp18 = icmp eq i32 %20, 128
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i32 0, i32 0), i32 34, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  %21 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [128 x [256 x %struct.Move]], [128 x [256 x %struct.Move]]* %bucket, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %arrayidx22, i32 0, i64 0
  %22 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.Move, %struct.Move* %23, i64 %idxprom24
  %24 = bitcast %struct.Move* %arrayidx23 to i8*
  %25 = bitcast %struct.Move* %arrayidx25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 12, i32 4, i1 false)
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.Move, %struct.Move* %27, i64 %idxprom26
  %info28 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx27, i32 0, i32 2
  %28 = load i32, i32* %info28, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds [128 x i32], [128 x i32]* %buck_val, i32 0, i64 %idxprom29
  store i32 %28, i32* %arrayidx30, align 4
  %30 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds [128 x i32], [128 x i32]* %buck_size, i32 0, i64 %idxprom31
  store i32 1, i32* %arrayidx32, align 4
  %31 = load i32, i32* %num_buckets, align 4
  %inc33 = add nsw i32 %31, 1
  store i32 %inc33, i32* %num_buckets, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.20, %for.end
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %32 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %32, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %33 = load i32, i32* %start.addr, align 4
  store i32 %33, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %for.end.37
  %34 = load i32, i32* %count, align 4
  %35 = load i32, i32* %num_moves.addr, align 4
  %cmp38 = icmp ne i32 %34, %35
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx39 = getelementptr inbounds [128 x i32], [128 x i32]* %buck_val, i32 0, i64 0
  %36 = load i32, i32* %arrayidx39, align 4
  store i32 %36, i32* %best, align 4
  store i32 0, i32* %index, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.50, %while.body
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %num_buckets, align 4
  %cmp41 = icmp slt i32 %37, %38
  br i1 %cmp41, label %for.body.42, label %for.end.52

for.body.42:                                      ; preds = %for.cond.40
  %39 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %39 to i64
  %arrayidx44 = getelementptr inbounds [128 x i32], [128 x i32]* %buck_val, i32 0, i64 %idxprom43
  %40 = load i32, i32* %arrayidx44, align 4
  %41 = load i32, i32* %best, align 4
  %cmp45 = icmp sgt i32 %40, %41
  br i1 %cmp45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %for.body.42
  %42 = load i32, i32* %i, align 4
  store i32 %42, i32* %index, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %43 to i64
  %arrayidx48 = getelementptr inbounds [128 x i32], [128 x i32]* %buck_val, i32 0, i64 %idxprom47
  %44 = load i32, i32* %arrayidx48, align 4
  store i32 %44, i32* %best, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %for.body.42
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %45 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %45, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.40

for.end.52:                                       ; preds = %for.cond.40
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.52
  %46 = load i32, i32* %count, align 4
  %inc53 = add nsw i32 %46, 1
  store i32 %inc53, i32* %count, align 4
  %idxprom54 = sext i32 %46 to i64
  %47 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.Move, %struct.Move* %47, i64 %idxprom54
  %48 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %48, 1
  store i32 %inc56, i32* %i, align 4
  %idxprom57 = sext i32 %48 to i64
  %49 = load i32, i32* %index, align 4
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [128 x [256 x %struct.Move]], [128 x [256 x %struct.Move]]* %bucket, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [256 x %struct.Move], [256 x %struct.Move]* %arrayidx59, i32 0, i64 %idxprom57
  %50 = bitcast %struct.Move* %arrayidx55 to i8*
  %51 = bitcast %struct.Move* %arrayidx60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 12, i32 4, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %index, align 4
  %idxprom61 = sext i32 %53 to i64
  %arrayidx62 = getelementptr inbounds [128 x i32], [128 x i32]* %buck_size, i32 0, i64 %idxprom61
  %54 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp slt i32 %52, %54
  br i1 %cmp63, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %55 = load i32, i32* %index, align 4
  %idxprom64 = sext i32 %55 to i64
  %arrayidx65 = getelementptr inbounds [128 x i32], [128 x i32]* %buck_val, i32 0, i64 %idxprom64
  store i32 -5000, i32* %arrayidx65, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @_fatal_error_aux(i8*, i32, i32, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
