; ModuleID = './MultiSource.Benchmarks.MallocBench/59.gs.gsmatrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_point_s = type { float, float }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gs_fixed_point_s = type { i64, i64 }

@gs_identity_matrix = global %struct.gs_matrix_s { float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0, float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0 }, align 8

; Function Attrs: nounwind uwtable
define void @gs_make_identity(%struct.gs_matrix_s* %pmat) #0 {
entry:
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %1 = bitcast %struct.gs_matrix_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gs_make_translation(double %dx, double %dy, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %1 = bitcast %struct.gs_matrix_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i32 8, i1 false)
  %2 = load double, double* %dx.addr, align 8
  %conv = fptrunc double %2 to float
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 8
  store float %conv, float* %tx, align 4
  %4 = load double, double* %dy.addr, align 8
  %conv1 = fptrunc double %4 to float
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 10
  store float %conv1, float* %ty, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_make_scaling(double %sx, double %sy, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store double %sx, double* %sx.addr, align 8
  store double %sy, double* %sy.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %1 = bitcast %struct.gs_matrix_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i32 8, i1 false)
  %2 = load double, double* %sx.addr, align 8
  %conv = fptrunc double %2 to float
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 0
  store float %conv, float* %xx, align 4
  %4 = load double, double* %sy.addr, align 8
  %conv1 = fptrunc double %4 to float
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 6
  store float %conv1, float* %yy, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_make_rotation(double %ang, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %ang.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %theta = alloca float, align 4
  store double %ang, double* %ang.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load double, double* %ang.addr, align 8
  %mul = fmul double %0, 0x3F91DF46A2529D39
  %conv = fptrunc double %mul to float
  store float %conv, float* %theta, align 4
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %2 = bitcast %struct.gs_matrix_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i32 8, i1 false)
  %3 = load float, float* %theta, align 4
  %conv1 = fpext float %3 to double
  %call = call double @cos(double %conv1) #1
  %conv2 = fptrunc double %call to float
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 6
  store float %conv2, float* %yy, align 4
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 0
  store float %conv2, float* %xx, align 4
  %6 = load float, float* %theta, align 4
  %conv3 = fpext float %6 to double
  %call4 = call double @sin(double %conv3) #1
  %conv5 = fptrunc double %call4 to float
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 2
  store float %conv5, float* %xy, align 4
  %sub = fsub float -0.000000e+00, %conv5
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 4
  store float %sub, float* %yx, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_multiply(%struct.gs_matrix_s* %pm1, %struct.gs_matrix_s* %pm2, %struct.gs_matrix_s* %pmr) #0 {
entry:
  %pm1.addr = alloca %struct.gs_matrix_s*, align 8
  %pm2.addr = alloca %struct.gs_matrix_s*, align 8
  %pmr.addr = alloca %struct.gs_matrix_s*, align 8
  %xx1 = alloca float, align 4
  %yy1 = alloca float, align 4
  %tx1 = alloca float, align 4
  %ty1 = alloca float, align 4
  %xx2 = alloca float, align 4
  %yy2 = alloca float, align 4
  %xy2 = alloca float, align 4
  %yx2 = alloca float, align 4
  store %struct.gs_matrix_s* %pm1, %struct.gs_matrix_s** %pm1.addr, align 8
  store %struct.gs_matrix_s* %pm2, %struct.gs_matrix_s** %pm2.addr, align 8
  store %struct.gs_matrix_s* %pmr, %struct.gs_matrix_s** %pmr.addr, align 8
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 0
  %1 = load float, float* %xx, align 4
  store float %1, float* %xx1, align 4
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 6
  %3 = load float, float* %yy, align 4
  store float %3, float* %yy1, align 4
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 8
  %5 = load float, float* %tx, align 4
  store float %5, float* %tx1, align 4
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 10
  %7 = load float, float* %ty, align 4
  store float %7, float* %ty1, align 4
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8
  %xx3 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 0
  %9 = load float, float* %xx3, align 4
  store float %9, float* %xx2, align 4
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8
  %yy4 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 6
  %11 = load float, float* %yy4, align 4
  store float %11, float* %yy2, align 4
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 2
  %13 = load float, float* %xy, align 4
  store float %13, float* %xy2, align 4
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 4
  %15 = load float, float* %yx, align 4
  store float %15, float* %yx2, align 4
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8
  %xy5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 2
  %17 = bitcast float* %xy5 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8
  %yx6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 4
  %20 = bitcast float* %yx6 to i64*
  %21 = load i64, i64* %20, align 8
  %or = or i64 %18, %21
  %shl = shl i64 %or, 1
  %cmp = icmp eq i64 %shl, 0
  br i1 %cmp, label %if.then, label %if.else.37

if.then:                                          ; preds = %entry
  %22 = load float, float* %tx1, align 4
  %23 = load float, float* %xx2, align 4
  %mul = fmul float %22, %23
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8
  %tx7 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %24, i32 0, i32 8
  %25 = load float, float* %tx7, align 4
  %add = fadd float %mul, %25
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %tx8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %26, i32 0, i32 8
  store float %add, float* %tx8, align 4
  %27 = load float, float* %ty1, align 4
  %28 = load float, float* %yy2, align 4
  %mul9 = fmul float %27, %28
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8
  %ty10 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %29, i32 0, i32 10
  %30 = load float, float* %ty10, align 4
  %add11 = fadd float %mul9, %30
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %ty12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %31, i32 0, i32 10
  store float %add11, float* %ty12, align 4
  %32 = bitcast float* %xy2 to i64*
  %33 = load i64, i64* %32, align 8
  %shl13 = shl i64 %33, 1
  %cmp14 = icmp eq i64 %shl13, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %34 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xy16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %34, i32 0, i32 2
  store float 0.000000e+00, float* %xy16, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %35 = load float, float* %xx1, align 4
  %36 = load float, float* %xy2, align 4
  %mul17 = fmul float %35, %36
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xy18 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 2
  store float %mul17, float* %xy18, align 4
  %38 = load float, float* %tx1, align 4
  %39 = load float, float* %xy2, align 4
  %mul19 = fmul float %38, %39
  %40 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %ty20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %40, i32 0, i32 10
  %41 = load float, float* %ty20, align 4
  %add21 = fadd float %41, %mul19
  store float %add21, float* %ty20, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  %42 = load float, float* %xx1, align 4
  %43 = load float, float* %xx2, align 4
  %mul22 = fmul float %42, %43
  %44 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xx23 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %44, i32 0, i32 0
  store float %mul22, float* %xx23, align 4
  %45 = bitcast float* %yx2 to i64*
  %46 = load i64, i64* %45, align 8
  %shl24 = shl i64 %46, 1
  %cmp25 = icmp eq i64 %shl24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.end
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yx27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %47, i32 0, i32 4
  store float 0.000000e+00, float* %yx27, align 4
  br label %if.end.34

if.else.28:                                       ; preds = %if.end
  %48 = load float, float* %yy1, align 4
  %49 = load float, float* %yx2, align 4
  %mul29 = fmul float %48, %49
  %50 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yx30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %50, i32 0, i32 4
  store float %mul29, float* %yx30, align 4
  %51 = load float, float* %ty1, align 4
  %52 = load float, float* %yx2, align 4
  %mul31 = fmul float %51, %52
  %53 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %tx32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %53, i32 0, i32 8
  %54 = load float, float* %tx32, align 4
  %add33 = fadd float %54, %mul31
  store float %add33, float* %tx32, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.28, %if.then.26
  %55 = load float, float* %yy1, align 4
  %56 = load float, float* %yy2, align 4
  %mul35 = fmul float %55, %56
  %57 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yy36 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %57, i32 0, i32 6
  store float %mul35, float* %yy36, align 4
  br label %if.end.70

if.else.37:                                       ; preds = %entry
  %58 = load float, float* %xx1, align 4
  %59 = load float, float* %xx2, align 4
  %mul38 = fmul float %58, %59
  %60 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8
  %xy39 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %60, i32 0, i32 2
  %61 = load float, float* %xy39, align 4
  %62 = load float, float* %yx2, align 4
  %mul40 = fmul float %61, %62
  %add41 = fadd float %mul38, %mul40
  %63 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xx42 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %63, i32 0, i32 0
  store float %add41, float* %xx42, align 4
  %64 = load float, float* %xx1, align 4
  %65 = load float, float* %xy2, align 4
  %mul43 = fmul float %64, %65
  %66 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8
  %xy44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %66, i32 0, i32 2
  %67 = load float, float* %xy44, align 4
  %68 = load float, float* %yy2, align 4
  %mul45 = fmul float %67, %68
  %add46 = fadd float %mul43, %mul45
  %69 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xy47 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %69, i32 0, i32 2
  store float %add46, float* %xy47, align 4
  %70 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8
  %yx48 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %70, i32 0, i32 4
  %71 = load float, float* %yx48, align 4
  %72 = load float, float* %xy2, align 4
  %mul49 = fmul float %71, %72
  %73 = load float, float* %yy1, align 4
  %74 = load float, float* %yy2, align 4
  %mul50 = fmul float %73, %74
  %add51 = fadd float %mul49, %mul50
  %75 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yy52 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %75, i32 0, i32 6
  store float %add51, float* %yy52, align 4
  %76 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8
  %yx53 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %76, i32 0, i32 4
  %77 = load float, float* %yx53, align 4
  %78 = load float, float* %xx2, align 4
  %mul54 = fmul float %77, %78
  %79 = load float, float* %yy1, align 4
  %80 = load float, float* %yx2, align 4
  %mul55 = fmul float %79, %80
  %add56 = fadd float %mul54, %mul55
  %81 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yx57 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %81, i32 0, i32 4
  store float %add56, float* %yx57, align 4
  %82 = load float, float* %tx1, align 4
  %83 = load float, float* %xx2, align 4
  %mul58 = fmul float %82, %83
  %84 = load float, float* %ty1, align 4
  %85 = load float, float* %yx2, align 4
  %mul59 = fmul float %84, %85
  %add60 = fadd float %mul58, %mul59
  %86 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8
  %tx61 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %86, i32 0, i32 8
  %87 = load float, float* %tx61, align 4
  %add62 = fadd float %add60, %87
  %88 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %tx63 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %88, i32 0, i32 8
  store float %add62, float* %tx63, align 4
  %89 = load float, float* %tx1, align 4
  %90 = load float, float* %xy2, align 4
  %mul64 = fmul float %89, %90
  %91 = load float, float* %ty1, align 4
  %92 = load float, float* %yy2, align 4
  %mul65 = fmul float %91, %92
  %add66 = fadd float %mul64, %mul65
  %93 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8
  %ty67 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %93, i32 0, i32 10
  %94 = load float, float* %ty67, align 4
  %add68 = fadd float %add66, %94
  %95 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %ty69 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %95, i32 0, i32 10
  store float %add68, float* %ty69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.37, %if.end.34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_invert(%struct.gs_matrix_s* %pm, %struct.gs_matrix_s* %pmr) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca %struct.gs_matrix_s*, align 8
  %pmr.addr = alloca %struct.gs_matrix_s*, align 8
  %det = alloca double, align 8
  %mxx = alloca float, align 4
  %mtx = alloca float, align 4
  store %struct.gs_matrix_s* %pm, %struct.gs_matrix_s** %pm.addr, align 8
  store %struct.gs_matrix_s* %pmr, %struct.gs_matrix_s** %pmr.addr, align 8
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 2
  %1 = bitcast float* %xy to i64*
  %2 = load i64, i64* %1, align 8
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 4
  %4 = bitcast float* %yx to i64*
  %5 = load i64, i64* %4, align 8
  %or = or i64 %2, %5
  %shl = shl i64 %or, 1
  %cmp = icmp eq i64 %shl, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 0
  %7 = bitcast float* %xx to i64*
  %8 = load i64, i64* %7, align 8
  %shl1 = shl i64 %8, 1
  %cmp2 = icmp eq i64 %shl1, 0
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 6
  %10 = bitcast float* %yy to i64*
  %11 = load i64, i64* %10, align 8
  %shl3 = shl i64 %11, 1
  %cmp4 = icmp eq i64 %shl3, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %xx6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 0
  %13 = load float, float* %xx6, align 4
  %conv = fpext float %13 to double
  %div = fdiv double 1.000000e+00, %conv
  %conv7 = fptrunc double %div to float
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xx8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 0
  store float %conv7, float* %xx8, align 4
  %sub = fsub float -0.000000e+00, %conv7
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 8
  %16 = load float, float* %tx, align 4
  %mul = fmul float %sub, %16
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %tx9 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 8
  store float %mul, float* %tx9, align 4
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xy10 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 2
  store float 0.000000e+00, float* %xy10, align 4
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yx11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 4
  store float 0.000000e+00, float* %yx11, align 4
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yy12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 6
  %21 = load float, float* %yy12, align 4
  %conv13 = fpext float %21 to double
  %div14 = fdiv double 1.000000e+00, %conv13
  %conv15 = fptrunc double %div14 to float
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yy16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %22, i32 0, i32 6
  store float %conv15, float* %yy16, align 4
  %sub17 = fsub float -0.000000e+00, %conv15
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 10
  %24 = load float, float* %ty, align 4
  %mul18 = fmul float %sub17, %24
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %ty19 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 10
  store float %mul18, float* %ty19, align 4
  br label %if.end.70

if.else:                                          ; preds = %entry
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %xx20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %26, i32 0, i32 0
  %27 = load float, float* %xx20, align 4
  %28 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yy21 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %28, i32 0, i32 6
  %29 = load float, float* %yy21, align 4
  %mul22 = fmul float %27, %29
  %30 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %xy23 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %30, i32 0, i32 2
  %31 = load float, float* %xy23, align 4
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yx24 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %32, i32 0, i32 4
  %33 = load float, float* %yx24, align 4
  %mul25 = fmul float %31, %33
  %sub26 = fsub float %mul22, %mul25
  %conv27 = fpext float %sub26 to double
  store double %conv27, double* %det, align 8
  %34 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %xx28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %34, i32 0, i32 0
  %35 = load float, float* %xx28, align 4
  store float %35, float* %mxx, align 4
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %tx29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %36, i32 0, i32 8
  %37 = load float, float* %tx29, align 4
  store float %37, float* %mtx, align 4
  %38 = load double, double* %det, align 8
  %cmp30 = fcmp oeq double %38, 0.000000e+00
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  store i32 -23, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.else
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yy34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %39, i32 0, i32 6
  %40 = load float, float* %yy34, align 4
  %conv35 = fpext float %40 to double
  %41 = load double, double* %det, align 8
  %div36 = fdiv double %conv35, %41
  %conv37 = fptrunc double %div36 to float
  %42 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xx38 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %42, i32 0, i32 0
  store float %conv37, float* %xx38, align 4
  %43 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %xy39 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %43, i32 0, i32 2
  %44 = load float, float* %xy39, align 4
  %sub40 = fsub float -0.000000e+00, %44
  %conv41 = fpext float %sub40 to double
  %45 = load double, double* %det, align 8
  %div42 = fdiv double %conv41, %45
  %conv43 = fptrunc double %div42 to float
  %46 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xy44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %46, i32 0, i32 2
  store float %conv43, float* %xy44, align 4
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yx45 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %47, i32 0, i32 4
  %48 = load float, float* %yx45, align 4
  %sub46 = fsub float -0.000000e+00, %48
  %conv47 = fpext float %sub46 to double
  %49 = load double, double* %det, align 8
  %div48 = fdiv double %conv47, %49
  %conv49 = fptrunc double %div48 to float
  %50 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yx50 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %50, i32 0, i32 4
  store float %conv49, float* %yx50, align 4
  %51 = load float, float* %mxx, align 4
  %conv51 = fpext float %51 to double
  %52 = load double, double* %det, align 8
  %div52 = fdiv double %conv51, %52
  %conv53 = fptrunc double %div52 to float
  %53 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yy54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %53, i32 0, i32 6
  store float %conv53, float* %yy54, align 4
  %54 = load float, float* %mtx, align 4
  %55 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xx55 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %55, i32 0, i32 0
  %56 = load float, float* %xx55, align 4
  %mul56 = fmul float %54, %56
  %57 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %ty57 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %57, i32 0, i32 10
  %58 = load float, float* %ty57, align 4
  %59 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yx58 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %59, i32 0, i32 4
  %60 = load float, float* %yx58, align 4
  %mul59 = fmul float %58, %60
  %add = fadd float %mul56, %mul59
  %sub60 = fsub float -0.000000e+00, %add
  %61 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %tx61 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %61, i32 0, i32 8
  store float %sub60, float* %tx61, align 4
  %62 = load float, float* %mtx, align 4
  %63 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xy62 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %63, i32 0, i32 2
  %64 = load float, float* %xy62, align 4
  %mul63 = fmul float %62, %64
  %65 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %ty64 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %65, i32 0, i32 10
  %66 = load float, float* %ty64, align 4
  %67 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yy65 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %67, i32 0, i32 6
  %68 = load float, float* %yy65, align 4
  %mul66 = fmul float %66, %68
  %add67 = fadd float %mul63, %mul66
  %sub68 = fsub float -0.000000e+00, %add67
  %69 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %ty69 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %69, i32 0, i32 10
  store float %sub68, float* %ty69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.33, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.32, %if.then.5
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_rotate(%struct.gs_matrix_s* %pm, double %ang, %struct.gs_matrix_s* %pmr) #0 {
entry:
  %pm.addr = alloca %struct.gs_matrix_s*, align 8
  %ang.addr = alloca double, align 8
  %pmr.addr = alloca %struct.gs_matrix_s*, align 8
  %mxx = alloca float, align 4
  %mxy = alloca float, align 4
  %quads = alloca i32, align 4
  %tsin = alloca float, align 4
  %tcos = alloca float, align 4
  %isin = alloca i32, align 4
  %icos = alloca i32, align 4
  %t = alloca i32, align 4
  %theta = alloca float, align 4
  store %struct.gs_matrix_s* %pm, %struct.gs_matrix_s** %pm.addr, align 8
  store double %ang, double* %ang.addr, align 8
  store %struct.gs_matrix_s* %pmr, %struct.gs_matrix_s** %pmr.addr, align 8
  %0 = load double, double* %ang.addr, align 8
  %cmp = fcmp oge double %0, -3.600000e+02
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load double, double* %ang.addr, align 8
  %cmp1 = fcmp ole double %1, 3.600000e+02
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load double, double* %ang.addr, align 8
  %3 = load double, double* %ang.addr, align 8
  %conv = fptosi double %3 to i32
  %div = sdiv i32 %conv, 90
  store i32 %div, i32* %quads, align 4
  %mul = mul nsw i32 %div, 90
  %conv3 = sitofp i32 %mul to double
  %cmp4 = fcmp oeq double %2, %conv3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  store i32 0, i32* %isin, align 4
  store i32 1, i32* %icos, align 4
  %4 = load i32, i32* %quads, align 4
  %and = and i32 %4, 3
  store i32 %and, i32* %quads, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load i32, i32* %quads, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %quads, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %isin, align 4
  store i32 %6, i32* %t, align 4
  %7 = load i32, i32* %icos, align 4
  store i32 %7, i32* %isin, align 4
  %8 = load i32, i32* %t, align 4
  %sub = sub nsw i32 0, %8
  store i32 %sub, i32* %icos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %isin, align 4
  %conv6 = sitofp i32 %9 to float
  store float %conv6, float* %tsin, align 4
  %10 = load i32, i32* %icos, align 4
  %conv7 = sitofp i32 %10 to float
  store float %conv7, float* %tcos, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %11 = load double, double* %ang.addr, align 8
  %mul8 = fmul double %11, 0x3F91DF46A2529D39
  %conv9 = fptrunc double %mul8 to float
  store float %conv9, float* %theta, align 4
  %12 = load float, float* %theta, align 4
  %conv10 = fpext float %12 to double
  %call = call double @sin(double %conv10) #1
  %conv11 = fptrunc double %call to float
  store float %conv11, float* %tsin, align 4
  %13 = load float, float* %theta, align 4
  %conv12 = fpext float %13 to double
  %call13 = call double @cos(double %conv12) #1
  %conv14 = fptrunc double %call13 to float
  store float %conv14, float* %tcos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 0
  %15 = load float, float* %xx, align 4
  store float %15, float* %mxx, align 4
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 2
  %17 = load float, float* %xy, align 4
  store float %17, float* %mxy, align 4
  %18 = load float, float* %tcos, align 4
  %19 = load float, float* %mxx, align 4
  %mul15 = fmul float %18, %19
  %20 = load float, float* %tsin, align 4
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 4
  %22 = load float, float* %yx, align 4
  %mul16 = fmul float %20, %22
  %add = fadd float %mul15, %mul16
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xx17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 0
  store float %add, float* %xx17, align 4
  %24 = load float, float* %tcos, align 4
  %25 = load float, float* %mxy, align 4
  %mul18 = fmul float %24, %25
  %26 = load float, float* %tsin, align 4
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %27, i32 0, i32 6
  %28 = load float, float* %yy, align 4
  %mul19 = fmul float %26, %28
  %add20 = fadd float %mul18, %mul19
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %xy21 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %29, i32 0, i32 2
  store float %add20, float* %xy21, align 4
  %30 = load float, float* %tcos, align 4
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yx22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %31, i32 0, i32 4
  %32 = load float, float* %yx22, align 4
  %mul23 = fmul float %30, %32
  %33 = load float, float* %tsin, align 4
  %34 = load float, float* %mxx, align 4
  %mul24 = fmul float %33, %34
  %sub25 = fsub float %mul23, %mul24
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yx26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 4
  store float %sub25, float* %yx26, align 4
  %36 = load float, float* %tcos, align 4
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %yy27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 6
  %38 = load float, float* %yy27, align 4
  %mul28 = fmul float %36, %38
  %39 = load float, float* %tsin, align 4
  %40 = load float, float* %mxy, align 4
  %mul29 = fmul float %39, %40
  %sub30 = fsub float %mul28, %mul29
  %41 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %yy31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %41, i32 0, i32 6
  store float %sub30, float* %yy31, align 4
  %42 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %42, i32 0, i32 8
  %43 = load float, float* %tx, align 4
  %44 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %tx32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %44, i32 0, i32 8
  store float %43, float* %tx32, align 4
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %45, i32 0, i32 10
  %46 = load float, float* %ty, align 4
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8
  %ty33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %47, i32 0, i32 10
  store float %46, float* %ty33, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_point_transform(double %x, double %y, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %ppt) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i32 0, i32 0
  %2 = load float, float* %xx, align 4
  %conv = fpext float %2 to double
  %mul = fmul double %0, %conv
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 8
  %4 = load float, float* %tx, align 4
  %conv1 = fpext float %4 to double
  %add = fadd double %mul, %conv1
  %conv2 = fptrunc double %add to float
  %5 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i32 0, i32 0
  store float %conv2, float* %x3, align 4
  %6 = load double, double* %y.addr, align 8
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 6
  %8 = load float, float* %yy, align 4
  %conv4 = fpext float %8 to double
  %mul5 = fmul double %6, %conv4
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 10
  %10 = load float, float* %ty, align 4
  %conv6 = fpext float %10 to double
  %add7 = fadd double %mul5, %conv6
  %conv8 = fptrunc double %add7 to float
  %11 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 1
  store float %conv8, float* %y9, align 4
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 4
  %13 = bitcast float* %yx to i64*
  %14 = load i64, i64* %13, align 8
  %shl = shl i64 %14, 1
  %cmp = icmp eq i64 %shl, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load double, double* %y.addr, align 8
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yx11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 4
  %17 = load float, float* %yx11, align 4
  %conv12 = fpext float %17 to double
  %mul13 = fmul double %15, %conv12
  %18 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %18, i32 0, i32 0
  %19 = load float, float* %x14, align 4
  %conv15 = fpext float %19 to double
  %add16 = fadd double %conv15, %mul13
  %conv17 = fptrunc double %add16 to float
  store float %conv17, float* %x14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 2
  %21 = bitcast float* %xy to i64*
  %22 = load i64, i64* %21, align 8
  %shl18 = shl i64 %22, 1
  %cmp19 = icmp eq i64 %shl18, 0
  br i1 %cmp19, label %if.end.29, label %if.then.21

if.then.21:                                       ; preds = %if.end
  %23 = load double, double* %x.addr, align 8
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xy22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %24, i32 0, i32 2
  %25 = load float, float* %xy22, align 4
  %conv23 = fpext float %25 to double
  %mul24 = fmul double %23, %conv23
  %26 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8
  %y25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %26, i32 0, i32 1
  %27 = load float, float* %y25, align 4
  %conv26 = fpext float %27 to double
  %add27 = fadd double %conv26, %mul24
  %conv28 = fptrunc double %add27 to float
  store float %conv28, float* %y25, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.21, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_point_transform_inverse(double %x, double %y, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  %imat = alloca %struct.gs_matrix_s, align 8
  %code = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 2
  %1 = bitcast float* %xy to i64*
  %2 = load i64, i64* %1, align 8
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 4
  %4 = bitcast float* %yx to i64*
  %5 = load i64, i64* %4, align 8
  %or = or i64 %2, %5
  %shl = shl i64 %or, 1
  %cmp = icmp eq i64 %shl, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, double* %x.addr, align 8
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 8
  %8 = load float, float* %tx, align 4
  %conv = fpext float %8 to double
  %sub = fsub double %6, %conv
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 0
  %10 = load float, float* %xx, align 4
  %conv1 = fpext float %10 to double
  %div = fdiv double %sub, %conv1
  %conv2 = fptrunc double %div to float
  %11 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 0
  store float %conv2, float* %x3, align 4
  %12 = load double, double* %y.addr, align 8
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 10
  %14 = load float, float* %ty, align 4
  %conv4 = fpext float %14 to double
  %sub5 = fsub double %12, %conv4
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 6
  %16 = load float, float* %yy, align 4
  %conv6 = fpext float %16 to double
  %div7 = fdiv double %sub5, %conv6
  %conv8 = fptrunc double %div7 to float
  %17 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %17, i32 0, i32 1
  store float %conv8, float* %y9, align 4
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %18, %struct.gs_matrix_s* %imat)
  store i32 %call, i32* %code, align 4
  %19 = load i32, i32* %code, align 4
  %cmp10 = icmp slt i32 %19, 0
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else
  %20 = load i32, i32* %code, align 4
  store i32 %20, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %21 = load double, double* %x.addr, align 8
  %22 = load double, double* %y.addr, align 8
  %23 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8
  %call13 = call i32 @gs_point_transform(double %21, double %22, %struct.gs_matrix_s* %imat, %struct.gs_point_s* %23)
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.12, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @gs_distance_transform(double %dx, double %dy, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %pdpt) #0 {
entry:
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pdpt.addr = alloca %struct.gs_point_s*, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store %struct.gs_point_s* %pdpt, %struct.gs_point_s** %pdpt.addr, align 8
  %0 = load double, double* %dx.addr, align 8
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i32 0, i32 0
  %2 = load float, float* %xx, align 4
  %conv = fpext float %2 to double
  %mul = fmul double %0, %conv
  %conv1 = fptrunc double %mul to float
  %3 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i32 0, i32 0
  store float %conv1, float* %x, align 4
  %4 = load double, double* %dy.addr, align 8
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 6
  %6 = load float, float* %yy, align 4
  %conv2 = fpext float %6 to double
  %mul3 = fmul double %4, %conv2
  %conv4 = fptrunc double %mul3 to float
  %7 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %7, i32 0, i32 1
  store float %conv4, float* %y, align 4
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 4
  %9 = bitcast float* %yx to i64*
  %10 = load i64, i64* %9, align 8
  %shl = shl i64 %10, 1
  %cmp = icmp eq i64 %shl, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load double, double* %dy.addr, align 8
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yx6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 4
  %13 = load float, float* %yx6, align 4
  %conv7 = fpext float %13 to double
  %mul8 = fmul double %11, %conv7
  %14 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %14, i32 0, i32 0
  %15 = load float, float* %x9, align 4
  %conv10 = fpext float %15 to double
  %add = fadd double %conv10, %mul8
  %conv11 = fptrunc double %add to float
  store float %conv11, float* %x9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 2
  %17 = bitcast float* %xy to i64*
  %18 = load i64, i64* %17, align 8
  %shl12 = shl i64 %18, 1
  %cmp13 = icmp eq i64 %shl12, 0
  br i1 %cmp13, label %if.end.23, label %if.then.15

if.then.15:                                       ; preds = %if.end
  %19 = load double, double* %dx.addr, align 8
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xy16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 2
  %21 = load float, float* %xy16, align 4
  %conv17 = fpext float %21 to double
  %mul18 = fmul double %19, %conv17
  %22 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8
  %y19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %22, i32 0, i32 1
  %23 = load float, float* %y19, align 4
  %conv20 = fpext float %23 to double
  %add21 = fadd double %conv20, %mul18
  %conv22 = fptrunc double %add21 to float
  store float %conv22, float* %y19, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.15, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_distance_transform_inverse(double %dx, double %dy, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %pdpt) #0 {
entry:
  %retval = alloca i32, align 4
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pdpt.addr = alloca %struct.gs_point_s*, align 8
  %det = alloca double, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store %struct.gs_point_s* %pdpt, %struct.gs_point_s** %pdpt.addr, align 8
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 2
  %1 = bitcast float* %xy to i64*
  %2 = load i64, i64* %1, align 8
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 4
  %4 = bitcast float* %yx to i64*
  %5 = load i64, i64* %4, align 8
  %or = or i64 %2, %5
  %shl = shl i64 %or, 1
  %cmp = icmp eq i64 %shl, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, double* %dx.addr, align 8
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 0
  %8 = load float, float* %xx, align 4
  %conv = fpext float %8 to double
  %div = fdiv double %6, %conv
  %conv1 = fptrunc double %div to float
  %9 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %9, i32 0, i32 0
  store float %conv1, float* %x, align 4
  %10 = load double, double* %dy.addr, align 8
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 6
  %12 = load float, float* %yy, align 4
  %conv2 = fpext float %12 to double
  %div3 = fdiv double %10, %conv2
  %conv4 = fptrunc double %div3 to float
  %13 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %13, i32 0, i32 1
  store float %conv4, float* %y, align 4
  br label %if.end.34

if.else:                                          ; preds = %entry
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xx5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 0
  %15 = load float, float* %xx5, align 4
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yy6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 6
  %17 = load float, float* %yy6, align 4
  %mul = fmul float %15, %17
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xy7 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 2
  %19 = load float, float* %xy7, align 4
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yx8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 4
  %21 = load float, float* %yx8, align 4
  %mul9 = fmul float %19, %21
  %sub = fsub float %mul, %mul9
  %conv10 = fpext float %sub to double
  store double %conv10, double* %det, align 8
  %22 = load double, double* %det, align 8
  %cmp11 = fcmp oeq double %22, 0.000000e+00
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %23 = load double, double* %dx.addr, align 8
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yy14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %24, i32 0, i32 6
  %25 = load float, float* %yy14, align 4
  %conv15 = fpext float %25 to double
  %mul16 = fmul double %23, %conv15
  %26 = load double, double* %dy.addr, align 8
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yx17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %27, i32 0, i32 4
  %28 = load float, float* %yx17, align 4
  %conv18 = fpext float %28 to double
  %mul19 = fmul double %26, %conv18
  %sub20 = fsub double %mul16, %mul19
  %29 = load double, double* %det, align 8
  %div21 = fdiv double %sub20, %29
  %conv22 = fptrunc double %div21 to float
  %30 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %30, i32 0, i32 0
  store float %conv22, float* %x23, align 4
  %31 = load double, double* %dy.addr, align 8
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xx24 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %32, i32 0, i32 0
  %33 = load float, float* %xx24, align 4
  %conv25 = fpext float %33 to double
  %mul26 = fmul double %31, %conv25
  %34 = load double, double* %dx.addr, align 8
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xy27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 2
  %36 = load float, float* %xy27, align 4
  %conv28 = fpext float %36 to double
  %mul29 = fmul double %34, %conv28
  %sub30 = fsub double %mul26, %mul29
  %37 = load double, double* %det, align 8
  %div31 = fdiv double %sub30, %37
  %conv32 = fptrunc double %div31 to float
  %38 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %38, i32 0, i32 1
  store float %conv32, float* %y33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.13
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %pbox_in, %struct.gs_matrix_s* %pmat, %struct.gs_rect_s* %pbox_out) #0 {
entry:
  %retval = alloca i32, align 4
  %pbox_in.addr = alloca %struct.gs_rect_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pbox_out.addr = alloca %struct.gs_rect_s*, align 8
  %code = alloca i32, align 4
  %p = alloca %struct.gs_point_s, align 4
  %w = alloca %struct.gs_point_s, align 4
  %h = alloca %struct.gs_point_s, align 4
  %xmin = alloca float, align 4
  %ymin = alloca float, align 4
  %xmax = alloca float, align 4
  %ymax = alloca float, align 4
  store %struct.gs_rect_s* %pbox_in, %struct.gs_rect_s** %pbox_in.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store %struct.gs_rect_s* %pbox_out, %struct.gs_rect_s** %pbox_out.addr, align 8
  %0 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8
  %p1 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %0, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %1 = load float, float* %x, align 4
  %conv = fpext float %1 to double
  %2 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8
  %p2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %3 = load float, float* %y, align 4
  %conv3 = fpext float %3 to double
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %call = call i32 @gs_point_transform_inverse(double %conv, double %conv3, %struct.gs_matrix_s* %4, %struct.gs_point_s* %p)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %5, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %6 = load float, float* %x5, align 4
  %7 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8
  %p6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %7, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p6, i32 0, i32 0
  %8 = load float, float* %x7, align 4
  %sub = fsub float %6, %8
  %conv8 = fpext float %sub to double
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %call9 = call i32 @gs_distance_transform_inverse(double %conv8, double 0.000000e+00, %struct.gs_matrix_s* %9, %struct.gs_point_s* %w)
  store i32 %call9, i32* %code, align 4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %10 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8
  %q13 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %10, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q13, i32 0, i32 1
  %11 = load float, float* %y14, align 4
  %12 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8
  %p15 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %12, i32 0, i32 0
  %y16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p15, i32 0, i32 1
  %13 = load float, float* %y16, align 4
  %sub17 = fsub float %11, %13
  %conv18 = fpext float %sub17 to double
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %call19 = call i32 @gs_distance_transform_inverse(double 0.000000e+00, double %conv18, %struct.gs_matrix_s* %14, %struct.gs_point_s* %h)
  store i32 %call19, i32* %code, align 4
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false, %entry
  %15 = load i32, i32* %code, align 4
  store i32 %15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.12
  %x22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %16 = load float, float* %x22, align 4
  store float %16, float* %xmax, align 4
  store float %16, float* %xmin, align 4
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 0
  %17 = load float, float* %x23, align 4
  %cmp24 = fcmp olt float %17, 0.000000e+00
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end
  %x27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 0
  %18 = load float, float* %x27, align 4
  %19 = load float, float* %xmin, align 4
  %add = fadd float %19, %18
  store float %add, float* %xmin, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %x28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 0
  %20 = load float, float* %x28, align 4
  %21 = load float, float* %xmax, align 4
  %add29 = fadd float %21, %20
  store float %add29, float* %xmax, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.26
  %x31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %h, i32 0, i32 0
  %22 = load float, float* %x31, align 4
  %cmp32 = fcmp olt float %22, 0.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.end.30
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %h, i32 0, i32 0
  %23 = load float, float* %x35, align 4
  %24 = load float, float* %xmin, align 4
  %add36 = fadd float %24, %23
  store float %add36, float* %xmin, align 4
  br label %if.end.40

if.else.37:                                       ; preds = %if.end.30
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %h, i32 0, i32 0
  %25 = load float, float* %x38, align 4
  %26 = load float, float* %xmax, align 4
  %add39 = fadd float %26, %25
  store float %add39, float* %xmax, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.34
  %y41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  %27 = load float, float* %y41, align 4
  store float %27, float* %ymax, align 4
  store float %27, float* %ymin, align 4
  %y42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 1
  %28 = load float, float* %y42, align 4
  %cmp43 = fcmp olt float %28, 0.000000e+00
  br i1 %cmp43, label %if.then.45, label %if.else.48

if.then.45:                                       ; preds = %if.end.40
  %y46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 1
  %29 = load float, float* %y46, align 4
  %30 = load float, float* %ymin, align 4
  %add47 = fadd float %30, %29
  store float %add47, float* %ymin, align 4
  br label %if.end.51

if.else.48:                                       ; preds = %if.end.40
  %y49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 1
  %31 = load float, float* %y49, align 4
  %32 = load float, float* %ymax, align 4
  %add50 = fadd float %32, %31
  store float %add50, float* %ymax, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.45
  %y52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %h, i32 0, i32 1
  %33 = load float, float* %y52, align 4
  %cmp53 = fcmp olt float %33, 0.000000e+00
  br i1 %cmp53, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.end.51
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %h, i32 0, i32 1
  %34 = load float, float* %y56, align 4
  %35 = load float, float* %ymin, align 4
  %add57 = fadd float %35, %34
  store float %add57, float* %ymin, align 4
  br label %if.end.61

if.else.58:                                       ; preds = %if.end.51
  %y59 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %h, i32 0, i32 1
  %36 = load float, float* %y59, align 4
  %37 = load float, float* %ymax, align 4
  %add60 = fadd float %37, %36
  store float %add60, float* %ymax, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.55
  %38 = load float, float* %xmin, align 4
  %39 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_out.addr, align 8
  %p62 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %39, i32 0, i32 0
  %x63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p62, i32 0, i32 0
  store float %38, float* %x63, align 4
  %40 = load float, float* %ymin, align 4
  %41 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_out.addr, align 8
  %p64 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %41, i32 0, i32 0
  %y65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p64, i32 0, i32 1
  store float %40, float* %y65, align 4
  %42 = load float, float* %xmax, align 4
  %43 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_out.addr, align 8
  %q66 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %43, i32 0, i32 1
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q66, i32 0, i32 0
  store float %42, float* %x67, align 4
  %44 = load float, float* %ymax, align 4
  %45 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_out.addr, align 8
  %q68 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %45, i32 0, i32 1
  %y69 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q68, i32 0, i32 1
  store float %44, float* %y69, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %pmat, double %x, double %y, %struct.gs_fixed_point_s* %ppt) #0 {
entry:
  %pmat.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  store %struct.gs_matrix_fixed_s* %pmat, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %1, i32 0, i32 0
  %2 = load float, float* %xx, align 4
  %conv = fpext float %2 to double
  %mul = fmul double %0, %conv
  %mul1 = fmul double %mul, 4.096000e+03
  %conv2 = fptosi double %mul1 to i64
  %3 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %3, i32 0, i32 12
  %4 = load i64, i64* %tx_fixed, align 8
  %add = add nsw i64 %conv2, %4
  %5 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %5, i32 0, i32 0
  store i64 %add, i64* %x3, align 8
  %6 = load double, double* %y.addr, align 8
  %7 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %7, i32 0, i32 6
  %8 = load float, float* %yy, align 4
  %conv4 = fpext float %8 to double
  %mul5 = fmul double %6, %conv4
  %mul6 = fmul double %mul5, 4.096000e+03
  %conv7 = fptosi double %mul6 to i64
  %9 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %9, i32 0, i32 13
  %10 = load i64, i64* %ty_fixed, align 8
  %add8 = add nsw i64 %conv7, %10
  %11 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i32 0, i32 1
  store i64 %add8, i64* %y9, align 8
  %12 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %12, i32 0, i32 4
  %13 = bitcast float* %yx to i64*
  %14 = load i64, i64* %13, align 8
  %shl = shl i64 %14, 1
  %cmp = icmp eq i64 %shl, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load double, double* %y.addr, align 8
  %16 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %yx11 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %16, i32 0, i32 4
  %17 = load float, float* %yx11, align 4
  %conv12 = fpext float %17 to double
  %mul13 = fmul double %15, %conv12
  %mul14 = fmul double %mul13, 4.096000e+03
  %conv15 = fptosi double %mul14 to i64
  %18 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i32 0, i32 0
  %19 = load i64, i64* %x16, align 8
  %add17 = add nsw i64 %19, %conv15
  store i64 %add17, i64* %x16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %20, i32 0, i32 2
  %21 = bitcast float* %xy to i64*
  %22 = load i64, i64* %21, align 8
  %shl18 = shl i64 %22, 1
  %cmp19 = icmp eq i64 %shl18, 0
  br i1 %cmp19, label %if.end.29, label %if.then.21

if.then.21:                                       ; preds = %if.end
  %23 = load double, double* %x.addr, align 8
  %24 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %xy22 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %24, i32 0, i32 2
  %25 = load float, float* %xy22, align 4
  %conv23 = fpext float %25 to double
  %mul24 = fmul double %23, %conv23
  %mul25 = fmul double %mul24, 4.096000e+03
  %conv26 = fptosi double %mul25 to i64
  %26 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %26, i32 0, i32 1
  %27 = load i64, i64* %y27, align 8
  %add28 = add nsw i64 %27, %conv26
  store i64 %add28, i64* %y27, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.21, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %pmat, double %dx, double %dy, %struct.gs_fixed_point_s* %ppt) #0 {
entry:
  %pmat.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  store %struct.gs_matrix_fixed_s* %pmat, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %0 = load double, double* %dx.addr, align 8
  %1 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %1, i32 0, i32 0
  %2 = load float, float* %xx, align 4
  %conv = fpext float %2 to double
  %mul = fmul double %0, %conv
  %mul1 = fmul double %mul, 4.096000e+03
  %conv2 = fptosi double %mul1 to i64
  %3 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i32 0, i32 0
  store i64 %conv2, i64* %x, align 8
  %4 = load double, double* %dy.addr, align 8
  %5 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %5, i32 0, i32 6
  %6 = load float, float* %yy, align 4
  %conv3 = fpext float %6 to double
  %mul4 = fmul double %4, %conv3
  %mul5 = fmul double %mul4, 4.096000e+03
  %conv6 = fptosi double %mul5 to i64
  %7 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %7, i32 0, i32 1
  store i64 %conv6, i64* %y, align 8
  %8 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %8, i32 0, i32 4
  %9 = bitcast float* %yx to i64*
  %10 = load i64, i64* %9, align 8
  %shl = shl i64 %10, 1
  %cmp = icmp eq i64 %shl, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load double, double* %dy.addr, align 8
  %12 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %yx8 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %12, i32 0, i32 4
  %13 = load float, float* %yx8, align 4
  %conv9 = fpext float %13 to double
  %mul10 = fmul double %11, %conv9
  %mul11 = fmul double %mul10, 4.096000e+03
  %conv12 = fptosi double %mul11 to i64
  %14 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %14, i32 0, i32 0
  %15 = load i64, i64* %x13, align 8
  %add = add nsw i64 %15, %conv12
  store i64 %add, i64* %x13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %16, i32 0, i32 2
  %17 = bitcast float* %xy to i64*
  %18 = load i64, i64* %17, align 8
  %shl14 = shl i64 %18, 1
  %cmp15 = icmp eq i64 %shl14, 0
  br i1 %cmp15, label %if.end.25, label %if.then.17

if.then.17:                                       ; preds = %if.end
  %19 = load double, double* %dx.addr, align 8
  %20 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8
  %xy18 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %20, i32 0, i32 2
  %21 = load float, float* %xy18, align 4
  %conv19 = fpext float %21 to double
  %mul20 = fmul double %19, %conv19
  %mul21 = fmul double %mul20, 4.096000e+03
  %conv22 = fptosi double %mul21 to i64
  %22 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %22, i32 0, i32 1
  %23 = load i64, i64* %y23, align 8
  %add24 = add nsw i64 %23, %conv22
  store i64 %add24, i64* %y23, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.17, %if.end
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
