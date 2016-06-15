; ModuleID = 'ploop3.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.msg_tag = type { i32, i32, i8*, i32 }

@lattice = external global %struct.site*, align 8
@gen_pt = external global [16 x i8**], align 16
@even_sites_on_node = external global i32, align 4
@nt = external global i32, align 4
@nx = external global i32, align 4
@ny = external global i32, align 4
@nz = external global i32, align 4

; Function Attrs: nounwind uwtable
define { double, double } @ploop() #0 {
entry:
  %retval = alloca %struct.complex, align 8
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %st = alloca %struct.site*, align 8
  %tag = alloca %struct.msg_tag*, align 8
  %sum = alloca %struct.complex, align 8
  %plp = alloca %struct.complex, align 8
  %tmat = alloca %struct.su3_matrix, align 8
  %d = alloca [4 x i32], align 16
  %coerce = alloca %struct.complex, align 8
  %coerce56 = alloca %struct.complex, align 8
  %call = call { double, double } @cmplx(double 0.000000e+00, double 0.000000e+00)
  %0 = bitcast %struct.complex* %coerce to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, double* %1, align 8
  %3 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, double* %3, align 8
  %5 = bitcast %struct.complex* %sum to i8*
  %6 = bitcast %struct.complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %d, i32 0, i64 2
  store i32 0, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %d, i32 0, i64 1
  store i32 0, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %d, i32 0, i64 0
  store i32 0, i32* %arrayidx2, align 4
  %7 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx3 = getelementptr inbounds %struct.site, %struct.site* %7, i64 0
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx3, i32 0, i32 8
  %arrayidx4 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 3
  %8 = bitcast %struct.su3_matrix* %arrayidx4 to i8*
  %9 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx5 = getelementptr inbounds %struct.site, %struct.site* %9, i64 0
  %10 = bitcast %struct.site* %arrayidx5 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %11 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call6 = call %struct.msg_tag* @start_gather(i32 %conv, i32 144, i32 3, i32 2, i8** %11)
  store %struct.msg_tag* %call6, %struct.msg_tag** %tag, align 8
  %12 = load %struct.msg_tag*, %struct.msg_tag** %tag, align 8
  call void @wait_gather(%struct.msg_tag* %12)
  store i32 0, i32* %i, align 4
  %13 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %13, %struct.site** %st, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @even_sites_on_node, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.site*, %struct.site** %st, align 8
  %link8 = getelementptr inbounds %struct.site, %struct.site* %16, i32 0, i32 8
  %arrayidx9 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link8, i32 0, i64 3
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx10, align 8
  %20 = bitcast i8* %19 to %struct.su3_matrix*
  %21 = load %struct.site*, %struct.site** %st, align 8
  %tempmat1 = getelementptr inbounds %struct.site, %struct.site* %21, i32 0, i32 20
  call void @mult_su3_nn(%struct.su3_matrix* %arrayidx9, %struct.su3_matrix* %20, %struct.su3_matrix* %tempmat1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  %23 = load %struct.site*, %struct.site** %st, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %23, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %st, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.msg_tag*, %struct.msg_tag** %tag, align 8
  call void @cleanup_gather(%struct.msg_tag* %24)
  store i32 2, i32* %t, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.42, %for.end
  %25 = load i32, i32* %t, align 4
  %26 = load i32, i32* @nt, align 4
  %cmp12 = icmp slt i32 %25, %26
  br i1 %cmp12, label %for.body.14, label %for.end.43

for.body.14:                                      ; preds = %for.cond.11
  %27 = load i32, i32* %t, align 4
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %d, i32 0, i64 3
  store i32 %27, i32* %arrayidx15, align 4
  %28 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx16 = getelementptr inbounds %struct.site, %struct.site* %28, i64 0
  %tempmat117 = getelementptr inbounds %struct.site, %struct.site* %arrayidx16, i32 0, i32 20
  %29 = bitcast %struct.su3_matrix* %tempmat117 to i8*
  %30 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx18 = getelementptr inbounds %struct.site, %struct.site* %30, i64 0
  %31 = bitcast %struct.site* %arrayidx18 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %31 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %conv22 = trunc i64 %sub.ptr.sub21 to i32
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %d, i32 0, i32 0
  %32 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call23 = call %struct.msg_tag* @start_general_gather(i32 %conv22, i32 144, i32* %arraydecay, i32 2, i8** %32)
  store %struct.msg_tag* %call23, %struct.msg_tag** %tag, align 8
  %33 = load %struct.msg_tag*, %struct.msg_tag** %tag, align 8
  call void @wait_general_gather(%struct.msg_tag* %33)
  store i32 0, i32* %i, align 4
  %34 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %34, %struct.site** %st, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.38, %for.body.14
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* @even_sites_on_node, align 4
  %cmp25 = icmp slt i32 %35, %36
  br i1 %cmp25, label %for.body.27, label %for.end.41

for.body.27:                                      ; preds = %for.cond.24
  %37 = load %struct.site*, %struct.site** %st, align 8
  %t28 = getelementptr inbounds %struct.site, %struct.site* %37, i32 0, i32 3
  %38 = load i16, i16* %t28, align 2
  %conv29 = sext i16 %38 to i32
  %cmp30 = icmp sgt i32 %conv29, 1
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.27
  br label %for.inc.38

if.end:                                           ; preds = %for.body.27
  %39 = load %struct.site*, %struct.site** %st, align 8
  %tempmat132 = getelementptr inbounds %struct.site, %struct.site* %39, i32 0, i32 20
  %40 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %40 to i64
  %41 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %41, i64 %idxprom33
  %42 = load i8*, i8** %arrayidx34, align 8
  %43 = bitcast i8* %42 to %struct.su3_matrix*
  call void @mult_su3_nn(%struct.su3_matrix* %tempmat132, %struct.su3_matrix* %43, %struct.su3_matrix* %tmat)
  %44 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %44 to i64
  %45 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx36 = getelementptr inbounds %struct.site, %struct.site* %45, i64 %idxprom35
  %tempmat137 = getelementptr inbounds %struct.site, %struct.site* %arrayidx36, i32 0, i32 20
  %46 = bitcast %struct.su3_matrix* %tempmat137 to i8*
  %47 = bitcast %struct.su3_matrix* %tmat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 144, i32 8, i1 false)
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end, %if.then
  %48 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %48, 1
  store i32 %inc39, i32* %i, align 4
  %49 = load %struct.site*, %struct.site** %st, align 8
  %incdec.ptr40 = getelementptr inbounds %struct.site, %struct.site* %49, i32 1
  store %struct.site* %incdec.ptr40, %struct.site** %st, align 8
  br label %for.cond.24

for.end.41:                                       ; preds = %for.cond.24
  %50 = load %struct.msg_tag*, %struct.msg_tag** %tag, align 8
  call void @cleanup_general_gather(%struct.msg_tag* %50)
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.41
  %51 = load i32, i32* %t, align 4
  %add = add nsw i32 %51, 2
  store i32 %add, i32* %t, align 4
  br label %for.cond.11

for.end.43:                                       ; preds = %for.cond.11
  store i32 0, i32* %i, align 4
  %52 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %52, %struct.site** %st, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.61, %for.end.43
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* @even_sites_on_node, align 4
  %cmp45 = icmp slt i32 %53, %54
  br i1 %cmp45, label %for.body.47, label %for.end.64

for.body.47:                                      ; preds = %for.cond.44
  %55 = load %struct.site*, %struct.site** %st, align 8
  %t48 = getelementptr inbounds %struct.site, %struct.site* %55, i32 0, i32 3
  %56 = load i16, i16* %t48, align 2
  %conv49 = sext i16 %56 to i32
  %cmp50 = icmp sgt i32 %conv49, 1
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.body.47
  br label %for.inc.61

if.end.53:                                        ; preds = %for.body.47
  %57 = load %struct.site*, %struct.site** %st, align 8
  %tempmat154 = getelementptr inbounds %struct.site, %struct.site* %57, i32 0, i32 20
  %call55 = call { double, double } @trace_su3(%struct.su3_matrix* %tempmat154)
  %58 = bitcast %struct.complex* %coerce56 to { double, double }*
  %59 = getelementptr { double, double }, { double, double }* %58, i32 0, i32 0
  %60 = extractvalue { double, double } %call55, 0
  store double %60, double* %59, align 8
  %61 = getelementptr { double, double }, { double, double }* %58, i32 0, i32 1
  %62 = extractvalue { double, double } %call55, 1
  store double %62, double* %61, align 8
  %63 = bitcast %struct.complex* %plp to i8*
  %64 = bitcast %struct.complex* %coerce56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false)
  %real = getelementptr inbounds %struct.complex, %struct.complex* %plp, i32 0, i32 0
  %65 = load double, double* %real, align 8
  %real57 = getelementptr inbounds %struct.complex, %struct.complex* %sum, i32 0, i32 0
  %66 = load double, double* %real57, align 8
  %add58 = fadd double %66, %65
  store double %add58, double* %real57, align 8
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %plp, i32 0, i32 1
  %67 = load double, double* %imag, align 8
  %imag59 = getelementptr inbounds %struct.complex, %struct.complex* %sum, i32 0, i32 1
  %68 = load double, double* %imag59, align 8
  %add60 = fadd double %68, %67
  store double %add60, double* %imag59, align 8
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.53, %if.then.52
  %69 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %69, 1
  store i32 %inc62, i32* %i, align 4
  %70 = load %struct.site*, %struct.site** %st, align 8
  %incdec.ptr63 = getelementptr inbounds %struct.site, %struct.site* %70, i32 1
  store %struct.site* %incdec.ptr63, %struct.site** %st, align 8
  br label %for.cond.44

for.end.64:                                       ; preds = %for.cond.44
  call void @g_complexsum(%struct.complex* %sum)
  %real65 = getelementptr inbounds %struct.complex, %struct.complex* %sum, i32 0, i32 0
  %71 = load double, double* %real65, align 8
  %72 = load i32, i32* @nx, align 4
  %73 = load i32, i32* @ny, align 4
  %mul = mul nsw i32 %72, %73
  %74 = load i32, i32* @nz, align 4
  %mul66 = mul nsw i32 %mul, %74
  %conv67 = sitofp i32 %mul66 to double
  %div = fdiv double %71, %conv67
  %real68 = getelementptr inbounds %struct.complex, %struct.complex* %plp, i32 0, i32 0
  store double %div, double* %real68, align 8
  %imag69 = getelementptr inbounds %struct.complex, %struct.complex* %sum, i32 0, i32 1
  %75 = load double, double* %imag69, align 8
  %76 = load i32, i32* @nx, align 4
  %77 = load i32, i32* @ny, align 4
  %mul70 = mul nsw i32 %76, %77
  %78 = load i32, i32* @nz, align 4
  %mul71 = mul nsw i32 %mul70, %78
  %conv72 = sitofp i32 %mul71 to double
  %div73 = fdiv double %75, %conv72
  %imag74 = getelementptr inbounds %struct.complex, %struct.complex* %plp, i32 0, i32 1
  store double %div73, double* %imag74, align 8
  %79 = bitcast %struct.complex* %retval to i8*
  %80 = bitcast %struct.complex* %plp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 16, i32 8, i1 false)
  %81 = bitcast %struct.complex* %retval to { double, double }*
  %82 = load { double, double }, { double, double }* %81, align 8
  ret { double, double } %82
}

declare { double, double } @cmplx(double, double) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct.msg_tag* @start_gather(i32, i32, i32, i32, i8**) #1

declare void @wait_gather(%struct.msg_tag*) #1

declare void @mult_su3_nn(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #1

declare void @cleanup_gather(%struct.msg_tag*) #1

declare %struct.msg_tag* @start_general_gather(i32, i32, i32*, i32, i8**) #1

declare void @wait_general_gather(%struct.msg_tag*) #1

declare void @cleanup_general_gather(%struct.msg_tag*) #1

declare { double, double } @trace_su3(%struct.su3_matrix*) #1

declare void @g_complexsum(%struct.complex*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
