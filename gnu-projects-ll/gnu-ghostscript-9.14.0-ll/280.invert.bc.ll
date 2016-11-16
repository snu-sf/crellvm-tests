; ModuleID = './invert.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"nb_compo != 0\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"./openjpeg/libopenjpeg/invert.c\00", align 1
@__PRETTY_FUNCTION__.opj_lupSolve = private unnamed_addr constant [104 x i8] c"void opj_lupSolve(OPJ_FLOAT32 *, OPJ_FLOAT32 *, OPJ_FLOAT32 *, OPJ_UINT32 *, OPJ_UINT32, OPJ_FLOAT32 *)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @opj_matrix_inversion_f(float* %pSrcMatrix, float* %pDestMatrix, i32 %nb_compo) #0 {
entry:
  %retval = alloca i32, align 4
  %pSrcMatrix.addr = alloca float*, align 8
  %pDestMatrix.addr = alloca float*, align 8
  %nb_compo.addr = alloca i32, align 4
  %l_data = alloca i8*, align 8
  %l_permutation_size = alloca i32, align 4
  %l_swap_size = alloca i32, align 4
  %l_total_size = alloca i32, align 4
  %lPermutations = alloca i32*, align 8
  %l_double_data = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store float* %pSrcMatrix, float** %pSrcMatrix.addr, align 8, !tbaa !1
  store float* %pDestMatrix, float** %pDestMatrix.addr, align 8, !tbaa !1
  store i32 %nb_compo, i32* %nb_compo.addr, align 4, !tbaa !5
  %0 = bitcast i8** %l_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %l_data, align 8, !tbaa !1
  %1 = bitcast i32* %l_permutation_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 4
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %l_permutation_size, align 4, !tbaa !5
  %3 = bitcast i32* %l_swap_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %conv2 = zext i32 %4 to i64
  %mul3 = mul i64 %conv2, 4
  %conv4 = trunc i64 %mul3 to i32
  store i32 %conv4, i32* %l_swap_size, align 4, !tbaa !5
  %5 = bitcast i32* %l_total_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %l_permutation_size, align 4, !tbaa !5
  %7 = load i32, i32* %l_swap_size, align 4, !tbaa !5
  %mul5 = mul i32 3, %7
  %add = add i32 %6, %mul5
  store i32 %add, i32* %l_total_size, align 4, !tbaa !5
  %8 = bitcast i32** %lPermutations to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* null, i32** %lPermutations, align 8, !tbaa !1
  %9 = bitcast float** %l_double_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store float* null, float** %l_double_data, align 8, !tbaa !1
  %10 = load i32, i32* %l_total_size, align 4, !tbaa !5
  %conv6 = zext i32 %10 to i64
  %cmp = icmp uge i64 %conv6, -256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %l_total_size, align 4, !tbaa !5
  %conv8 = zext i32 %11 to i64
  %call = call noalias i8* @malloc(i64 %conv8) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %l_data, align 8, !tbaa !1
  %12 = load i8*, i8** %l_data, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %12, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %13 = load i8*, i8** %l_data, align 8, !tbaa !1
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %lPermutations, align 8, !tbaa !1
  %15 = load i8*, i8** %l_data, align 8, !tbaa !1
  %16 = load i32, i32* %l_permutation_size, align 4, !tbaa !5
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  %17 = bitcast i8* %add.ptr to float*
  store float* %17, float** %l_double_data, align 8, !tbaa !1
  %18 = load i32*, i32** %lPermutations, align 8, !tbaa !1
  %19 = bitcast i32* %18 to i8*
  %20 = load i32, i32* %l_permutation_size, align 4, !tbaa !5
  %conv11 = zext i32 %20 to i64
  %call12 = call i8* @memset(i8* %19, i32 0, i64 %conv11) #4
  %21 = load float*, float** %pSrcMatrix.addr, align 8, !tbaa !1
  %22 = load i32*, i32** %lPermutations, align 8, !tbaa !1
  %23 = load float*, float** %l_double_data, align 8, !tbaa !1
  %24 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %call13 = call i32 @opj_lupDecompose(float* %21, i32* %22, float* %23, i32 %24) #5
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %25 = load i8*, i8** %l_data, align 8, !tbaa !1
  call void @free(i8* %25) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end
  %26 = load float*, float** %pSrcMatrix.addr, align 8, !tbaa !1
  %27 = load float*, float** %pDestMatrix.addr, align 8, !tbaa !1
  %28 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %29 = load i32*, i32** %lPermutations, align 8, !tbaa !1
  %30 = load float*, float** %l_double_data, align 8, !tbaa !1
  %31 = load float*, float** %l_double_data, align 8, !tbaa !1
  %32 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %idx.ext16 = zext i32 %32 to i64
  %add.ptr17 = getelementptr inbounds float, float* %31, i64 %idx.ext16
  %33 = load float*, float** %l_double_data, align 8, !tbaa !1
  %34 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %mul18 = mul i32 2, %34
  %idx.ext19 = zext i32 %mul18 to i64
  %add.ptr20 = getelementptr inbounds float, float* %33, i64 %idx.ext19
  call void @opj_lupInvert(float* %26, float* %27, i32 %28, i32* %29, float* %30, float* %add.ptr17, float* %add.ptr20) #5
  %35 = load i8*, i8** %l_data, align 8, !tbaa !1
  call void @free(i8* %35) #4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14, %if.then
  %36 = bitcast float** %l_double_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32** %lPermutations to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %l_total_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %l_swap_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %l_permutation_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %l_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @opj_lupDecompose(float* %matrix, i32* %permutations, float* %p_swap_area, i32 %nb_compo) #0 {
entry:
  %retval = alloca i32, align 4
  %matrix.addr = alloca float*, align 8
  %permutations.addr = alloca i32*, align 8
  %p_swap_area.addr = alloca float*, align 8
  %nb_compo.addr = alloca i32, align 4
  %tmpPermutations = alloca i32*, align 8
  %dstPermutations = alloca i32*, align 8
  %k2 = alloca i32, align 4
  %t = alloca i32, align 4
  %temp = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca float, align 4
  %lLastColum = alloca i32, align 4
  %lSwapSize = alloca i32, align 4
  %lTmpMatrix = alloca float*, align 8
  %lColumnMatrix = alloca float*, align 8
  %lDestMatrix = alloca float*, align 8
  %offset = alloca i32, align 4
  %lStride = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store float* %matrix, float** %matrix.addr, align 8, !tbaa !1
  store i32* %permutations, i32** %permutations.addr, align 8, !tbaa !1
  store float* %p_swap_area, float** %p_swap_area.addr, align 8, !tbaa !1
  store i32 %nb_compo, i32* %nb_compo.addr, align 4, !tbaa !5
  %0 = bitcast i32** %tmpPermutations to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32*, i32** %permutations.addr, align 8, !tbaa !1
  store i32* %1, i32** %tmpPermutations, align 8, !tbaa !1
  %2 = bitcast i32** %dstPermutations to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %k2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %k2, align 4, !tbaa !5
  %4 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast float* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %lLastColum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %sub = sub i32 %11, 1
  store i32 %sub, i32* %lLastColum, align 4, !tbaa !5
  %12 = bitcast i32* %lSwapSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %conv = zext i32 %13 to i64
  %mul = mul i64 %conv, 4
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %lSwapSize, align 4, !tbaa !5
  %14 = bitcast float** %lTmpMatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load float*, float** %matrix.addr, align 8, !tbaa !1
  store float* %15, float** %lTmpMatrix, align 8, !tbaa !1
  %16 = bitcast float** %lColumnMatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast float** %lDestMatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 1, i32* %offset, align 4, !tbaa !5
  %19 = bitcast i32* %lStride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %sub2 = sub i32 %20, 1
  store i32 %sub2, i32* %lStride, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load i32*, i32** %tmpPermutations, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %incdec.ptr, i32** %tmpPermutations, align 8, !tbaa !1
  store i32 %23, i32* %24, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32*, i32** %permutations.addr, align 8, !tbaa !1
  store i32* %26, i32** %tmpPermutations, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.77, %for.end
  %27 = load i32, i32* %k, align 4, !tbaa !5
  %28 = load i32, i32* %lLastColum, align 4, !tbaa !5
  %cmp5 = icmp ult i32 %27, %28
  br i1 %cmp5, label %for.body.7, label %for.end.79

for.body.7:                                       ; preds = %for.cond.4
  store float 0.000000e+00, float* %p, align 4, !tbaa !7
  %29 = load float*, float** %lTmpMatrix, align 8, !tbaa !1
  %30 = load i32, i32* %k, align 4, !tbaa !5
  %idx.ext = zext i32 %30 to i64
  %add.ptr = getelementptr inbounds float, float* %29, i64 %idx.ext
  store float* %add.ptr, float** %lColumnMatrix, align 8, !tbaa !1
  %31 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %31, i32* %i, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.19, %for.body.7
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %33 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %32, %33
  br i1 %cmp9, label %for.body.11, label %for.end.21

for.body.11:                                      ; preds = %for.cond.8
  %34 = load float*, float** %lColumnMatrix, align 8, !tbaa !1
  %35 = load float, float* %34, align 4, !tbaa !7
  %cmp12 = fcmp ogt float %35, 0.000000e+00
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.11
  %36 = load float*, float** %lColumnMatrix, align 8, !tbaa !1
  %37 = load float, float* %36, align 4, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %for.body.11
  %38 = load float*, float** %lColumnMatrix, align 8, !tbaa !1
  %39 = load float, float* %38, align 4, !tbaa !7
  %sub14 = fsub float -0.000000e+00, %39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %37, %cond.true ], [ %sub14, %cond.false ]
  store float %cond, float* %temp, align 4, !tbaa !7
  %40 = load float, float* %temp, align 4, !tbaa !7
  %41 = load float, float* %p, align 4, !tbaa !7
  %cmp15 = fcmp ogt float %40, %41
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %42 = load float, float* %temp, align 4, !tbaa !7
  store float %42, float* %p, align 4, !tbaa !7
  %43 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %43, i32* %k2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %44 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %45 = load float*, float** %lColumnMatrix, align 8, !tbaa !1
  %idx.ext17 = zext i32 %44 to i64
  %add.ptr18 = getelementptr inbounds float, float* %45, i64 %idx.ext17
  store float* %add.ptr18, float** %lColumnMatrix, align 8, !tbaa !1
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %inc20 = add i32 %46, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !5
  br label %for.cond.8

for.end.21:                                       ; preds = %for.cond.8
  %47 = load float, float* %p, align 4, !tbaa !7
  %conv22 = fpext float %47 to double
  %cmp23 = fcmp oeq double %conv22, 0.000000e+00
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.end.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %for.end.21
  %48 = load i32, i32* %k2, align 4, !tbaa !5
  %49 = load i32, i32* %k, align 4, !tbaa !5
  %cmp27 = icmp ne i32 %48, %49
  br i1 %cmp27, label %if.then.29, label %if.end.43

if.then.29:                                       ; preds = %if.end.26
  %50 = load i32*, i32** %tmpPermutations, align 8, !tbaa !1
  %51 = load i32, i32* %k2, align 4, !tbaa !5
  %idx.ext30 = zext i32 %51 to i64
  %add.ptr31 = getelementptr inbounds i32, i32* %50, i64 %idx.ext30
  %52 = load i32, i32* %k, align 4, !tbaa !5
  %idx.ext32 = zext i32 %52 to i64
  %idx.neg = sub i64 0, %idx.ext32
  %add.ptr33 = getelementptr inbounds i32, i32* %add.ptr31, i64 %idx.neg
  store i32* %add.ptr33, i32** %dstPermutations, align 8, !tbaa !1
  %53 = load i32*, i32** %tmpPermutations, align 8, !tbaa !1
  %54 = load i32, i32* %53, align 4, !tbaa !5
  store i32 %54, i32* %t, align 4, !tbaa !5
  %55 = load i32*, i32** %dstPermutations, align 8, !tbaa !1
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = load i32*, i32** %tmpPermutations, align 8, !tbaa !1
  store i32 %56, i32* %57, align 4, !tbaa !5
  %58 = load i32, i32* %t, align 4, !tbaa !5
  %59 = load i32*, i32** %dstPermutations, align 8, !tbaa !1
  store i32 %58, i32* %59, align 4, !tbaa !5
  %60 = load float*, float** %lTmpMatrix, align 8, !tbaa !1
  %61 = load i32, i32* %k2, align 4, !tbaa !5
  %62 = load i32, i32* %k, align 4, !tbaa !5
  %sub34 = sub i32 %61, %62
  %63 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %mul35 = mul i32 %sub34, %63
  %idx.ext36 = zext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds float, float* %60, i64 %idx.ext36
  store float* %add.ptr37, float** %lColumnMatrix, align 8, !tbaa !1
  %64 = load float*, float** %p_swap_area.addr, align 8, !tbaa !1
  %65 = bitcast float* %64 to i8*
  %66 = load float*, float** %lColumnMatrix, align 8, !tbaa !1
  %67 = bitcast float* %66 to i8*
  %68 = load i32, i32* %lSwapSize, align 4, !tbaa !5
  %conv38 = zext i32 %68 to i64
  %call = call i8* @memcpy(i8* %65, i8* %67, i64 %conv38) #4
  %69 = load float*, float** %lColumnMatrix, align 8, !tbaa !1
  %70 = bitcast float* %69 to i8*
  %71 = load float*, float** %lTmpMatrix, align 8, !tbaa !1
  %72 = bitcast float* %71 to i8*
  %73 = load i32, i32* %lSwapSize, align 4, !tbaa !5
  %conv39 = zext i32 %73 to i64
  %call40 = call i8* @memcpy(i8* %70, i8* %72, i64 %conv39) #4
  %74 = load float*, float** %lTmpMatrix, align 8, !tbaa !1
  %75 = bitcast float* %74 to i8*
  %76 = load float*, float** %p_swap_area.addr, align 8, !tbaa !1
  %77 = bitcast float* %76 to i8*
  %78 = load i32, i32* %lSwapSize, align 4, !tbaa !5
  %conv41 = zext i32 %78 to i64
  %call42 = call i8* @memcpy(i8* %75, i8* %77, i64 %conv41) #4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.29, %if.end.26
  %79 = load float*, float** %lTmpMatrix, align 8, !tbaa !1
  %80 = load i32, i32* %k, align 4, !tbaa !5
  %idx.ext44 = zext i32 %80 to i64
  %add.ptr45 = getelementptr inbounds float, float* %79, i64 %idx.ext44
  store float* %add.ptr45, float** %lDestMatrix, align 8, !tbaa !1
  %81 = load float*, float** %lDestMatrix, align 8, !tbaa !1
  %82 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %idx.ext46 = zext i32 %82 to i64
  %add.ptr47 = getelementptr inbounds float, float* %81, i64 %idx.ext46
  store float* %add.ptr47, float** %lColumnMatrix, align 8, !tbaa !1
  %83 = load float*, float** %lDestMatrix, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds float, float* %83, i32 1
  store float* %incdec.ptr48, float** %lDestMatrix, align 8, !tbaa !1
  %84 = load float, float* %83, align 4, !tbaa !7
  store float %84, float* %temp, align 4, !tbaa !7
  %85 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %85, i32* %i, align 4, !tbaa !5
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.70, %if.end.43
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %87 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %cmp50 = icmp ult i32 %86, %87
  br i1 %cmp50, label %for.body.52, label %for.end.72

for.body.52:                                      ; preds = %for.cond.49
  %88 = load float*, float** %lColumnMatrix, align 8, !tbaa !1
  %89 = load float, float* %88, align 4, !tbaa !7
  %90 = load float, float* %temp, align 4, !tbaa !7
  %div = fdiv float %89, %90
  store float %div, float* %p, align 4, !tbaa !7
  %91 = load float, float* %p, align 4, !tbaa !7
  %92 = load float*, float** %lColumnMatrix, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds float, float* %92, i32 1
  store float* %incdec.ptr53, float** %lColumnMatrix, align 8, !tbaa !1
  store float %91, float* %92, align 4, !tbaa !7
  %93 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %93, i32* %j, align 4, !tbaa !5
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.62, %for.body.52
  %94 = load i32, i32* %j, align 4, !tbaa !5
  %95 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %cmp55 = icmp ult i32 %94, %95
  br i1 %cmp55, label %for.body.57, label %for.end.64

for.body.57:                                      ; preds = %for.cond.54
  %96 = load float, float* %p, align 4, !tbaa !7
  %97 = load float*, float** %lDestMatrix, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds float, float* %97, i32 1
  store float* %incdec.ptr58, float** %lDestMatrix, align 8, !tbaa !1
  %98 = load float, float* %97, align 4, !tbaa !7
  %mul59 = fmul float %96, %98
  %99 = load float*, float** %lColumnMatrix, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds float, float* %99, i32 1
  store float* %incdec.ptr60, float** %lColumnMatrix, align 8, !tbaa !1
  %100 = load float, float* %99, align 4, !tbaa !7
  %sub61 = fsub float %100, %mul59
  store float %sub61, float* %99, align 4, !tbaa !7
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.57
  %101 = load i32, i32* %j, align 4, !tbaa !5
  %inc63 = add i32 %101, 1
  store i32 %inc63, i32* %j, align 4, !tbaa !5
  br label %for.cond.54

for.end.64:                                       ; preds = %for.cond.54
  %102 = load i32, i32* %lStride, align 4, !tbaa !5
  %103 = load float*, float** %lDestMatrix, align 8, !tbaa !1
  %idx.ext65 = zext i32 %102 to i64
  %idx.neg66 = sub i64 0, %idx.ext65
  %add.ptr67 = getelementptr inbounds float, float* %103, i64 %idx.neg66
  store float* %add.ptr67, float** %lDestMatrix, align 8, !tbaa !1
  %104 = load i32, i32* %k, align 4, !tbaa !5
  %105 = load float*, float** %lColumnMatrix, align 8, !tbaa !1
  %idx.ext68 = zext i32 %104 to i64
  %add.ptr69 = getelementptr inbounds float, float* %105, i64 %idx.ext68
  store float* %add.ptr69, float** %lColumnMatrix, align 8, !tbaa !1
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.64
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %inc71 = add i32 %106, 1
  store i32 %inc71, i32* %i, align 4, !tbaa !5
  br label %for.cond.49

for.end.72:                                       ; preds = %for.cond.49
  %107 = load i32, i32* %offset, align 4, !tbaa !5
  %inc73 = add i32 %107, 1
  store i32 %inc73, i32* %offset, align 4, !tbaa !5
  %108 = load i32, i32* %lStride, align 4, !tbaa !5
  %dec = add i32 %108, -1
  store i32 %dec, i32* %lStride, align 4, !tbaa !5
  %109 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %110 = load float*, float** %lTmpMatrix, align 8, !tbaa !1
  %idx.ext74 = zext i32 %109 to i64
  %add.ptr75 = getelementptr inbounds float, float* %110, i64 %idx.ext74
  store float* %add.ptr75, float** %lTmpMatrix, align 8, !tbaa !1
  %111 = load i32*, i32** %tmpPermutations, align 8, !tbaa !1
  %incdec.ptr76 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %incdec.ptr76, i32** %tmpPermutations, align 8, !tbaa !1
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.72
  %112 = load i32, i32* %k, align 4, !tbaa !5
  %inc78 = add i32 %112, 1
  store i32 %inc78, i32* %k, align 4, !tbaa !5
  br label %for.cond.4

for.end.79:                                       ; preds = %for.cond.4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.79, %if.then.25
  %113 = bitcast i32* %lStride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast float** %lDestMatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast float** %lColumnMatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast float** %lTmpMatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %lSwapSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %lLastColum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast float* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %k2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32** %dstPermutations to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i32** %tmpPermutations to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = load i32, i32* %retval
  ret i32 %129
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @opj_lupInvert(float* %pSrcMatrix, float* %pDestMatrix, i32 %nb_compo, i32* %pPermutations, float* %p_src_temp, float* %p_dest_temp, float* %p_swap_area) #0 {
entry:
  %pSrcMatrix.addr = alloca float*, align 8
  %pDestMatrix.addr = alloca float*, align 8
  %nb_compo.addr = alloca i32, align 4
  %pPermutations.addr = alloca i32*, align 8
  %p_src_temp.addr = alloca float*, align 8
  %p_dest_temp.addr = alloca float*, align 8
  %p_swap_area.addr = alloca float*, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %lCurrentPtr = alloca float*, align 8
  %lLineMatrix = alloca float*, align 8
  %lSwapSize = alloca i32, align 4
  store float* %pSrcMatrix, float** %pSrcMatrix.addr, align 8, !tbaa !1
  store float* %pDestMatrix, float** %pDestMatrix.addr, align 8, !tbaa !1
  store i32 %nb_compo, i32* %nb_compo.addr, align 4, !tbaa !5
  store i32* %pPermutations, i32** %pPermutations.addr, align 8, !tbaa !1
  store float* %p_src_temp, float** %p_src_temp.addr, align 8, !tbaa !1
  store float* %p_dest_temp, float** %p_dest_temp.addr, align 8, !tbaa !1
  store float* %p_swap_area, float** %p_swap_area.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast float** %lCurrentPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast float** %lLineMatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load float*, float** %pDestMatrix.addr, align 8, !tbaa !1
  store float* %4, float** %lLineMatrix, align 8, !tbaa !1
  %5 = bitcast i32* %lSwapSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %conv = zext i32 %6 to i64
  %mul = mul i64 %conv, 4
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %lSwapSize, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %7 = load i32, i32* %j, align 4, !tbaa !5
  %8 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %9 = load float*, float** %lLineMatrix, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds float, float* %9, i32 1
  store float* %incdec.ptr, float** %lLineMatrix, align 8, !tbaa !1
  store float* %9, float** %lCurrentPtr, align 8, !tbaa !1
  %10 = load float*, float** %p_src_temp.addr, align 8, !tbaa !1
  %11 = bitcast float* %10 to i8*
  %12 = load i32, i32* %lSwapSize, align 4, !tbaa !5
  %conv3 = zext i32 %12 to i64
  %call = call i8* @memset(i8* %11, i32 0, i64 %conv3) #4
  %13 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = zext i32 %13 to i64
  %14 = load float*, float** %p_src_temp.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %14, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx, align 4, !tbaa !7
  %15 = load float*, float** %p_dest_temp.addr, align 8, !tbaa !1
  %16 = load float*, float** %pSrcMatrix.addr, align 8, !tbaa !1
  %17 = load float*, float** %p_src_temp.addr, align 8, !tbaa !1
  %18 = load i32*, i32** %pPermutations.addr, align 8, !tbaa !1
  %19 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %20 = load float*, float** %p_swap_area.addr, align 8, !tbaa !1
  call void @opj_lupSolve(float* %15, float* %16, float* %17, i32* %18, i32 %19, float* %20) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %cmp5 = icmp ult i32 %21, %22
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = zext i32 %23 to i64
  %24 = load float*, float** %p_dest_temp.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %24, i64 %idxprom8
  %25 = load float, float* %arrayidx9, align 4, !tbaa !7
  %26 = load float*, float** %lCurrentPtr, align 8, !tbaa !1
  store float %25, float* %26, align 4, !tbaa !7
  %27 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %28 = load float*, float** %lCurrentPtr, align 8, !tbaa !1
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds float, float* %28, i64 %idx.ext
  store float* %add.ptr, float** %lCurrentPtr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %30 = load i32, i32* %j, align 4, !tbaa !5
  %inc11 = add i32 %30, 1
  store i32 %inc11, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %31 = bitcast i32* %lSwapSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast float** %lLineMatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast float** %lCurrentPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @opj_lupSolve(float* %pResult, float* %pMatrix, float* %pVector, i32* %pPermutations, i32 %nb_compo, float* %p_intermediate_data) #0 {
entry:
  %pResult.addr = alloca float*, align 8
  %pMatrix.addr = alloca float*, align 8
  %pVector.addr = alloca float*, align 8
  %pPermutations.addr = alloca i32*, align 8
  %nb_compo.addr = alloca i32, align 4
  %p_intermediate_data.addr = alloca float*, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca float, align 4
  %u = alloca float, align 4
  %lStride = alloca i32, align 4
  %lCurrentPtr = alloca float*, align 8
  %lIntermediatePtr = alloca float*, align 8
  %lDestPtr = alloca float*, align 8
  %lTmpMatrix = alloca float*, align 8
  %lLineMatrix = alloca float*, align 8
  %lBeginPtr = alloca float*, align 8
  %lGeneratedData = alloca float*, align 8
  %lCurrentPermutationPtr = alloca i32*, align 8
  store float* %pResult, float** %pResult.addr, align 8, !tbaa !1
  store float* %pMatrix, float** %pMatrix.addr, align 8, !tbaa !1
  store float* %pVector, float** %pVector.addr, align 8, !tbaa !1
  store i32* %pPermutations, i32** %pPermutations.addr, align 8, !tbaa !1
  store i32 %nb_compo, i32* %nb_compo.addr, align 4, !tbaa !5
  store float* %p_intermediate_data, float** %p_intermediate_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast float* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %lStride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %add = add i32 %6, 1
  store i32 %add, i32* %lStride, align 4, !tbaa !5
  %7 = bitcast float** %lCurrentPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast float** %lIntermediatePtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast float** %lDestPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast float** %lTmpMatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast float** %lLineMatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load float*, float** %pMatrix.addr, align 8, !tbaa !1
  store float* %12, float** %lLineMatrix, align 8, !tbaa !1
  %13 = bitcast float** %lBeginPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load float*, float** %pResult.addr, align 8, !tbaa !1
  %15 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds float, float* %14, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds float, float* %add.ptr, i64 -1
  store float* %add.ptr1, float** %lBeginPtr, align 8, !tbaa !1
  %16 = bitcast float** %lGeneratedData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32** %lCurrentPermutationPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32*, i32** %pPermutations.addr, align 8, !tbaa !1
  store i32* %18, i32** %lCurrentPermutationPtr, align 8, !tbaa !1
  %19 = load float*, float** %p_intermediate_data.addr, align 8, !tbaa !1
  store float* %19, float** %lIntermediatePtr, align 8, !tbaa !1
  %20 = load float*, float** %p_intermediate_data.addr, align 8, !tbaa !1
  %21 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %idx.ext2 = zext i32 %21 to i64
  %add.ptr3 = getelementptr inbounds float, float* %20, i64 %idx.ext2
  %add.ptr4 = getelementptr inbounds float, float* %add.ptr3, i64 -1
  store float* %add.ptr4, float** %lGeneratedData, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %23 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, float* %sum, align 4, !tbaa !7
  %24 = load float*, float** %p_intermediate_data.addr, align 8, !tbaa !1
  store float* %24, float** %lCurrentPtr, align 8, !tbaa !1
  %25 = load float*, float** %lLineMatrix, align 8, !tbaa !1
  store float* %25, float** %lTmpMatrix, align 8, !tbaa !1
  store i32 1, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %26 = load i32, i32* %j, align 4, !tbaa !5
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %cmp6 = icmp ule i32 %26, %27
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %28 = load float*, float** %lTmpMatrix, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds float, float* %28, i32 1
  store float* %incdec.ptr, float** %lTmpMatrix, align 8, !tbaa !1
  %29 = load float, float* %28, align 4, !tbaa !7
  %30 = load float*, float** %lCurrentPtr, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds float, float* %30, i32 1
  store float* %incdec.ptr8, float** %lCurrentPtr, align 8, !tbaa !1
  %31 = load float, float* %30, align 4, !tbaa !7
  %mul = fmul float %29, %31
  %32 = load float, float* %sum, align 4, !tbaa !7
  %add9 = fadd float %32, %mul
  store float %add9, float* %sum, align 4, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %33 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %33, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %34 = load i32*, i32** %lCurrentPermutationPtr, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %incdec.ptr10, i32** %lCurrentPermutationPtr, align 8, !tbaa !1
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %idxprom = zext i32 %35 to i64
  %36 = load float*, float** %pVector.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %36, i64 %idxprom
  %37 = load float, float* %arrayidx, align 4, !tbaa !7
  %38 = load float, float* %sum, align 4, !tbaa !7
  %sub = fsub float %37, %38
  %39 = load float*, float** %lIntermediatePtr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds float, float* %39, i32 1
  store float* %incdec.ptr11, float** %lIntermediatePtr, align 8, !tbaa !1
  store float %sub, float* %39, align 4, !tbaa !7
  %40 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %41 = load float*, float** %lLineMatrix, align 8, !tbaa !1
  %idx.ext12 = zext i32 %40 to i64
  %add.ptr13 = getelementptr inbounds float, float* %41, i64 %idx.ext12
  store float* %add.ptr13, float** %lLineMatrix, align 8, !tbaa !1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %inc15 = add i32 %42, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %43 = load float*, float** %pMatrix.addr, align 8, !tbaa !1
  %44 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %45 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %mul17 = mul i32 %44, %45
  %idx.ext18 = zext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds float, float* %43, i64 %idx.ext18
  %add.ptr20 = getelementptr inbounds float, float* %add.ptr19, i64 -1
  store float* %add.ptr20, float** %lLineMatrix, align 8, !tbaa !1
  %46 = load float*, float** %pResult.addr, align 8, !tbaa !1
  %47 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %idx.ext21 = zext i32 %47 to i64
  %add.ptr22 = getelementptr inbounds float, float* %46, i64 %idx.ext21
  store float* %add.ptr22, float** %lDestPtr, align 8, !tbaa !1
  %48 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %cmp23 = icmp ne i32 %48, 0
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.16
  br label %cond.end

cond.false:                                       ; preds = %for.end.16
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 247, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @__PRETTY_FUNCTION__.opj_lupSolve, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %49, %cond.true
  %50 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %50, 1
  store i32 %sub24, i32* %k, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.46, %cond.end
  %51 = load i32, i32* %k, align 4, !tbaa !5
  %cmp26 = icmp ne i32 %51, -1
  br i1 %cmp26, label %for.body.27, label %for.end.47

for.body.27:                                      ; preds = %for.cond.25
  store float 0.000000e+00, float* %sum, align 4, !tbaa !7
  %52 = load float*, float** %lLineMatrix, align 8, !tbaa !1
  store float* %52, float** %lTmpMatrix, align 8, !tbaa !1
  %53 = load float*, float** %lTmpMatrix, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds float, float* %53, i32 1
  store float* %incdec.ptr28, float** %lTmpMatrix, align 8, !tbaa !1
  %54 = load float, float* %53, align 4, !tbaa !7
  store float %54, float* %u, align 4, !tbaa !7
  %55 = load float*, float** %lDestPtr, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds float, float* %55, i32 -1
  store float* %incdec.ptr29, float** %lDestPtr, align 8, !tbaa !1
  store float* %55, float** %lCurrentPtr, align 8, !tbaa !1
  %56 = load i32, i32* %k, align 4, !tbaa !5
  %add30 = add nsw i32 %56, 1
  store i32 %add30, i32* %j, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.38, %for.body.27
  %57 = load i32, i32* %j, align 4, !tbaa !5
  %58 = load i32, i32* %nb_compo.addr, align 4, !tbaa !5
  %cmp32 = icmp ult i32 %57, %58
  br i1 %cmp32, label %for.body.33, label %for.end.40

for.body.33:                                      ; preds = %for.cond.31
  %59 = load float*, float** %lTmpMatrix, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds float, float* %59, i32 1
  store float* %incdec.ptr34, float** %lTmpMatrix, align 8, !tbaa !1
  %60 = load float, float* %59, align 4, !tbaa !7
  %61 = load float*, float** %lCurrentPtr, align 8, !tbaa !1
  %incdec.ptr35 = getelementptr inbounds float, float* %61, i32 1
  store float* %incdec.ptr35, float** %lCurrentPtr, align 8, !tbaa !1
  %62 = load float, float* %61, align 4, !tbaa !7
  %mul36 = fmul float %60, %62
  %63 = load float, float* %sum, align 4, !tbaa !7
  %add37 = fadd float %63, %mul36
  store float %add37, float* %sum, align 4, !tbaa !7
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.33
  %64 = load i32, i32* %j, align 4, !tbaa !5
  %inc39 = add i32 %64, 1
  store i32 %inc39, i32* %j, align 4, !tbaa !5
  br label %for.cond.31

for.end.40:                                       ; preds = %for.cond.31
  %65 = load float*, float** %lGeneratedData, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds float, float* %65, i32 -1
  store float* %incdec.ptr41, float** %lGeneratedData, align 8, !tbaa !1
  %66 = load float, float* %65, align 4, !tbaa !7
  %67 = load float, float* %sum, align 4, !tbaa !7
  %sub42 = fsub float %66, %67
  %68 = load float, float* %u, align 4, !tbaa !7
  %div = fdiv float %sub42, %68
  %69 = load float*, float** %lBeginPtr, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds float, float* %69, i32 -1
  store float* %incdec.ptr43, float** %lBeginPtr, align 8, !tbaa !1
  store float %div, float* %69, align 4, !tbaa !7
  %70 = load i32, i32* %lStride, align 4, !tbaa !5
  %71 = load float*, float** %lLineMatrix, align 8, !tbaa !1
  %idx.ext44 = zext i32 %70 to i64
  %idx.neg = sub i64 0, %idx.ext44
  %add.ptr45 = getelementptr inbounds float, float* %71, i64 %idx.neg
  store float* %add.ptr45, float** %lLineMatrix, align 8, !tbaa !1
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.40
  %72 = load i32, i32* %k, align 4, !tbaa !5
  %dec = add nsw i32 %72, -1
  store i32 %dec, i32* %k, align 4, !tbaa !5
  br label %for.cond.25

for.end.47:                                       ; preds = %for.cond.25
  %73 = bitcast i32** %lCurrentPermutationPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast float** %lGeneratedData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast float** %lBeginPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast float** %lLineMatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast float** %lTmpMatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast float** %lDestPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast float** %lIntermediatePtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast float** %lCurrentPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i32* %lStride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast float* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast float* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !3, i64 0}
