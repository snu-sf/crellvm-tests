; ModuleID = 'grsource_imp.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

@lattice = external global %struct.site*, align 8
@sites_on_node = external global i32, align 4
@valid_longlinks = external global i32, align 4
@valid_fatlinks = external global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"Site %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%d %d\09%e\09%e\09%e\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @grsource_imp(i32 %dest, double %mass, i32 %parity) #0 {
entry:
  %dest.addr = alloca i32, align 4
  %mass.addr = alloca double, align 8
  %parity.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  store i32 %dest, i32* %dest.addr, align 4
  store double %mass, double* %mass.addr, align 8
  store i32 %parity, i32* %parity.addr, align 4
  store i32 0, i32* %i, align 4
  %0 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %0, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %3, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load %struct.site*, %struct.site** %s, align 8
  %site_prn = getelementptr inbounds %struct.site, %struct.site* %4, i32 0, i32 6
  %call = call double @gaussian_rand_no(%struct.double_prn* %site_prn)
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.site*, %struct.site** %s, align 8
  %g_rand = getelementptr inbounds %struct.site, %struct.site* %6, i32 0, i32 16
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %g_rand, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  store double %call, double* %real, align 8
  %7 = load %struct.site*, %struct.site** %s, align 8
  %site_prn4 = getelementptr inbounds %struct.site, %struct.site* %7, i32 0, i32 6
  %call5 = call double @gaussian_rand_no(%struct.double_prn* %site_prn4)
  %8 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.site*, %struct.site** %s, align 8
  %g_rand7 = getelementptr inbounds %struct.site, %struct.site* %9, i32 0, i32 16
  %c8 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %g_rand7, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c8, i32 0, i64 %idxprom6
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx9, i32 0, i32 1
  store double %call5, double* %imag, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, i32* %i, align 4
  %12 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %12, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %13 = load i32, i32* @valid_longlinks, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end.12
  call void (...) @load_longlinks()
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.12
  %14 = load i32, i32* @valid_fatlinks, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end
  call void (...) @load_fatlinks()
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  %15 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx16 = getelementptr inbounds %struct.site, %struct.site* %15, i64 0
  %g_rand17 = getelementptr inbounds %struct.site, %struct.site* %arrayidx16, i32 0, i32 16
  %16 = bitcast %struct.su3_vector* %g_rand17 to i8*
  %17 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx18 = getelementptr inbounds %struct.site, %struct.site* %17, i64 0
  %18 = bitcast %struct.site* %arrayidx18 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %19 = load i32, i32* %dest.addr, align 4
  %20 = load i32, i32* %parity.addr, align 4
  call void @dslash_fn(i32 %conv, i32 %19, i32 %20)
  %21 = load i32, i32* %dest.addr, align 4
  %22 = load i32, i32* %dest.addr, align 4
  %23 = load i32, i32* %parity.addr, align 4
  call void @scalar_mult_latvec(i32 %21, double -1.000000e+00, i32 %22, i32 %23)
  %24 = load i32, i32* %dest.addr, align 4
  %25 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx19 = getelementptr inbounds %struct.site, %struct.site* %25, i64 0
  %g_rand20 = getelementptr inbounds %struct.site, %struct.site* %arrayidx19, i32 0, i32 16
  %26 = bitcast %struct.su3_vector* %g_rand20 to i8*
  %27 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx21 = getelementptr inbounds %struct.site, %struct.site* %27, i64 0
  %28 = bitcast %struct.site* %arrayidx21 to i8*
  %sub.ptr.lhs.cast22 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %28 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %conv25 = trunc i64 %sub.ptr.sub24 to i32
  %29 = load double, double* %mass.addr, align 8
  %mul = fmul double 2.000000e+00, %29
  %30 = load i32, i32* %dest.addr, align 4
  %31 = load i32, i32* %parity.addr, align 4
  call void @scalar_mult_add_latvec(i32 %24, i32 %conv25, double %mul, i32 %30, i32 %31)
  ret void
}

declare double @gaussian_rand_no(%struct.double_prn*) #1

declare void @load_longlinks(...) #1

declare void @load_fatlinks(...) #1

declare void @dslash_fn(i32, i32, i32) #1

declare void @scalar_mult_latvec(i32, double, i32, i32) #1

declare void @scalar_mult_add_latvec(i32, i32, double, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @checkmul_imp(i32 %src, double %mass) #0 {
entry:
  %src.addr = alloca i32, align 4
  %mass.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  store i32 %src, i32* %src.addr, align 4
  store double %mass, double* %mass.addr, align 8
  %0 = load i32, i32* %src.addr, align 4
  %1 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %1, i64 0
  %ttt = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 15
  %2 = bitcast %struct.su3_vector* %ttt to i8*
  %3 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx1 = getelementptr inbounds %struct.site, %struct.site* %3, i64 0
  %4 = bitcast %struct.site* %arrayidx1 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  call void @dslash_fn(i32 %0, i32 %conv, i32 3)
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx2 = getelementptr inbounds %struct.site, %struct.site* %5, i64 0
  %ttt3 = getelementptr inbounds %struct.site, %struct.site* %arrayidx2, i32 0, i32 15
  %6 = bitcast %struct.su3_vector* %ttt3 to i8*
  %7 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx4 = getelementptr inbounds %struct.site, %struct.site* %7, i64 0
  %8 = bitcast %struct.site* %arrayidx4 to i8*
  %sub.ptr.lhs.cast5 = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %8 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %conv8 = trunc i64 %sub.ptr.sub7 to i32
  %9 = load i32, i32* %src.addr, align 4
  %10 = load double, double* %mass.addr, align 8
  %mul = fmul double 2.000000e+00, %10
  %11 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx9 = getelementptr inbounds %struct.site, %struct.site* %11, i64 0
  %ttt10 = getelementptr inbounds %struct.site, %struct.site* %arrayidx9, i32 0, i32 15
  %12 = bitcast %struct.su3_vector* %ttt10 to i8*
  %13 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx11 = getelementptr inbounds %struct.site, %struct.site* %13, i64 0
  %14 = bitcast %struct.site* %arrayidx11 to i8*
  %sub.ptr.lhs.cast12 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %14 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %conv15 = trunc i64 %sub.ptr.sub14 to i32
  call void @scalar_mult_add_latvec(i32 %conv8, i32 %9, double %mul, i32 %conv15, i32 3)
  store i32 0, i32* %i, align 4
  %15 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %15, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %entry
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %18 = load %struct.site*, %struct.site** %s, align 8
  %x = getelementptr inbounds %struct.site, %struct.site* %18, i32 0, i32 0
  %19 = load i16, i16* %x, align 2
  %conv17 = sext i16 %19 to i32
  %20 = load %struct.site*, %struct.site** %s, align 8
  %y = getelementptr inbounds %struct.site, %struct.site* %20, i32 0, i32 1
  %21 = load i16, i16* %y, align 2
  %conv18 = sext i16 %21 to i32
  %22 = load %struct.site*, %struct.site** %s, align 8
  %z = getelementptr inbounds %struct.site, %struct.site* %22, i32 0, i32 2
  %23 = load i16, i16* %z, align 2
  %conv19 = sext i16 %23 to i32
  %24 = load %struct.site*, %struct.site** %s, align 8
  %t = getelementptr inbounds %struct.site, %struct.site* %24, i32 0, i32 3
  %25 = load i16, i16* %t, align 2
  %conv20 = sext i16 %25 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %conv17, i32 %conv18, i32 %conv19, i32 %conv20)
  store i32 0, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body
  %26 = load i32, i32* %j, align 4
  %cmp22 = icmp slt i32 %26, 3
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.site*, %struct.site** %s, align 8
  %g_rand = getelementptr inbounds %struct.site, %struct.site* %30, i32 0, i32 16
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %g_rand, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx25, i32 0, i32 0
  %31 = load double, double* %real, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %32 to i64
  %33 = load %struct.site*, %struct.site** %s, align 8
  %ttt27 = getelementptr inbounds %struct.site, %struct.site* %33, i32 0, i32 15
  %c28 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %ttt27, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c28, i32 0, i64 %idxprom26
  %real30 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx29, i32 0, i32 0
  %34 = load double, double* %real30, align 8
  %35 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %35 to i64
  %36 = load %struct.site*, %struct.site** %s, align 8
  %g_rand32 = getelementptr inbounds %struct.site, %struct.site* %36, i32 0, i32 16
  %c33 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %g_rand32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c33, i32 0, i64 %idxprom31
  %real35 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx34, i32 0, i32 0
  %37 = load double, double* %real35, align 8
  %38 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %38 to i64
  %39 = load %struct.site*, %struct.site** %s, align 8
  %ttt37 = getelementptr inbounds %struct.site, %struct.site* %39, i32 0, i32 15
  %c38 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %ttt37, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c38, i32 0, i64 %idxprom36
  %real40 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx39, i32 0, i32 0
  %40 = load double, double* %real40, align 8
  %sub = fsub double %37, %40
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 %27, i32 %28, double %31, double %34, double %sub)
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load %struct.site*, %struct.site** %s, align 8
  %g_rand43 = getelementptr inbounds %struct.site, %struct.site* %44, i32 0, i32 16
  %c44 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %g_rand43, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c44, i32 0, i64 %idxprom42
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx45, i32 0, i32 1
  %45 = load double, double* %imag, align 8
  %46 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %46 to i64
  %47 = load %struct.site*, %struct.site** %s, align 8
  %ttt47 = getelementptr inbounds %struct.site, %struct.site* %47, i32 0, i32 15
  %c48 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %ttt47, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c48, i32 0, i64 %idxprom46
  %imag50 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx49, i32 0, i32 1
  %48 = load double, double* %imag50, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %49 to i64
  %50 = load %struct.site*, %struct.site** %s, align 8
  %g_rand52 = getelementptr inbounds %struct.site, %struct.site* %50, i32 0, i32 16
  %c53 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %g_rand52, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c53, i32 0, i64 %idxprom51
  %imag55 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx54, i32 0, i32 1
  %51 = load double, double* %imag55, align 8
  %52 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %52 to i64
  %53 = load %struct.site*, %struct.site** %s, align 8
  %ttt57 = getelementptr inbounds %struct.site, %struct.site* %53, i32 0, i32 15
  %c58 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %ttt57, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c58, i32 0, i64 %idxprom56
  %imag60 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx59, i32 0, i32 1
  %54 = load double, double* %imag60, align 8
  %sub61 = fsub double %51, %54
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 %41, i32 %42, double %45, double %48, double %sub61)
  br label %for.inc

for.inc:                                          ; preds = %for.body.24
  %55 = load i32, i32* %j, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.end
  %56 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %56, 1
  store i32 %inc65, i32* %i, align 4
  %57 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %57, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
