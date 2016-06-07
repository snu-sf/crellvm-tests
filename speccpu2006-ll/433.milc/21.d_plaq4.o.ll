; ModuleID = 'd_plaq4.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.msg_tag = type { i32, i32, i8*, i32 }

@sites_on_node = external global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"plaquette: can't malloc su3mat\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@lattice = external global %struct.site*, align 8
@gen_pt = external global [16 x i8**], align 16
@nx = external global i32, align 4
@ny = external global i32, align 4
@nz = external global i32, align 4
@nt = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @d_plaquette(double* %ss_plaq, double* %st_plaq) #0 {
entry:
  %ss_plaq.addr = alloca double*, align 8
  %st_plaq.addr = alloca double*, align 8
  %su3mat = alloca %struct.su3_matrix*, align 8
  %i = alloca i32, align 4
  %dir1 = alloca i32, align 4
  %dir2 = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %m1 = alloca %struct.su3_matrix*, align 8
  %m4 = alloca %struct.su3_matrix*, align 8
  %mtmp = alloca %struct.su3_matrix, align 8
  %ss_sum = alloca double, align 8
  %st_sum = alloca double, align 8
  %mtag0 = alloca %struct.msg_tag*, align 8
  %mtag1 = alloca %struct.msg_tag*, align 8
  store double* %ss_plaq, double** %ss_plaq.addr, align 8
  store double* %st_plaq, double** %st_plaq.addr, align 8
  store double 0.000000e+00, double* %st_sum, align 8
  store double 0.000000e+00, double* %ss_sum, align 8
  %0 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 144) #3
  %1 = bitcast i8* %call to %struct.su3_matrix*
  store %struct.su3_matrix* %1, %struct.su3_matrix** %su3mat, align 8
  %2 = load %struct.su3_matrix*, %struct.su3_matrix** %su3mat, align 8
  %cmp = icmp eq %struct.su3_matrix* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* %dir1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %if.end
  %4 = load i32, i32* %dir1, align 4
  %cmp4 = icmp sle i32 %4, 3
  br i1 %cmp4, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %dir2, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.59, %for.body
  %5 = load i32, i32* %dir2, align 4
  %6 = load i32, i32* %dir1, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body.9, label %for.end.61

for.body.9:                                       ; preds = %for.cond.6
  %7 = load i32, i32* %dir2, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %8, i64 0
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom
  %9 = bitcast %struct.su3_matrix* %arrayidx10 to i8*
  %10 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx11 = getelementptr inbounds %struct.site, %struct.site* %10, i64 0
  %11 = bitcast %struct.site* %arrayidx11 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv12 = trunc i64 %sub.ptr.sub to i32
  %12 = load i32, i32* %dir1, align 4
  %13 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call13 = call %struct.msg_tag* @start_gather(i32 %conv12, i32 144, i32 %12, i32 3, i8** %13)
  store %struct.msg_tag* %call13, %struct.msg_tag** %mtag0, align 8
  %14 = load i32, i32* %dir1, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx15 = getelementptr inbounds %struct.site, %struct.site* %15, i64 0
  %link16 = getelementptr inbounds %struct.site, %struct.site* %arrayidx15, i32 0, i32 8
  %arrayidx17 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link16, i32 0, i64 %idxprom14
  %16 = bitcast %struct.su3_matrix* %arrayidx17 to i8*
  %17 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx18 = getelementptr inbounds %struct.site, %struct.site* %17, i64 0
  %18 = bitcast %struct.site* %arrayidx18 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %18 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %conv22 = trunc i64 %sub.ptr.sub21 to i32
  %19 = load i32, i32* %dir2, align 4
  %20 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 1), align 8
  %call23 = call %struct.msg_tag* @start_gather(i32 %conv22, i32 144, i32 %19, i32 3, i8** %20)
  store %struct.msg_tag* %call23, %struct.msg_tag** %mtag1, align 8
  store i32 0, i32* %i, align 4
  %21 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %21, %struct.site** %s, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %for.body.9
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* @sites_on_node, align 4
  %cmp25 = icmp slt i32 %22, %23
  br i1 %cmp25, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.24
  %24 = load i32, i32* %dir1, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load %struct.site*, %struct.site** %s, align 8
  %link29 = getelementptr inbounds %struct.site, %struct.site* %25, i32 0, i32 8
  %arrayidx30 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link29, i32 0, i64 %idxprom28
  store %struct.su3_matrix* %arrayidx30, %struct.su3_matrix** %m1, align 8
  %26 = load i32, i32* %dir2, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load %struct.site*, %struct.site** %s, align 8
  %link32 = getelementptr inbounds %struct.site, %struct.site* %27, i32 0, i32 8
  %arrayidx33 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link32, i32 0, i64 %idxprom31
  store %struct.su3_matrix* %arrayidx33, %struct.su3_matrix** %m4, align 8
  %28 = load %struct.su3_matrix*, %struct.su3_matrix** %m4, align 8
  %29 = load %struct.su3_matrix*, %struct.su3_matrix** %m1, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load %struct.su3_matrix*, %struct.su3_matrix** %su3mat, align 8
  %arrayidx35 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %31, i64 %idxprom34
  call void @mult_su3_an(%struct.su3_matrix* %28, %struct.su3_matrix* %29, %struct.su3_matrix* %arrayidx35)
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  %33 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %33, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  %34 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %34)
  %35 = load %struct.msg_tag*, %struct.msg_tag** %mtag1, align 8
  call void @wait_gather(%struct.msg_tag* %35)
  store i32 0, i32* %i, align 4
  %36 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %36, %struct.site** %s, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.55, %for.end
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* @sites_on_node, align 4
  %cmp37 = icmp slt i32 %37, %38
  br i1 %cmp37, label %for.body.39, label %for.end.58

for.body.39:                                      ; preds = %for.cond.36
  %39 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load %struct.su3_matrix*, %struct.su3_matrix** %su3mat, align 8
  %arrayidx41 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %40, i64 %idxprom40
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %42 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %42, i64 %idxprom42
  %43 = load i8*, i8** %arrayidx43, align 8
  %44 = bitcast i8* %43 to %struct.su3_matrix*
  call void @mult_su3_nn(%struct.su3_matrix* %arrayidx41, %struct.su3_matrix* %44, %struct.su3_matrix* %mtmp)
  %45 = load i32, i32* %dir1, align 4
  %cmp44 = icmp eq i32 %45, 3
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %for.body.39
  %46 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 1), align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %47, i64 %idxprom47
  %48 = load i8*, i8** %arrayidx48, align 8
  %49 = bitcast i8* %48 to %struct.su3_matrix*
  %call49 = call double @realtrace_su3(%struct.su3_matrix* %49, %struct.su3_matrix* %mtmp)
  %50 = load double, double* %st_sum, align 8
  %add = fadd double %50, %call49
  store double %add, double* %st_sum, align 8
  br label %if.end.54

if.else:                                          ; preds = %for.body.39
  %51 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %51 to i64
  %52 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 1), align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %52, i64 %idxprom50
  %53 = load i8*, i8** %arrayidx51, align 8
  %54 = bitcast i8* %53 to %struct.su3_matrix*
  %call52 = call double @realtrace_su3(%struct.su3_matrix* %54, %struct.su3_matrix* %mtmp)
  %55 = load double, double* %ss_sum, align 8
  %add53 = fadd double %55, %call52
  store double %add53, double* %ss_sum, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.46
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %56 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %56, 1
  store i32 %inc56, i32* %i, align 4
  %57 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr57 = getelementptr inbounds %struct.site, %struct.site* %57, i32 1
  store %struct.site* %incdec.ptr57, %struct.site** %s, align 8
  br label %for.cond.36

for.end.58:                                       ; preds = %for.cond.36
  %58 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %58)
  %59 = load %struct.msg_tag*, %struct.msg_tag** %mtag1, align 8
  call void @cleanup_gather(%struct.msg_tag* %59)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.58
  %60 = load i32, i32* %dir2, align 4
  %inc60 = add nsw i32 %60, 1
  store i32 %inc60, i32* %dir2, align 4
  br label %for.cond.6

for.end.61:                                       ; preds = %for.cond.6
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %61 = load i32, i32* %dir1, align 4
  %inc63 = add nsw i32 %61, 1
  store i32 %inc63, i32* %dir1, align 4
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  call void @g_doublesum(double* %ss_sum)
  call void @g_doublesum(double* %st_sum)
  %62 = load double, double* %ss_sum, align 8
  %63 = load i32, i32* @nx, align 4
  %mul = mul nsw i32 3, %63
  %64 = load i32, i32* @ny, align 4
  %mul65 = mul nsw i32 %mul, %64
  %65 = load i32, i32* @nz, align 4
  %mul66 = mul nsw i32 %mul65, %65
  %66 = load i32, i32* @nt, align 4
  %mul67 = mul nsw i32 %mul66, %66
  %conv68 = sitofp i32 %mul67 to double
  %div = fdiv double %62, %conv68
  %67 = load double*, double** %ss_plaq.addr, align 8
  store double %div, double* %67, align 8
  %68 = load double, double* %st_sum, align 8
  %69 = load i32, i32* @nx, align 4
  %mul69 = mul nsw i32 3, %69
  %70 = load i32, i32* @ny, align 4
  %mul70 = mul nsw i32 %mul69, %70
  %71 = load i32, i32* @nz, align 4
  %mul71 = mul nsw i32 %mul70, %71
  %72 = load i32, i32* @nt, align 4
  %mul72 = mul nsw i32 %mul71, %72
  %conv73 = sitofp i32 %mul72 to double
  %div74 = fdiv double %68, %conv73
  %73 = load double*, double** %st_plaq.addr, align 8
  store double %div74, double* %73, align 8
  %74 = load %struct.su3_matrix*, %struct.su3_matrix** %su3mat, align 8
  %75 = bitcast %struct.su3_matrix* %74 to i8*
  call void @free(i8* %75) #3
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i32 @printf(i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @terminate(i32) #2

declare %struct.msg_tag* @start_gather(i32, i32, i32, i32, i8**) #2

declare void @mult_su3_an(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #2

declare void @wait_gather(%struct.msg_tag*) #2

declare void @mult_su3_nn(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #2

declare double @realtrace_su3(%struct.su3_matrix*, %struct.su3_matrix*) #2

declare void @cleanup_gather(%struct.msg_tag*) #2

declare void @g_doublesum(double*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
