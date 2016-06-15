; ModuleID = 'mat_invert.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@niter = external global i32, align 4
@rsqprop = external global double, align 8
@lattice = external global %struct.site*, align 8
@.str = private unnamed_addr constant [7 x i8] c"BOTCH\0A\00", align 1
@even_sites_on_node = external global i32, align 4
@sites_on_node = external global i32, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%d %d  ( %.4e , %.4e )  ( %.4e , %.4e )\0A\00", align 1
@this_node = external global i32, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Inversion checked, frac. error = %e\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @mat_invert_cg(i32 %src, i32 %dest, i32 %temp, double %mass) #0 {
entry:
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %mass.addr = alloca double, align 8
  %cgn = alloca i32, align 4
  %finalrsq = alloca double, align 8
  store i32 %src, i32* %src.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %temp, i32* %temp.addr, align 4
  store double %mass, double* %mass.addr, align 8
  %0 = load i32, i32* %dest.addr, align 4
  call void @clear_latvec(i32 %0, i32 3)
  %1 = load i32, i32* %src.addr, align 4
  %2 = load i32, i32* %dest.addr, align 4
  %3 = load double, double* %mass.addr, align 8
  %4 = load i32, i32* @niter, align 4
  %5 = load double, double* @rsqprop, align 8
  %call = call i32 @ks_congrad(i32 %1, i32 %2, double %3, i32 %4, double %5, i32 3, double* %finalrsq)
  store i32 %call, i32* %cgn, align 4
  %6 = load i32, i32* %dest.addr, align 4
  %7 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %7, i64 0
  %ttt = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 15
  %8 = bitcast %struct.su3_vector* %ttt to i8*
  %9 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx1 = getelementptr inbounds %struct.site, %struct.site* %9, i64 0
  %10 = bitcast %struct.site* %arrayidx1 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  call void @dslash_fn(i32 %6, i32 %conv, i32 3)
  %11 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx2 = getelementptr inbounds %struct.site, %struct.site* %11, i64 0
  %ttt3 = getelementptr inbounds %struct.site, %struct.site* %arrayidx2, i32 0, i32 15
  %12 = bitcast %struct.su3_vector* %ttt3 to i8*
  %13 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx4 = getelementptr inbounds %struct.site, %struct.site* %13, i64 0
  %14 = bitcast %struct.site* %arrayidx4 to i8*
  %sub.ptr.lhs.cast5 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %14 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %conv8 = trunc i64 %sub.ptr.sub7 to i32
  %15 = load i32, i32* %dest.addr, align 4
  %16 = load double, double* %mass.addr, align 8
  %mul = fmul double -2.000000e+00, %16
  %17 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx9 = getelementptr inbounds %struct.site, %struct.site* %17, i64 0
  %ttt10 = getelementptr inbounds %struct.site, %struct.site* %arrayidx9, i32 0, i32 15
  %18 = bitcast %struct.su3_vector* %ttt10 to i8*
  %19 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx11 = getelementptr inbounds %struct.site, %struct.site* %19, i64 0
  %20 = bitcast %struct.site* %arrayidx11 to i8*
  %sub.ptr.lhs.cast12 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %20 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %conv15 = trunc i64 %sub.ptr.sub14 to i32
  call void @scalar_mult_add_latvec(i32 %conv8, i32 %15, double %mul, i32 %conv15, i32 3)
  %21 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx16 = getelementptr inbounds %struct.site, %struct.site* %21, i64 0
  %ttt17 = getelementptr inbounds %struct.site, %struct.site* %arrayidx16, i32 0, i32 15
  %22 = bitcast %struct.su3_vector* %ttt17 to i8*
  %23 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx18 = getelementptr inbounds %struct.site, %struct.site* %23, i64 0
  %24 = bitcast %struct.site* %arrayidx18 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %24 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %conv22 = trunc i64 %sub.ptr.sub21 to i32
  %25 = load i32, i32* %dest.addr, align 4
  call void @scalar_mult_latvec(i32 %conv22, double -1.000000e+00, i32 %25, i32 3)
  %26 = load i32, i32* %cgn, align 4
  ret i32 %26
}

declare void @clear_latvec(i32, i32) #1

declare i32 @ks_congrad(i32, i32, double, i32, double, i32, double*) #1

declare void @dslash_fn(i32, i32, i32) #1

declare void @scalar_mult_add_latvec(i32, i32, double, i32, i32) #1

declare void @scalar_mult_latvec(i32, double, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @mat_invert_uml(i32 %src, i32 %dest, i32 %temp, double %mass) #0 {
entry:
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %mass.addr = alloca double, align 8
  %cgn = alloca i32, align 4
  %finalrsq = alloca double, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  store i32 %src, i32* %src.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %temp, i32* %temp.addr, align 4
  store double %mass, double* %mass.addr, align 8
  %0 = load i32, i32* %src.addr, align 4
  %1 = load i32, i32* %temp.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %src.addr, align 4
  %3 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %3, i64 0
  %ttt = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 15
  %4 = bitcast %struct.su3_vector* %ttt to i8*
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx1 = getelementptr inbounds %struct.site, %struct.site* %5, i64 0
  %6 = bitcast %struct.site* %arrayidx1 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  call void @dslash_fn(i32 %2, i32 %conv, i32 2)
  %7 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx2 = getelementptr inbounds %struct.site, %struct.site* %7, i64 0
  %ttt3 = getelementptr inbounds %struct.site, %struct.site* %arrayidx2, i32 0, i32 15
  %8 = bitcast %struct.su3_vector* %ttt3 to i8*
  %9 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx4 = getelementptr inbounds %struct.site, %struct.site* %9, i64 0
  %10 = bitcast %struct.site* %arrayidx4 to i8*
  %sub.ptr.lhs.cast5 = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %10 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %conv8 = trunc i64 %sub.ptr.sub7 to i32
  %11 = load i32, i32* %src.addr, align 4
  %12 = load double, double* %mass.addr, align 8
  %mul = fmul double -2.000000e+00, %12
  %13 = load i32, i32* %temp.addr, align 4
  call void @scalar_mult_add_latvec(i32 %conv8, i32 %11, double %mul, i32 %13, i32 2)
  %14 = load i32, i32* %temp.addr, align 4
  %15 = load i32, i32* %temp.addr, align 4
  call void @scalar_mult_latvec(i32 %14, double -1.000000e+00, i32 %15, i32 2)
  %16 = load i32, i32* %temp.addr, align 4
  %17 = load i32, i32* %dest.addr, align 4
  %18 = load double, double* %mass.addr, align 8
  %19 = load i32, i32* @niter, align 4
  %20 = load double, double* @rsqprop, align 8
  %call9 = call i32 @ks_congrad(i32 %16, i32 %17, double %18, i32 %19, double %20, i32 2, double* %finalrsq)
  store i32 %call9, i32* %cgn, align 4
  %21 = load i32, i32* %dest.addr, align 4
  %22 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx10 = getelementptr inbounds %struct.site, %struct.site* %22, i64 0
  %ttt11 = getelementptr inbounds %struct.site, %struct.site* %arrayidx10, i32 0, i32 15
  %23 = bitcast %struct.su3_vector* %ttt11 to i8*
  %24 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx12 = getelementptr inbounds %struct.site, %struct.site* %24, i64 0
  %25 = bitcast %struct.site* %arrayidx12 to i8*
  %sub.ptr.lhs.cast13 = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast14 = ptrtoint i8* %25 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %conv16 = trunc i64 %sub.ptr.sub15 to i32
  call void @dslash_fn(i32 %21, i32 %conv16, i32 1)
  %26 = load i32, i32* @even_sites_on_node, align 4
  store i32 %26, i32* %i, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx17 = getelementptr inbounds %struct.site, %struct.site* %28, i64 %idxprom
  store %struct.site* %arrayidx17, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* @sites_on_node, align 4
  %cmp18 = icmp slt i32 %29, %30
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.site*, %struct.site** %s, align 8
  %32 = bitcast %struct.site* %31 to i8*
  %33 = load i32, i32* %src.addr, align 4
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  %34 = bitcast i8* %add.ptr to %struct.su3_vector*
  %35 = load %struct.site*, %struct.site** %s, align 8
  %ttt20 = getelementptr inbounds %struct.site, %struct.site* %35, i32 0, i32 15
  %36 = load %struct.site*, %struct.site** %s, align 8
  %37 = bitcast %struct.site* %36 to i8*
  %38 = load i32, i32* %dest.addr, align 4
  %idx.ext21 = sext i32 %38 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %37, i64 %idx.ext21
  %39 = bitcast i8* %add.ptr22 to %struct.su3_vector*
  call void @sub_su3_vector(%struct.su3_vector* %34, %struct.su3_vector* %ttt20, %struct.su3_vector* %39)
  %40 = load %struct.site*, %struct.site** %s, align 8
  %41 = bitcast %struct.site* %40 to i8*
  %42 = load i32, i32* %dest.addr, align 4
  %idx.ext23 = sext i32 %42 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %41, i64 %idx.ext23
  %43 = bitcast i8* %add.ptr24 to %struct.su3_vector*
  %44 = load double, double* %mass.addr, align 8
  %mul25 = fmul double 2.000000e+00, %44
  %div = fdiv double 1.000000e+00, %mul25
  %45 = load %struct.site*, %struct.site** %s, align 8
  %46 = bitcast %struct.site* %45 to i8*
  %47 = load i32, i32* %dest.addr, align 4
  %idx.ext26 = sext i32 %47 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %46, i64 %idx.ext26
  %48 = bitcast i8* %add.ptr27 to %struct.su3_vector*
  call void @scalar_mult_su3_vector(%struct.su3_vector* %43, double %div, %struct.su3_vector* %48)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  %50 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %50, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %cgn, align 4
  ret i32 %51
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare void @sub_su3_vector(%struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*) #1

declare void @scalar_mult_su3_vector(%struct.su3_vector*, double, %struct.su3_vector*) #1

; Function Attrs: nounwind uwtable
define void @check_invert(i32 %src, i32 %dest, double %mass, double %tol) #0 {
entry:
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %mass.addr = alloca double, align 8
  %tol.addr = alloca double, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %flag = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %r_diff = alloca double, align 8
  %i_diff = alloca double, align 8
  %sum = alloca double, align 8
  %sum2 = alloca double, align 8
  store i32 %src, i32* %src.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store double %mass, double* %mass.addr, align 8
  store double %tol, double* %tol.addr, align 8
  %0 = load i32, i32* %src.addr, align 4
  %1 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %1, i64 0
  %cg_p = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 13
  %2 = bitcast %struct.su3_vector* %cg_p to i8*
  %3 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx1 = getelementptr inbounds %struct.site, %struct.site* %3, i64 0
  %4 = bitcast %struct.site* %arrayidx1 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  call void @dslash_fn(i32 %0, i32 %conv, i32 3)
  store i32 0, i32* %i, align 4
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %5, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.site*, %struct.site** %s, align 8
  %cg_p3 = getelementptr inbounds %struct.site, %struct.site* %8, i32 0, i32 13
  %9 = load %struct.site*, %struct.site** %s, align 8
  %10 = bitcast %struct.site* %9 to i8*
  %11 = load i32, i32* %src.addr, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %12 = bitcast i8* %add.ptr to %struct.su3_vector*
  %13 = load double, double* %mass.addr, align 8
  %mul = fmul double 2.000000e+00, %13
  %14 = load %struct.site*, %struct.site** %s, align 8
  %cg_p4 = getelementptr inbounds %struct.site, %struct.site* %14, i32 0, i32 13
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %cg_p3, %struct.su3_vector* %12, double %mul, %struct.su3_vector* %cg_p4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %16, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8
  store double 0.000000e+00, double* %sum2, align 8
  store i32 0, i32* %i, align 4
  %17 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %17, %struct.site** %s, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.75, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* @sites_on_node, align 4
  %cmp6 = icmp slt i32 %18, %19
  br i1 %cmp6, label %for.body.8, label %for.end.78

for.body.8:                                       ; preds = %for.cond.5
  store i32 0, i32* %flag, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.68, %for.body.8
  %20 = load i32, i32* %k, align 4
  %cmp10 = icmp slt i32 %20, 3
  br i1 %cmp10, label %for.body.12, label %for.end.70

for.body.12:                                      ; preds = %for.cond.9
  %21 = load i32, i32* %k, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.site*, %struct.site** %s, align 8
  %23 = bitcast %struct.site* %22 to i8*
  %24 = load i32, i32* %dest.addr, align 4
  %idx.ext13 = sext i32 %24 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %23, i64 %idx.ext13
  %25 = bitcast i8* %add.ptr14 to %struct.su3_vector*
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %25, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx15, i32 0, i32 0
  %26 = load double, double* %real, align 8
  %27 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load %struct.site*, %struct.site** %s, align 8
  %cg_p17 = getelementptr inbounds %struct.site, %struct.site* %28, i32 0, i32 13
  %c18 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %cg_p17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c18, i32 0, i64 %idxprom16
  %real20 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx19, i32 0, i32 0
  %29 = load double, double* %real20, align 8
  %sub = fsub double %26, %29
  store double %sub, double* %r_diff, align 8
  %30 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load %struct.site*, %struct.site** %s, align 8
  %32 = bitcast %struct.site* %31 to i8*
  %33 = load i32, i32* %dest.addr, align 4
  %idx.ext22 = sext i32 %33 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %32, i64 %idx.ext22
  %34 = bitcast i8* %add.ptr23 to %struct.su3_vector*
  %c24 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %34, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c24, i32 0, i64 %idxprom21
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx25, i32 0, i32 1
  %35 = load double, double* %imag, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load %struct.site*, %struct.site** %s, align 8
  %cg_p27 = getelementptr inbounds %struct.site, %struct.site* %37, i32 0, i32 13
  %c28 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %cg_p27, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c28, i32 0, i64 %idxprom26
  %imag30 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx29, i32 0, i32 1
  %38 = load double, double* %imag30, align 8
  %sub31 = fsub double %35, %38
  store double %sub31, double* %i_diff, align 8
  %39 = load double, double* %r_diff, align 8
  %call = call double @fabs(double %39) #6
  %40 = load double, double* %tol.addr, align 8
  %cmp32 = fcmp ogt double %call, %40
  br i1 %cmp32, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.12
  %41 = load double, double* %i_diff, align 8
  %call34 = call double @fabs(double %41) #6
  %42 = load double, double* %tol.addr, align 8
  %cmp35 = fcmp ogt double %call34, %42
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body.12
  store i32 1, i32* %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %43 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %if.then.37, label %if.end.61

if.then.37:                                       ; preds = %if.end
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %k, align 4
  %46 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %46 to i64
  %47 = load %struct.site*, %struct.site** %s, align 8
  %48 = bitcast %struct.site* %47 to i8*
  %49 = load i32, i32* %dest.addr, align 4
  %idx.ext39 = sext i32 %49 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %48, i64 %idx.ext39
  %50 = bitcast i8* %add.ptr40 to %struct.su3_vector*
  %c41 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %50, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c41, i32 0, i64 %idxprom38
  %real43 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx42, i32 0, i32 0
  %51 = load double, double* %real43, align 8
  %52 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %52 to i64
  %53 = load %struct.site*, %struct.site** %s, align 8
  %54 = bitcast %struct.site* %53 to i8*
  %55 = load i32, i32* %dest.addr, align 4
  %idx.ext45 = sext i32 %55 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %54, i64 %idx.ext45
  %56 = bitcast i8* %add.ptr46 to %struct.su3_vector*
  %c47 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %56, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c47, i32 0, i64 %idxprom44
  %imag49 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx48, i32 0, i32 1
  %57 = load double, double* %imag49, align 8
  %58 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %58 to i64
  %59 = load %struct.site*, %struct.site** %s, align 8
  %cg_p51 = getelementptr inbounds %struct.site, %struct.site* %59, i32 0, i32 13
  %c52 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %cg_p51, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c52, i32 0, i64 %idxprom50
  %real54 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx53, i32 0, i32 0
  %60 = load double, double* %real54, align 8
  %61 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %61 to i64
  %62 = load %struct.site*, %struct.site** %s, align 8
  %cg_p56 = getelementptr inbounds %struct.site, %struct.site* %62, i32 0, i32 13
  %c57 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %cg_p56, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c57, i32 0, i64 %idxprom55
  %imag59 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx58, i32 0, i32 1
  %63 = load double, double* %imag59, align 8
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 %44, i32 %45, double %51, double %57, double %60, double %63)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.37, %if.end
  %64 = load i32, i32* %flag, align 4
  %tobool62 = icmp ne i32 %64, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.61
  call void @terminate(i32 0)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.61
  %65 = load double, double* %r_diff, align 8
  %66 = load double, double* %r_diff, align 8
  %mul65 = fmul double %65, %66
  %67 = load double, double* %i_diff, align 8
  %68 = load double, double* %i_diff, align 8
  %mul66 = fmul double %67, %68
  %add = fadd double %mul65, %mul66
  %69 = load double, double* %sum, align 8
  %add67 = fadd double %69, %add
  store double %add67, double* %sum, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.64
  %70 = load i32, i32* %k, align 4
  %inc69 = add nsw i32 %70, 1
  store i32 %inc69, i32* %k, align 4
  br label %for.cond.9

for.end.70:                                       ; preds = %for.cond.9
  %71 = load %struct.site*, %struct.site** %s, align 8
  %72 = bitcast %struct.site* %71 to i8*
  %73 = load i32, i32* %dest.addr, align 4
  %idx.ext71 = sext i32 %73 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %72, i64 %idx.ext71
  %74 = bitcast i8* %add.ptr72 to %struct.su3_vector*
  %call73 = call double @magsq_su3vec(%struct.su3_vector* %74)
  %75 = load double, double* %sum2, align 8
  %add74 = fadd double %75, %call73
  store double %add74, double* %sum2, align 8
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.70
  %76 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %76, 1
  store i32 %inc76, i32* %i, align 4
  %77 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr77 = getelementptr inbounds %struct.site, %struct.site* %77, i32 1
  store %struct.site* %incdec.ptr77, %struct.site** %s, align 8
  br label %for.cond.5

for.end.78:                                       ; preds = %for.cond.5
  call void @g_doublesum(double* %sum)
  call void @g_doublesum(double* %sum2)
  call void (...) @g_sync()
  %78 = load i32, i32* @this_node, align 4
  %cmp79 = icmp eq i32 %78, 0
  br i1 %cmp79, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %for.end.78
  %79 = load double, double* %sum, align 8
  %80 = load double, double* %sum2, align 8
  %div = fdiv double %79, %80
  %call82 = call double @sqrt(double %div) #7
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), double %call82)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call84 = call i32 @fflush(%struct._IO_FILE* %81)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %for.end.78
  ret void
}

declare void @scalar_mult_add_su3_vector(%struct.su3_vector*, %struct.su3_vector*, double, %struct.su3_vector*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @terminate(i32) #1

declare double @magsq_su3vec(%struct.su3_vector*) #1

declare void @g_doublesum(double*) #1

declare void @g_sync(...) #1

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @fflush(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
