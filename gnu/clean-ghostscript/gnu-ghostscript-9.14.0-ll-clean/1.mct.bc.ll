; ModuleID = './mct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opj_mct_norms = internal constant [3 x double] [double 1.732000e+00, double 8.292000e-01, double 8.292000e-01], align 16
@opj_mct_norms_real = internal constant [3 x double] [double 1.732000e+00, double 1.805000e+00, double 1.573000e+00], align 16

; Function Attrs: nounwind uwtable
define double* @opj_mct_get_mct_norms() #0 {
entry:
  ret double* getelementptr inbounds ([3 x double], [3 x double]* @opj_mct_norms, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define double* @opj_mct_get_mct_norms_real() #0 {
entry:
  ret double* getelementptr inbounds ([3 x double], [3 x double]* @opj_mct_norms_real, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define void @opj_mct_encode(i32* noalias %c0, i32* noalias %c1, i32* noalias %c2, i32 %n) #0 {
entry:
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %5 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %6, i32* %r, align 4, !tbaa !5
  %7 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = zext i32 %8 to i64
  %9 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  store i32 %10, i32* %g, align 4, !tbaa !5
  %11 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = zext i32 %12 to i64
  %13 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 %idxprom3
  %14 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  store i32 %14, i32* %b, align 4, !tbaa !5
  %15 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %r, align 4, !tbaa !5
  %17 = load i32, i32* %g, align 4, !tbaa !5
  %mul = mul nsw i32 %17, 2
  %add = add nsw i32 %16, %mul
  %18 = load i32, i32* %b, align 4, !tbaa !5
  %add5 = add nsw i32 %add, %18
  %shr = ashr i32 %add5, 2
  store i32 %shr, i32* %y, align 4, !tbaa !5
  %19 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %b, align 4, !tbaa !5
  %21 = load i32, i32* %g, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %21
  store i32 %sub, i32* %u, align 4, !tbaa !5
  %22 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %r, align 4, !tbaa !5
  %24 = load i32, i32* %g, align 4, !tbaa !5
  %sub6 = sub nsw i32 %23, %24
  store i32 %sub6, i32* %v, align 4, !tbaa !5
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = zext i32 %26 to i64
  %27 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i32, i32* %27, i64 %idxprom7
  store i32 %25, i32* %arrayidx8, align 4, !tbaa !5
  %28 = load i32, i32* %u, align 4, !tbaa !5
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = zext i32 %29 to i64
  %30 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i32, i32* %30, i64 %idxprom9
  store i32 %28, i32* %arrayidx10, align 4, !tbaa !5
  %31 = load i32, i32* %v, align 4, !tbaa !5
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = zext i32 %32 to i64
  %33 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i32, i32* %33, i64 %idxprom11
  store i32 %31, i32* %arrayidx12, align 4, !tbaa !5
  %34 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @opj_mct_decode(i32* noalias %c0, i32* noalias %c1, i32* noalias %c2, i32 %n) #0 {
entry:
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %g = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %5 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %6, i32* %y, align 4, !tbaa !5
  %7 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = zext i32 %8 to i64
  %9 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  store i32 %10, i32* %u, align 4, !tbaa !5
  %11 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = zext i32 %12 to i64
  %13 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 %idxprom3
  %14 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  store i32 %14, i32* %v, align 4, !tbaa !5
  %15 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %y, align 4, !tbaa !5
  %17 = load i32, i32* %u, align 4, !tbaa !5
  %18 = load i32, i32* %v, align 4, !tbaa !5
  %add = add nsw i32 %17, %18
  %shr = ashr i32 %add, 2
  %sub = sub nsw i32 %16, %shr
  store i32 %sub, i32* %g, align 4, !tbaa !5
  %19 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %v, align 4, !tbaa !5
  %21 = load i32, i32* %g, align 4, !tbaa !5
  %add5 = add nsw i32 %20, %21
  store i32 %add5, i32* %r, align 4, !tbaa !5
  %22 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %u, align 4, !tbaa !5
  %24 = load i32, i32* %g, align 4, !tbaa !5
  %add6 = add nsw i32 %23, %24
  store i32 %add6, i32* %b, align 4, !tbaa !5
  %25 = load i32, i32* %r, align 4, !tbaa !5
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = zext i32 %26 to i64
  %27 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i32, i32* %27, i64 %idxprom7
  store i32 %25, i32* %arrayidx8, align 4, !tbaa !5
  %28 = load i32, i32* %g, align 4, !tbaa !5
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = zext i32 %29 to i64
  %30 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i32, i32* %30, i64 %idxprom9
  store i32 %28, i32* %arrayidx10, align 4, !tbaa !5
  %31 = load i32, i32* %b, align 4, !tbaa !5
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = zext i32 %32 to i64
  %33 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i32, i32* %33, i64 %idxprom11
  store i32 %31, i32* %arrayidx12, align 4, !tbaa !5
  %34 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  ret void
}

; Function Attrs: nounwind uwtable
define double @opj_mct_getnorm(i32 %compno) #0 {
entry:
  %compno.addr = alloca i32, align 4
  store i32 %compno, i32* %compno.addr, align 4, !tbaa !5
  %0 = load i32, i32* %compno.addr, align 4, !tbaa !5
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* @opj_mct_norms, i32 0, i64 %idxprom
  %1 = load double, double* %arrayidx, align 8, !tbaa !7
  ret double %1
}

; Function Attrs: nounwind uwtable
define void @opj_mct_encode_real(i32* noalias %c0, i32* noalias %c1, i32* noalias %c2, i32 %n) #0 {
entry:
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %5 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %6, i32* %r, align 4, !tbaa !5
  %7 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = zext i32 %8 to i64
  %9 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  store i32 %10, i32* %g, align 4, !tbaa !5
  %11 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = zext i32 %12 to i64
  %13 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 %idxprom3
  %14 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  store i32 %14, i32* %b, align 4, !tbaa !5
  %15 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %r, align 4, !tbaa !5
  %call = call i32 @opj_int_fix_mul(i32 %16, i32 2449) #5
  %17 = load i32, i32* %g, align 4, !tbaa !5
  %call5 = call i32 @opj_int_fix_mul(i32 %17, i32 4809) #5
  %add = add nsw i32 %call, %call5
  %18 = load i32, i32* %b, align 4, !tbaa !5
  %call6 = call i32 @opj_int_fix_mul(i32 %18, i32 934) #5
  %add7 = add nsw i32 %add, %call6
  store i32 %add7, i32* %y, align 4, !tbaa !5
  %19 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %r, align 4, !tbaa !5
  %call8 = call i32 @opj_int_fix_mul(i32 %20, i32 1382) #5
  %sub = sub nsw i32 0, %call8
  %21 = load i32, i32* %g, align 4, !tbaa !5
  %call9 = call i32 @opj_int_fix_mul(i32 %21, i32 2714) #5
  %sub10 = sub nsw i32 %sub, %call9
  %22 = load i32, i32* %b, align 4, !tbaa !5
  %call11 = call i32 @opj_int_fix_mul(i32 %22, i32 4096) #5
  %add12 = add nsw i32 %sub10, %call11
  store i32 %add12, i32* %u, align 4, !tbaa !5
  %23 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32, i32* %r, align 4, !tbaa !5
  %call13 = call i32 @opj_int_fix_mul(i32 %24, i32 4096) #5
  %25 = load i32, i32* %g, align 4, !tbaa !5
  %call14 = call i32 @opj_int_fix_mul(i32 %25, i32 3430) #5
  %sub15 = sub nsw i32 %call13, %call14
  %26 = load i32, i32* %b, align 4, !tbaa !5
  %call16 = call i32 @opj_int_fix_mul(i32 %26, i32 666) #5
  %sub17 = sub nsw i32 %sub15, %call16
  store i32 %sub17, i32* %v, align 4, !tbaa !5
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = zext i32 %28 to i64
  %29 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i32, i32* %29, i64 %idxprom18
  store i32 %27, i32* %arrayidx19, align 4, !tbaa !5
  %30 = load i32, i32* %u, align 4, !tbaa !5
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = zext i32 %31 to i64
  %32 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %32, i64 %idxprom20
  store i32 %30, i32* %arrayidx21, align 4, !tbaa !5
  %33 = load i32, i32* %v, align 4, !tbaa !5
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = zext i32 %34 to i64
  %35 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i32, i32* %35, i64 %idxprom22
  store i32 %33, i32* %arrayidx23, align 4, !tbaa !5
  %36 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_fix_mul(i32 %a, i32 %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %temp = alloca i64, align 8
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %a.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %2 = load i32, i32* %b.addr, align 4, !tbaa !5
  %conv1 = sext i32 %2 to i64
  %mul = mul nsw i64 %conv, %conv1
  store i64 %mul, i64* %temp, align 8, !tbaa !9
  %3 = load i64, i64* %temp, align 8, !tbaa !9
  %and = and i64 %3, 4096
  %4 = load i64, i64* %temp, align 8, !tbaa !9
  %add = add nsw i64 %4, %and
  store i64 %add, i64* %temp, align 8, !tbaa !9
  %5 = load i64, i64* %temp, align 8, !tbaa !9
  %shr = ashr i64 %5, 13
  %conv2 = trunc i64 %shr to i32
  %6 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 %conv2
}

; Function Attrs: nounwind uwtable
define void @opj_mct_decode_real(float* noalias %c0, float* noalias %c1, float* noalias %c2, i32 %n) #0 {
entry:
  %c0.addr = alloca float*, align 8
  %c1.addr = alloca float*, align 8
  %c2.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %vrv = alloca <4 x float>, align 16
  %vgu = alloca <4 x float>, align 16
  %vgv = alloca <4 x float>, align 16
  %vbu = alloca <4 x float>, align 16
  %vy = alloca <4 x float>, align 16
  %vu = alloca <4 x float>, align 16
  %vv = alloca <4 x float>, align 16
  %vr = alloca <4 x float>, align 16
  %vg = alloca <4 x float>, align 16
  %vb = alloca <4 x float>, align 16
  %y = alloca float, align 4
  %u = alloca float, align 4
  %v = alloca float, align 4
  %r = alloca float, align 4
  %g = alloca float, align 4
  %b = alloca float, align 4
  store float* %c0, float** %c0.addr, align 8, !tbaa !1
  store float* %c1, float** %c1.addr, align 8, !tbaa !1
  store float* %c2, float** %c2.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast <4 x float>* %vrv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast <4 x float>* %vgu to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast <4 x float>* %vgv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast <4 x float>* %vbu to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %call = call <4 x float> @_mm_set1_ps(float 0x3FF66E9780000000) #5
  store <4 x float> %call, <4 x float>* %vrv, align 16, !tbaa !11
  %call1 = call <4 x float> @_mm_set1_ps(float 0x3FD60639E0000000) #5
  store <4 x float> %call1, <4 x float>* %vgu, align 16, !tbaa !11
  %call2 = call <4 x float> @_mm_set1_ps(float 0x3FE6DA3C20000000) #5
  store <4 x float> %call2, <4 x float>* %vgv, align 16, !tbaa !11
  %call3 = call <4 x float> @_mm_set1_ps(float 0x3FFC5A1CA0000000) #5
  store <4 x float> %call3, <4 x float>* %vbu, align 16, !tbaa !11
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %n.addr, align 4, !tbaa !5
  %shr = lshr i32 %6, 3
  %cmp = icmp ult i32 %5, %shr
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast <4 x float>* %vy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast <4 x float>* %vu to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast <4 x float>* %vv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast <4 x float>* %vr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast <4 x float>* %vg to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast <4 x float>* %vb to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = load float*, float** %c0.addr, align 8, !tbaa !1
  %call4 = call <4 x float> @_mm_load_ps(float* %13) #5
  store <4 x float> %call4, <4 x float>* %vy, align 16, !tbaa !11
  %14 = load float*, float** %c1.addr, align 8, !tbaa !1
  %call5 = call <4 x float> @_mm_load_ps(float* %14) #5
  store <4 x float> %call5, <4 x float>* %vu, align 16, !tbaa !11
  %15 = load float*, float** %c2.addr, align 8, !tbaa !1
  %call6 = call <4 x float> @_mm_load_ps(float* %15) #5
  store <4 x float> %call6, <4 x float>* %vv, align 16, !tbaa !11
  %16 = load <4 x float>, <4 x float>* %vy, align 16, !tbaa !11
  %17 = load <4 x float>, <4 x float>* %vv, align 16, !tbaa !11
  %18 = load <4 x float>, <4 x float>* %vrv, align 16, !tbaa !11
  %call7 = call <4 x float> @_mm_mul_ps(<4 x float> %17, <4 x float> %18) #5
  %call8 = call <4 x float> @_mm_add_ps(<4 x float> %16, <4 x float> %call7) #5
  store <4 x float> %call8, <4 x float>* %vr, align 16, !tbaa !11
  %19 = load <4 x float>, <4 x float>* %vy, align 16, !tbaa !11
  %20 = load <4 x float>, <4 x float>* %vu, align 16, !tbaa !11
  %21 = load <4 x float>, <4 x float>* %vgu, align 16, !tbaa !11
  %call9 = call <4 x float> @_mm_mul_ps(<4 x float> %20, <4 x float> %21) #5
  %call10 = call <4 x float> @_mm_sub_ps(<4 x float> %19, <4 x float> %call9) #5
  %22 = load <4 x float>, <4 x float>* %vv, align 16, !tbaa !11
  %23 = load <4 x float>, <4 x float>* %vgv, align 16, !tbaa !11
  %call11 = call <4 x float> @_mm_mul_ps(<4 x float> %22, <4 x float> %23) #5
  %call12 = call <4 x float> @_mm_sub_ps(<4 x float> %call10, <4 x float> %call11) #5
  store <4 x float> %call12, <4 x float>* %vg, align 16, !tbaa !11
  %24 = load <4 x float>, <4 x float>* %vy, align 16, !tbaa !11
  %25 = load <4 x float>, <4 x float>* %vu, align 16, !tbaa !11
  %26 = load <4 x float>, <4 x float>* %vbu, align 16, !tbaa !11
  %call13 = call <4 x float> @_mm_mul_ps(<4 x float> %25, <4 x float> %26) #5
  %call14 = call <4 x float> @_mm_add_ps(<4 x float> %24, <4 x float> %call13) #5
  store <4 x float> %call14, <4 x float>* %vb, align 16, !tbaa !11
  %27 = load float*, float** %c0.addr, align 8, !tbaa !1
  %28 = load <4 x float>, <4 x float>* %vr, align 16, !tbaa !11
  call void @_mm_store_ps(float* %27, <4 x float> %28) #5
  %29 = load float*, float** %c1.addr, align 8, !tbaa !1
  %30 = load <4 x float>, <4 x float>* %vg, align 16, !tbaa !11
  call void @_mm_store_ps(float* %29, <4 x float> %30) #5
  %31 = load float*, float** %c2.addr, align 8, !tbaa !1
  %32 = load <4 x float>, <4 x float>* %vb, align 16, !tbaa !11
  call void @_mm_store_ps(float* %31, <4 x float> %32) #5
  %33 = load float*, float** %c0.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %33, i64 4
  store float* %add.ptr, float** %c0.addr, align 8, !tbaa !1
  %34 = load float*, float** %c1.addr, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds float, float* %34, i64 4
  store float* %add.ptr15, float** %c1.addr, align 8, !tbaa !1
  %35 = load float*, float** %c2.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds float, float* %35, i64 4
  store float* %add.ptr16, float** %c2.addr, align 8, !tbaa !1
  %36 = load float*, float** %c0.addr, align 8, !tbaa !1
  %call17 = call <4 x float> @_mm_load_ps(float* %36) #5
  store <4 x float> %call17, <4 x float>* %vy, align 16, !tbaa !11
  %37 = load float*, float** %c1.addr, align 8, !tbaa !1
  %call18 = call <4 x float> @_mm_load_ps(float* %37) #5
  store <4 x float> %call18, <4 x float>* %vu, align 16, !tbaa !11
  %38 = load float*, float** %c2.addr, align 8, !tbaa !1
  %call19 = call <4 x float> @_mm_load_ps(float* %38) #5
  store <4 x float> %call19, <4 x float>* %vv, align 16, !tbaa !11
  %39 = load <4 x float>, <4 x float>* %vy, align 16, !tbaa !11
  %40 = load <4 x float>, <4 x float>* %vv, align 16, !tbaa !11
  %41 = load <4 x float>, <4 x float>* %vrv, align 16, !tbaa !11
  %call20 = call <4 x float> @_mm_mul_ps(<4 x float> %40, <4 x float> %41) #5
  %call21 = call <4 x float> @_mm_add_ps(<4 x float> %39, <4 x float> %call20) #5
  store <4 x float> %call21, <4 x float>* %vr, align 16, !tbaa !11
  %42 = load <4 x float>, <4 x float>* %vy, align 16, !tbaa !11
  %43 = load <4 x float>, <4 x float>* %vu, align 16, !tbaa !11
  %44 = load <4 x float>, <4 x float>* %vgu, align 16, !tbaa !11
  %call22 = call <4 x float> @_mm_mul_ps(<4 x float> %43, <4 x float> %44) #5
  %call23 = call <4 x float> @_mm_sub_ps(<4 x float> %42, <4 x float> %call22) #5
  %45 = load <4 x float>, <4 x float>* %vv, align 16, !tbaa !11
  %46 = load <4 x float>, <4 x float>* %vgv, align 16, !tbaa !11
  %call24 = call <4 x float> @_mm_mul_ps(<4 x float> %45, <4 x float> %46) #5
  %call25 = call <4 x float> @_mm_sub_ps(<4 x float> %call23, <4 x float> %call24) #5
  store <4 x float> %call25, <4 x float>* %vg, align 16, !tbaa !11
  %47 = load <4 x float>, <4 x float>* %vy, align 16, !tbaa !11
  %48 = load <4 x float>, <4 x float>* %vu, align 16, !tbaa !11
  %49 = load <4 x float>, <4 x float>* %vbu, align 16, !tbaa !11
  %call26 = call <4 x float> @_mm_mul_ps(<4 x float> %48, <4 x float> %49) #5
  %call27 = call <4 x float> @_mm_add_ps(<4 x float> %47, <4 x float> %call26) #5
  store <4 x float> %call27, <4 x float>* %vb, align 16, !tbaa !11
  %50 = load float*, float** %c0.addr, align 8, !tbaa !1
  %51 = load <4 x float>, <4 x float>* %vr, align 16, !tbaa !11
  call void @_mm_store_ps(float* %50, <4 x float> %51) #5
  %52 = load float*, float** %c1.addr, align 8, !tbaa !1
  %53 = load <4 x float>, <4 x float>* %vg, align 16, !tbaa !11
  call void @_mm_store_ps(float* %52, <4 x float> %53) #5
  %54 = load float*, float** %c2.addr, align 8, !tbaa !1
  %55 = load <4 x float>, <4 x float>* %vb, align 16, !tbaa !11
  call void @_mm_store_ps(float* %54, <4 x float> %55) #5
  %56 = load float*, float** %c0.addr, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds float, float* %56, i64 4
  store float* %add.ptr28, float** %c0.addr, align 8, !tbaa !1
  %57 = load float*, float** %c1.addr, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds float, float* %57, i64 4
  store float* %add.ptr29, float** %c1.addr, align 8, !tbaa !1
  %58 = load float*, float** %c2.addr, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds float, float* %58, i64 4
  store float* %add.ptr30, float** %c2.addr, align 8, !tbaa !1
  %59 = bitcast <4 x float>* %vb to i8*
  call void @llvm.lifetime.end(i64 16, i8* %59) #1
  %60 = bitcast <4 x float>* %vg to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast <4 x float>* %vr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %61) #1
  %62 = bitcast <4 x float>* %vv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %62) #1
  %63 = bitcast <4 x float>* %vu to i8*
  call void @llvm.lifetime.end(i64 16, i8* %63) #1
  %64 = bitcast <4 x float>* %vy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %64) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %65, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load i32, i32* %n.addr, align 4, !tbaa !5
  %and = and i32 %66, 7
  store i32 %and, i32* %n.addr, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.49, %for.end
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %68 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp32 = icmp ult i32 %67, %68
  br i1 %cmp32, label %for.body.33, label %for.end.51

for.body.33:                                      ; preds = %for.cond.31
  %69 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %70 to i64
  %71 = load float*, float** %c0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %71, i64 %idxprom
  %72 = load float, float* %arrayidx, align 4, !tbaa !12
  store float %72, float* %y, align 4, !tbaa !12
  %73 = bitcast float* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = zext i32 %74 to i64
  %75 = load float*, float** %c1.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds float, float* %75, i64 %idxprom34
  %76 = load float, float* %arrayidx35, align 4, !tbaa !12
  store float %76, float* %u, align 4, !tbaa !12
  %77 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = zext i32 %78 to i64
  %79 = load float*, float** %c2.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds float, float* %79, i64 %idxprom36
  %80 = load float, float* %arrayidx37, align 4, !tbaa !12
  store float %80, float* %v, align 4, !tbaa !12
  %81 = bitcast float* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = load float, float* %y, align 4, !tbaa !12
  %83 = load float, float* %v, align 4, !tbaa !12
  %mul = fmul float %83, 0x3FF66E9780000000
  %add = fadd float %82, %mul
  store float %add, float* %r, align 4, !tbaa !12
  %84 = bitcast float* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load float, float* %y, align 4, !tbaa !12
  %86 = load float, float* %u, align 4, !tbaa !12
  %mul38 = fmul float %86, 0x3FD60639E0000000
  %sub = fsub float %85, %mul38
  %87 = load float, float* %v, align 4, !tbaa !12
  %mul39 = fmul float %87, 0x3FE6DA3C20000000
  %sub40 = fsub float %sub, %mul39
  store float %sub40, float* %g, align 4, !tbaa !12
  %88 = bitcast float* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  %89 = load float, float* %y, align 4, !tbaa !12
  %90 = load float, float* %u, align 4, !tbaa !12
  %mul41 = fmul float %90, 0x3FFC5A1CA0000000
  %add42 = fadd float %89, %mul41
  store float %add42, float* %b, align 4, !tbaa !12
  %91 = load float, float* %r, align 4, !tbaa !12
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom43 = zext i32 %92 to i64
  %93 = load float*, float** %c0.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds float, float* %93, i64 %idxprom43
  store float %91, float* %arrayidx44, align 4, !tbaa !12
  %94 = load float, float* %g, align 4, !tbaa !12
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom45 = zext i32 %95 to i64
  %96 = load float*, float** %c1.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds float, float* %96, i64 %idxprom45
  store float %94, float* %arrayidx46, align 4, !tbaa !12
  %97 = load float, float* %b, align 4, !tbaa !12
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom47 = zext i32 %98 to i64
  %99 = load float*, float** %c2.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds float, float* %99, i64 %idxprom47
  store float %97, float* %arrayidx48, align 4, !tbaa !12
  %100 = bitcast float* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast float* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast float* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast float* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.33
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %inc50 = add i32 %106, 1
  store i32 %inc50, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.end.51:                                       ; preds = %for.cond.31
  %107 = bitcast <4 x float>* %vbu to i8*
  call void @llvm.lifetime.end(i64 16, i8* %107) #1
  %108 = bitcast <4 x float>* %vgv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %108) #1
  %109 = bitcast <4 x float>* %vgu to i8*
  call void @llvm.lifetime.end(i64 16, i8* %109) #1
  %110 = bitcast <4 x float>* %vrv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %110) #1
  %111 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  ret void
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_set1_ps(float %__w) #3 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %__w, float* %__w.addr, align 4, !tbaa !12
  %0 = load float, float* %__w.addr, align 4, !tbaa !12
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, float* %__w.addr, align 4, !tbaa !12
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, float* %__w.addr, align 4, !tbaa !12
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %3 = load float, float* %__w.addr, align 4, !tbaa !12
  %vecinit3 = insertelement <4 x float> %vecinit2, float %3, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral, !tbaa !11
  %4 = load <4 x float>, <4 x float>* %.compoundliteral, !tbaa !11
  ret <4 x float> %4
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_load_ps(float* %__p) #3 {
entry:
  %__p.addr = alloca float*, align 8
  store float* %__p, float** %__p.addr, align 8, !tbaa !1
  %0 = load float*, float** %__p.addr, align 8, !tbaa !1
  %1 = bitcast float* %0 to <4 x float>*
  %2 = load <4 x float>, <4 x float>* %1, align 16, !tbaa !11
  ret <4 x float> %2
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16, !tbaa !11
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16, !tbaa !11
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_sub_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16, !tbaa !11
  %sub = fsub <4 x float> %0, %1
  ret <4 x float> %sub
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal void @_mm_store_ps(float* %__p, <4 x float> %__a) #3 {
entry:
  %__p.addr = alloca float*, align 8
  %__a.addr = alloca <4 x float>, align 16
  store float* %__p, float** %__p.addr, align 8, !tbaa !1
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16, !tbaa !11
  %1 = load float*, float** %__p.addr, align 8, !tbaa !1
  %2 = bitcast float* %1 to <4 x float>*
  store <4 x float> %0, <4 x float>* %2, align 16, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define double @opj_mct_getnorm_real(i32 %compno) #0 {
entry:
  %compno.addr = alloca i32, align 4
  store i32 %compno, i32* %compno.addr, align 4, !tbaa !5
  %0 = load i32, i32* %compno.addr, align 4, !tbaa !5
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* @opj_mct_norms_real, i32 0, i64 %idxprom
  %1 = load double, double* %arrayidx, align 8, !tbaa !7
  ret double %1
}

; Function Attrs: nounwind uwtable
define i32 @opj_mct_encode_custom(i8* %pCodingdata, i32 %n, i8** %pData, i32 %pNbComp, i32 %isSigned) #0 {
entry:
  %retval = alloca i32, align 4
  %pCodingdata.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %pData.addr = alloca i8**, align 8
  %pNbComp.addr = alloca i32, align 4
  %isSigned.addr = alloca i32, align 4
  %lMct = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %lNbMatCoeff = alloca i32, align 4
  %lCurrentData = alloca i32*, align 8
  %lCurrentMatrix = alloca i32*, align 8
  %lData = alloca i32**, align 8
  %lMultiplicator = alloca i32, align 4
  %lMctPtr = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pCodingdata, i8** %pCodingdata.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  store i8** %pData, i8*** %pData.addr, align 8, !tbaa !1
  store i32 %pNbComp, i32* %pNbComp.addr, align 4, !tbaa !5
  store i32 %isSigned, i32* %isSigned.addr, align 4, !tbaa !5
  %0 = bitcast float** %lMct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %pCodingdata.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to float*
  store float* %2, float** %lMct, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %lNbMatCoeff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %8 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %mul = mul i32 %7, %8
  store i32 %mul, i32* %lNbMatCoeff, align 4, !tbaa !5
  %9 = bitcast i32** %lCurrentData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* null, i32** %lCurrentData, align 8, !tbaa !1
  %10 = bitcast i32** %lCurrentMatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* null, i32** %lCurrentMatrix, align 8, !tbaa !1
  %11 = bitcast i32*** %lData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i8**, i8*** %pData.addr, align 8, !tbaa !1
  %13 = bitcast i8** %12 to i32**
  store i32** %13, i32*** %lData, align 8, !tbaa !1
  %14 = bitcast i32* %lMultiplicator to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 8192, i32* %lMultiplicator, align 4, !tbaa !5
  %15 = bitcast i32** %lMctPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i32, i32* %isSigned.addr, align 4, !tbaa !5
  %17 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %18 = load i32, i32* %lNbMatCoeff, align 4, !tbaa !5
  %add = add i32 %17, %18
  %conv = zext i32 %add to i64
  %mul1 = mul i64 %conv, 4
  %cmp = icmp uge i64 %mul1, -256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %19 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %20 = load i32, i32* %lNbMatCoeff, align 4, !tbaa !5
  %add3 = add i32 %19, %20
  %conv4 = zext i32 %add3 to i64
  %mul5 = mul i64 %conv4, 4
  %call = call noalias i8* @malloc(i64 %mul5) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %21 = bitcast i8* %cond to i32*
  store i32* %21, i32** %lCurrentData, align 8, !tbaa !1
  %22 = load i32*, i32** %lCurrentData, align 8, !tbaa !1
  %tobool = icmp ne i32* %22, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %23 = load i32*, i32** %lCurrentData, align 8, !tbaa !1
  %24 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i32, i32* %23, i64 %idx.ext
  store i32* %add.ptr, i32** %lCurrentMatrix, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %26 = load i32, i32* %lNbMatCoeff, align 4, !tbaa !5
  %cmp6 = icmp ult i32 %25, %26
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load float*, float** %lMct, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds float, float* %27, i32 1
  store float* %incdec.ptr, float** %lMct, align 8, !tbaa !1
  %28 = load float, float* %27, align 4, !tbaa !12
  %29 = load i32, i32* %lMultiplicator, align 4, !tbaa !5
  %conv8 = uitofp i32 %29 to float
  %mul9 = fmul float %28, %conv8
  %conv10 = fptosi float %mul9 to i32
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %30 to i64
  %31 = load i32*, i32** %lCurrentMatrix, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %31, i64 %idxprom
  store i32 %conv10, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.52, %for.end
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %34 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp12 = icmp ult i32 %33, %34
  br i1 %cmp12, label %for.body.14, label %for.end.54

for.body.14:                                      ; preds = %for.cond.11
  %35 = load i32*, i32** %lCurrentMatrix, align 8, !tbaa !1
  store i32* %35, i32** %lMctPtr, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %for.body.14
  %36 = load i32, i32* %j, align 4, !tbaa !5
  %37 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %cmp16 = icmp ult i32 %36, %37
  br i1 %cmp16, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.15
  %38 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom19 = zext i32 %38 to i64
  %39 = load i32**, i32*** %lData, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i32*, i32** %39, i64 %idxprom19
  %40 = load i32*, i32** %arrayidx20, align 8, !tbaa !1
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom21 = zext i32 %42 to i64
  %43 = load i32*, i32** %lCurrentData, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i32, i32* %43, i64 %idxprom21
  store i32 %41, i32* %arrayidx22, align 4, !tbaa !5
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.18
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %inc24 = add i32 %44, 1
  store i32 %inc24, i32* %j, align 4, !tbaa !5
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.49, %for.end.25
  %45 = load i32, i32* %j, align 4, !tbaa !5
  %46 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %cmp27 = icmp ult i32 %45, %46
  br i1 %cmp27, label %for.body.29, label %for.end.51

for.body.29:                                      ; preds = %for.cond.26
  %47 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom30 = zext i32 %47 to i64
  %48 = load i32**, i32*** %lData, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i32*, i32** %48, i64 %idxprom30
  %49 = load i32*, i32** %arrayidx31, align 8, !tbaa !1
  store i32 0, i32* %49, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.43, %for.body.29
  %50 = load i32, i32* %k, align 4, !tbaa !5
  %51 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %cmp33 = icmp ult i32 %50, %51
  br i1 %cmp33, label %for.body.35, label %for.end.45

for.body.35:                                      ; preds = %for.cond.32
  %52 = load i32*, i32** %lMctPtr, align 8, !tbaa !1
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom36 = zext i32 %54 to i64
  %55 = load i32*, i32** %lCurrentData, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i32, i32* %55, i64 %idxprom36
  %56 = load i32, i32* %arrayidx37, align 4, !tbaa !5
  %call38 = call i32 @opj_int_fix_mul(i32 %53, i32 %56) #5
  %57 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom39 = zext i32 %57 to i64
  %58 = load i32**, i32*** %lData, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32*, i32** %58, i64 %idxprom39
  %59 = load i32*, i32** %arrayidx40, align 8, !tbaa !1
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %add41 = add nsw i32 %60, %call38
  store i32 %add41, i32* %59, align 4, !tbaa !5
  %61 = load i32*, i32** %lMctPtr, align 8, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %incdec.ptr42, i32** %lMctPtr, align 8, !tbaa !1
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.35
  %62 = load i32, i32* %k, align 4, !tbaa !5
  %inc44 = add i32 %62, 1
  store i32 %inc44, i32* %k, align 4, !tbaa !5
  br label %for.cond.32

for.end.45:                                       ; preds = %for.cond.32
  %63 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom46 = zext i32 %63 to i64
  %64 = load i32**, i32*** %lData, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i32*, i32** %64, i64 %idxprom46
  %65 = load i32*, i32** %arrayidx47, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %incdec.ptr48, i32** %arrayidx47, align 8, !tbaa !1
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.45
  %66 = load i32, i32* %j, align 4, !tbaa !5
  %inc50 = add i32 %66, 1
  store i32 %inc50, i32* %j, align 4, !tbaa !5
  br label %for.cond.26

for.end.51:                                       ; preds = %for.cond.26
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.51
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %inc53 = add i32 %67, 1
  store i32 %inc53, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.end.54:                                       ; preds = %for.cond.11
  %68 = load i32*, i32** %lCurrentData, align 8, !tbaa !1
  %69 = bitcast i32* %68 to i8*
  call void @free(i8* %69) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.54, %if.then
  %70 = bitcast i32** %lMctPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %lMultiplicator to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32*** %lData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32** %lCurrentMatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32** %lCurrentData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %lNbMatCoeff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast float** %lMct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @opj_mct_decode_custom(i8* %pDecodingData, i32 %n, i8** %pData, i32 %pNbComp, i32 %isSigned) #0 {
entry:
  %retval = alloca i32, align 4
  %pDecodingData.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %pData.addr = alloca i8**, align 8
  %pNbComp.addr = alloca i32, align 4
  %isSigned.addr = alloca i32, align 4
  %lMct = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %lCurrentData = alloca float*, align 8
  %lCurrentResult = alloca float*, align 8
  %lData = alloca float**, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pDecodingData, i8** %pDecodingData.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  store i8** %pData, i8*** %pData.addr, align 8, !tbaa !1
  store i32 %pNbComp, i32* %pNbComp.addr, align 4, !tbaa !5
  store i32 %isSigned, i32* %isSigned.addr, align 4, !tbaa !5
  %0 = bitcast float** %lMct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast float** %lCurrentData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store float* null, float** %lCurrentData, align 8, !tbaa !1
  %5 = bitcast float** %lCurrentResult to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store float* null, float** %lCurrentResult, align 8, !tbaa !1
  %6 = bitcast float*** %lData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %pData.addr, align 8, !tbaa !1
  %8 = bitcast i8** %7 to float**
  store float** %8, float*** %lData, align 8, !tbaa !1
  %9 = load i32, i32* %isSigned.addr, align 4, !tbaa !5
  %10 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %mul = mul i32 2, %10
  %conv = zext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %cmp = icmp uge i64 %mul1, -256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %mul3 = mul i32 2, %11
  %conv4 = zext i32 %mul3 to i64
  %mul5 = mul i64 %conv4, 4
  %call = call noalias i8* @malloc(i64 %mul5) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %12 = bitcast i8* %cond to float*
  store float* %12, float** %lCurrentData, align 8, !tbaa !1
  %13 = load float*, float** %lCurrentData, align 8, !tbaa !1
  %tobool = icmp ne float* %13, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %14 = load float*, float** %lCurrentData, align 8, !tbaa !1
  %15 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds float, float* %14, i64 %idx.ext
  store float* %add.ptr, float** %lCurrentResult, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp6 = icmp ult i32 %16, %17
  br i1 %cmp6, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %pDecodingData.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to float*
  store float* %19, float** %lMct, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4, !tbaa !5
  %21 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %20, %21
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %22 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = zext i32 %22 to i64
  %23 = load float**, float*** %lData, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float*, float** %23, i64 %idxprom
  %24 = load float*, float** %arrayidx, align 8, !tbaa !1
  %25 = load float, float* %24, align 4, !tbaa !12
  %26 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom12 = zext i32 %26 to i64
  %27 = load float*, float** %lCurrentData, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds float, float* %27, i64 %idxprom12
  store float %25, float* %arrayidx13, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %28 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %28, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.37, %for.end
  %29 = load i32, i32* %j, align 4, !tbaa !5
  %30 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %cmp15 = icmp ult i32 %29, %30
  br i1 %cmp15, label %for.body.17, label %for.end.39

for.body.17:                                      ; preds = %for.cond.14
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom18 = zext i32 %31 to i64
  %32 = load float*, float** %lCurrentResult, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds float, float* %32, i64 %idxprom18
  store float 0.000000e+00, float* %arrayidx19, align 4, !tbaa !12
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.body.17
  %33 = load i32, i32* %k, align 4, !tbaa !5
  %34 = load i32, i32* %pNbComp.addr, align 4, !tbaa !5
  %cmp21 = icmp ult i32 %33, %34
  br i1 %cmp21, label %for.body.23, label %for.end.31

for.body.23:                                      ; preds = %for.cond.20
  %35 = load float*, float** %lMct, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds float, float* %35, i32 1
  store float* %incdec.ptr, float** %lMct, align 8, !tbaa !1
  %36 = load float, float* %35, align 4, !tbaa !12
  %37 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom24 = zext i32 %37 to i64
  %38 = load float*, float** %lCurrentData, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds float, float* %38, i64 %idxprom24
  %39 = load float, float* %arrayidx25, align 4, !tbaa !12
  %mul26 = fmul float %36, %39
  %40 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom27 = zext i32 %40 to i64
  %41 = load float*, float** %lCurrentResult, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds float, float* %41, i64 %idxprom27
  %42 = load float, float* %arrayidx28, align 4, !tbaa !12
  %add = fadd float %42, %mul26
  store float %add, float* %arrayidx28, align 4, !tbaa !12
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.23
  %43 = load i32, i32* %k, align 4, !tbaa !5
  %inc30 = add i32 %43, 1
  store i32 %inc30, i32* %k, align 4, !tbaa !5
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom32 = zext i32 %44 to i64
  %45 = load float*, float** %lCurrentResult, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds float, float* %45, i64 %idxprom32
  %46 = load float, float* %arrayidx33, align 4, !tbaa !12
  %47 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom34 = zext i32 %47 to i64
  %48 = load float**, float*** %lData, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds float*, float** %48, i64 %idxprom34
  %49 = load float*, float** %arrayidx35, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds float, float* %49, i32 1
  store float* %incdec.ptr36, float** %arrayidx35, align 8, !tbaa !1
  store float %46, float* %49, align 4, !tbaa !12
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.31
  %50 = load i32, i32* %j, align 4, !tbaa !5
  %inc38 = add i32 %50, 1
  store i32 %inc38, i32* %j, align 4, !tbaa !5
  br label %for.cond.14

for.end.39:                                       ; preds = %for.cond.14
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %inc41 = add i32 %51, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %52 = load float*, float** %lCurrentData, align 8, !tbaa !1
  %53 = bitcast float* %52 to i8*
  call void @free(i8* %53) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.42, %if.then
  %54 = bitcast float*** %lData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast float** %lCurrentResult to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast float** %lCurrentData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast float** %lMct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define void @opj_calculate_norms(double* %pNorms, i32 %pNbComps, float* %pMatrix) #0 {
entry:
  %pNorms.addr = alloca double*, align 8
  %pNbComps.addr = alloca i32, align 4
  %pMatrix.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lIndex = alloca i32, align 4
  %lCurrentValue = alloca float, align 4
  %lNorms = alloca double*, align 8
  %lMatrix = alloca float*, align 8
  store double* %pNorms, double** %pNorms.addr, align 8, !tbaa !1
  store i32 %pNbComps, i32* %pNbComps.addr, align 4, !tbaa !5
  store float* %pMatrix, float** %pMatrix.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %lIndex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %lCurrentValue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast double** %lNorms to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load double*, double** %pNorms.addr, align 8, !tbaa !1
  store double* %5, double** %lNorms, align 8, !tbaa !1
  %6 = bitcast float** %lMatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load float*, float** %pMatrix.addr, align 8, !tbaa !1
  store float* %7, float** %lMatrix, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %9 = load i32, i32* %pNbComps.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %10 to i64
  %11 = load double*, double** %lNorms, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !7
  %12 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %12, i32* %lIndex, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4, !tbaa !5
  %14 = load i32, i32* %pNbComps.addr, align 4, !tbaa !5
  %cmp2 = icmp ult i32 %13, %14
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %15 = load i32, i32* %lIndex, align 4, !tbaa !5
  %idxprom4 = zext i32 %15 to i64
  %16 = load float*, float** %lMatrix, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %16, i64 %idxprom4
  %17 = load float, float* %arrayidx5, align 4, !tbaa !12
  store float %17, float* %lCurrentValue, align 4, !tbaa !12
  %18 = load i32, i32* %pNbComps.addr, align 4, !tbaa !5
  %19 = load i32, i32* %lIndex, align 4, !tbaa !5
  %add = add i32 %19, %18
  store i32 %add, i32* %lIndex, align 4, !tbaa !5
  %20 = load float, float* %lCurrentValue, align 4, !tbaa !12
  %21 = load float, float* %lCurrentValue, align 4, !tbaa !12
  %mul = fmul float %20, %21
  %conv = fpext float %mul to double
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = zext i32 %22 to i64
  %23 = load double*, double** %lNorms, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds double, double* %23, i64 %idxprom6
  %24 = load double, double* %arrayidx7, align 8, !tbaa !7
  %add8 = fadd double %24, %conv
  store double %add8, double* %arrayidx7, align 8, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %25 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %25, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = zext i32 %26 to i64
  %27 = load double*, double** %lNorms, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %27, i64 %idxprom9
  %28 = load double, double* %arrayidx10, align 8, !tbaa !7
  %call = call double @sqrt(double %28) #6
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = zext i32 %29 to i64
  %30 = load double*, double** %lNorms, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %30, i64 %idxprom11
  store double %call, double* %arrayidx12, align 8, !tbaa !7
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %inc14 = add i32 %31, 1
  store i32 %inc14, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %32 = bitcast float** %lMatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast double** %lNorms to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast float* %lCurrentValue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %lIndex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{!3, !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !3, i64 0}
