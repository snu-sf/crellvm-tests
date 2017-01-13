; ModuleID = './jbig2_arith_int.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2ArithIntCtx = type { [512 x i8] }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct._Jbig2ArithState = type opaque

@.str = private unnamed_addr constant [63 x i8] c"failed to allocate Jbig2ArithIntCtx in jbig2_arith_int_ctx_new\00", align 1

; Function Attrs: nounwind uwtable
define %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %result = alloca %struct._Jbig2ArithIntCtx*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2ArithIntCtx** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !5
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %2, i64 1, i64 512) #4
  %3 = bitcast i8* %call to %struct._Jbig2ArithIntCtx*
  store %struct._Jbig2ArithIntCtx* %3, %struct._Jbig2ArithIntCtx** %result, align 8, !tbaa !1
  %4 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct._Jbig2ArithIntCtx* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %5, i32 3, i32 -1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0)) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %result, align 8, !tbaa !1
  %IAx = getelementptr inbounds %struct._Jbig2ArithIntCtx, %struct._Jbig2ArithIntCtx* %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %IAx, i32 0, i32 0
  %call2 = call i8* @memset(i8* %arraydecay, i32 0, i64 512) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %result, align 8, !tbaa !1
  %8 = bitcast %struct._Jbig2ArithIntCtx** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret %struct._Jbig2ArithIntCtx* %7
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
define i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %ctx, %struct._Jbig2ArithState* %as, i32* %p_result) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2ArithIntCtx*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %p_result.addr = alloca i32*, align 8
  %IAx = alloca i8*, align 8
  %PREV = alloca i32, align 4
  %S = alloca i32, align 4
  %V = alloca i32, align 4
  %bit = alloca i32, align 4
  %n_tail = alloca i32, align 4
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2ArithIntCtx* %ctx, %struct._Jbig2ArithIntCtx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store i32* %p_result, i32** %p_result.addr, align 8, !tbaa !1
  %0 = bitcast i8** %IAx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %ctx.addr, align 8, !tbaa !1
  %IAx1 = getelementptr inbounds %struct._Jbig2ArithIntCtx, %struct._Jbig2ArithIntCtx* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %IAx1, i32 0, i32 0
  store i8* %arraydecay, i8** %IAx, align 8, !tbaa !1
  %2 = bitcast i32* %PREV to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %PREV, align 4, !tbaa !9
  %3 = bitcast i32* %S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %V to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %n_tail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %10 = load i32, i32* %PREV, align 4, !tbaa !9
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %IAx, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %9, i8* %arrayidx) #4
  store i32 %call, i32* %S, align 4, !tbaa !9
  %12 = load i32, i32* %S, align 4, !tbaa !9
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %PREV, align 4, !tbaa !9
  %shl = shl i32 %13, 1
  %14 = load i32, i32* %S, align 4, !tbaa !9
  %or = or i32 %shl, %14
  store i32 %or, i32* %PREV, align 4, !tbaa !9
  %15 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %16 = load i32, i32* %PREV, align 4, !tbaa !9
  %idxprom2 = sext i32 %16 to i64
  %17 = load i8*, i8** %IAx, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %17, i64 %idxprom2
  %call4 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %15, i8* %arrayidx3) #4
  store i32 %call4, i32* %bit, align 4, !tbaa !9
  %18 = load i32, i32* %bit, align 4, !tbaa !9
  %cmp5 = icmp slt i32 %18, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %19 = load i32, i32* %PREV, align 4, !tbaa !9
  %shl8 = shl i32 %19, 1
  %20 = load i32, i32* %bit, align 4, !tbaa !9
  %or9 = or i32 %shl8, %20
  store i32 %or9, i32* %PREV, align 4, !tbaa !9
  %21 = load i32, i32* %bit, align 4, !tbaa !9
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.10, label %if.else.58

if.then.10:                                       ; preds = %if.end.7
  %22 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %23 = load i32, i32* %PREV, align 4, !tbaa !9
  %idxprom11 = sext i32 %23 to i64
  %24 = load i8*, i8** %IAx, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %24, i64 %idxprom11
  %call13 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %22, i8* %arrayidx12) #4
  store i32 %call13, i32* %bit, align 4, !tbaa !9
  %25 = load i32, i32* %bit, align 4, !tbaa !9
  %cmp14 = icmp slt i32 %25, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.10
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.10
  %26 = load i32, i32* %PREV, align 4, !tbaa !9
  %shl17 = shl i32 %26, 1
  %27 = load i32, i32* %bit, align 4, !tbaa !9
  %or18 = or i32 %shl17, %27
  store i32 %or18, i32* %PREV, align 4, !tbaa !9
  %28 = load i32, i32* %bit, align 4, !tbaa !9
  %tobool19 = icmp ne i32 %28, 0
  br i1 %tobool19, label %if.then.20, label %if.else.56

if.then.20:                                       ; preds = %if.end.16
  %29 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %30 = load i32, i32* %PREV, align 4, !tbaa !9
  %idxprom21 = sext i32 %30 to i64
  %31 = load i8*, i8** %IAx, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %31, i64 %idxprom21
  %call23 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %29, i8* %arrayidx22) #4
  store i32 %call23, i32* %bit, align 4, !tbaa !9
  %32 = load i32, i32* %bit, align 4, !tbaa !9
  %cmp24 = icmp slt i32 %32, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.20
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.20
  %33 = load i32, i32* %PREV, align 4, !tbaa !9
  %shl27 = shl i32 %33, 1
  %34 = load i32, i32* %bit, align 4, !tbaa !9
  %or28 = or i32 %shl27, %34
  store i32 %or28, i32* %PREV, align 4, !tbaa !9
  %35 = load i32, i32* %bit, align 4, !tbaa !9
  %tobool29 = icmp ne i32 %35, 0
  br i1 %tobool29, label %if.then.30, label %if.else.54

if.then.30:                                       ; preds = %if.end.26
  %36 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %37 = load i32, i32* %PREV, align 4, !tbaa !9
  %idxprom31 = sext i32 %37 to i64
  %38 = load i8*, i8** %IAx, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %38, i64 %idxprom31
  %call33 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %36, i8* %arrayidx32) #4
  store i32 %call33, i32* %bit, align 4, !tbaa !9
  %39 = load i32, i32* %bit, align 4, !tbaa !9
  %cmp34 = icmp slt i32 %39, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.30
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.30
  %40 = load i32, i32* %PREV, align 4, !tbaa !9
  %shl37 = shl i32 %40, 1
  %41 = load i32, i32* %bit, align 4, !tbaa !9
  %or38 = or i32 %shl37, %41
  store i32 %or38, i32* %PREV, align 4, !tbaa !9
  %42 = load i32, i32* %bit, align 4, !tbaa !9
  %tobool39 = icmp ne i32 %42, 0
  br i1 %tobool39, label %if.then.40, label %if.else.52

if.then.40:                                       ; preds = %if.end.36
  %43 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %44 = load i32, i32* %PREV, align 4, !tbaa !9
  %idxprom41 = sext i32 %44 to i64
  %45 = load i8*, i8** %IAx, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 %idxprom41
  %call43 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %43, i8* %arrayidx42) #4
  store i32 %call43, i32* %bit, align 4, !tbaa !9
  %46 = load i32, i32* %bit, align 4, !tbaa !9
  %cmp44 = icmp slt i32 %46, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.then.40
  %47 = load i32, i32* %PREV, align 4, !tbaa !9
  %shl47 = shl i32 %47, 1
  %48 = load i32, i32* %bit, align 4, !tbaa !9
  %or48 = or i32 %shl47, %48
  store i32 %or48, i32* %PREV, align 4, !tbaa !9
  %49 = load i32, i32* %bit, align 4, !tbaa !9
  %tobool49 = icmp ne i32 %49, 0
  br i1 %tobool49, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.46
  store i32 32, i32* %n_tail, align 4, !tbaa !9
  store i32 4436, i32* %offset, align 4, !tbaa !9
  br label %if.end.51

if.else:                                          ; preds = %if.end.46
  store i32 12, i32* %n_tail, align 4, !tbaa !9
  store i32 340, i32* %offset, align 4, !tbaa !9
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.50
  br label %if.end.53

if.else.52:                                       ; preds = %if.end.36
  store i32 8, i32* %n_tail, align 4, !tbaa !9
  store i32 84, i32* %offset, align 4, !tbaa !9
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.end.51
  br label %if.end.55

if.else.54:                                       ; preds = %if.end.26
  store i32 6, i32* %n_tail, align 4, !tbaa !9
  store i32 20, i32* %offset, align 4, !tbaa !9
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.end.53
  br label %if.end.57

if.else.56:                                       ; preds = %if.end.16
  store i32 4, i32* %n_tail, align 4, !tbaa !9
  store i32 4, i32* %offset, align 4, !tbaa !9
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.end.55
  br label %if.end.59

if.else.58:                                       ; preds = %if.end.7
  store i32 2, i32* %n_tail, align 4, !tbaa !9
  store i32 0, i32* %offset, align 4, !tbaa !9
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.end.57
  store i32 0, i32* %V, align 4, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.59
  %50 = load i32, i32* %i, align 4, !tbaa !9
  %51 = load i32, i32* %n_tail, align 4, !tbaa !9
  %cmp60 = icmp slt i32 %50, %51
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %53 = load i32, i32* %PREV, align 4, !tbaa !9
  %idxprom61 = sext i32 %53 to i64
  %54 = load i8*, i8** %IAx, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %54, i64 %idxprom61
  %call63 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %52, i8* %arrayidx62) #4
  store i32 %call63, i32* %bit, align 4, !tbaa !9
  %55 = load i32, i32* %bit, align 4, !tbaa !9
  %cmp64 = icmp slt i32 %55, 0
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %for.body
  %56 = load i32, i32* %PREV, align 4, !tbaa !9
  %shl67 = shl i32 %56, 1
  %and = and i32 %shl67, 511
  %57 = load i32, i32* %PREV, align 4, !tbaa !9
  %and68 = and i32 %57, 256
  %or69 = or i32 %and, %and68
  %58 = load i32, i32* %bit, align 4, !tbaa !9
  %or70 = or i32 %or69, %58
  store i32 %or70, i32* %PREV, align 4, !tbaa !9
  %59 = load i32, i32* %V, align 4, !tbaa !9
  %shl71 = shl i32 %59, 1
  %60 = load i32, i32* %bit, align 4, !tbaa !9
  %or72 = or i32 %shl71, %60
  store i32 %or72, i32* %V, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %61 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i32, i32* %offset, align 4, !tbaa !9
  %63 = load i32, i32* %V, align 4, !tbaa !9
  %add = add nsw i32 %63, %62
  store i32 %add, i32* %V, align 4, !tbaa !9
  %64 = load i32, i32* %S, align 4, !tbaa !9
  %tobool73 = icmp ne i32 %64, 0
  br i1 %tobool73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %65 = load i32, i32* %V, align 4, !tbaa !9
  %sub = sub nsw i32 0, %65
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %66 = load i32, i32* %V, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %66, %cond.false ]
  store i32 %cond, i32* %V, align 4, !tbaa !9
  %67 = load i32, i32* %V, align 4, !tbaa !9
  %68 = load i32*, i32** %p_result.addr, align 8, !tbaa !1
  store i32 %67, i32* %68, align 4, !tbaa !9
  %69 = load i32, i32* %S, align 4, !tbaa !9
  %tobool74 = icmp ne i32 %69, 0
  br i1 %tobool74, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %70 = load i32, i32* %V, align 4, !tbaa !9
  %cmp75 = icmp eq i32 %70, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %71 = phi i1 [ false, %cond.end ], [ %cmp75, %land.rhs ]
  %cond76 = select i1 %71, i32 1, i32 0
  store i32 %cond76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then.65, %if.then.45, %if.then.35, %if.then.25, %if.then.15, %if.then.6, %if.then
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %n_tail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %V to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %PREV to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i8** %IAx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

declare i32 @jbig2_arith_decode(%struct._Jbig2ArithState*, i8*) #2

; Function Attrs: nounwind uwtable
define void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %ctx, %struct._Jbig2ArithIntCtx* %iax) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %iax.addr = alloca %struct._Jbig2ArithIntCtx*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithIntCtx* %iax, %struct._Jbig2ArithIntCtx** %iax.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %0, i32 0, i32 0
  %1 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !5
  %2 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %iax.addr, align 8, !tbaa !1
  %3 = bitcast %struct._Jbig2ArithIntCtx* %2 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %1, i8* %3) #4
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
!5 = !{!6, !2, i64 0}
!6 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !7, i64 48, !8, i64 56, !8, i64 60, !3, i64 64, !3, i64 68, !8, i64 72, !8, i64 76, !2, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !2, i64 104}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!8, !8, i64 0}
