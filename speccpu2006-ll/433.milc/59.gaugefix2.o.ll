; ModuleID = 'gaugefix2.c'
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
%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.msg_tag = type { i32, i32, i8*, i32 }

@even_sites_on_node = external global i32, align 4
@lattice = external global %struct.site*, align 8
@sites_on_node = external global i32, align 4
@diffmat_offset = common global i32 0, align 4
@diffmatp = common global %struct.su3_matrix* null, align 8
@sumvec_offset = common global i32 0, align 4
@sumvecp = common global %struct.su3_vector* null, align 8
@gen_pt = external global [16 x i8**], align 16
@nx = external global i32, align 4
@ny = external global i32, align 4
@nz = external global i32, align 4
@nt = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@this_node = external global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"gaugefix: Can't malloc diffmat\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"gaugefix: Can't malloc sumvec\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"GFIX: Ended at step %d. Av gf action %.8e, delta %.3e\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @accum_gauge_hit(i32 %gauge_dir, i32 %parity) #0 {
entry:
  %gauge_dir.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %m1 = alloca %struct.su3_matrix*, align 8
  %m2 = alloca %struct.su3_matrix*, align 8
  %dir = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  store i32 %gauge_dir, i32* %gauge_dir.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  %0 = load i32, i32* %parity.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %3, i64 %idxprom
  store %struct.site* %arrayidx, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %parity.addr, align 4
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %for.cond
  %6 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.4

cond.false.3:                                     ; preds = %for.cond
  %7 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i32 [ %6, %cond.true.2 ], [ %7, %cond.false.3 ]
  %cmp6 = icmp slt i32 %4, %cond5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.4
  %8 = load i32, i32* @diffmat_offset, align 4
  %cmp7 = icmp sge i32 %8, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load %struct.site*, %struct.site** %s, align 8
  %10 = bitcast %struct.site* %9 to i8*
  %11 = load i32, i32* @diffmat_offset, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %12 = bitcast i8* %add.ptr to %struct.su3_matrix*
  call void @clear_su3mat(%struct.su3_matrix* %12)
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx9 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %14, i64 %idxprom8
  call void @clear_su3mat(%struct.su3_matrix* %arrayidx9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* @sumvec_offset, align 4
  %cmp10 = icmp sge i32 %15, 0
  br i1 %cmp10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.end
  %16 = load %struct.site*, %struct.site** %s, align 8
  %17 = bitcast %struct.site* %16 to i8*
  %18 = load i32, i32* @sumvec_offset, align 4
  %idx.ext12 = sext i32 %18 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %17, i64 %idx.ext12
  %19 = bitcast i8* %add.ptr13 to %struct.su3_vector*
  call void @clearvec(%struct.su3_vector* %19)
  br label %if.end.17

if.else.14:                                       ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load %struct.su3_vector*, %struct.su3_vector** @sumvecp, align 8
  %arrayidx16 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %21, i64 %idxprom15
  call void @clearvec(%struct.su3_vector* %arrayidx16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  %23 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %23, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.4
  %24 = load i32, i32* %parity.addr, align 4
  %cmp18 = icmp eq i32 %24, 1
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %for.end
  %25 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.21

cond.false.20:                                    ; preds = %for.end
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i32 [ %25, %cond.true.19 ], [ 0, %cond.false.20 ]
  store i32 %cond22, i32* %i, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %26 to i64
  %27 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx24 = getelementptr inbounds %struct.site, %struct.site* %27, i64 %idxprom23
  store %struct.site* %arrayidx24, %struct.site** %s, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.119, %cond.end.21
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %parity.addr, align 4
  %cmp26 = icmp eq i32 %29, 2
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %for.cond.25
  %30 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.29

cond.false.28:                                    ; preds = %for.cond.25
  %31 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.27
  %cond30 = phi i32 [ %30, %cond.true.27 ], [ %31, %cond.false.28 ]
  %cmp31 = icmp slt i32 %28, %cond30
  br i1 %cmp31, label %for.body.32, label %for.end.122

for.body.32:                                      ; preds = %cond.end.29
  store i32 0, i32* %dir, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.116, %for.body.32
  %32 = load i32, i32* %dir, align 4
  %cmp34 = icmp sle i32 %32, 3
  br i1 %cmp34, label %for.body.35, label %for.end.118

for.body.35:                                      ; preds = %for.cond.33
  %33 = load i32, i32* %dir, align 4
  %34 = load i32, i32* %gauge_dir.addr, align 4
  %cmp36 = icmp ne i32 %33, %34
  br i1 %cmp36, label %if.then.37, label %if.end.115

if.then.37:                                       ; preds = %for.body.35
  %35 = load i32, i32* %dir, align 4
  %idxprom38 = sext i32 %35 to i64
  %36 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %36, i32 0, i32 8
  %arrayidx39 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom38
  store %struct.su3_matrix* %arrayidx39, %struct.su3_matrix** %m1, align 8
  %37 = load i32, i32* @diffmat_offset, align 4
  %cmp40 = icmp sge i32 %37, 0
  br i1 %cmp40, label %if.then.41, label %if.else.46

if.then.41:                                       ; preds = %if.then.37
  %38 = load %struct.site*, %struct.site** %s, align 8
  %39 = bitcast %struct.site* %38 to i8*
  %40 = load i32, i32* @diffmat_offset, align 4
  %idx.ext42 = sext i32 %40 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %39, i64 %idx.ext42
  %41 = bitcast i8* %add.ptr43 to %struct.su3_matrix*
  %42 = load %struct.su3_matrix*, %struct.su3_matrix** %m1, align 8
  %43 = load %struct.site*, %struct.site** %s, align 8
  %44 = bitcast %struct.site* %43 to i8*
  %45 = load i32, i32* @diffmat_offset, align 4
  %idx.ext44 = sext i32 %45 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %44, i64 %idx.ext44
  %46 = bitcast i8* %add.ptr45 to %struct.su3_matrix*
  call void @sub_su3_matrix(%struct.su3_matrix* %41, %struct.su3_matrix* %42, %struct.su3_matrix* %46)
  br label %if.end.51

if.else.46:                                       ; preds = %if.then.37
  %47 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %47 to i64
  %48 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx48 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %48, i64 %idxprom47
  %49 = load %struct.su3_matrix*, %struct.su3_matrix** %m1, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %50 to i64
  %51 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx50 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %51, i64 %idxprom49
  call void @sub_su3_matrix(%struct.su3_matrix* %arrayidx48, %struct.su3_matrix* %49, %struct.su3_matrix* %arrayidx50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.46, %if.then.41
  %52 = load i32, i32* @sumvec_offset, align 4
  %cmp52 = icmp sge i32 %52, 0
  br i1 %cmp52, label %if.then.53, label %if.else.81

if.then.53:                                       ; preds = %if.end.51
  store i32 0, i32* %j, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.78, %if.then.53
  %53 = load i32, i32* %j, align 4
  %cmp55 = icmp slt i32 %53, 3
  br i1 %cmp55, label %for.body.56, label %for.end.80

for.body.56:                                      ; preds = %for.cond.54
  %54 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %55 to i64
  %56 = load %struct.su3_matrix*, %struct.su3_matrix** %m1, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %56, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx59, i32 0, i64 %idxprom57
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx60, i32 0, i32 0
  %57 = load double, double* %real, align 8
  %58 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %58 to i64
  %59 = load %struct.site*, %struct.site** %s, align 8
  %60 = bitcast %struct.site* %59 to i8*
  %61 = load i32, i32* @sumvec_offset, align 4
  %idx.ext62 = sext i32 %61 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %60, i64 %idx.ext62
  %62 = bitcast i8* %add.ptr63 to %struct.su3_vector*
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 %idxprom61
  %real65 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx64, i32 0, i32 0
  %63 = load double, double* %real65, align 8
  %add = fadd double %63, %57
  store double %add, double* %real65, align 8
  %64 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %64 to i64
  %65 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %65 to i64
  %66 = load %struct.su3_matrix*, %struct.su3_matrix** %m1, align 8
  %e68 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %66, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e68, i32 0, i64 %idxprom67
  %arrayidx70 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx69, i32 0, i64 %idxprom66
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx70, i32 0, i32 1
  %67 = load double, double* %imag, align 8
  %68 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %68 to i64
  %69 = load %struct.site*, %struct.site** %s, align 8
  %70 = bitcast %struct.site* %69 to i8*
  %71 = load i32, i32* @sumvec_offset, align 4
  %idx.ext72 = sext i32 %71 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %70, i64 %idx.ext72
  %72 = bitcast i8* %add.ptr73 to %struct.su3_vector*
  %c74 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %72, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c74, i32 0, i64 %idxprom71
  %imag76 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx75, i32 0, i32 1
  %73 = load double, double* %imag76, align 8
  %add77 = fadd double %73, %67
  store double %add77, double* %imag76, align 8
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.56
  %74 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %74, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond.54

for.end.80:                                       ; preds = %for.cond.54
  br label %if.end.114

if.else.81:                                       ; preds = %if.end.51
  store i32 0, i32* %j, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.111, %if.else.81
  %75 = load i32, i32* %j, align 4
  %cmp83 = icmp slt i32 %75, 3
  br i1 %cmp83, label %for.body.84, label %for.end.113

for.body.84:                                      ; preds = %for.cond.82
  %76 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %76 to i64
  %77 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %77 to i64
  %78 = load %struct.su3_matrix*, %struct.su3_matrix** %m1, align 8
  %e87 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %78, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e87, i32 0, i64 %idxprom86
  %arrayidx89 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx88, i32 0, i64 %idxprom85
  %real90 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx89, i32 0, i32 0
  %79 = load double, double* %real90, align 8
  %80 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %80 to i64
  %81 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %81 to i64
  %82 = load %struct.su3_vector*, %struct.su3_vector** @sumvecp, align 8
  %arrayidx93 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %82, i64 %idxprom92
  %c94 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx93, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c94, i32 0, i64 %idxprom91
  %real96 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx95, i32 0, i32 0
  %83 = load double, double* %real96, align 8
  %add97 = fadd double %83, %79
  store double %add97, double* %real96, align 8
  %84 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %84 to i64
  %85 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %85 to i64
  %86 = load %struct.su3_matrix*, %struct.su3_matrix** %m1, align 8
  %e100 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %86, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e100, i32 0, i64 %idxprom99
  %arrayidx102 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx101, i32 0, i64 %idxprom98
  %imag103 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx102, i32 0, i32 1
  %87 = load double, double* %imag103, align 8
  %88 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %88 to i64
  %89 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %89 to i64
  %90 = load %struct.su3_vector*, %struct.su3_vector** @sumvecp, align 8
  %arrayidx106 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %90, i64 %idxprom105
  %c107 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c107, i32 0, i64 %idxprom104
  %imag109 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx108, i32 0, i32 1
  %91 = load double, double* %imag109, align 8
  %add110 = fadd double %91, %87
  store double %add110, double* %imag109, align 8
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.84
  %92 = load i32, i32* %j, align 4
  %inc112 = add nsw i32 %92, 1
  store i32 %inc112, i32* %j, align 4
  br label %for.cond.82

for.end.113:                                      ; preds = %for.cond.82
  br label %if.end.114

if.end.114:                                       ; preds = %for.end.113, %for.end.80
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %for.body.35
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %93 = load i32, i32* %dir, align 4
  %inc117 = add nsw i32 %93, 1
  store i32 %inc117, i32* %dir, align 4
  br label %for.cond.33

for.end.118:                                      ; preds = %for.cond.33
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.end.118
  %94 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %94, 1
  store i32 %inc120, i32* %i, align 4
  %95 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr121 = getelementptr inbounds %struct.site, %struct.site* %95, i32 1
  store %struct.site* %incdec.ptr121, %struct.site** %s, align 8
  br label %for.cond.25

for.end.122:                                      ; preds = %cond.end.29
  %96 = load i32, i32* %parity.addr, align 4
  %cmp123 = icmp eq i32 %96, 1
  br i1 %cmp123, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %for.end.122
  %97 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.126

cond.false.125:                                   ; preds = %for.end.122
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.125, %cond.true.124
  %cond127 = phi i32 [ %97, %cond.true.124 ], [ 0, %cond.false.125 ]
  store i32 %cond127, i32* %i, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %98 to i64
  %99 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx129 = getelementptr inbounds %struct.site, %struct.site* %99, i64 %idxprom128
  store %struct.site* %arrayidx129, %struct.site** %s, align 8
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.231, %cond.end.126
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %parity.addr, align 4
  %cmp131 = icmp eq i32 %101, 2
  br i1 %cmp131, label %cond.true.132, label %cond.false.133

cond.true.132:                                    ; preds = %for.cond.130
  %102 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.134

cond.false.133:                                   ; preds = %for.cond.130
  %103 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.133, %cond.true.132
  %cond135 = phi i32 [ %102, %cond.true.132 ], [ %103, %cond.false.133 ]
  %cmp136 = icmp slt i32 %100, %cond135
  br i1 %cmp136, label %for.body.137, label %for.end.234

for.body.137:                                     ; preds = %cond.end.134
  store i32 0, i32* %dir, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.228, %for.body.137
  %104 = load i32, i32* %dir, align 4
  %cmp139 = icmp sle i32 %104, 3
  br i1 %cmp139, label %for.body.140, label %for.end.230

for.body.140:                                     ; preds = %for.cond.138
  %105 = load i32, i32* %dir, align 4
  %106 = load i32, i32* %gauge_dir.addr, align 4
  %cmp141 = icmp ne i32 %105, %106
  br i1 %cmp141, label %if.then.142, label %if.end.227

if.then.142:                                      ; preds = %for.body.140
  %107 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %107 to i64
  %108 = load i32, i32* %dir, align 4
  %idxprom144 = sext i32 %108 to i64
  %arrayidx145 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom144
  %109 = load i8**, i8*** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds i8*, i8** %109, i64 %idxprom143
  %110 = load i8*, i8** %arrayidx146, align 8
  %111 = bitcast i8* %110 to %struct.su3_matrix*
  store %struct.su3_matrix* %111, %struct.su3_matrix** %m2, align 8
  %112 = load i32, i32* @diffmat_offset, align 4
  %cmp147 = icmp sge i32 %112, 0
  br i1 %cmp147, label %if.then.148, label %if.else.153

if.then.148:                                      ; preds = %if.then.142
  %113 = load %struct.site*, %struct.site** %s, align 8
  %114 = bitcast %struct.site* %113 to i8*
  %115 = load i32, i32* @diffmat_offset, align 4
  %idx.ext149 = sext i32 %115 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %114, i64 %idx.ext149
  %116 = bitcast i8* %add.ptr150 to %struct.su3_matrix*
  %117 = load %struct.su3_matrix*, %struct.su3_matrix** %m2, align 8
  %118 = load %struct.site*, %struct.site** %s, align 8
  %119 = bitcast %struct.site* %118 to i8*
  %120 = load i32, i32* @diffmat_offset, align 4
  %idx.ext151 = sext i32 %120 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %119, i64 %idx.ext151
  %121 = bitcast i8* %add.ptr152 to %struct.su3_matrix*
  call void @add_su3_matrix(%struct.su3_matrix* %116, %struct.su3_matrix* %117, %struct.su3_matrix* %121)
  br label %if.end.158

if.else.153:                                      ; preds = %if.then.142
  %122 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %122 to i64
  %123 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx155 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %123, i64 %idxprom154
  %124 = load %struct.su3_matrix*, %struct.su3_matrix** %m2, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %125 to i64
  %126 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx157 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %126, i64 %idxprom156
  call void @add_su3_matrix(%struct.su3_matrix* %arrayidx155, %struct.su3_matrix* %124, %struct.su3_matrix* %arrayidx157)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.153, %if.then.148
  %127 = load i32, i32* @sumvec_offset, align 4
  %cmp159 = icmp sge i32 %127, 0
  br i1 %cmp159, label %if.then.160, label %if.else.193

if.then.160:                                      ; preds = %if.end.158
  store i32 0, i32* %j, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.190, %if.then.160
  %128 = load i32, i32* %j, align 4
  %cmp162 = icmp slt i32 %128, 3
  br i1 %cmp162, label %for.body.163, label %for.end.192

for.body.163:                                     ; preds = %for.cond.161
  %129 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %129 to i64
  %130 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %130 to i64
  %131 = load %struct.su3_matrix*, %struct.su3_matrix** %m2, align 8
  %e166 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %131, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e166, i32 0, i64 %idxprom165
  %arrayidx168 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx167, i32 0, i64 %idxprom164
  %real169 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx168, i32 0, i32 0
  %132 = load double, double* %real169, align 8
  %133 = load i32, i32* %j, align 4
  %idxprom170 = sext i32 %133 to i64
  %134 = load %struct.site*, %struct.site** %s, align 8
  %135 = bitcast %struct.site* %134 to i8*
  %136 = load i32, i32* @sumvec_offset, align 4
  %idx.ext171 = sext i32 %136 to i64
  %add.ptr172 = getelementptr inbounds i8, i8* %135, i64 %idx.ext171
  %137 = bitcast i8* %add.ptr172 to %struct.su3_vector*
  %c173 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %137, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c173, i32 0, i64 %idxprom170
  %real175 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx174, i32 0, i32 0
  %138 = load double, double* %real175, align 8
  %add176 = fadd double %138, %132
  store double %add176, double* %real175, align 8
  %139 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %139 to i64
  %140 = load i32, i32* %j, align 4
  %idxprom178 = sext i32 %140 to i64
  %141 = load %struct.su3_matrix*, %struct.su3_matrix** %m2, align 8
  %e179 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %141, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e179, i32 0, i64 %idxprom178
  %arrayidx181 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx180, i32 0, i64 %idxprom177
  %imag182 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx181, i32 0, i32 1
  %142 = load double, double* %imag182, align 8
  %143 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %143 to i64
  %144 = load %struct.site*, %struct.site** %s, align 8
  %145 = bitcast %struct.site* %144 to i8*
  %146 = load i32, i32* @sumvec_offset, align 4
  %idx.ext184 = sext i32 %146 to i64
  %add.ptr185 = getelementptr inbounds i8, i8* %145, i64 %idx.ext184
  %147 = bitcast i8* %add.ptr185 to %struct.su3_vector*
  %c186 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %147, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c186, i32 0, i64 %idxprom183
  %imag188 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx187, i32 0, i32 1
  %148 = load double, double* %imag188, align 8
  %add189 = fadd double %148, %142
  store double %add189, double* %imag188, align 8
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.163
  %149 = load i32, i32* %j, align 4
  %inc191 = add nsw i32 %149, 1
  store i32 %inc191, i32* %j, align 4
  br label %for.cond.161

for.end.192:                                      ; preds = %for.cond.161
  br label %if.end.226

if.else.193:                                      ; preds = %if.end.158
  store i32 0, i32* %j, align 4
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.223, %if.else.193
  %150 = load i32, i32* %j, align 4
  %cmp195 = icmp slt i32 %150, 3
  br i1 %cmp195, label %for.body.196, label %for.end.225

for.body.196:                                     ; preds = %for.cond.194
  %151 = load i32, i32* %j, align 4
  %idxprom197 = sext i32 %151 to i64
  %152 = load i32, i32* %j, align 4
  %idxprom198 = sext i32 %152 to i64
  %153 = load %struct.su3_matrix*, %struct.su3_matrix** %m2, align 8
  %e199 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %153, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e199, i32 0, i64 %idxprom198
  %arrayidx201 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx200, i32 0, i64 %idxprom197
  %real202 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx201, i32 0, i32 0
  %154 = load double, double* %real202, align 8
  %155 = load i32, i32* %j, align 4
  %idxprom203 = sext i32 %155 to i64
  %156 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %156 to i64
  %157 = load %struct.su3_vector*, %struct.su3_vector** @sumvecp, align 8
  %arrayidx205 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %157, i64 %idxprom204
  %c206 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c206, i32 0, i64 %idxprom203
  %real208 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx207, i32 0, i32 0
  %158 = load double, double* %real208, align 8
  %add209 = fadd double %158, %154
  store double %add209, double* %real208, align 8
  %159 = load i32, i32* %j, align 4
  %idxprom210 = sext i32 %159 to i64
  %160 = load i32, i32* %j, align 4
  %idxprom211 = sext i32 %160 to i64
  %161 = load %struct.su3_matrix*, %struct.su3_matrix** %m2, align 8
  %e212 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %161, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e212, i32 0, i64 %idxprom211
  %arrayidx214 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx213, i32 0, i64 %idxprom210
  %imag215 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx214, i32 0, i32 1
  %162 = load double, double* %imag215, align 8
  %163 = load i32, i32* %j, align 4
  %idxprom216 = sext i32 %163 to i64
  %164 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %164 to i64
  %165 = load %struct.su3_vector*, %struct.su3_vector** @sumvecp, align 8
  %arrayidx218 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %165, i64 %idxprom217
  %c219 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c219, i32 0, i64 %idxprom216
  %imag221 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx220, i32 0, i32 1
  %166 = load double, double* %imag221, align 8
  %add222 = fadd double %166, %162
  store double %add222, double* %imag221, align 8
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.196
  %167 = load i32, i32* %j, align 4
  %inc224 = add nsw i32 %167, 1
  store i32 %inc224, i32* %j, align 4
  br label %for.cond.194

for.end.225:                                      ; preds = %for.cond.194
  br label %if.end.226

if.end.226:                                       ; preds = %for.end.225, %for.end.192
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %for.body.140
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227
  %168 = load i32, i32* %dir, align 4
  %inc229 = add nsw i32 %168, 1
  store i32 %inc229, i32* %dir, align 4
  br label %for.cond.138

for.end.230:                                      ; preds = %for.cond.138
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.end.230
  %169 = load i32, i32* %i, align 4
  %inc232 = add nsw i32 %169, 1
  store i32 %inc232, i32* %i, align 4
  %170 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr233 = getelementptr inbounds %struct.site, %struct.site* %170, i32 1
  store %struct.site* %incdec.ptr233, %struct.site** %s, align 8
  br label %for.cond.130

for.end.234:                                      ; preds = %cond.end.134
  ret void
}

declare void @clear_su3mat(%struct.su3_matrix*) #1

declare void @clearvec(%struct.su3_vector*) #1

declare void @sub_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #1

declare void @add_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #1

; Function Attrs: nounwind uwtable
define void @do_hit(i32 %gauge_dir, i32 %parity, i32 %p, i32 %q, double %relax_boost, i32 %nvector, i32* %vector_offset, i32* %vector_parity, i32 %nantiherm, i32* %antiherm_offset, i32* %antiherm_parity) #0 {
entry:
  %gauge_dir.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %relax_boost.addr = alloca double, align 8
  %nvector.addr = alloca i32, align 4
  %vector_offset.addr = alloca i32*, align 8
  %vector_parity.addr = alloca i32*, align 8
  %nantiherm.addr = alloca i32, align 4
  %antiherm_offset.addr = alloca i32*, align 8
  %antiherm_parity.addr = alloca i32*, align 8
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %a3 = alloca double, align 8
  %asq = alloca double, align 8
  %a0sq = alloca double, align 8
  %x = alloca double, align 8
  %r = alloca double, align 8
  %xdr = alloca double, align 8
  %dir = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %u = alloca %struct.su2_matrix, align 8
  %htemp = alloca %struct.su3_matrix, align 8
  %coerce = alloca %struct.complex, align 8
  %coerce158 = alloca %struct.complex, align 8
  %coerce164 = alloca %struct.complex, align 8
  %coerce170 = alloca %struct.complex, align 8
  store i32 %gauge_dir, i32* %gauge_dir.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %q, i32* %q.addr, align 4
  store double %relax_boost, double* %relax_boost.addr, align 8
  store i32 %nvector, i32* %nvector.addr, align 4
  store i32* %vector_offset, i32** %vector_offset.addr, align 8
  store i32* %vector_parity, i32** %vector_parity.addr, align 8
  store i32 %nantiherm, i32* %nantiherm.addr, align 4
  store i32* %antiherm_offset, i32** %antiherm_offset.addr, align 8
  store i32* %antiherm_parity, i32** %antiherm_parity.addr, align 8
  %0 = load i32, i32* %gauge_dir.addr, align 4
  %1 = load i32, i32* %parity.addr, align 4
  call void @accum_gauge_hit(i32 %0, i32 %1)
  %2 = load i32, i32* %parity.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %5, i64 %idxprom
  store %struct.site* %arrayidx, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.237, %cond.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %parity.addr, align 4
  %cmp1 = icmp eq i32 %7, 2
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %for.cond
  %8 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.4

cond.false.3:                                     ; preds = %for.cond
  %9 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i32 [ %8, %cond.true.2 ], [ %9, %cond.false.3 ]
  %cmp6 = icmp slt i32 %6, %cond5
  br i1 %cmp6, label %for.body, label %for.end.239

for.body:                                         ; preds = %cond.end.4
  %10 = load i32, i32* @sumvec_offset, align 4
  %cmp7 = icmp sge i32 %10, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %p.addr, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.site*, %struct.site** %s, align 8
  %13 = bitcast %struct.site* %12 to i8*
  %14 = load i32, i32* @sumvec_offset, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %15 = bitcast i8* %add.ptr to %struct.su3_vector*
  %c = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %15, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c, i32 0, i64 %idxprom8
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx9, i32 0, i32 0
  %16 = load double, double* %real, align 8
  %17 = load i32, i32* %q.addr, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.site*, %struct.site** %s, align 8
  %19 = bitcast %struct.site* %18 to i8*
  %20 = load i32, i32* @sumvec_offset, align 4
  %idx.ext11 = sext i32 %20 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %19, i64 %idx.ext11
  %21 = bitcast i8* %add.ptr12 to %struct.su3_vector*
  %c13 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %21, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c13, i32 0, i64 %idxprom10
  %real15 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx14, i32 0, i32 0
  %22 = load double, double* %real15, align 8
  %add = fadd double %16, %22
  store double %add, double* %a0, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %23 = load i32, i32* %p.addr, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct.su3_vector*, %struct.su3_vector** @sumvecp, align 8
  %arrayidx18 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %25, i64 %idxprom17
  %c19 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c19, i32 0, i64 %idxprom16
  %real21 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx20, i32 0, i32 0
  %26 = load double, double* %real21, align 8
  %27 = load i32, i32* %q.addr, align 4
  %idxprom22 = sext i32 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load %struct.su3_vector*, %struct.su3_vector** @sumvecp, align 8
  %arrayidx24 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %29, i64 %idxprom23
  %c25 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %arrayidx24, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c25, i32 0, i64 %idxprom22
  %real27 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx26, i32 0, i32 0
  %30 = load double, double* %real27, align 8
  %add28 = fadd double %26, %30
  store double %add28, double* %a0, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load i32, i32* @diffmat_offset, align 4
  %cmp29 = icmp sge i32 %31, 0
  br i1 %cmp29, label %if.then.30, label %if.else.80

if.then.30:                                       ; preds = %if.end
  %32 = load i32, i32* %p.addr, align 4
  %idxprom31 = sext i32 %32 to i64
  %33 = load i32, i32* %q.addr, align 4
  %idxprom32 = sext i32 %33 to i64
  %34 = load %struct.site*, %struct.site** %s, align 8
  %35 = bitcast %struct.site* %34 to i8*
  %36 = load i32, i32* @diffmat_offset, align 4
  %idx.ext33 = sext i32 %36 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %35, i64 %idx.ext33
  %37 = bitcast i8* %add.ptr34 to %struct.su3_matrix*
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %37, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom32
  %arrayidx36 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx35, i32 0, i64 %idxprom31
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx36, i32 0, i32 1
  %38 = load double, double* %imag, align 8
  %39 = load i32, i32* %q.addr, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load i32, i32* %p.addr, align 4
  %idxprom38 = sext i32 %40 to i64
  %41 = load %struct.site*, %struct.site** %s, align 8
  %42 = bitcast %struct.site* %41 to i8*
  %43 = load i32, i32* @diffmat_offset, align 4
  %idx.ext39 = sext i32 %43 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %42, i64 %idx.ext39
  %44 = bitcast i8* %add.ptr40 to %struct.su3_matrix*
  %e41 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %44, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e41, i32 0, i64 %idxprom38
  %arrayidx43 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx42, i32 0, i64 %idxprom37
  %imag44 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx43, i32 0, i32 1
  %45 = load double, double* %imag44, align 8
  %add45 = fadd double %38, %45
  store double %add45, double* %a1, align 8
  %46 = load i32, i32* %p.addr, align 4
  %idxprom46 = sext i32 %46 to i64
  %47 = load i32, i32* %q.addr, align 4
  %idxprom47 = sext i32 %47 to i64
  %48 = load %struct.site*, %struct.site** %s, align 8
  %49 = bitcast %struct.site* %48 to i8*
  %50 = load i32, i32* @diffmat_offset, align 4
  %idx.ext48 = sext i32 %50 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %49, i64 %idx.ext48
  %51 = bitcast i8* %add.ptr49 to %struct.su3_matrix*
  %e50 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %51, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e50, i32 0, i64 %idxprom47
  %arrayidx52 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx51, i32 0, i64 %idxprom46
  %real53 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx52, i32 0, i32 0
  %52 = load double, double* %real53, align 8
  %sub = fsub double -0.000000e+00, %52
  %53 = load i32, i32* %q.addr, align 4
  %idxprom54 = sext i32 %53 to i64
  %54 = load i32, i32* %p.addr, align 4
  %idxprom55 = sext i32 %54 to i64
  %55 = load %struct.site*, %struct.site** %s, align 8
  %56 = bitcast %struct.site* %55 to i8*
  %57 = load i32, i32* @diffmat_offset, align 4
  %idx.ext56 = sext i32 %57 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %56, i64 %idx.ext56
  %58 = bitcast i8* %add.ptr57 to %struct.su3_matrix*
  %e58 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %58, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e58, i32 0, i64 %idxprom55
  %arrayidx60 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx59, i32 0, i64 %idxprom54
  %real61 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx60, i32 0, i32 0
  %59 = load double, double* %real61, align 8
  %add62 = fadd double %sub, %59
  store double %add62, double* %a2, align 8
  %60 = load i32, i32* %p.addr, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load i32, i32* %p.addr, align 4
  %idxprom64 = sext i32 %61 to i64
  %62 = load %struct.site*, %struct.site** %s, align 8
  %63 = bitcast %struct.site* %62 to i8*
  %64 = load i32, i32* @diffmat_offset, align 4
  %idx.ext65 = sext i32 %64 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %63, i64 %idx.ext65
  %65 = bitcast i8* %add.ptr66 to %struct.su3_matrix*
  %e67 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %65, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e67, i32 0, i64 %idxprom64
  %arrayidx69 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx68, i32 0, i64 %idxprom63
  %imag70 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx69, i32 0, i32 1
  %66 = load double, double* %imag70, align 8
  %67 = load i32, i32* %q.addr, align 4
  %idxprom71 = sext i32 %67 to i64
  %68 = load i32, i32* %q.addr, align 4
  %idxprom72 = sext i32 %68 to i64
  %69 = load %struct.site*, %struct.site** %s, align 8
  %70 = bitcast %struct.site* %69 to i8*
  %71 = load i32, i32* @diffmat_offset, align 4
  %idx.ext73 = sext i32 %71 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %70, i64 %idx.ext73
  %72 = bitcast i8* %add.ptr74 to %struct.su3_matrix*
  %e75 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %72, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e75, i32 0, i64 %idxprom72
  %arrayidx77 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx76, i32 0, i64 %idxprom71
  %imag78 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx77, i32 0, i32 1
  %73 = load double, double* %imag78, align 8
  %sub79 = fsub double %66, %73
  store double %sub79, double* %a3, align 8
  br label %if.end.133

if.else.80:                                       ; preds = %if.end
  %74 = load i32, i32* %p.addr, align 4
  %idxprom81 = sext i32 %74 to i64
  %75 = load i32, i32* %q.addr, align 4
  %idxprom82 = sext i32 %75 to i64
  %76 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %76 to i64
  %77 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx84 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %77, i64 %idxprom83
  %e85 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx84, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e85, i32 0, i64 %idxprom82
  %arrayidx87 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx86, i32 0, i64 %idxprom81
  %imag88 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx87, i32 0, i32 1
  %78 = load double, double* %imag88, align 8
  %79 = load i32, i32* %q.addr, align 4
  %idxprom89 = sext i32 %79 to i64
  %80 = load i32, i32* %p.addr, align 4
  %idxprom90 = sext i32 %80 to i64
  %81 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %81 to i64
  %82 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx92 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %82, i64 %idxprom91
  %e93 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx92, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e93, i32 0, i64 %idxprom90
  %arrayidx95 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx94, i32 0, i64 %idxprom89
  %imag96 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx95, i32 0, i32 1
  %83 = load double, double* %imag96, align 8
  %add97 = fadd double %78, %83
  store double %add97, double* %a1, align 8
  %84 = load i32, i32* %p.addr, align 4
  %idxprom98 = sext i32 %84 to i64
  %85 = load i32, i32* %q.addr, align 4
  %idxprom99 = sext i32 %85 to i64
  %86 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %86 to i64
  %87 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx101 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %87, i64 %idxprom100
  %e102 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e102, i32 0, i64 %idxprom99
  %arrayidx104 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx103, i32 0, i64 %idxprom98
  %real105 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx104, i32 0, i32 0
  %88 = load double, double* %real105, align 8
  %sub106 = fsub double -0.000000e+00, %88
  %89 = load i32, i32* %q.addr, align 4
  %idxprom107 = sext i32 %89 to i64
  %90 = load i32, i32* %p.addr, align 4
  %idxprom108 = sext i32 %90 to i64
  %91 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %91 to i64
  %92 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx110 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %92, i64 %idxprom109
  %e111 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e111, i32 0, i64 %idxprom108
  %arrayidx113 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx112, i32 0, i64 %idxprom107
  %real114 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx113, i32 0, i32 0
  %93 = load double, double* %real114, align 8
  %add115 = fadd double %sub106, %93
  store double %add115, double* %a2, align 8
  %94 = load i32, i32* %p.addr, align 4
  %idxprom116 = sext i32 %94 to i64
  %95 = load i32, i32* %p.addr, align 4
  %idxprom117 = sext i32 %95 to i64
  %96 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %96 to i64
  %97 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx119 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %97, i64 %idxprom118
  %e120 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e120, i32 0, i64 %idxprom117
  %arrayidx122 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx121, i32 0, i64 %idxprom116
  %imag123 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx122, i32 0, i32 1
  %98 = load double, double* %imag123, align 8
  %99 = load i32, i32* %q.addr, align 4
  %idxprom124 = sext i32 %99 to i64
  %100 = load i32, i32* %q.addr, align 4
  %idxprom125 = sext i32 %100 to i64
  %101 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %101 to i64
  %102 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx127 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %102, i64 %idxprom126
  %e128 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e128, i32 0, i64 %idxprom125
  %arrayidx130 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx129, i32 0, i64 %idxprom124
  %imag131 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx130, i32 0, i32 1
  %103 = load double, double* %imag131, align 8
  %sub132 = fsub double %98, %103
  store double %sub132, double* %a3, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.80, %if.then.30
  %104 = load double, double* %a1, align 8
  %105 = load double, double* %a1, align 8
  %mul = fmul double %104, %105
  %106 = load double, double* %a2, align 8
  %107 = load double, double* %a2, align 8
  %mul134 = fmul double %106, %107
  %add135 = fadd double %mul, %mul134
  %108 = load double, double* %a3, align 8
  %109 = load double, double* %a3, align 8
  %mul136 = fmul double %108, %109
  %add137 = fadd double %add135, %mul136
  store double %add137, double* %asq, align 8
  %110 = load double, double* %a0, align 8
  %111 = load double, double* %a0, align 8
  %mul138 = fmul double %110, %111
  store double %mul138, double* %a0sq, align 8
  %112 = load double, double* %relax_boost.addr, align 8
  %113 = load double, double* %a0sq, align 8
  %mul139 = fmul double %112, %113
  %114 = load double, double* %asq, align 8
  %add140 = fadd double %mul139, %114
  %115 = load double, double* %a0sq, align 8
  %116 = load double, double* %asq, align 8
  %add141 = fadd double %115, %116
  %div = fdiv double %add140, %add141
  store double %div, double* %x, align 8
  %117 = load double, double* %a0sq, align 8
  %118 = load double, double* %x, align 8
  %119 = load double, double* %x, align 8
  %mul142 = fmul double %118, %119
  %120 = load double, double* %asq, align 8
  %mul143 = fmul double %mul142, %120
  %add144 = fadd double %117, %mul143
  %call = call double @sqrt(double %add144) #3
  store double %call, double* %r, align 8
  %121 = load double, double* %x, align 8
  %122 = load double, double* %r, align 8
  %div145 = fdiv double %121, %122
  store double %div145, double* %xdr, align 8
  %123 = load double, double* %a0, align 8
  %124 = load double, double* %r, align 8
  %div146 = fdiv double %123, %124
  store double %div146, double* %a0, align 8
  %125 = load double, double* %a1, align 8
  %126 = load double, double* %xdr, align 8
  %mul147 = fmul double %125, %126
  store double %mul147, double* %a1, align 8
  %127 = load double, double* %a2, align 8
  %128 = load double, double* %xdr, align 8
  %mul148 = fmul double %127, %128
  store double %mul148, double* %a2, align 8
  %129 = load double, double* %a3, align 8
  %130 = load double, double* %xdr, align 8
  %mul149 = fmul double %129, %130
  store double %mul149, double* %a3, align 8
  %e150 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %u, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e150, i32 0, i64 0
  %arrayidx152 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx151, i32 0, i64 0
  %131 = load double, double* %a0, align 8
  %132 = load double, double* %a3, align 8
  %call153 = call { double, double } @cmplx(double %131, double %132)
  %133 = bitcast %struct.complex* %coerce to { double, double }*
  %134 = getelementptr { double, double }, { double, double }* %133, i32 0, i32 0
  %135 = extractvalue { double, double } %call153, 0
  store double %135, double* %134, align 8
  %136 = getelementptr { double, double }, { double, double }* %133, i32 0, i32 1
  %137 = extractvalue { double, double } %call153, 1
  store double %137, double* %136, align 8
  %138 = bitcast %struct.complex* %arrayidx152 to i8*
  %139 = bitcast %struct.complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 16, i32 8, i1 false)
  %e154 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %u, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e154, i32 0, i64 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx155, i32 0, i64 1
  %140 = load double, double* %a2, align 8
  %141 = load double, double* %a1, align 8
  %call157 = call { double, double } @cmplx(double %140, double %141)
  %142 = bitcast %struct.complex* %coerce158 to { double, double }*
  %143 = getelementptr { double, double }, { double, double }* %142, i32 0, i32 0
  %144 = extractvalue { double, double } %call157, 0
  store double %144, double* %143, align 8
  %145 = getelementptr { double, double }, { double, double }* %142, i32 0, i32 1
  %146 = extractvalue { double, double } %call157, 1
  store double %146, double* %145, align 8
  %147 = bitcast %struct.complex* %arrayidx156 to i8*
  %148 = bitcast %struct.complex* %coerce158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %148, i64 16, i32 8, i1 false)
  %e159 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %u, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e159, i32 0, i64 1
  %arrayidx161 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx160, i32 0, i64 0
  %149 = load double, double* %a2, align 8
  %sub162 = fsub double -0.000000e+00, %149
  %150 = load double, double* %a1, align 8
  %call163 = call { double, double } @cmplx(double %sub162, double %150)
  %151 = bitcast %struct.complex* %coerce164 to { double, double }*
  %152 = getelementptr { double, double }, { double, double }* %151, i32 0, i32 0
  %153 = extractvalue { double, double } %call163, 0
  store double %153, double* %152, align 8
  %154 = getelementptr { double, double }, { double, double }* %151, i32 0, i32 1
  %155 = extractvalue { double, double } %call163, 1
  store double %155, double* %154, align 8
  %156 = bitcast %struct.complex* %arrayidx161 to i8*
  %157 = bitcast %struct.complex* %coerce164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %157, i64 16, i32 8, i1 false)
  %e165 = getelementptr inbounds %struct.su2_matrix, %struct.su2_matrix* %u, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [2 x [2 x %struct.complex]], [2 x [2 x %struct.complex]]* %e165, i32 0, i64 1
  %arrayidx167 = getelementptr inbounds [2 x %struct.complex], [2 x %struct.complex]* %arrayidx166, i32 0, i64 1
  %158 = load double, double* %a0, align 8
  %159 = load double, double* %a3, align 8
  %sub168 = fsub double -0.000000e+00, %159
  %call169 = call { double, double } @cmplx(double %158, double %sub168)
  %160 = bitcast %struct.complex* %coerce170 to { double, double }*
  %161 = getelementptr { double, double }, { double, double }* %160, i32 0, i32 0
  %162 = extractvalue { double, double } %call169, 0
  store double %162, double* %161, align 8
  %163 = getelementptr { double, double }, { double, double }* %160, i32 0, i32 1
  %164 = extractvalue { double, double } %call169, 1
  store double %164, double* %163, align 8
  %165 = bitcast %struct.complex* %arrayidx167 to i8*
  %166 = bitcast %struct.complex* %coerce170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %166, i64 16, i32 8, i1 false)
  store i32 0, i32* %dir, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc, %if.end.133
  %167 = load i32, i32* %dir, align 4
  %cmp172 = icmp sle i32 %167, 3
  br i1 %cmp172, label %for.body.173, label %for.end

for.body.173:                                     ; preds = %for.cond.171
  %168 = load i32, i32* %p.addr, align 4
  %169 = load i32, i32* %q.addr, align 4
  %170 = load i32, i32* %dir, align 4
  %idxprom174 = sext i32 %170 to i64
  %171 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %171, i32 0, i32 8
  %arrayidx175 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom174
  call void @left_su2_hit_n(%struct.su2_matrix* %u, i32 %168, i32 %169, %struct.su3_matrix* %arrayidx175)
  br label %for.inc

for.inc:                                          ; preds = %for.body.173
  %172 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %172, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond.171

for.end:                                          ; preds = %for.cond.171
  store i32 0, i32* %dir, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.183, %for.end
  %173 = load i32, i32* %dir, align 4
  %cmp177 = icmp sle i32 %173, 3
  br i1 %cmp177, label %for.body.178, label %for.end.185

for.body.178:                                     ; preds = %for.cond.176
  %174 = load i32, i32* %p.addr, align 4
  %175 = load i32, i32* %q.addr, align 4
  %176 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %176 to i64
  %177 = load i32, i32* %dir, align 4
  %idxprom180 = sext i32 %177 to i64
  %arrayidx181 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom180
  %178 = load i8**, i8*** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i8*, i8** %178, i64 %idxprom179
  %179 = load i8*, i8** %arrayidx182, align 8
  %180 = bitcast i8* %179 to %struct.su3_matrix*
  call void @right_su2_hit_a(%struct.su2_matrix* %u, i32 %174, i32 %175, %struct.su3_matrix* %180)
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.178
  %181 = load i32, i32* %dir, align 4
  %inc184 = add nsw i32 %181, 1
  store i32 %inc184, i32* %dir, align 4
  br label %for.cond.176

for.end.185:                                      ; preds = %for.cond.176
  store i32 0, i32* %j, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.211, %for.end.185
  %182 = load i32, i32* %j, align 4
  %183 = load i32, i32* %nvector.addr, align 4
  %cmp187 = icmp slt i32 %182, %183
  br i1 %cmp187, label %for.body.188, label %for.end.213

for.body.188:                                     ; preds = %for.cond.186
  %184 = load i32, i32* %j, align 4
  %idxprom189 = sext i32 %184 to i64
  %185 = load i32*, i32** %vector_parity.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %185, i64 %idxprom189
  %186 = load i32, i32* %arrayidx190, align 4
  %cmp191 = icmp eq i32 %186, 3
  br i1 %cmp191, label %if.then.195, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.188
  %187 = load i32, i32* %j, align 4
  %idxprom192 = sext i32 %187 to i64
  %188 = load i32*, i32** %vector_parity.addr, align 8
  %arrayidx193 = getelementptr inbounds i32, i32* %188, i64 %idxprom192
  %189 = load i32, i32* %arrayidx193, align 4
  %190 = load i32, i32* %parity.addr, align 4
  %cmp194 = icmp eq i32 %189, %190
  br i1 %cmp194, label %if.then.195, label %if.end.210

if.then.195:                                      ; preds = %lor.lhs.false, %for.body.188
  %191 = load i32, i32* %p.addr, align 4
  %idxprom196 = sext i32 %191 to i64
  %192 = load %struct.site*, %struct.site** %s, align 8
  %193 = bitcast %struct.site* %192 to i8*
  %194 = load i32, i32* %j, align 4
  %idxprom197 = sext i32 %194 to i64
  %195 = load i32*, i32** %vector_offset.addr, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %195, i64 %idxprom197
  %196 = load i32, i32* %arrayidx198, align 4
  %idx.ext199 = sext i32 %196 to i64
  %add.ptr200 = getelementptr inbounds i8, i8* %193, i64 %idx.ext199
  %197 = bitcast i8* %add.ptr200 to %struct.su3_vector*
  %c201 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %197, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c201, i32 0, i64 %idxprom196
  %198 = load i32, i32* %q.addr, align 4
  %idxprom203 = sext i32 %198 to i64
  %199 = load %struct.site*, %struct.site** %s, align 8
  %200 = bitcast %struct.site* %199 to i8*
  %201 = load i32, i32* %j, align 4
  %idxprom204 = sext i32 %201 to i64
  %202 = load i32*, i32** %vector_offset.addr, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %202, i64 %idxprom204
  %203 = load i32, i32* %arrayidx205, align 4
  %idx.ext206 = sext i32 %203 to i64
  %add.ptr207 = getelementptr inbounds i8, i8* %200, i64 %idx.ext206
  %204 = bitcast i8* %add.ptr207 to %struct.su3_vector*
  %c208 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %204, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %c208, i32 0, i64 %idxprom203
  call void @mult_su2_mat_vec_elem_n(%struct.su2_matrix* %u, %struct.complex* %arrayidx202, %struct.complex* %arrayidx209)
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.195, %lor.lhs.false
  br label %for.inc.211

for.inc.211:                                      ; preds = %if.end.210
  %205 = load i32, i32* %j, align 4
  %inc212 = add nsw i32 %205, 1
  store i32 %inc212, i32* %j, align 4
  br label %for.cond.186

for.end.213:                                      ; preds = %for.cond.186
  store i32 0, i32* %j, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.234, %for.end.213
  %206 = load i32, i32* %j, align 4
  %207 = load i32, i32* %nantiherm.addr, align 4
  %cmp215 = icmp slt i32 %206, %207
  br i1 %cmp215, label %for.body.216, label %for.end.236

for.body.216:                                     ; preds = %for.cond.214
  %208 = load i32, i32* %j, align 4
  %idxprom217 = sext i32 %208 to i64
  %209 = load i32*, i32** %antiherm_parity.addr, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %209, i64 %idxprom217
  %210 = load i32, i32* %arrayidx218, align 4
  %cmp219 = icmp eq i32 %210, 3
  br i1 %cmp219, label %if.then.224, label %lor.lhs.false.220

lor.lhs.false.220:                                ; preds = %for.body.216
  %211 = load i32, i32* %j, align 4
  %idxprom221 = sext i32 %211 to i64
  %212 = load i32*, i32** %antiherm_parity.addr, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %212, i64 %idxprom221
  %213 = load i32, i32* %arrayidx222, align 4
  %214 = load i32, i32* %parity.addr, align 4
  %cmp223 = icmp eq i32 %213, %214
  br i1 %cmp223, label %if.then.224, label %if.end.233

if.then.224:                                      ; preds = %lor.lhs.false.220, %for.body.216
  %215 = load %struct.site*, %struct.site** %s, align 8
  %216 = bitcast %struct.site* %215 to i8*
  %217 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %217 to i64
  %218 = load i32*, i32** %antiherm_offset.addr, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %218, i64 %idxprom225
  %219 = load i32, i32* %arrayidx226, align 4
  %idx.ext227 = sext i32 %219 to i64
  %add.ptr228 = getelementptr inbounds i8, i8* %216, i64 %idx.ext227
  %220 = bitcast i8* %add.ptr228 to %struct.anti_hermitmat*
  call void @uncompress_anti_hermitian(%struct.anti_hermitmat* %220, %struct.su3_matrix* %htemp)
  %221 = load i32, i32* %p.addr, align 4
  %222 = load i32, i32* %q.addr, align 4
  call void @left_su2_hit_n(%struct.su2_matrix* %u, i32 %221, i32 %222, %struct.su3_matrix* %htemp)
  %223 = load i32, i32* %p.addr, align 4
  %224 = load i32, i32* %q.addr, align 4
  call void @right_su2_hit_a(%struct.su2_matrix* %u, i32 %223, i32 %224, %struct.su3_matrix* %htemp)
  %225 = load %struct.site*, %struct.site** %s, align 8
  %226 = bitcast %struct.site* %225 to i8*
  %227 = load i32, i32* %j, align 4
  %idxprom229 = sext i32 %227 to i64
  %228 = load i32*, i32** %antiherm_offset.addr, align 8
  %arrayidx230 = getelementptr inbounds i32, i32* %228, i64 %idxprom229
  %229 = load i32, i32* %arrayidx230, align 4
  %idx.ext231 = sext i32 %229 to i64
  %add.ptr232 = getelementptr inbounds i8, i8* %226, i64 %idx.ext231
  %230 = bitcast i8* %add.ptr232 to %struct.anti_hermitmat*
  call void @make_anti_hermitian(%struct.su3_matrix* %htemp, %struct.anti_hermitmat* %230)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.224, %lor.lhs.false.220
  br label %for.inc.234

for.inc.234:                                      ; preds = %if.end.233
  %231 = load i32, i32* %j, align 4
  %inc235 = add nsw i32 %231, 1
  store i32 %inc235, i32* %j, align 4
  br label %for.cond.214

for.end.236:                                      ; preds = %for.cond.214
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.end.236
  %232 = load i32, i32* %i, align 4
  %inc238 = add nsw i32 %232, 1
  store i32 %inc238, i32* %i, align 4
  %233 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %233, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.239:                                      ; preds = %cond.end.4
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare { double, double } @cmplx(double, double) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @left_su2_hit_n(%struct.su2_matrix*, i32, i32, %struct.su3_matrix*) #1

declare void @right_su2_hit_a(%struct.su2_matrix*, i32, i32, %struct.su3_matrix*) #1

declare void @mult_su2_mat_vec_elem_n(%struct.su2_matrix*, %struct.complex*, %struct.complex*) #1

declare void @uncompress_anti_hermitian(%struct.anti_hermitmat*, %struct.su3_matrix*) #1

declare void @make_anti_hermitian(%struct.su3_matrix*, %struct.anti_hermitmat*) #1

; Function Attrs: nounwind uwtable
define double @get_gauge_fix_action(i32 %gauge_dir, i32 %parity) #0 {
entry:
  %gauge_dir.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %dir = alloca i32, align 4
  %i = alloca i32, align 4
  %ndir = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %m1 = alloca %struct.su3_matrix*, align 8
  %m2 = alloca %struct.su3_matrix*, align 8
  %gauge_fix_action = alloca double, align 8
  %trace = alloca %struct.complex, align 8
  %coerce = alloca %struct.complex, align 8
  %coerce18 = alloca %struct.complex, align 8
  store i32 %gauge_dir, i32* %gauge_dir.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  store double 0.000000e+00, double* %gauge_fix_action, align 8
  %0 = load i32, i32* %parity.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %3, i64 %idxprom
  store %struct.site* %arrayidx, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %cond.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %parity.addr, align 4
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %for.cond
  %6 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.4

cond.false.3:                                     ; preds = %for.cond
  %7 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i32 [ %6, %cond.true.2 ], [ %7, %cond.false.3 ]
  %cmp6 = icmp slt i32 %4, %cond5
  br i1 %cmp6, label %for.body, label %for.end.23

for.body:                                         ; preds = %cond.end.4
  store i32 0, i32* %dir, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %dir, align 4
  %cmp8 = icmp sle i32 %8, 3
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %9 = load i32, i32* %dir, align 4
  %10 = load i32, i32* %gauge_dir.addr, align 4
  %cmp10 = icmp ne i32 %9, %10
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.9
  %11 = load i32, i32* %dir, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %12, i32 0, i32 8
  %arrayidx12 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom11
  store %struct.su3_matrix* %arrayidx12, %struct.su3_matrix** %m1, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i32, i32* %dir, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom14
  %15 = load i8**, i8*** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %15, i64 %idxprom13
  %16 = load i8*, i8** %arrayidx16, align 8
  %17 = bitcast i8* %16 to %struct.su3_matrix*
  store %struct.su3_matrix* %17, %struct.su3_matrix** %m2, align 8
  %18 = load %struct.su3_matrix*, %struct.su3_matrix** %m1, align 8
  %call = call { double, double } @trace_su3(%struct.su3_matrix* %18)
  %19 = bitcast %struct.complex* %coerce to { double, double }*
  %20 = getelementptr { double, double }, { double, double }* %19, i32 0, i32 0
  %21 = extractvalue { double, double } %call, 0
  store double %21, double* %20, align 8
  %22 = getelementptr { double, double }, { double, double }* %19, i32 0, i32 1
  %23 = extractvalue { double, double } %call, 1
  store double %23, double* %22, align 8
  %24 = bitcast %struct.complex* %trace to i8*
  %25 = bitcast %struct.complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false)
  %real = getelementptr inbounds %struct.complex, %struct.complex* %trace, i32 0, i32 0
  %26 = load double, double* %real, align 8
  %27 = load double, double* %gauge_fix_action, align 8
  %add = fadd double %27, %26
  store double %add, double* %gauge_fix_action, align 8
  %28 = load %struct.su3_matrix*, %struct.su3_matrix** %m2, align 8
  %call17 = call { double, double } @trace_su3(%struct.su3_matrix* %28)
  %29 = bitcast %struct.complex* %coerce18 to { double, double }*
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = extractvalue { double, double } %call17, 0
  store double %31, double* %30, align 8
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = extractvalue { double, double } %call17, 1
  store double %33, double* %32, align 8
  %34 = bitcast %struct.complex* %trace to i8*
  %35 = bitcast %struct.complex* %coerce18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  %real19 = getelementptr inbounds %struct.complex, %struct.complex* %trace, i32 0, i32 0
  %36 = load double, double* %real19, align 8
  %37 = load double, double* %gauge_fix_action, align 8
  %add20 = fadd double %37, %36
  store double %add20, double* %gauge_fix_action, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %39 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %39, 1
  store i32 %inc22, i32* %i, align 4
  %40 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %40, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.23:                                       ; preds = %cond.end.4
  store i32 0, i32* %ndir, align 4
  store i32 0, i32* %dir, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.31, %for.end.23
  %41 = load i32, i32* %dir, align 4
  %cmp25 = icmp sle i32 %41, 3
  br i1 %cmp25, label %for.body.26, label %for.end.33

for.body.26:                                      ; preds = %for.cond.24
  %42 = load i32, i32* %dir, align 4
  %43 = load i32, i32* %gauge_dir.addr, align 4
  %cmp27 = icmp ne i32 %42, %43
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %for.body.26
  %44 = load i32, i32* %ndir, align 4
  %inc29 = add nsw i32 %44, 1
  store i32 %inc29, i32* %ndir, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %for.body.26
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %45 = load i32, i32* %dir, align 4
  %inc32 = add nsw i32 %45, 1
  store i32 %inc32, i32* %dir, align 4
  br label %for.cond.24

for.end.33:                                       ; preds = %for.cond.24
  call void @g_doublesum(double* %gauge_fix_action)
  %46 = load double, double* %gauge_fix_action, align 8
  %47 = load i32, i32* %ndir, align 4
  %mul = mul nsw i32 6, %47
  %48 = load i32, i32* @nx, align 4
  %mul34 = mul nsw i32 %mul, %48
  %49 = load i32, i32* @ny, align 4
  %mul35 = mul nsw i32 %mul34, %49
  %50 = load i32, i32* @nz, align 4
  %mul36 = mul nsw i32 %mul35, %50
  %51 = load i32, i32* @nt, align 4
  %mul37 = mul nsw i32 %mul36, %51
  %conv = sitofp i32 %mul37 to double
  %div = fdiv double %46, %conv
  ret double %div
}

declare { double, double } @trace_su3(%struct.su3_matrix*) #1

declare void @g_doublesum(double*) #1

; Function Attrs: nounwind uwtable
define void @gaugefixstep(i32 %gauge_dir, double* %av_gauge_fix_action, double %relax_boost, i32 %nvector, i32* %vector_offset, i32* %vector_parity, i32 %nantiherm, i32* %antiherm_offset, i32* %antiherm_parity) #0 {
entry:
  %gauge_dir.addr = alloca i32, align 4
  %av_gauge_fix_action.addr = alloca double*, align 8
  %relax_boost.addr = alloca double, align 8
  %nvector.addr = alloca i32, align 4
  %vector_offset.addr = alloca i32*, align 8
  %vector_parity.addr = alloca i32*, align 8
  %nantiherm.addr = alloca i32, align 4
  %antiherm_offset.addr = alloca i32*, align 8
  %antiherm_parity.addr = alloca i32*, align 8
  %parity = alloca i32, align 4
  %mtag = alloca [8 x %struct.msg_tag*], align 16
  %gauge_fix_action = alloca double, align 8
  %dir = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  store i32 %gauge_dir, i32* %gauge_dir.addr, align 4
  store double* %av_gauge_fix_action, double** %av_gauge_fix_action.addr, align 8
  store double %relax_boost, double* %relax_boost.addr, align 8
  store i32 %nvector, i32* %nvector.addr, align 4
  store i32* %vector_offset, i32** %vector_offset.addr, align 8
  store i32* %vector_parity, i32** %vector_parity.addr, align 8
  store i32 %nantiherm, i32* %nantiherm.addr, align 4
  store i32* %antiherm_offset, i32** %antiherm_offset.addr, align 8
  store i32* %antiherm_parity, i32** %antiherm_parity.addr, align 8
  %0 = load double*, double** %av_gauge_fix_action.addr, align 8
  store double 0.000000e+00, double* %0, align 8
  call void (...) @g_sync()
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  store i32 1, i32* %parity, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.111, %entry
  %2 = load i32, i32* %parity, align 4
  %cmp = icmp sle i32 %2, 2
  br i1 %cmp, label %for.body, label %for.end.113

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %dir, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %dir, align 4
  %cmp2 = icmp sle i32 %3, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %5, i64 0
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 8
  %arrayidx4 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom
  %6 = bitcast %struct.su3_matrix* %arrayidx4 to i8*
  %7 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx5 = getelementptr inbounds %struct.site, %struct.site* %7, i64 0
  %8 = bitcast %struct.site* %arrayidx5 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %9 = load i32, i32* %dir, align 4
  %sub = sub nsw i32 7, %9
  %10 = load i32, i32* %parity, align 4
  %11 = load i32, i32* %dir, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom6
  %12 = load i8**, i8*** %arrayidx7, align 8
  %call8 = call %struct.msg_tag* @start_gather(i32 %conv, i32 144, i32 %sub, i32 %10, i8** %12)
  %13 = load i32, i32* %dir, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [8 x %struct.msg_tag*], [8 x %struct.msg_tag*]* %mtag, i32 0, i64 %idxprom9
  store %struct.msg_tag* %call8, %struct.msg_tag** %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %14 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %dir, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.17, %for.end
  %15 = load i32, i32* %dir, align 4
  %cmp12 = icmp sle i32 %15, 3
  br i1 %cmp12, label %for.body.14, label %for.end.19

for.body.14:                                      ; preds = %for.cond.11
  %16 = load i32, i32* %dir, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [8 x %struct.msg_tag*], [8 x %struct.msg_tag*]* %mtag, i32 0, i64 %idxprom15
  %17 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx16, align 8
  call void @wait_gather(%struct.msg_tag* %17)
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.14
  %18 = load i32, i32* %dir, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %dir, align 4
  br label %for.cond.11

for.end.19:                                       ; preds = %for.cond.11
  %19 = load i32, i32* %gauge_dir.addr, align 4
  %20 = load i32, i32* %parity, align 4
  %call20 = call double @get_gauge_fix_action(i32 %19, i32 %20)
  store double %call20, double* %gauge_fix_action, align 8
  %21 = load i32, i32* %gauge_dir.addr, align 4
  %22 = load i32, i32* %parity, align 4
  %23 = load double, double* %relax_boost.addr, align 8
  %24 = load i32, i32* %nvector.addr, align 4
  %25 = load i32*, i32** %vector_offset.addr, align 8
  %26 = load i32*, i32** %vector_parity.addr, align 8
  %27 = load i32, i32* %nantiherm.addr, align 4
  %28 = load i32*, i32** %antiherm_offset.addr, align 8
  %29 = load i32*, i32** %antiherm_parity.addr, align 8
  call void @do_hit(i32 %21, i32 %22, i32 0, i32 1, double %23, i32 %24, i32* %25, i32* %26, i32 %27, i32* %28, i32* %29)
  %30 = load i32, i32* %gauge_dir.addr, align 4
  %31 = load i32, i32* %parity, align 4
  %32 = load double, double* %relax_boost.addr, align 8
  %33 = load i32, i32* %nvector.addr, align 4
  %34 = load i32*, i32** %vector_offset.addr, align 8
  %35 = load i32*, i32** %vector_parity.addr, align 8
  %36 = load i32, i32* %nantiherm.addr, align 4
  %37 = load i32*, i32** %antiherm_offset.addr, align 8
  %38 = load i32*, i32** %antiherm_parity.addr, align 8
  call void @do_hit(i32 %30, i32 %31, i32 1, i32 2, double %32, i32 %33, i32* %34, i32* %35, i32 %36, i32* %37, i32* %38)
  %39 = load i32, i32* %gauge_dir.addr, align 4
  %40 = load i32, i32* %parity, align 4
  %41 = load double, double* %relax_boost.addr, align 8
  %42 = load i32, i32* %nvector.addr, align 4
  %43 = load i32*, i32** %vector_offset.addr, align 8
  %44 = load i32*, i32** %vector_parity.addr, align 8
  %45 = load i32, i32* %nantiherm.addr, align 4
  %46 = load i32*, i32** %antiherm_offset.addr, align 8
  %47 = load i32*, i32** %antiherm_parity.addr, align 8
  call void @do_hit(i32 %39, i32 %40, i32 2, i32 0, double %41, i32 %42, i32* %43, i32* %44, i32 %45, i32* %46, i32* %47)
  %48 = load i32, i32* %gauge_dir.addr, align 4
  %49 = load i32, i32* %parity, align 4
  %call21 = call double @get_gauge_fix_action(i32 %48, i32 %49)
  store double %call21, double* %gauge_fix_action, align 8
  %50 = load double, double* %gauge_fix_action, align 8
  %51 = load double*, double** %av_gauge_fix_action.addr, align 8
  %52 = load double, double* %51, align 8
  %add = fadd double %52, %50
  store double %add, double* %51, align 8
  store i32 0, i32* %dir, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.108, %for.end.19
  %53 = load i32, i32* %dir, align 4
  %cmp23 = icmp sle i32 %53, 3
  br i1 %cmp23, label %for.body.25, label %for.end.110

for.body.25:                                      ; preds = %for.cond.22
  call void (...) @g_sync()
  %54 = load i32, i32* %parity, align 4
  %cmp26 = icmp eq i32 %54, 1
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.25
  %55 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %55, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %56 to i64
  %57 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx29 = getelementptr inbounds %struct.site, %struct.site* %57, i64 %idxprom28
  store %struct.site* %arrayidx29, %struct.site** %s, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.52, %cond.end
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %parity, align 4
  %cmp31 = icmp eq i32 %59, 2
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %for.cond.30
  %60 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.35

cond.false.34:                                    ; preds = %for.cond.30
  %61 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi i32 [ %60, %cond.true.33 ], [ %61, %cond.false.34 ]
  %cmp37 = icmp slt i32 %58, %cond36
  br i1 %cmp37, label %for.body.39, label %for.end.54

for.body.39:                                      ; preds = %cond.end.35
  %62 = load i32, i32* @diffmat_offset, align 4
  %cmp40 = icmp sge i32 %62, 0
  br i1 %cmp40, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.39
  %63 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %63 to i64
  %64 = load i32, i32* %dir, align 4
  %idxprom43 = sext i32 %64 to i64
  %arrayidx44 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom43
  %65 = load i8**, i8*** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %65, i64 %idxprom42
  %66 = load i8*, i8** %arrayidx45, align 8
  %67 = bitcast i8* %66 to %struct.su3_matrix*
  %68 = load %struct.site*, %struct.site** %s, align 8
  %69 = bitcast %struct.site* %68 to i8*
  %70 = load i32, i32* @diffmat_offset, align 4
  %idx.ext = sext i32 %70 to i64
  %add.ptr = getelementptr inbounds i8, i8* %69, i64 %idx.ext
  %71 = bitcast i8* %add.ptr to %struct.su3_matrix*
  call void @su3mat_copy(%struct.su3_matrix* %67, %struct.su3_matrix* %71)
  br label %if.end

if.else:                                          ; preds = %for.body.39
  %72 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %72 to i64
  %73 = load i32, i32* %dir, align 4
  %idxprom47 = sext i32 %73 to i64
  %arrayidx48 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom47
  %74 = load i8**, i8*** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %74, i64 %idxprom46
  %75 = load i8*, i8** %arrayidx49, align 8
  %76 = bitcast i8* %75 to %struct.su3_matrix*
  %77 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %77 to i64
  %78 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %arrayidx51 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %78, i64 %idxprom50
  call void @su3mat_copy(%struct.su3_matrix* %76, %struct.su3_matrix* %arrayidx51)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end
  %79 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %79, 1
  store i32 %inc53, i32* %i, align 4
  %80 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %80, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.30

for.end.54:                                       ; preds = %cond.end.35
  %81 = load i32, i32* %dir, align 4
  %idxprom55 = sext i32 %81 to i64
  %arrayidx56 = getelementptr inbounds [8 x %struct.msg_tag*], [8 x %struct.msg_tag*]* %mtag, i32 0, i64 %idxprom55
  %82 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx56, align 8
  call void @cleanup_gather(%struct.msg_tag* %82)
  call void (...) @g_sync()
  %83 = load i32, i32* @diffmat_offset, align 4
  %cmp57 = icmp sge i32 %83, 0
  br i1 %cmp57, label %if.then.59, label %if.else.65

if.then.59:                                       ; preds = %for.end.54
  %84 = load i32, i32* @diffmat_offset, align 4
  %85 = load i32, i32* %dir, align 4
  %86 = load i32, i32* %parity, align 4
  %xor = xor i32 3, %86
  %87 = load i32, i32* %dir, align 4
  %idxprom60 = sext i32 %87 to i64
  %arrayidx61 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom60
  %88 = load i8**, i8*** %arrayidx61, align 8
  %call62 = call %struct.msg_tag* @start_gather(i32 %84, i32 144, i32 %85, i32 %xor, i8** %88)
  %89 = load i32, i32* %dir, align 4
  %idxprom63 = sext i32 %89 to i64
  %arrayidx64 = getelementptr inbounds [8 x %struct.msg_tag*], [8 x %struct.msg_tag*]* %mtag, i32 0, i64 %idxprom63
  store %struct.msg_tag* %call62, %struct.msg_tag** %arrayidx64, align 8
  br label %if.end.72

if.else.65:                                       ; preds = %for.end.54
  %90 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %91 = bitcast %struct.su3_matrix* %90 to i8*
  %92 = load i32, i32* %dir, align 4
  %93 = load i32, i32* %parity, align 4
  %xor66 = xor i32 3, %93
  %94 = load i32, i32* %dir, align 4
  %idxprom67 = sext i32 %94 to i64
  %arrayidx68 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom67
  %95 = load i8**, i8*** %arrayidx68, align 8
  %call69 = call %struct.msg_tag* @start_gather_from_temp(i8* %91, i32 144, i32 %92, i32 %xor66, i8** %95)
  %96 = load i32, i32* %dir, align 4
  %idxprom70 = sext i32 %96 to i64
  %arrayidx71 = getelementptr inbounds [8 x %struct.msg_tag*], [8 x %struct.msg_tag*]* %mtag, i32 0, i64 %idxprom70
  store %struct.msg_tag* %call69, %struct.msg_tag** %arrayidx71, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.65, %if.then.59
  %97 = load i32, i32* %dir, align 4
  %idxprom73 = sext i32 %97 to i64
  %arrayidx74 = getelementptr inbounds [8 x %struct.msg_tag*], [8 x %struct.msg_tag*]* %mtag, i32 0, i64 %idxprom73
  %98 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx74, align 8
  call void @wait_gather(%struct.msg_tag* %98)
  %99 = load i32, i32* %parity, align 4
  %xor75 = xor i32 3, %99
  %cmp76 = icmp eq i32 %xor75, 1
  br i1 %cmp76, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %if.end.72
  %100 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.80

cond.false.79:                                    ; preds = %if.end.72
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.78
  %cond81 = phi i32 [ %100, %cond.true.78 ], [ 0, %cond.false.79 ]
  store i32 %cond81, i32* %i, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %101 to i64
  %102 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx83 = getelementptr inbounds %struct.site, %struct.site* %102, i64 %idxprom82
  store %struct.site* %arrayidx83, %struct.site** %s, align 8
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.102, %cond.end.80
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %parity, align 4
  %xor85 = xor i32 3, %104
  %cmp86 = icmp eq i32 %xor85, 2
  br i1 %cmp86, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %for.cond.84
  %105 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.90

cond.false.89:                                    ; preds = %for.cond.84
  %106 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.88
  %cond91 = phi i32 [ %105, %cond.true.88 ], [ %106, %cond.false.89 ]
  %cmp92 = icmp slt i32 %103, %cond91
  br i1 %cmp92, label %for.body.94, label %for.end.105

for.body.94:                                      ; preds = %cond.end.90
  %107 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %107 to i64
  %108 = load i32, i32* %dir, align 4
  %idxprom96 = sext i32 %108 to i64
  %arrayidx97 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom96
  %109 = load i8**, i8*** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %109, i64 %idxprom95
  %110 = load i8*, i8** %arrayidx98, align 8
  %111 = bitcast i8* %110 to %struct.su3_matrix*
  %112 = load i32, i32* %dir, align 4
  %idxprom99 = sext i32 %112 to i64
  %113 = load %struct.site*, %struct.site** %s, align 8
  %link100 = getelementptr inbounds %struct.site, %struct.site* %113, i32 0, i32 8
  %arrayidx101 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link100, i32 0, i64 %idxprom99
  call void @su3mat_copy(%struct.su3_matrix* %111, %struct.su3_matrix* %arrayidx101)
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.94
  %114 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %114, 1
  store i32 %inc103, i32* %i, align 4
  %115 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr104 = getelementptr inbounds %struct.site, %struct.site* %115, i32 1
  store %struct.site* %incdec.ptr104, %struct.site** %s, align 8
  br label %for.cond.84

for.end.105:                                      ; preds = %cond.end.90
  %116 = load i32, i32* %dir, align 4
  %idxprom106 = sext i32 %116 to i64
  %arrayidx107 = getelementptr inbounds [8 x %struct.msg_tag*], [8 x %struct.msg_tag*]* %mtag, i32 0, i64 %idxprom106
  %117 = load %struct.msg_tag*, %struct.msg_tag** %arrayidx107, align 8
  call void @cleanup_gather(%struct.msg_tag* %117)
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.105
  %118 = load i32, i32* %dir, align 4
  %inc109 = add nsw i32 %118, 1
  store i32 %inc109, i32* %dir, align 4
  br label %for.cond.22

for.end.110:                                      ; preds = %for.cond.22
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.end.110
  %119 = load i32, i32* %parity, align 4
  %inc112 = add nsw i32 %119, 1
  store i32 %inc112, i32* %parity, align 4
  br label %for.cond

for.end.113:                                      ; preds = %for.cond
  ret void
}

declare void @g_sync(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare %struct.msg_tag* @start_gather(i32, i32, i32, i32, i8**) #1

declare void @wait_gather(%struct.msg_tag*) #1

declare void @su3mat_copy(%struct.su3_matrix*, %struct.su3_matrix*) #1

declare void @cleanup_gather(%struct.msg_tag*) #1

declare %struct.msg_tag* @start_gather_from_temp(i8*, i32, i32, i32, i8**) #1

; Function Attrs: nounwind uwtable
define void @gaugefixscratch(i32 %diffmat, i32 %sumvec) #0 {
entry:
  %diffmat.addr = alloca i32, align 4
  %sumvec.addr = alloca i32, align 4
  store i32 %diffmat, i32* %diffmat.addr, align 4
  store i32 %sumvec, i32* %sumvec.addr, align 4
  %0 = load i32, i32* %diffmat.addr, align 4
  store i32 %0, i32* @diffmat_offset, align 4
  store %struct.su3_matrix* null, %struct.su3_matrix** @diffmatp, align 8
  %1 = load i32, i32* @diffmat_offset, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 144) #3
  %3 = bitcast i8* %call to %struct.su3_matrix*
  store %struct.su3_matrix* %3, %struct.su3_matrix** @diffmatp, align 8
  %4 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %cmp1 = icmp eq %struct.su3_matrix* %4, null
  br i1 %cmp1, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.then
  %5 = load i32, i32* @this_node, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.3
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %6)
  call void @terminate(i32 1)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %7 = load i32, i32* %sumvec.addr, align 4
  store i32 %7, i32* @sumvec_offset, align 4
  store %struct.su3_vector* null, %struct.su3_vector** @sumvecp, align 8
  %8 = load i32, i32* @sumvec_offset, align 4
  %cmp11 = icmp slt i32 %8, 0
  br i1 %cmp11, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %if.end.10
  %9 = load i32, i32* @sites_on_node, align 4
  %conv14 = sext i32 %9 to i64
  %call15 = call noalias i8* @calloc(i64 %conv14, i64 48) #3
  %10 = bitcast i8* %call15 to %struct.su3_vector*
  store %struct.su3_vector* %10, %struct.su3_vector** @sumvecp, align 8
  %11 = load %struct.su3_vector*, %struct.su3_vector** @sumvecp, align 8
  %cmp16 = icmp eq %struct.su3_vector* %11, null
  br i1 %cmp16, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.then.13
  %12 = load i32, i32* @this_node, align 4
  %cmp19 = icmp eq i32 %12, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.18
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.18
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call24 = call i32 @fflush(%struct._IO_FILE* %13)
  call void @terminate(i32 1)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.23, %if.then.13
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.10
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32 @printf(i8*, ...) #1

declare void @terminate(i32) #1

; Function Attrs: nounwind uwtable
define void @gaugefix(i32 %gauge_dir, double %relax_boost, i32 %max_gauge_iter, double %gauge_fix_tol, i32 %diffmat, i32 %sumvec, i32 %nvector, i32* %vector_offset, i32* %vector_parity, i32 %nantiherm, i32* %antiherm_offset, i32* %antiherm_parity) #0 {
entry:
  %gauge_dir.addr = alloca i32, align 4
  %relax_boost.addr = alloca double, align 8
  %max_gauge_iter.addr = alloca i32, align 4
  %gauge_fix_tol.addr = alloca double, align 8
  %diffmat.addr = alloca i32, align 4
  %sumvec.addr = alloca i32, align 4
  %nvector.addr = alloca i32, align 4
  %vector_offset.addr = alloca i32*, align 8
  %vector_parity.addr = alloca i32*, align 8
  %nantiherm.addr = alloca i32, align 4
  %antiherm_offset.addr = alloca i32*, align 8
  %antiherm_parity.addr = alloca i32*, align 8
  %gauge_iter = alloca i32, align 4
  %current_av = alloca double, align 8
  %old_av = alloca double, align 8
  %del_av = alloca double, align 8
  store i32 %gauge_dir, i32* %gauge_dir.addr, align 4
  store double %relax_boost, double* %relax_boost.addr, align 8
  store i32 %max_gauge_iter, i32* %max_gauge_iter.addr, align 4
  store double %gauge_fix_tol, double* %gauge_fix_tol.addr, align 8
  store i32 %diffmat, i32* %diffmat.addr, align 4
  store i32 %sumvec, i32* %sumvec.addr, align 4
  store i32 %nvector, i32* %nvector.addr, align 4
  store i32* %vector_offset, i32** %vector_offset.addr, align 8
  store i32* %vector_parity, i32** %vector_parity.addr, align 8
  store i32 %nantiherm, i32* %nantiherm.addr, align 4
  store i32* %antiherm_offset, i32** %antiherm_offset.addr, align 8
  store i32* %antiherm_parity, i32** %antiherm_parity.addr, align 8
  %0 = load i32, i32* %diffmat.addr, align 4
  %1 = load i32, i32* %sumvec.addr, align 4
  call void @gaugefixscratch(i32 %0, i32 %1)
  store i32 0, i32* %gauge_iter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %gauge_iter, align 4
  %3 = load i32, i32* %max_gauge_iter.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %gauge_dir.addr, align 4
  %5 = load double, double* %relax_boost.addr, align 8
  %6 = load i32, i32* %nvector.addr, align 4
  %7 = load i32*, i32** %vector_offset.addr, align 8
  %8 = load i32*, i32** %vector_parity.addr, align 8
  %9 = load i32, i32* %nantiherm.addr, align 4
  %10 = load i32*, i32** %antiherm_offset.addr, align 8
  %11 = load i32*, i32** %antiherm_parity.addr, align 8
  call void @gaugefixstep(i32 %4, double* %current_av, double %5, i32 %6, i32* %7, i32* %8, i32 %9, i32* %10, i32* %11)
  %12 = load i32, i32* %gauge_iter, align 4
  %cmp1 = icmp ne i32 %12, 0
  br i1 %cmp1, label %if.then, label %if.end.4

if.then:                                          ; preds = %for.body
  %13 = load double, double* %current_av, align 8
  %14 = load double, double* %old_av, align 8
  %sub = fsub double %13, %14
  store double %sub, double* %del_av, align 8
  %15 = load double, double* %del_av, align 8
  %call = call double @fabs(double %15) #5
  %16 = load double, double* %gauge_fix_tol.addr, align 8
  %cmp2 = fcmp olt double %call, %16
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %for.body
  %17 = load double, double* %current_av, align 8
  store double %17, double* %old_av, align 8
  %18 = load i32, i32* %gauge_iter, align 4
  %rem = srem i32 %18, 20
  %cmp5 = icmp eq i32 %rem, 19
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  call void @reunitarize()
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %19 = load i32, i32* %gauge_iter, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %gauge_iter, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.3, %for.cond
  %20 = load i32, i32* %gauge_iter, align 4
  %rem8 = srem i32 %20, 20
  %cmp9 = icmp ne i32 %rem8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.end
  call void @reunitarize()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %21 = load i32, i32* @diffmat_offset, align 4
  %cmp12 = icmp slt i32 %21, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %22 = load %struct.su3_matrix*, %struct.su3_matrix** @diffmatp, align 8
  %23 = bitcast %struct.su3_matrix* %22 to i8*
  call void @free(i8* %23) #3
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %24 = load i32, i32* @sumvec_offset, align 4
  %cmp15 = icmp slt i32 %24, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %25 = load %struct.su3_vector*, %struct.su3_vector** @sumvecp, align 8
  %26 = bitcast %struct.su3_vector* %25 to i8*
  call void @free(i8* %26) #3
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %27 = load i32, i32* @this_node, align 4
  %cmp18 = icmp eq i32 %27, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %28 = load i32, i32* %gauge_iter, align 4
  %29 = load double, double* %current_av, align 8
  %30 = load double, double* %del_av, align 8
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0), i32 %28, double %29, double %30)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare void @reunitarize() #1

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
