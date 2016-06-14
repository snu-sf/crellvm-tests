; ModuleID = 'd_congrad5_fn.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.msg_tag = type { i32, i32, i8*, i32 }

@first_congrad = global i32 1, align 4
@valid_longlinks = external global i32, align 4
@valid_fatlinks = external global i32, align 4
@sites_on_node = external global i32, align 4
@ttt = common global %struct.su3_vector* null, align 8
@cg_p = common global %struct.su3_vector* null, align 8
@resid = common global %struct.su3_vector* null, align 8
@t_dest = common global %struct.su3_vector* null, align 8
@lattice = external global %struct.site*, align 8
@even_sites_on_node = external global i32, align 4
@total_iters = external global i32, align 4
@this_node = external global i32, align 4
@.str = private unnamed_addr constant [59 x i8] c"CG not converged after %d iterations, res. = %e wanted %e\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @ks_congrad(i32 %src, i32 %dest, double %mass, i32 %niter, double %rsqmin, i32 %parity, double* %final_rsq_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %mass.addr = alloca double, align 8
  %niter.addr = alloca i32, align 4
  %rsqmin.addr = alloca double, align 8
  %parity.addr = alloca i32, align 4
  %final_rsq_ptr.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %iteration = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %rsq = alloca double, align 8
  %oldrsq = alloca double, align 8
  %pkp = alloca double, align 8
  %msq_x4 = alloca double, align 8
  %source_norm = alloca double, align 8
  %rsqstop = alloca double, align 8
  %l_parity = alloca i32, align 4
  %l_otherparity = alloca i32, align 4
  %tags1 = alloca [16 x %struct.msg_tag*], align 16
  %tags2 = alloca [16 x %struct.msg_tag*], align 16
  %special_started = alloca i32, align 4
  %nflop = alloca double, align 8
  %loopend = alloca i32, align 4
  %loopend94 = alloca i32, align 4
  %loopend133 = alloca i32, align 4
  %loopend175 = alloca i32, align 4
  %loopend214 = alloca i32, align 4
  %loopend250 = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store double %mass, double* %mass.addr, align 8
  store i32 %niter, i32* %niter.addr, align 4
  store double %rsqmin, double* %rsqmin.addr, align 8
  store i32 %parity, i32* %parity.addr, align 4
  store double* %final_rsq_ptr, double** %final_rsq_ptr.addr, align 8
  store double 1.187000e+03, double* %nflop, align 8
  %0 = load i32, i32* %parity.addr, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %nflop, align 8
  %mul = fmul double %1, 2.000000e+00
  store double %mul, double* %nflop, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %special_started, align 4
  %2 = load i32, i32* %parity.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.end
  store i32 2, i32* %l_parity, align 4
  store i32 1, i32* %l_otherparity, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  store i32 1, i32* %l_parity, align 4
  store i32 2, i32* %l_otherparity, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  store i32 2, i32* %l_parity, align 4
  store i32 1, i32* %l_otherparity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.2, %sw.bb.1, %sw.bb
  %3 = load double, double* %mass.addr, align 8
  %mul3 = fmul double 4.000000e+00, %3
  %4 = load double, double* %mass.addr, align 8
  %mul4 = fmul double %mul3, %4
  store double %mul4, double* %msq_x4, align 8
  store i32 0, i32* %iteration, align 4
  %5 = load i32, i32* @valid_longlinks, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.epilog
  call void (...) @load_longlinks()
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %sw.epilog
  %6 = load i32, i32* @valid_fatlinks, align 4
  %tobool7 = icmp ne i32 %6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  call void (...) @load_fatlinks()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %7 = load i32, i32* @first_congrad, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %if.then.11, label %if.end.21

if.then.11:                                       ; preds = %if.end.9
  %8 = load i32, i32* @sites_on_node, align 4
  %add = add nsw i32 %8, 0
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 48) #3
  %9 = bitcast i8* %call to %struct.su3_vector*
  store %struct.su3_vector* %9, %struct.su3_vector** @ttt, align 8
  %10 = load i32, i32* @sites_on_node, align 4
  %add12 = add nsw i32 %10, 0
  %conv13 = sext i32 %add12 to i64
  %call14 = call noalias i8* @calloc(i64 %conv13, i64 48) #3
  %11 = bitcast i8* %call14 to %struct.su3_vector*
  store %struct.su3_vector* %11, %struct.su3_vector** @cg_p, align 8
  %12 = load i32, i32* @sites_on_node, align 4
  %add15 = add nsw i32 %12, 0
  %conv16 = sext i32 %add15 to i64
  %call17 = call noalias i8* @calloc(i64 %conv16, i64 48) #3
  %13 = bitcast i8* %call17 to %struct.su3_vector*
  store %struct.su3_vector* %13, %struct.su3_vector** @resid, align 8
  %14 = load i32, i32* @sites_on_node, align 4
  %add18 = add nsw i32 %14, 0
  %conv19 = sext i32 %add18 to i64
  %call20 = call noalias i8* @calloc(i64 %conv19, i64 48) #3
  %15 = bitcast i8* %call20 to %struct.su3_vector*
  store %struct.su3_vector* %15, %struct.su3_vector** @t_dest, align 8
  store i32 0, i32* @first_congrad, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.11, %if.end.9
  store i32 0, i32* %i, align 4
  %16 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %16, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* @sites_on_node, align 4
  %cmp22 = icmp slt i32 %17, %18
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.su3_vector*, %struct.su3_vector** @t_dest, align 8
  %arrayidx = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %20, i64 %idxprom
  %21 = load %struct.site*, %struct.site** %s, align 8
  %22 = bitcast %struct.site* %21 to i8*
  %23 = load i32, i32* %dest.addr, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %24 = bitcast i8* %add.ptr to %struct.su3_vector*
  %25 = bitcast %struct.su3_vector* %arrayidx to i8*
  %26 = bitcast %struct.su3_vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 48, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  %28 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %28, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %start

start:                                            ; preds = %if.then.279, %if.then.248, %if.then.204, %if.then.83, %for.end
  %29 = load i32, i32* %special_started, align 4
  %cmp24 = icmp eq i32 %29, 1
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %start
  %arraydecay = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags1, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags2, i32 0, i32 0
  call void @cleanup_gathers(%struct.msg_tag** %arraydecay, %struct.msg_tag** %arraydecay27)
  store i32 0, i32* %special_started, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %start
  store double 0.000000e+00, double* %source_norm, align 8
  store double 0.000000e+00, double* %rsq, align 8
  %30 = load %struct.su3_vector*, %struct.su3_vector** @t_dest, align 8
  %31 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %32 = load i32, i32* %l_otherparity, align 4
  %arraydecay29 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags2, i32 0, i32 0
  call void @dslash_fn_on_temp_special(%struct.su3_vector* %30, %struct.su3_vector* %31, i32 %32, %struct.msg_tag** %arraydecay29, i32 1)
  %33 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %34 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %35 = load i32, i32* %l_parity, align 4
  %arraydecay30 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags1, i32 0, i32 0
  call void @dslash_fn_on_temp_special(%struct.su3_vector* %33, %struct.su3_vector* %34, i32 %35, %struct.msg_tag** %arraydecay30, i32 1)
  %arraydecay31 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags1, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags2, i32 0, i32 0
  call void @cleanup_gathers(%struct.msg_tag** %arraydecay31, %struct.msg_tag** %arraydecay32)
  %36 = load i32, i32* %l_parity, align 4
  %cmp33 = icmp eq i32 %36, 2
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %37 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  %38 = load i32, i32* @sites_on_node, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %38, %cond.false ]
  store i32 %cond, i32* %loopend, align 4
  %39 = load i32, i32* %l_parity, align 4
  %cmp35 = icmp eq i32 %39, 1
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end
  %40 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.end
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi i32 [ %40, %cond.true.37 ], [ 0, %cond.false.38 ]
  store i32 %cond40, i32* %i, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %41 to i64
  %42 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx42 = getelementptr inbounds %struct.site, %struct.site* %42, i64 %idxprom41
  store %struct.site* %arrayidx42, %struct.site** %s, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.71, %cond.end.39
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %loopend, align 4
  %cmp44 = icmp slt i32 %43, %44
  br i1 %cmp44, label %for.body.46, label %for.end.74

for.body.46:                                      ; preds = %for.cond.43
  %45 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %45 to i64
  %46 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %arrayidx48 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %46, i64 %idxprom47
  %47 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %47 to i64
  %48 = load %struct.su3_vector*, %struct.su3_vector** @t_dest, align 8
  %arrayidx50 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %48, i64 %idxprom49
  %49 = load double, double* %msq_x4, align 8
  %sub = fsub double -0.000000e+00, %49
  %50 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %50 to i64
  %51 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %arrayidx52 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %51, i64 %idxprom51
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx48, %struct.su3_vector* %arrayidx50, double %sub, %struct.su3_vector* %arrayidx52)
  %52 = load %struct.site*, %struct.site** %s, align 8
  %53 = bitcast %struct.site* %52 to i8*
  %54 = load i32, i32* %src.addr, align 4
  %idx.ext53 = sext i32 %54 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %53, i64 %idx.ext53
  %55 = bitcast i8* %add.ptr54 to %struct.su3_vector*
  %56 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %56 to i64
  %57 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %arrayidx56 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %57, i64 %idxprom55
  %58 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %58 to i64
  %59 = load %struct.su3_vector*, %struct.su3_vector** @resid, align 8
  %arrayidx58 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %59, i64 %idxprom57
  call void @add_su3_vector(%struct.su3_vector* %55, %struct.su3_vector* %arrayidx56, %struct.su3_vector* %arrayidx58)
  %60 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %60 to i64
  %61 = load %struct.su3_vector*, %struct.su3_vector** @cg_p, align 8
  %arrayidx60 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %61, i64 %idxprom59
  %62 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %62 to i64
  %63 = load %struct.su3_vector*, %struct.su3_vector** @resid, align 8
  %arrayidx62 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %63, i64 %idxprom61
  %64 = bitcast %struct.su3_vector* %arrayidx60 to i8*
  %65 = bitcast %struct.su3_vector* %arrayidx62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 48, i32 8, i1 false)
  %66 = load %struct.site*, %struct.site** %s, align 8
  %67 = bitcast %struct.site* %66 to i8*
  %68 = load i32, i32* %src.addr, align 4
  %idx.ext63 = sext i32 %68 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %67, i64 %idx.ext63
  %69 = bitcast i8* %add.ptr64 to %struct.su3_vector*
  %call65 = call double @magsq_su3vec(%struct.su3_vector* %69)
  %70 = load double, double* %source_norm, align 8
  %add66 = fadd double %70, %call65
  store double %add66, double* %source_norm, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %71 to i64
  %72 = load %struct.su3_vector*, %struct.su3_vector** @resid, align 8
  %arrayidx68 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %72, i64 %idxprom67
  %call69 = call double @magsq_su3vec(%struct.su3_vector* %arrayidx68)
  %73 = load double, double* %rsq, align 8
  %add70 = fadd double %73, %call69
  store double %add70, double* %rsq, align 8
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.46
  %74 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %74, 1
  store i32 %inc72, i32* %i, align 4
  %75 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr73 = getelementptr inbounds %struct.site, %struct.site* %75, i32 1
  store %struct.site* %incdec.ptr73, %struct.site** %s, align 8
  br label %for.cond.43

for.end.74:                                       ; preds = %for.cond.43
  call void @g_doublesum(double* %source_norm)
  call void @g_doublesum(double* %rsq)
  %76 = load i32, i32* %iteration, align 4
  %inc75 = add nsw i32 %76, 1
  store i32 %inc75, i32* %iteration, align 4
  %77 = load i32, i32* @total_iters, align 4
  %inc76 = add nsw i32 %77, 1
  store i32 %inc76, i32* @total_iters, align 4
  %78 = load double, double* %rsqmin.addr, align 8
  %79 = load double, double* %source_norm, align 8
  %mul77 = fmul double %78, %79
  store double %mul77, double* %rsqstop, align 8
  %80 = load double, double* %rsq, align 8
  %81 = load double, double* %rsqstop, align 8
  %cmp78 = fcmp ole double %80, %81
  br i1 %cmp78, label %if.then.80, label %if.end.85

if.then.80:                                       ; preds = %for.end.74
  %82 = load i32, i32* %parity.addr, align 4
  %cmp81 = icmp eq i32 %82, 3
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.80
  store i32 1, i32* %l_parity, align 4
  store i32 2, i32* %l_otherparity, align 4
  store i32 2, i32* %parity.addr, align 4
  store i32 0, i32* %iteration, align 4
  br label %start

if.end.84:                                        ; preds = %if.then.80
  %83 = load double, double* %rsq, align 8
  %84 = load double*, double** %final_rsq_ptr.addr, align 8
  store double %83, double* %84, align 8
  %85 = load i32, i32* %iteration, align 4
  store i32 %85, i32* %retval
  br label %return

if.end.85:                                        ; preds = %for.end.74
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.85
  %86 = load double, double* %rsq, align 8
  store double %86, double* %oldrsq, align 8
  store double 0.000000e+00, double* %pkp, align 8
  %87 = load i32, i32* %special_started, align 4
  %cmp86 = icmp eq i32 %87, 0
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %do.body
  %88 = load %struct.su3_vector*, %struct.su3_vector** @cg_p, align 8
  %89 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %90 = load i32, i32* %l_otherparity, align 4
  %arraydecay89 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags2, i32 0, i32 0
  call void @dslash_fn_on_temp_special(%struct.su3_vector* %88, %struct.su3_vector* %89, i32 %90, %struct.msg_tag** %arraydecay89, i32 1)
  %91 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %92 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %93 = load i32, i32* %l_parity, align 4
  %arraydecay90 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags1, i32 0, i32 0
  call void @dslash_fn_on_temp_special(%struct.su3_vector* %91, %struct.su3_vector* %92, i32 %93, %struct.msg_tag** %arraydecay90, i32 1)
  store i32 1, i32* %special_started, align 4
  br label %if.end.93

if.else:                                          ; preds = %do.body
  %94 = load %struct.su3_vector*, %struct.su3_vector** @cg_p, align 8
  %95 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %96 = load i32, i32* %l_otherparity, align 4
  %arraydecay91 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags2, i32 0, i32 0
  call void @dslash_fn_on_temp_special(%struct.su3_vector* %94, %struct.su3_vector* %95, i32 %96, %struct.msg_tag** %arraydecay91, i32 0)
  %97 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %98 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %99 = load i32, i32* %l_parity, align 4
  %arraydecay92 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags1, i32 0, i32 0
  call void @dslash_fn_on_temp_special(%struct.su3_vector* %97, %struct.su3_vector* %98, i32 %99, %struct.msg_tag** %arraydecay92, i32 0)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else, %if.then.88
  store double 0.000000e+00, double* %pkp, align 8
  %100 = load i32, i32* %l_parity, align 4
  %cmp95 = icmp eq i32 %100, 2
  br i1 %cmp95, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %if.end.93
  %101 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.99

cond.false.98:                                    ; preds = %if.end.93
  %102 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.97
  %cond100 = phi i32 [ %101, %cond.true.97 ], [ %102, %cond.false.98 ]
  store i32 %cond100, i32* %loopend94, align 4
  %103 = load i32, i32* %l_parity, align 4
  %cmp101 = icmp eq i32 %103, 1
  br i1 %cmp101, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %cond.end.99
  %104 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.105

cond.false.104:                                   ; preds = %cond.end.99
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.104, %cond.true.103
  %cond106 = phi i32 [ %104, %cond.true.103 ], [ 0, %cond.false.104 ]
  store i32 %cond106, i32* %i, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %105 to i64
  %106 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx108 = getelementptr inbounds %struct.site, %struct.site* %106, i64 %idxprom107
  store %struct.site* %arrayidx108, %struct.site** %s, align 8
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.126, %cond.end.105
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %loopend94, align 4
  %cmp110 = icmp slt i32 %107, %108
  br i1 %cmp110, label %for.body.112, label %for.end.129

for.body.112:                                     ; preds = %for.cond.109
  %109 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %109 to i64
  %110 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %arrayidx114 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %110, i64 %idxprom113
  %111 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %111 to i64
  %112 = load %struct.su3_vector*, %struct.su3_vector** @cg_p, align 8
  %arrayidx116 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %112, i64 %idxprom115
  %113 = load double, double* %msq_x4, align 8
  %sub117 = fsub double -0.000000e+00, %113
  %114 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %114 to i64
  %115 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %arrayidx119 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %115, i64 %idxprom118
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx114, %struct.su3_vector* %arrayidx116, double %sub117, %struct.su3_vector* %arrayidx119)
  %116 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %116 to i64
  %117 = load %struct.su3_vector*, %struct.su3_vector** @cg_p, align 8
  %arrayidx121 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %117, i64 %idxprom120
  %118 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %118 to i64
  %119 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %arrayidx123 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %119, i64 %idxprom122
  %call124 = call double @su3_rdot(%struct.su3_vector* %arrayidx121, %struct.su3_vector* %arrayidx123)
  %120 = load double, double* %pkp, align 8
  %add125 = fadd double %120, %call124
  store double %add125, double* %pkp, align 8
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.body.112
  %121 = load i32, i32* %i, align 4
  %inc127 = add nsw i32 %121, 1
  store i32 %inc127, i32* %i, align 4
  %122 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr128 = getelementptr inbounds %struct.site, %struct.site* %122, i32 1
  store %struct.site* %incdec.ptr128, %struct.site** %s, align 8
  br label %for.cond.109

for.end.129:                                      ; preds = %for.cond.109
  call void @g_doublesum(double* %pkp)
  %123 = load i32, i32* %iteration, align 4
  %inc130 = add nsw i32 %123, 1
  store i32 %inc130, i32* %iteration, align 4
  %124 = load i32, i32* @total_iters, align 4
  %inc131 = add nsw i32 %124, 1
  store i32 %inc131, i32* @total_iters, align 4
  %125 = load double, double* %rsq, align 8
  %sub132 = fsub double -0.000000e+00, %125
  %126 = load double, double* %pkp, align 8
  %div = fdiv double %sub132, %126
  store double %div, double* %a, align 8
  store double 0.000000e+00, double* %rsq, align 8
  %127 = load i32, i32* %l_parity, align 4
  %cmp134 = icmp eq i32 %127, 2
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %for.end.129
  %128 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.138

cond.false.137:                                   ; preds = %for.end.129
  %129 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.136
  %cond139 = phi i32 [ %128, %cond.true.136 ], [ %129, %cond.false.137 ]
  store i32 %cond139, i32* %loopend133, align 4
  %130 = load i32, i32* %l_parity, align 4
  %cmp140 = icmp eq i32 %130, 1
  br i1 %cmp140, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %cond.end.138
  %131 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.144

cond.false.143:                                   ; preds = %cond.end.138
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.143, %cond.true.142
  %cond145 = phi i32 [ %131, %cond.true.142 ], [ 0, %cond.false.143 ]
  store i32 %cond145, i32* %i, align 4
  %132 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %132 to i64
  %133 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx147 = getelementptr inbounds %struct.site, %struct.site* %133, i64 %idxprom146
  store %struct.site* %arrayidx147, %struct.site** %s, align 8
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.168, %cond.end.144
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %loopend133, align 4
  %cmp149 = icmp slt i32 %134, %135
  br i1 %cmp149, label %for.body.151, label %for.end.171

for.body.151:                                     ; preds = %for.cond.148
  %136 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %136 to i64
  %137 = load %struct.su3_vector*, %struct.su3_vector** @t_dest, align 8
  %arrayidx153 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %137, i64 %idxprom152
  %138 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %138 to i64
  %139 = load %struct.su3_vector*, %struct.su3_vector** @cg_p, align 8
  %arrayidx155 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %139, i64 %idxprom154
  %140 = load double, double* %a, align 8
  %141 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %141 to i64
  %142 = load %struct.su3_vector*, %struct.su3_vector** @t_dest, align 8
  %arrayidx157 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %142, i64 %idxprom156
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx153, %struct.su3_vector* %arrayidx155, double %140, %struct.su3_vector* %arrayidx157)
  %143 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %143 to i64
  %144 = load %struct.su3_vector*, %struct.su3_vector** @resid, align 8
  %arrayidx159 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %144, i64 %idxprom158
  %145 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %145 to i64
  %146 = load %struct.su3_vector*, %struct.su3_vector** @ttt, align 8
  %arrayidx161 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %146, i64 %idxprom160
  %147 = load double, double* %a, align 8
  %148 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %148 to i64
  %149 = load %struct.su3_vector*, %struct.su3_vector** @resid, align 8
  %arrayidx163 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %149, i64 %idxprom162
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx159, %struct.su3_vector* %arrayidx161, double %147, %struct.su3_vector* %arrayidx163)
  %150 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %150 to i64
  %151 = load %struct.su3_vector*, %struct.su3_vector** @resid, align 8
  %arrayidx165 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %151, i64 %idxprom164
  %call166 = call double @magsq_su3vec(%struct.su3_vector* %arrayidx165)
  %152 = load double, double* %rsq, align 8
  %add167 = fadd double %152, %call166
  store double %add167, double* %rsq, align 8
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.151
  %153 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %153, 1
  store i32 %inc169, i32* %i, align 4
  %154 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr170 = getelementptr inbounds %struct.site, %struct.site* %154, i32 1
  store %struct.site* %incdec.ptr170, %struct.site** %s, align 8
  br label %for.cond.148

for.end.171:                                      ; preds = %for.cond.148
  call void @g_doublesum(double* %rsq)
  %155 = load double, double* %rsq, align 8
  %156 = load double, double* %rsqstop, align 8
  %cmp172 = fcmp ole double %155, %156
  br i1 %cmp172, label %if.then.174, label %if.end.212

if.then.174:                                      ; preds = %for.end.171
  %157 = load i32, i32* %l_parity, align 4
  %cmp176 = icmp eq i32 %157, 2
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %if.then.174
  %158 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.180

cond.false.179:                                   ; preds = %if.then.174
  %159 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.179, %cond.true.178
  %cond181 = phi i32 [ %158, %cond.true.178 ], [ %159, %cond.false.179 ]
  store i32 %cond181, i32* %loopend175, align 4
  %160 = load i32, i32* %l_parity, align 4
  %cmp182 = icmp eq i32 %160, 1
  br i1 %cmp182, label %cond.true.184, label %cond.false.185

cond.true.184:                                    ; preds = %cond.end.180
  %161 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.186

cond.false.185:                                   ; preds = %cond.end.180
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.185, %cond.true.184
  %cond187 = phi i32 [ %161, %cond.true.184 ], [ 0, %cond.false.185 ]
  store i32 %cond187, i32* %i, align 4
  %162 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %162 to i64
  %163 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx189 = getelementptr inbounds %struct.site, %struct.site* %163, i64 %idxprom188
  store %struct.site* %arrayidx189, %struct.site** %s, align 8
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.198, %cond.end.186
  %164 = load i32, i32* %i, align 4
  %165 = load i32, i32* %loopend175, align 4
  %cmp191 = icmp slt i32 %164, %165
  br i1 %cmp191, label %for.body.193, label %for.end.201

for.body.193:                                     ; preds = %for.cond.190
  %166 = load %struct.site*, %struct.site** %s, align 8
  %167 = bitcast %struct.site* %166 to i8*
  %168 = load i32, i32* %dest.addr, align 4
  %idx.ext194 = sext i32 %168 to i64
  %add.ptr195 = getelementptr inbounds i8, i8* %167, i64 %idx.ext194
  %169 = bitcast i8* %add.ptr195 to %struct.su3_vector*
  %170 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %170 to i64
  %171 = load %struct.su3_vector*, %struct.su3_vector** @t_dest, align 8
  %arrayidx197 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %171, i64 %idxprom196
  %172 = bitcast %struct.su3_vector* %169 to i8*
  %173 = bitcast %struct.su3_vector* %arrayidx197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* %173, i64 48, i32 8, i1 false)
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.193
  %174 = load i32, i32* %i, align 4
  %inc199 = add nsw i32 %174, 1
  store i32 %inc199, i32* %i, align 4
  %175 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr200 = getelementptr inbounds %struct.site, %struct.site* %175, i32 1
  store %struct.site* %incdec.ptr200, %struct.site** %s, align 8
  br label %for.cond.190

for.end.201:                                      ; preds = %for.cond.190
  %176 = load i32, i32* %parity.addr, align 4
  %cmp202 = icmp eq i32 %176, 3
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %for.end.201
  store i32 1, i32* %l_parity, align 4
  store i32 2, i32* %l_otherparity, align 4
  store i32 2, i32* %parity.addr, align 4
  store i32 0, i32* %iteration, align 4
  br label %start

if.end.205:                                       ; preds = %for.end.201
  %177 = load double, double* %rsq, align 8
  %178 = load double*, double** %final_rsq_ptr.addr, align 8
  store double %177, double* %178, align 8
  %179 = load i32, i32* %special_started, align 4
  %cmp206 = icmp eq i32 %179, 1
  br i1 %cmp206, label %if.then.208, label %if.end.211

if.then.208:                                      ; preds = %if.end.205
  %arraydecay209 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags1, i32 0, i32 0
  %arraydecay210 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags2, i32 0, i32 0
  call void @cleanup_gathers(%struct.msg_tag** %arraydecay209, %struct.msg_tag** %arraydecay210)
  store i32 0, i32* %special_started, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.208, %if.end.205
  %180 = load i32, i32* %iteration, align 4
  store i32 %180, i32* %retval
  br label %return

if.end.212:                                       ; preds = %for.end.171
  %181 = load double, double* %rsq, align 8
  %182 = load double, double* %oldrsq, align 8
  %div213 = fdiv double %181, %182
  store double %div213, double* %b, align 8
  %183 = load i32, i32* %l_parity, align 4
  %cmp215 = icmp eq i32 %183, 2
  br i1 %cmp215, label %cond.true.217, label %cond.false.218

cond.true.217:                                    ; preds = %if.end.212
  %184 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.219

cond.false.218:                                   ; preds = %if.end.212
  %185 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.218, %cond.true.217
  %cond220 = phi i32 [ %184, %cond.true.217 ], [ %185, %cond.false.218 ]
  store i32 %cond220, i32* %loopend214, align 4
  %186 = load i32, i32* %l_parity, align 4
  %cmp221 = icmp eq i32 %186, 1
  br i1 %cmp221, label %cond.true.223, label %cond.false.224

cond.true.223:                                    ; preds = %cond.end.219
  %187 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.225

cond.false.224:                                   ; preds = %cond.end.219
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.224, %cond.true.223
  %cond226 = phi i32 [ %187, %cond.true.223 ], [ 0, %cond.false.224 ]
  store i32 %cond226, i32* %i, align 4
  %188 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %188 to i64
  %189 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx228 = getelementptr inbounds %struct.site, %struct.site* %189, i64 %idxprom227
  store %struct.site* %arrayidx228, %struct.site** %s, align 8
  br label %for.cond.229

for.cond.229:                                     ; preds = %for.inc.239, %cond.end.225
  %190 = load i32, i32* %i, align 4
  %191 = load i32, i32* %loopend214, align 4
  %cmp230 = icmp slt i32 %190, %191
  br i1 %cmp230, label %for.body.232, label %for.end.242

for.body.232:                                     ; preds = %for.cond.229
  %192 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %192 to i64
  %193 = load %struct.su3_vector*, %struct.su3_vector** @resid, align 8
  %arrayidx234 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %193, i64 %idxprom233
  %194 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %194 to i64
  %195 = load %struct.su3_vector*, %struct.su3_vector** @cg_p, align 8
  %arrayidx236 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %195, i64 %idxprom235
  %196 = load double, double* %b, align 8
  %197 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %197 to i64
  %198 = load %struct.su3_vector*, %struct.su3_vector** @cg_p, align 8
  %arrayidx238 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %198, i64 %idxprom237
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx234, %struct.su3_vector* %arrayidx236, double %196, %struct.su3_vector* %arrayidx238)
  br label %for.inc.239

for.inc.239:                                      ; preds = %for.body.232
  %199 = load i32, i32* %i, align 4
  %inc240 = add nsw i32 %199, 1
  store i32 %inc240, i32* %i, align 4
  %200 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr241 = getelementptr inbounds %struct.site, %struct.site* %200, i32 1
  store %struct.site* %incdec.ptr241, %struct.site** %s, align 8
  br label %for.cond.229

for.end.242:                                      ; preds = %for.cond.229
  br label %do.cond

do.cond:                                          ; preds = %for.end.242
  %201 = load i32, i32* %iteration, align 4
  %202 = load i32, i32* %niter.addr, align 4
  %rem = srem i32 %201, %202
  %cmp243 = icmp ne i32 %rem, 0
  br i1 %cmp243, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %203 = load i32, i32* %iteration, align 4
  %204 = load i32, i32* %niter.addr, align 4
  %mul245 = mul nsw i32 5, %204
  %cmp246 = icmp slt i32 %203, %mul245
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %do.end
  br label %start

if.end.249:                                       ; preds = %do.end
  %205 = load i32, i32* %l_parity, align 4
  %cmp251 = icmp eq i32 %205, 2
  br i1 %cmp251, label %cond.true.253, label %cond.false.254

cond.true.253:                                    ; preds = %if.end.249
  %206 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.255

cond.false.254:                                   ; preds = %if.end.249
  %207 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.254, %cond.true.253
  %cond256 = phi i32 [ %206, %cond.true.253 ], [ %207, %cond.false.254 ]
  store i32 %cond256, i32* %loopend250, align 4
  %208 = load i32, i32* %l_parity, align 4
  %cmp257 = icmp eq i32 %208, 1
  br i1 %cmp257, label %cond.true.259, label %cond.false.260

cond.true.259:                                    ; preds = %cond.end.255
  %209 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.261

cond.false.260:                                   ; preds = %cond.end.255
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.260, %cond.true.259
  %cond262 = phi i32 [ %209, %cond.true.259 ], [ 0, %cond.false.260 ]
  store i32 %cond262, i32* %i, align 4
  %210 = load i32, i32* %i, align 4
  %idxprom263 = sext i32 %210 to i64
  %211 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx264 = getelementptr inbounds %struct.site, %struct.site* %211, i64 %idxprom263
  store %struct.site* %arrayidx264, %struct.site** %s, align 8
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.273, %cond.end.261
  %212 = load i32, i32* %i, align 4
  %213 = load i32, i32* %loopend250, align 4
  %cmp266 = icmp slt i32 %212, %213
  br i1 %cmp266, label %for.body.268, label %for.end.276

for.body.268:                                     ; preds = %for.cond.265
  %214 = load %struct.site*, %struct.site** %s, align 8
  %215 = bitcast %struct.site* %214 to i8*
  %216 = load i32, i32* %dest.addr, align 4
  %idx.ext269 = sext i32 %216 to i64
  %add.ptr270 = getelementptr inbounds i8, i8* %215, i64 %idx.ext269
  %217 = bitcast i8* %add.ptr270 to %struct.su3_vector*
  %218 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %218 to i64
  %219 = load %struct.su3_vector*, %struct.su3_vector** @t_dest, align 8
  %arrayidx272 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %219, i64 %idxprom271
  %220 = bitcast %struct.su3_vector* %217 to i8*
  %221 = bitcast %struct.su3_vector* %arrayidx272 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 48, i32 8, i1 false)
  br label %for.inc.273

for.inc.273:                                      ; preds = %for.body.268
  %222 = load i32, i32* %i, align 4
  %inc274 = add nsw i32 %222, 1
  store i32 %inc274, i32* %i, align 4
  %223 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr275 = getelementptr inbounds %struct.site, %struct.site* %223, i32 1
  store %struct.site* %incdec.ptr275, %struct.site** %s, align 8
  br label %for.cond.265

for.end.276:                                      ; preds = %for.cond.265
  %224 = load i32, i32* %parity.addr, align 4
  %cmp277 = icmp eq i32 %224, 3
  br i1 %cmp277, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %for.end.276
  store i32 1, i32* %l_parity, align 4
  store i32 2, i32* %l_otherparity, align 4
  store i32 2, i32* %parity.addr, align 4
  store i32 0, i32* %iteration, align 4
  br label %start

if.end.280:                                       ; preds = %for.end.276
  %225 = load double, double* %rsq, align 8
  %226 = load double*, double** %final_rsq_ptr.addr, align 8
  store double %225, double* %226, align 8
  %227 = load i32, i32* %special_started, align 4
  %cmp281 = icmp eq i32 %227, 1
  br i1 %cmp281, label %if.then.283, label %if.end.286

if.then.283:                                      ; preds = %if.end.280
  %arraydecay284 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags1, i32 0, i32 0
  %arraydecay285 = getelementptr inbounds [16 x %struct.msg_tag*], [16 x %struct.msg_tag*]* %tags2, i32 0, i32 0
  call void @cleanup_gathers(%struct.msg_tag** %arraydecay284, %struct.msg_tag** %arraydecay285)
  store i32 0, i32* %special_started, align 4
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.283, %if.end.280
  %228 = load i32, i32* @this_node, align 4
  %cmp287 = icmp eq i32 %228, 0
  br i1 %cmp287, label %if.then.289, label %if.end.291

if.then.289:                                      ; preds = %if.end.286
  %229 = load i32, i32* %iteration, align 4
  %230 = load double, double* %rsq, align 8
  %231 = load double, double* %rsqstop, align 8
  %call290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i32 %229, double %230, double %231)
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.289, %if.end.286
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call292 = call i32 @fflush(%struct._IO_FILE* %232)
  %233 = load i32, i32* %iteration, align 4
  store i32 %233, i32* %retval
  br label %return

return:                                           ; preds = %if.end.291, %if.end.211, %if.end.84
  %234 = load i32, i32* %retval
  ret i32 %234
}

declare void @load_longlinks(...) #1

declare void @load_fatlinks(...) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @cleanup_gathers(%struct.msg_tag**, %struct.msg_tag**) #1

declare void @dslash_fn_on_temp_special(%struct.su3_vector*, %struct.su3_vector*, i32, %struct.msg_tag**, i32) #1

declare void @scalar_mult_add_su3_vector(%struct.su3_vector*, %struct.su3_vector*, double, %struct.su3_vector*) #1

declare void @add_su3_vector(%struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*) #1

declare double @magsq_su3vec(%struct.su3_vector*) #1

declare void @g_doublesum(double*) #1

declare double @su3_rdot(%struct.su3_vector*, %struct.su3_vector*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @clear_latvec(i32 %v, i32 %parity) #0 {
entry:
  %v.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %vv = alloca %struct.su3_vector*, align 8
  store i32 %v, i32* %v.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  %0 = load i32, i32* %parity.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.10
    i32 3, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %i, align 4
  %1 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %1, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %sw.bb
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @even_sites_on_node, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %4 = load %struct.site*, %struct.site** %s, align 8
  %5 = bitcast %struct.site* %4 to i8*
  %6 = load i32, i32* %v.addr, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %7 = bitcast i8* %add.ptr to %struct.su3_vector*
  store %struct.su3_vector* %7, %struct.su3_vector** %vv, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %8, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.su3_vector*, %struct.su3_vector** %vv, align 8
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %10, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 %idxprom
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 1
  store double 0.000000e+00, double* %imag, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.su3_vector*, %struct.su3_vector** %vv, align 8
  %c5 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %12, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c5, i32 0, i64 %idxprom4
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx6, i32 0, i32 0
  store double 0.000000e+00, double* %real, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  %15 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %15, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %16 = load i32, i32* @even_sites_on_node, align 4
  store i32 %16, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx12 = getelementptr inbounds %struct.site, %struct.site* %18, i64 %idxprom11
  store %struct.site* %arrayidx12, %struct.site** %s, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.32, %sw.bb.10
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* @sites_on_node, align 4
  %cmp14 = icmp slt i32 %19, %20
  br i1 %cmp14, label %for.body.15, label %for.end.35

for.body.15:                                      ; preds = %for.cond.13
  %21 = load %struct.site*, %struct.site** %s, align 8
  %22 = bitcast %struct.site* %21 to i8*
  %23 = load i32, i32* %v.addr, align 4
  %idx.ext16 = sext i32 %23 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %22, i64 %idx.ext16
  %24 = bitcast i8* %add.ptr17 to %struct.su3_vector*
  store %struct.su3_vector* %24, %struct.su3_vector** %vv, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.29, %for.body.15
  %25 = load i32, i32* %j, align 4
  %cmp19 = icmp slt i32 %25, 3
  br i1 %cmp19, label %for.body.20, label %for.end.31

for.body.20:                                      ; preds = %for.cond.18
  %26 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load %struct.su3_vector*, %struct.su3_vector** %vv, align 8
  %c22 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %27, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c22, i32 0, i64 %idxprom21
  %imag24 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx23, i32 0, i32 1
  store double 0.000000e+00, double* %imag24, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load %struct.su3_vector*, %struct.su3_vector** %vv, align 8
  %c26 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %29, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c26, i32 0, i64 %idxprom25
  %real28 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx27, i32 0, i32 0
  store double 0.000000e+00, double* %real28, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.20
  %30 = load i32, i32* %j, align 4
  %inc30 = add nsw i32 %30, 1
  store i32 %inc30, i32* %j, align 4
  br label %for.cond.18

for.end.31:                                       ; preds = %for.cond.18
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %31 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %31, 1
  store i32 %inc33, i32* %i, align 4
  %32 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr34 = getelementptr inbounds %struct.site, %struct.site* %32, i32 1
  store %struct.site* %incdec.ptr34, %struct.site** %s, align 8
  br label %for.cond.13

for.end.35:                                       ; preds = %for.cond.13
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  %33 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %33, %struct.site** %s, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.56, %sw.bb.36
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* @sites_on_node, align 4
  %cmp38 = icmp slt i32 %34, %35
  br i1 %cmp38, label %for.body.39, label %for.end.59

for.body.39:                                      ; preds = %for.cond.37
  %36 = load %struct.site*, %struct.site** %s, align 8
  %37 = bitcast %struct.site* %36 to i8*
  %38 = load i32, i32* %v.addr, align 4
  %idx.ext40 = sext i32 %38 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %37, i64 %idx.ext40
  %39 = bitcast i8* %add.ptr41 to %struct.su3_vector*
  store %struct.su3_vector* %39, %struct.su3_vector** %vv, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.53, %for.body.39
  %40 = load i32, i32* %j, align 4
  %cmp43 = icmp slt i32 %40, 3
  br i1 %cmp43, label %for.body.44, label %for.end.55

for.body.44:                                      ; preds = %for.cond.42
  %41 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %41 to i64
  %42 = load %struct.su3_vector*, %struct.su3_vector** %vv, align 8
  %c46 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %42, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c46, i32 0, i64 %idxprom45
  %imag48 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx47, i32 0, i32 1
  store double 0.000000e+00, double* %imag48, align 8
  %43 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %43 to i64
  %44 = load %struct.su3_vector*, %struct.su3_vector** %vv, align 8
  %c50 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %44, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c50, i32 0, i64 %idxprom49
  %real52 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx51, i32 0, i32 0
  store double 0.000000e+00, double* %real52, align 8
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.44
  %45 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %45, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond.42

for.end.55:                                       ; preds = %for.cond.42
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %46 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %46, 1
  store i32 %inc57, i32* %i, align 4
  %47 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr58 = getelementptr inbounds %struct.site, %struct.site* %47, i32 1
  store %struct.site* %incdec.ptr58, %struct.site** %s, align 8
  br label %for.cond.37

for.end.59:                                       ; preds = %for.cond.37
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.59, %for.end.35, %for.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @copy_latvec(i32 %src, i32 %dest, i32 %parity) #0 {
entry:
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %spt = alloca %struct.su3_vector*, align 8
  %dpt = alloca %struct.su3_vector*, align 8
  store i32 %src, i32* %src.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  %0 = load i32, i32* %parity.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.3
    i32 3, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %i, align 4
  %1 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %1, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @even_sites_on_node, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %5, i64 %idxprom
  store %struct.site* %arrayidx, %struct.site** %s, align 8
  %6 = load %struct.site*, %struct.site** %s, align 8
  %7 = bitcast %struct.site* %6 to i8*
  %8 = load i32, i32* %src.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %9 = bitcast i8* %add.ptr to %struct.su3_vector*
  store %struct.su3_vector* %9, %struct.su3_vector** %spt, align 8
  %10 = load %struct.site*, %struct.site** %s, align 8
  %11 = bitcast %struct.site* %10 to i8*
  %12 = load i32, i32* %dest.addr, align 4
  %idx.ext1 = sext i32 %12 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %11, i64 %idx.ext1
  %13 = bitcast i8* %add.ptr2 to %struct.su3_vector*
  store %struct.su3_vector* %13, %struct.su3_vector** %dpt, align 8
  %14 = load %struct.su3_vector*, %struct.su3_vector** %dpt, align 8
  %15 = load %struct.su3_vector*, %struct.su3_vector** %spt, align 8
  %16 = bitcast %struct.su3_vector* %14 to i8*
  %17 = bitcast %struct.su3_vector* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 48, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  %19 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %19, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %20 = load i32, i32* @even_sites_on_node, align 4
  store i32 %20, i32* %i, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %21 to i64
  %22 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx5 = getelementptr inbounds %struct.site, %struct.site* %22, i64 %idxprom4
  store %struct.site* %arrayidx5, %struct.site** %s, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.15, %sw.bb.3
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* @sites_on_node, align 4
  %cmp7 = icmp slt i32 %23, %24
  br i1 %cmp7, label %for.body.8, label %for.end.18

for.body.8:                                       ; preds = %for.cond.6
  %25 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %25 to i64
  %26 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx10 = getelementptr inbounds %struct.site, %struct.site* %26, i64 %idxprom9
  store %struct.site* %arrayidx10, %struct.site** %s, align 8
  %27 = load %struct.site*, %struct.site** %s, align 8
  %28 = bitcast %struct.site* %27 to i8*
  %29 = load i32, i32* %src.addr, align 4
  %idx.ext11 = sext i32 %29 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %28, i64 %idx.ext11
  %30 = bitcast i8* %add.ptr12 to %struct.su3_vector*
  store %struct.su3_vector* %30, %struct.su3_vector** %spt, align 8
  %31 = load %struct.site*, %struct.site** %s, align 8
  %32 = bitcast %struct.site* %31 to i8*
  %33 = load i32, i32* %dest.addr, align 4
  %idx.ext13 = sext i32 %33 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %32, i64 %idx.ext13
  %34 = bitcast i8* %add.ptr14 to %struct.su3_vector*
  store %struct.su3_vector* %34, %struct.su3_vector** %dpt, align 8
  %35 = load %struct.su3_vector*, %struct.su3_vector** %dpt, align 8
  %36 = load %struct.su3_vector*, %struct.su3_vector** %spt, align 8
  %37 = bitcast %struct.su3_vector* %35 to i8*
  %38 = bitcast %struct.su3_vector* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 48, i32 8, i1 false)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.8
  %39 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %39, 1
  store i32 %inc16, i32* %i, align 4
  %40 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr17 = getelementptr inbounds %struct.site, %struct.site* %40, i32 1
  store %struct.site* %incdec.ptr17, %struct.site** %s, align 8
  br label %for.cond.6

for.end.18:                                       ; preds = %for.cond.6
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  %41 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %41, %struct.site** %s, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %sw.bb.19
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* @sites_on_node, align 4
  %cmp21 = icmp slt i32 %42, %43
  br i1 %cmp21, label %for.body.22, label %for.end.32

for.body.22:                                      ; preds = %for.cond.20
  %44 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %44 to i64
  %45 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx24 = getelementptr inbounds %struct.site, %struct.site* %45, i64 %idxprom23
  store %struct.site* %arrayidx24, %struct.site** %s, align 8
  %46 = load %struct.site*, %struct.site** %s, align 8
  %47 = bitcast %struct.site* %46 to i8*
  %48 = load i32, i32* %src.addr, align 4
  %idx.ext25 = sext i32 %48 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %47, i64 %idx.ext25
  %49 = bitcast i8* %add.ptr26 to %struct.su3_vector*
  store %struct.su3_vector* %49, %struct.su3_vector** %spt, align 8
  %50 = load %struct.site*, %struct.site** %s, align 8
  %51 = bitcast %struct.site* %50 to i8*
  %52 = load i32, i32* %dest.addr, align 4
  %idx.ext27 = sext i32 %52 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %51, i64 %idx.ext27
  %53 = bitcast i8* %add.ptr28 to %struct.su3_vector*
  store %struct.su3_vector* %53, %struct.su3_vector** %dpt, align 8
  %54 = load %struct.su3_vector*, %struct.su3_vector** %dpt, align 8
  %55 = load %struct.su3_vector*, %struct.su3_vector** %spt, align 8
  %56 = bitcast %struct.su3_vector* %54 to i8*
  %57 = bitcast %struct.su3_vector* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 48, i32 8, i1 false)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.22
  %58 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %58, 1
  store i32 %inc30, i32* %i, align 4
  %59 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr31 = getelementptr inbounds %struct.site, %struct.site* %59, i32 1
  store %struct.site* %incdec.ptr31, %struct.site** %s, align 8
  br label %for.cond.20

for.end.32:                                       ; preds = %for.cond.20
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.32, %for.end.18, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @scalar_mult_add_latvec(i32 %src1, i32 %src2, double %scalar, i32 %dest, i32 %parity) #0 {
entry:
  %src1.addr = alloca i32, align 4
  %src2.addr = alloca i32, align 4
  %scalar.addr = alloca double, align 8
  %dest.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %spt1 = alloca %struct.su3_vector*, align 8
  %spt2 = alloca %struct.su3_vector*, align 8
  %dpt = alloca %struct.su3_vector*, align 8
  %loopend = alloca i32, align 4
  store i32 %src1, i32* %src1.addr, align 4
  store i32 %src2, i32* %src2.addr, align 4
  store double %scalar, double* %scalar.addr, align 8
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  %0 = load i32, i32* %parity.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* @sites_on_node, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %loopend, align 4
  %3 = load i32, i32* %parity.addr, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %4 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i32 [ %4, %cond.true.2 ], [ 0, %cond.false.3 ]
  store i32 %cond5, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %6, i64 %idxprom
  store %struct.site* %arrayidx, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %loopend, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.site*, %struct.site** %s, align 8
  %10 = bitcast %struct.site* %9 to i8*
  %11 = load i32, i32* %src1.addr, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %12 = bitcast i8* %add.ptr to %struct.su3_vector*
  store %struct.su3_vector* %12, %struct.su3_vector** %spt1, align 8
  %13 = load %struct.site*, %struct.site** %s, align 8
  %14 = bitcast %struct.site* %13 to i8*
  %15 = load i32, i32* %src2.addr, align 4
  %idx.ext7 = sext i32 %15 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 %idx.ext7
  %16 = bitcast i8* %add.ptr8 to %struct.su3_vector*
  store %struct.su3_vector* %16, %struct.su3_vector** %spt2, align 8
  %17 = load %struct.site*, %struct.site** %s, align 8
  %18 = bitcast %struct.site* %17 to i8*
  %19 = load i32, i32* %dest.addr, align 4
  %idx.ext9 = sext i32 %19 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %18, i64 %idx.ext9
  %20 = bitcast i8* %add.ptr10 to %struct.su3_vector*
  store %struct.su3_vector* %20, %struct.su3_vector** %dpt, align 8
  %21 = load %struct.su3_vector*, %struct.su3_vector** %spt1, align 8
  %22 = load %struct.su3_vector*, %struct.su3_vector** %spt2, align 8
  %23 = load double, double* %scalar.addr, align 8
  %24 = load %struct.su3_vector*, %struct.su3_vector** %dpt, align 8
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %21, %struct.su3_vector* %22, double %23, %struct.su3_vector* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  %26 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %26, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @scalar2_mult_add_su3_vector(%struct.su3_vector* %a, double %s1, %struct.su3_vector* %b, double %s2, %struct.su3_vector* %c) #0 {
entry:
  %a.addr = alloca %struct.su3_vector*, align 8
  %s1.addr = alloca double, align 8
  %b.addr = alloca %struct.su3_vector*, align 8
  %s2.addr = alloca double, align 8
  %c.addr = alloca %struct.su3_vector*, align 8
  %i = alloca i32, align 4
  store %struct.su3_vector* %a, %struct.su3_vector** %a.addr, align 8
  store double %s1, double* %s1.addr, align 8
  store %struct.su3_vector* %b, %struct.su3_vector** %b.addr, align 8
  store double %s2, double* %s2.addr, align 8
  store %struct.su3_vector* %c, %struct.su3_vector** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, double* %s1.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c1 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c1, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  %4 = load double, double* %real, align 8
  %mul = fmul double %1, %4
  %5 = load double, double* %s2.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c3 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %7, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c3, i32 0, i64 %idxprom2
  %real5 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 0
  %8 = load double, double* %real5, align 8
  %mul6 = fmul double %5, %8
  %add = fadd double %mul, %mul6
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.su3_vector*, %struct.su3_vector** %c.addr, align 8
  %c8 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %10, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c8, i32 0, i64 %idxprom7
  %real10 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx9, i32 0, i32 0
  store double %add, double* %real10, align 8
  %11 = load double, double* %s1.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.su3_vector*, %struct.su3_vector** %a.addr, align 8
  %c12 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %13, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c12, i32 0, i64 %idxprom11
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx13, i32 0, i32 1
  %14 = load double, double* %imag, align 8
  %mul14 = fmul double %11, %14
  %15 = load double, double* %s2.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load %struct.su3_vector*, %struct.su3_vector** %b.addr, align 8
  %c16 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %17, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c16, i32 0, i64 %idxprom15
  %imag18 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx17, i32 0, i32 1
  %18 = load double, double* %imag18, align 8
  %mul19 = fmul double %15, %18
  %add20 = fadd double %mul14, %mul19
  %19 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load %struct.su3_vector*, %struct.su3_vector** %c.addr, align 8
  %c22 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %20, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c22, i32 0, i64 %idxprom21
  %imag24 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx23, i32 0, i32 1
  store double %add20, double* %imag24, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @scalar2_mult_add_latvec(i32 %src1, double %scalar1, i32 %src2, double %scalar2, i32 %dest, i32 %parity) #0 {
entry:
  %src1.addr = alloca i32, align 4
  %scalar1.addr = alloca double, align 8
  %src2.addr = alloca i32, align 4
  %scalar2.addr = alloca double, align 8
  %dest.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %spt1 = alloca %struct.su3_vector*, align 8
  %spt2 = alloca %struct.su3_vector*, align 8
  %dpt = alloca %struct.su3_vector*, align 8
  %loopend = alloca i32, align 4
  store i32 %src1, i32* %src1.addr, align 4
  store double %scalar1, double* %scalar1.addr, align 8
  store i32 %src2, i32* %src2.addr, align 4
  store double %scalar2, double* %scalar2.addr, align 8
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  %0 = load i32, i32* %parity.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* @sites_on_node, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %loopend, align 4
  %3 = load i32, i32* %parity.addr, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %4 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i32 [ %4, %cond.true.2 ], [ 0, %cond.false.3 ]
  store i32 %cond5, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %6, i64 %idxprom
  store %struct.site* %arrayidx, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %loopend, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.site*, %struct.site** %s, align 8
  %10 = bitcast %struct.site* %9 to i8*
  %11 = load i32, i32* %src1.addr, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %12 = bitcast i8* %add.ptr to %struct.su3_vector*
  store %struct.su3_vector* %12, %struct.su3_vector** %spt1, align 8
  %13 = load %struct.site*, %struct.site** %s, align 8
  %14 = bitcast %struct.site* %13 to i8*
  %15 = load i32, i32* %src2.addr, align 4
  %idx.ext7 = sext i32 %15 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 %idx.ext7
  %16 = bitcast i8* %add.ptr8 to %struct.su3_vector*
  store %struct.su3_vector* %16, %struct.su3_vector** %spt2, align 8
  %17 = load %struct.site*, %struct.site** %s, align 8
  %18 = bitcast %struct.site* %17 to i8*
  %19 = load i32, i32* %dest.addr, align 4
  %idx.ext9 = sext i32 %19 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %18, i64 %idx.ext9
  %20 = bitcast i8* %add.ptr10 to %struct.su3_vector*
  store %struct.su3_vector* %20, %struct.su3_vector** %dpt, align 8
  %21 = load %struct.su3_vector*, %struct.su3_vector** %spt1, align 8
  %22 = load double, double* %scalar1.addr, align 8
  %23 = load %struct.su3_vector*, %struct.su3_vector** %spt2, align 8
  %24 = load double, double* %scalar2.addr, align 8
  %25 = load %struct.su3_vector*, %struct.su3_vector** %dpt, align 8
  call void @scalar2_mult_add_su3_vector(%struct.su3_vector* %21, double %22, %struct.su3_vector* %23, double %24, %struct.su3_vector* %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  %27 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %27, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @scalar_mult_latvec(i32 %src, double %scalar, i32 %dest, i32 %parity) #0 {
entry:
  %src.addr = alloca i32, align 4
  %scalar.addr = alloca double, align 8
  %dest.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %spt = alloca %struct.su3_vector*, align 8
  %dpt = alloca %struct.su3_vector*, align 8
  store i32 %src, i32* %src.addr, align 4
  store double %scalar, double* %scalar.addr, align 8
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  %0 = load i32, i32* %parity.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.3
    i32 3, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %i, align 4
  %1 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %1, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @even_sites_on_node, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.site*, %struct.site** %s, align 8
  %5 = bitcast %struct.site* %4 to i8*
  %6 = load i32, i32* %src.addr, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %7 = bitcast i8* %add.ptr to %struct.su3_vector*
  store %struct.su3_vector* %7, %struct.su3_vector** %spt, align 8
  %8 = load %struct.site*, %struct.site** %s, align 8
  %9 = bitcast %struct.site* %8 to i8*
  %10 = load i32, i32* %dest.addr, align 4
  %idx.ext1 = sext i32 %10 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 %idx.ext1
  %11 = bitcast i8* %add.ptr2 to %struct.su3_vector*
  store %struct.su3_vector* %11, %struct.su3_vector** %dpt, align 8
  %12 = load %struct.su3_vector*, %struct.su3_vector** %spt, align 8
  %13 = load double, double* %scalar.addr, align 8
  %14 = load %struct.su3_vector*, %struct.su3_vector** %dpt, align 8
  call void @scalar_mult_su3_vector(%struct.su3_vector* %12, double %13, %struct.su3_vector* %14)
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
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %17 = load i32, i32* @even_sites_on_node, align 4
  store i32 %17, i32* %i, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %19, i64 %idxprom
  store %struct.site* %arrayidx, %struct.site** %s, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.11, %sw.bb.3
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* @sites_on_node, align 4
  %cmp5 = icmp slt i32 %20, %21
  br i1 %cmp5, label %for.body.6, label %for.end.14

for.body.6:                                       ; preds = %for.cond.4
  %22 = load %struct.site*, %struct.site** %s, align 8
  %23 = bitcast %struct.site* %22 to i8*
  %24 = load i32, i32* %src.addr, align 4
  %idx.ext7 = sext i32 %24 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %23, i64 %idx.ext7
  %25 = bitcast i8* %add.ptr8 to %struct.su3_vector*
  store %struct.su3_vector* %25, %struct.su3_vector** %spt, align 8
  %26 = load %struct.site*, %struct.site** %s, align 8
  %27 = bitcast %struct.site* %26 to i8*
  %28 = load i32, i32* %dest.addr, align 4
  %idx.ext9 = sext i32 %28 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %27, i64 %idx.ext9
  %29 = bitcast i8* %add.ptr10 to %struct.su3_vector*
  store %struct.su3_vector* %29, %struct.su3_vector** %dpt, align 8
  %30 = load %struct.su3_vector*, %struct.su3_vector** %spt, align 8
  %31 = load double, double* %scalar.addr, align 8
  %32 = load %struct.su3_vector*, %struct.su3_vector** %dpt, align 8
  call void @scalar_mult_su3_vector(%struct.su3_vector* %30, double %31, %struct.su3_vector* %32)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.6
  %33 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %33, 1
  store i32 %inc12, i32* %i, align 4
  %34 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr13 = getelementptr inbounds %struct.site, %struct.site* %34, i32 1
  store %struct.site* %incdec.ptr13, %struct.site** %s, align 8
  br label %for.cond.4

for.end.14:                                       ; preds = %for.cond.4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  %35 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %35, %struct.site** %s, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.23, %sw.bb.15
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* @sites_on_node, align 4
  %cmp17 = icmp slt i32 %36, %37
  br i1 %cmp17, label %for.body.18, label %for.end.26

for.body.18:                                      ; preds = %for.cond.16
  %38 = load %struct.site*, %struct.site** %s, align 8
  %39 = bitcast %struct.site* %38 to i8*
  %40 = load i32, i32* %src.addr, align 4
  %idx.ext19 = sext i32 %40 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %39, i64 %idx.ext19
  %41 = bitcast i8* %add.ptr20 to %struct.su3_vector*
  store %struct.su3_vector* %41, %struct.su3_vector** %spt, align 8
  %42 = load %struct.site*, %struct.site** %s, align 8
  %43 = bitcast %struct.site* %42 to i8*
  %44 = load i32, i32* %dest.addr, align 4
  %idx.ext21 = sext i32 %44 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %43, i64 %idx.ext21
  %45 = bitcast i8* %add.ptr22 to %struct.su3_vector*
  store %struct.su3_vector* %45, %struct.su3_vector** %dpt, align 8
  %46 = load %struct.su3_vector*, %struct.su3_vector** %spt, align 8
  %47 = load double, double* %scalar.addr, align 8
  %48 = load %struct.su3_vector*, %struct.su3_vector** %dpt, align 8
  call void @scalar_mult_su3_vector(%struct.su3_vector* %46, double %47, %struct.su3_vector* %48)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.18
  %49 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %49, 1
  store i32 %inc24, i32* %i, align 4
  %50 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr25 = getelementptr inbounds %struct.site, %struct.site* %50, i32 1
  store %struct.site* %incdec.ptr25, %struct.site** %s, align 8
  br label %for.cond.16

for.end.26:                                       ; preds = %for.cond.16
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.26, %for.end.14, %for.end
  ret void
}

declare void @scalar_mult_su3_vector(%struct.su3_vector*, double, %struct.su3_vector*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
