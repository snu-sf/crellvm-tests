; ModuleID = 'logs3.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"-log3table\00", align 1
@USE_LOG3_ADD_TABLE = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"logs3.c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Initializing logbase: %e (add table: %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Illegal logbase: %e; must be > 1.0\0A\00", align 1
@add_tbl = internal global i16* null, align 8
@B = internal global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"logs3_init() already done\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"logs3_init() already done with base %e\0A\00", align 1
@logB = internal global double 0.000000e+00, align 8
@invlogB = internal global double 0.000000e+00, align 8
@invlog10B = internal global double 0.000000e+00, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Logbase too small: %e; needs int32 addtable[]\0A\00", align 1
@F = internal global double 0.000000e+00, align 8
@add_tbl_size = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Log-Add table size = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"logs3 module not initialized\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @logs3_init(double %base) #0 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca double, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca double, align 8
  %t = alloca double, align 8
  %f = alloca double, align 8
  store double %base, double* %base.addr, align 8
  %call = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %0 = bitcast i8* %call to i32*
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* @USE_LOG3_ADD_TABLE, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %2 = load double, double* %base.addr, align 8
  %3 = load i32, i32* @USE_LOG3_ADD_TABLE, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), double %2, i32 %3)
  %4 = load double, double* %base.addr, align 8
  %cmp = fcmp ole double %4, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %5 = load double, double* %base.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), double %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i16*, i16** @add_tbl, align 8
  %tobool = icmp ne i16* %6, null
  br i1 %tobool, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.end
  %7 = load double, double* @B, align 8
  %8 = load double, double* %base.addr, align 8
  %cmp2 = fcmp oeq double %7, %8
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.4

if.else:                                          ; preds = %if.then.1
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %9 = load double, double* @B, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), double %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %if.end
  %10 = load double, double* %base.addr, align 8
  store double %10, double* @B, align 8
  %11 = load double, double* %base.addr, align 8
  %call6 = call double @log(double %11) #3
  store double %call6, double* @logB, align 8
  %12 = load double, double* @logB, align 8
  %div = fdiv double 1.000000e+00, %12
  store double %div, double* @invlogB, align 8
  %13 = load double, double* %base.addr, align 8
  %call7 = call double @log10(double %13) #3
  %div8 = fdiv double 1.000000e+00, %call7
  store double %div8, double* @invlog10B, align 8
  %call9 = call double @log(double 2.000000e+00) #3
  %14 = load double, double* @invlogB, align 8
  %mul = fmul double %call9, %14
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %k, align 4
  %15 = load i32, i32* %k, align 4
  %cmp10 = icmp sgt i32 %15, 65535
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.5
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %16 = load double, double* %base.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0), double %16)
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.5
  store double 1.000000e+00, double* %d, align 8
  %17 = load double, double* @B, align 8
  %div14 = fdiv double 1.000000e+00, %17
  store double %div14, double* %f, align 8
  %18 = load double, double* @B, align 8
  %div15 = fdiv double 1.000000e+00, %18
  store double %div15, double* @F, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %19 = load double, double* %d, align 8
  %add16 = fadd double 1.000000e+00, %19
  %call17 = call double @log(double %add16) #3
  %20 = load double, double* @invlogB, align 8
  %mul18 = fmul double %call17, %20
  store double %mul18, double* %t, align 8
  %21 = load double, double* %t, align 8
  %add19 = fadd double %21, 5.000000e-01
  %conv20 = fptosi double %add19 to i32
  store i32 %conv20, i32* %k, align 4
  %22 = load i32, i32* %k, align 4
  %cmp21 = icmp eq i32 %22, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.cond
  br label %for.end

if.end.24:                                        ; preds = %for.cond
  %23 = load double, double* %f, align 8
  %24 = load double, double* %d, align 8
  %mul25 = fmul double %24, %23
  store double %mul25, double* %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.23
  %26 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %26, 1
  store i32 %add26, i32* @add_tbl_size, align 4
  %27 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %27, 1
  %conv28 = sext i32 %add27 to i64
  %call29 = call i8* @__ckd_calloc__(i64 %conv28, i64 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 145)
  %28 = bitcast i8* %call29 to i16*
  store i16* %28, i16** @add_tbl, align 8
  store double 1.000000e+00, double* %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.42, %for.end
  %29 = load double, double* %d, align 8
  %add31 = fadd double 1.000000e+00, %29
  %call32 = call double @log(double %add31) #3
  %30 = load double, double* @invlogB, align 8
  %mul33 = fmul double %call32, %30
  store double %mul33, double* %t, align 8
  %31 = load double, double* %t, align 8
  %add34 = fadd double %31, 5.000000e-01
  %conv35 = fptosi double %add34 to i32
  store i32 %conv35, i32* %k, align 4
  %32 = load i32, i32* %k, align 4
  %conv36 = trunc i32 %32 to i16
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load i16*, i16** @add_tbl, align 8
  %arrayidx = getelementptr inbounds i16, i16* %34, i64 %idxprom
  store i16 %conv36, i16* %arrayidx, align 2
  %35 = load i32, i32* %k, align 4
  %cmp37 = icmp eq i32 %35, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.cond.30
  br label %for.end.44

if.end.40:                                        ; preds = %for.cond.30
  %36 = load double, double* %f, align 8
  %37 = load double, double* %d, align 8
  %mul41 = fmul double %37, %36
  store double %mul41, double* %d, align 8
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.40
  %38 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %38, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.30

for.end.44:                                       ; preds = %if.then.39
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %39 = load i32, i32* @add_tbl_size, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i32 %39)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.44, %if.then.12
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i8* @cmd_ln_access(i8*) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind
declare double @log10(double) #2

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @logs3_add(i32 %logp, i32 %logq) #0 {
entry:
  %logp.addr = alloca i32, align 4
  %logq.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %logp, i32* %logp.addr, align 4
  store i32 %logq, i32* %logq.addr, align 4
  %0 = load i32, i32* %logp.addr, align 4
  %1 = load i32, i32* %logq.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %logp.addr, align 4
  %3 = load i32, i32* %logq.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %d, align 4
  %4 = load i32, i32* %logp.addr, align 4
  store i32 %4, i32* %r, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %logq.addr, align 4
  %6 = load i32, i32* %logp.addr, align 4
  %sub1 = sub nsw i32 %5, %6
  store i32 %sub1, i32* %d, align 4
  %7 = load i32, i32* %logq.addr, align 4
  store i32 %7, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %d, align 4
  %9 = load i32, i32* @add_tbl_size, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %if.then.3, label %if.end.14

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* @USE_LOG3_ADD_TABLE, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.then.3
  %11 = load i32, i32* %d, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i16*, i16** @add_tbl, align 8
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %13 to i32
  %14 = load i32, i32* %r, align 4
  %add = add nsw i32 %14, %conv
  store i32 %add, i32* %r, align 4
  br label %if.end.13

if.else.5:                                        ; preds = %if.then.3
  %15 = load double, double* @F, align 8
  %16 = load i32, i32* %d, align 4
  %conv6 = sitofp i32 %16 to double
  %call = call double @pow(double %15, double %conv6) #3
  %add7 = fadd double 1.000000e+00, %call
  %call8 = call double @log(double %add7) #3
  %17 = load double, double* @invlogB, align 8
  %mul = fmul double %call8, %17
  %add9 = fadd double 5.000000e-01, %mul
  %18 = load i32, i32* %r, align 4
  %conv10 = sitofp i32 %18 to double
  %add11 = fadd double %conv10, %add9
  %conv12 = fptosi double %add11 to i32
  store i32 %conv12, i32* %r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.5, %if.then.4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %19 = load i32, i32* %r, align 4
  ret i32 %19
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define i32 @logs3(double %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca double, align 8
  store double %p, double* %p.addr, align 8
  %0 = load i16*, i16** @add_tbl, align 8
  %tobool = icmp ne i16* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %p.addr, align 8
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 -939524096, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %2 = load double, double* %p.addr, align 8
  %call = call double @log(double %2) #3
  %3 = load double, double* @invlogB, align 8
  %mul = fmul double %call, %3
  %conv = fptosi double %mul to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @log_to_logs3(double %logp) #0 {
entry:
  %logp.addr = alloca double, align 8
  store double %logp, double* %logp.addr, align 8
  %0 = load i16*, i16** @add_tbl, align 8
  %tobool = icmp ne i16* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %logp.addr, align 8
  %2 = load double, double* @invlogB, align 8
  %mul = fmul double %1, %2
  %conv = fptosi double %mul to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define double @log_to_logs3_factor() #0 {
entry:
  %0 = load double, double* @invlogB, align 8
  ret double %0
}

; Function Attrs: nounwind uwtable
define double @logs3_to_log(i32 %logs3p) #0 {
entry:
  %logs3p.addr = alloca i32, align 4
  store i32 %logs3p, i32* %logs3p.addr, align 4
  %0 = load i16*, i16** @add_tbl, align 8
  %tobool = icmp ne i16* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %logs3p.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, double* @logB, align 8
  %mul = fmul double %conv, %2
  ret double %mul
}

; Function Attrs: nounwind uwtable
define double @logs3_to_p(i32 %logs3p) #0 {
entry:
  %logs3p.addr = alloca i32, align 4
  store i32 %logs3p, i32* %logs3p.addr, align 4
  %0 = load i32, i32* %logs3p.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load double, double* @logB, align 8
  %mul = fmul double %conv, %1
  %call = call double @exp(double %mul) #3
  ret double %call
}

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind uwtable
define i32 @log10_to_logs3(double %log10p) #0 {
entry:
  %log10p.addr = alloca double, align 8
  store double %log10p, double* %log10p.addr, align 8
  %0 = load i16*, i16** @add_tbl, align 8
  %tobool = icmp ne i16* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %log10p.addr, align 8
  %2 = load double, double* @invlog10B, align 8
  %mul = fmul double %1, %2
  %conv = fptosi double %mul to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @logs_free() #0 {
entry:
  %0 = load i16*, i16** @add_tbl, align 8
  %tobool = icmp ne i16* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** @add_tbl, align 8
  %2 = bitcast i16* %1 to i8*
  call void @ckd_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @ckd_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
