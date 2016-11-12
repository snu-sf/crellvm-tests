; ModuleID = './jbig2_arith_iaid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2ArithIaidCtx = type { i32, i8* }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct._Jbig2ArithState = type opaque

@.str = private unnamed_addr constant [55 x i8] c"failed to allocate storage in jbig2_arith_iaid_ctx_new\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"failed to allocate symbol ID storage in jbig2_arith_iaid_ctx_new\00", align 1

; Function Attrs: nounwind uwtable
define %struct._Jbig2ArithIaidCtx* @jbig2_arith_iaid_ctx_new(%struct._Jbig2Ctx* %ctx, i32 %SBSYMCODELEN) #0 {
entry:
  %retval = alloca %struct._Jbig2ArithIaidCtx*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %SBSYMCODELEN.addr = alloca i32, align 4
  %result = alloca %struct._Jbig2ArithIaidCtx*, align 8
  %ctx_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i32 %SBSYMCODELEN, i32* %SBSYMCODELEN.addr, align 4, !tbaa !5
  %0 = bitcast %struct._Jbig2ArithIaidCtx** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %2, i64 1, i64 16) #4
  %3 = bitcast i8* %call to %struct._Jbig2ArithIaidCtx*
  store %struct._Jbig2ArithIaidCtx* %3, %struct._Jbig2ArithIaidCtx** %result, align 8, !tbaa !1
  %4 = bitcast i32* %ctx_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %SBSYMCODELEN.addr, align 4, !tbaa !5
  %shl = shl i32 1, %5
  store i32 %shl, i32* %ctx_size, align 4, !tbaa !5
  %6 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct._Jbig2ArithIaidCtx* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %7, i32 3, i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #4
  %8 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %result, align 8, !tbaa !1
  store %struct._Jbig2ArithIaidCtx* %8, %struct._Jbig2ArithIaidCtx** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %SBSYMCODELEN.addr, align 4, !tbaa !5
  %10 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %result, align 8, !tbaa !1
  %SBSYMCODELEN2 = getelementptr inbounds %struct._Jbig2ArithIaidCtx, %struct._Jbig2ArithIaidCtx* %10, i32 0, i32 0
  store i32 %9, i32* %SBSYMCODELEN2, align 4, !tbaa !10
  %11 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator3 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %11, i32 0, i32 0
  %12 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator3, align 8, !tbaa !7
  %13 = load i32, i32* %ctx_size, align 4, !tbaa !5
  %conv = sext i32 %13 to i64
  %call4 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %12, i64 %conv, i64 1) #4
  %14 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %result, align 8, !tbaa !1
  %IAIDx = getelementptr inbounds %struct._Jbig2ArithIaidCtx, %struct._Jbig2ArithIaidCtx* %14, i32 0, i32 1
  store i8* %call4, i8** %IAIDx, align 8, !tbaa !12
  %15 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %result, align 8, !tbaa !1
  %IAIDx5 = getelementptr inbounds %struct._Jbig2ArithIaidCtx, %struct._Jbig2ArithIaidCtx* %15, i32 0, i32 1
  %16 = load i8*, i8** %IAIDx5, align 8, !tbaa !12
  %cmp6 = icmp ne i8* %16, null
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %17 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %result, align 8, !tbaa !1
  %IAIDx9 = getelementptr inbounds %struct._Jbig2ArithIaidCtx, %struct._Jbig2ArithIaidCtx* %17, i32 0, i32 1
  %18 = load i8*, i8** %IAIDx9, align 8, !tbaa !12
  %19 = load i32, i32* %ctx_size, align 4, !tbaa !5
  %conv10 = sext i32 %19 to i64
  %call11 = call i8* @memset(i8* %18, i32 0, i64 %conv10) #5
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %20 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %20, i32 3, i32 -1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.8
  %21 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %result, align 8, !tbaa !1
  store %struct._Jbig2ArithIaidCtx* %21, %struct._Jbig2ArithIaidCtx** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then
  %22 = bitcast i32* %ctx_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct._Jbig2ArithIaidCtx** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %retval
  ret %struct._Jbig2ArithIaidCtx* %24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #2

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @jbig2_arith_iaid_decode(%struct._Jbig2ArithIaidCtx* %ctx, %struct._Jbig2ArithState* %as, i32* %p_result) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2ArithIaidCtx*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %p_result.addr = alloca i32*, align 8
  %IAIDx = alloca i8*, align 8
  %SBSYMCODELEN = alloca i32, align 4
  %PREV = alloca i32, align 4
  %D = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2ArithIaidCtx* %ctx, %struct._Jbig2ArithIaidCtx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store i32* %p_result, i32** %p_result.addr, align 8, !tbaa !1
  %0 = bitcast i8** %IAIDx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %ctx.addr, align 8, !tbaa !1
  %IAIDx1 = getelementptr inbounds %struct._Jbig2ArithIaidCtx, %struct._Jbig2ArithIaidCtx* %1, i32 0, i32 1
  %2 = load i8*, i8** %IAIDx1, align 8, !tbaa !12
  store i8* %2, i8** %IAIDx, align 8, !tbaa !1
  %3 = bitcast i32* %SBSYMCODELEN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %ctx.addr, align 8, !tbaa !1
  %SBSYMCODELEN2 = getelementptr inbounds %struct._Jbig2ArithIaidCtx, %struct._Jbig2ArithIaidCtx* %4, i32 0, i32 0
  %5 = load i32, i32* %SBSYMCODELEN2, align 4, !tbaa !10
  store i32 %5, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %6 = bitcast i32* %PREV to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 1, i32* %PREV, align 4, !tbaa !5
  %7 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %10 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %12 = load i32, i32* %PREV, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = load i8*, i8** %IAIDx, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %11, i8* %arrayidx) #4
  store i32 %call, i32* %D, align 4, !tbaa !5
  %14 = load i32, i32* %D, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %15 = load i32, i32* %PREV, align 4, !tbaa !5
  %shl = shl i32 %15, 1
  %16 = load i32, i32* %D, align 4, !tbaa !5
  %or = or i32 %shl, %16
  store i32 %or, i32* %PREV, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %shl4 = shl i32 1, %18
  %19 = load i32, i32* %PREV, align 4, !tbaa !5
  %sub = sub nsw i32 %19, %shl4
  store i32 %sub, i32* %PREV, align 4, !tbaa !5
  %20 = load i32, i32* %PREV, align 4, !tbaa !5
  %21 = load i32*, i32** %p_result.addr, align 8, !tbaa !1
  store i32 %20, i32* %21, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %PREV to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %SBSYMCODELEN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i8** %IAIDx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32 @jbig2_arith_decode(%struct._Jbig2ArithState*, i8*) #2

; Function Attrs: nounwind uwtable
define void @jbig2_arith_iaid_ctx_free(%struct._Jbig2Ctx* %ctx, %struct._Jbig2ArithIaidCtx* %iax) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %iax.addr = alloca %struct._Jbig2ArithIaidCtx*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithIaidCtx* %iax, %struct._Jbig2ArithIaidCtx** %iax.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %iax.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._Jbig2ArithIaidCtx* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %3 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %iax.addr, align 8, !tbaa !1
  %IAIDx = getelementptr inbounds %struct._Jbig2ArithIaidCtx, %struct._Jbig2ArithIaidCtx* %3, i32 0, i32 1
  %4 = load i8*, i8** %IAIDx, align 8, !tbaa !12
  call void @jbig2_free(%struct._Jbig2Allocator* %2, i8* %4) #4
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator1 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %5, i32 0, i32 0
  %6 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator1, align 8, !tbaa !7
  %7 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %iax.addr, align 8, !tbaa !1
  %8 = bitcast %struct._Jbig2ArithIaidCtx* %7 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %6, i8* %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !9, i64 48, !6, i64 56, !6, i64 60, !3, i64 64, !3, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !2, i64 104}
!9 = !{!"long", !3, i64 0}
!10 = !{!11, !6, i64 0}
!11 = !{!"_Jbig2ArithIaidCtx", !6, i64 0, !2, i64 8}
!12 = !{!11, !2, i64 8}
