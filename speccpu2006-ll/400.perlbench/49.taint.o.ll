; ModuleID = 'taint.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.sv = type { i8*, i32, i32 }
%struct.xpv = type { i8*, i64, i64 }

@PL_tainted = external global i8, align 1
@PL_no_security = external constant [0 x i8], align 1
@PL_euid = external global i32, align 4
@PL_uid = external global i32, align 4
@.str = private unnamed_addr constant [22 x i8] c" while running setuid\00", align 1
@PL_egid = external global i32, align 4
@PL_gid = external global i32, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c" while running setgid\00", align 1
@PL_taint_warn = external global i8, align 1
@.str.2 = private unnamed_addr constant [30 x i8] c" while running with -t switch\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c" while running with -T switch\00", align 1
@PL_unsafe = external global i8, align 1
@PL_curcop = external global %struct.cop*, align 8
@PL_dowarn = external global i8, align 1
@Perl_taint_env.misc_env = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"CDPATH\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"BASH_ENV\00", align 1
@PL_envgv = external global %struct.gv*, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"%%ENV is aliased to %s%s\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"another variable\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%%ENV is aliased to %%%s%s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Insecure %s%s\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"$ENV{PATH}\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Insecure directory in %s%s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"-_.+\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Insecure $ENV{%s}%s\00", align 1
@PL_sv_undef = external global %struct.sv, align 8

; Function Attrs: nounwind uwtable
define void @Perl_taint_proper(i8* %f, i8* %s) #0 {
entry:
  %f.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %ug = alloca i8*, align 8
  store i8* %f, i8** %f.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8, i8* @PL_tainted, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end.42

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %f.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_security, i32 0, i32 0), i8** %f.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %2 = load i32, i32* @PL_euid, align 4
  %3 = load i32, i32* @PL_uid, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8** %ug, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* @PL_egid, align 4
  %5 = load i32, i32* @PL_gid, align 4
  %cmp4 = icmp ne i32 %4, %5
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8** %ug, align 8
  br label %if.end.11

if.else.6:                                        ; preds = %if.else
  %6 = load i8, i8* @PL_taint_warn, align 1
  %tobool7 = icmp ne i8 %6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8** %ug, align 8
  br label %if.end.10

if.else.9:                                        ; preds = %if.else.6
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8** %ug, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.3
  %7 = load i8, i8* @PL_unsafe, align 1
  %conv = sext i8 %7 to i32
  %tobool13 = icmp ne i32 %conv, 0
  br i1 %tobool13, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %8 = load i8, i8* @PL_taint_warn, align 1
  %conv14 = sext i8 %8 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.40

if.then.16:                                       ; preds = %lor.lhs.false, %if.end.12
  %9 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %9, i32 0, i32 14
  %10 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp17 = icmp ne %struct.sv* %10, null
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false.30

land.lhs.true:                                    ; preds = %if.then.16
  %11 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings19 = getelementptr inbounds %struct.cop, %struct.cop* %11, i32 0, i32 14
  %12 = load %struct.sv*, %struct.sv** %cop_warnings19, align 8
  %cmp20 = icmp ne %struct.sv* %12, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp20, label %land.lhs.true.22, label %lor.lhs.false.30

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %13 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings23 = getelementptr inbounds %struct.cop, %struct.cop* %13, i32 0, i32 14
  %14 = load %struct.sv*, %struct.sv** %cop_warnings23, align 8
  %cmp24 = icmp eq %struct.sv* %14, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp24, label %if.then.38, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true.22
  %15 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings27 = getelementptr inbounds %struct.cop, %struct.cop* %15, i32 0, i32 14
  %16 = load %struct.sv*, %struct.sv** %cop_warnings27, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any, align 8
  %18 = bitcast i8* %17 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %18, i32 0, i32 0
  %19 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 9
  %20 = load i8, i8* %arrayidx, align 1
  %conv28 = sext i8 %20 to i32
  %and = and i32 %conv28, 64
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %if.then.38, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.26, %land.lhs.true, %if.then.16
  %21 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings31 = getelementptr inbounds %struct.cop, %struct.cop* %21, i32 0, i32 14
  %22 = load %struct.sv*, %struct.sv** %cop_warnings31, align 8
  %cmp32 = icmp eq %struct.sv* %22, null
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.39

land.lhs.true.34:                                 ; preds = %lor.lhs.false.30
  %23 = load i8, i8* @PL_dowarn, align 1
  %conv35 = zext i8 %23 to i32
  %and36 = and i32 %conv35, 1
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.34, %lor.lhs.false.26, %land.lhs.true.22
  %24 = load i8*, i8** %f.addr, align 8
  %25 = load i8*, i8** %s.addr, align 8
  %26 = load i8*, i8** %ug, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 39, i8* %24, i8* %25, i8* %26)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true.34, %lor.lhs.false.30
  br label %if.end.41

if.else.40:                                       ; preds = %lor.lhs.false
  %27 = load i8*, i8** %f.addr, align 8
  %28 = load i8*, i8** %s.addr, align 8
  %29 = load i8*, i8** %ug, align 8
  call void (i8*, ...) @Perl_croak(i8* %27, i8* %28, i8* %29)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end.39
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %entry
  ret void
}

declare void @Perl_warner(i32, i8*, ...) #1

declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Perl_taint_env() #0 {
entry:
  %svp = alloca %struct.sv**, align 8
  %mg = alloca %struct.magic*, align 8
  %e = alloca i8**, align 8
  %was_tainted = alloca i8, align 1
  %name = alloca i8*, align 8
  %n_a = alloca i64, align 8
  %was_tainted88 = alloca i8, align 1
  %t = alloca i8*, align 8
  %e99 = alloca i8*, align 8
  %0 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %1, i32 0, i32 0
  %2 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %2, i32 0, i32 7
  %3 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %3, i32 0, i32 5
  %4 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool1 = icmp ne %struct.hv* %4, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any2 = getelementptr inbounds %struct.gv, %struct.gv* %5, i32 0, i32 0
  %6 = load %struct.xpvgv*, %struct.xpvgv** %sv_any2, align 8
  %xgv_gp3 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %6, i32 0, i32 7
  %7 = load %struct.gp*, %struct.gp** %xgv_gp3, align 8
  %gp_hv4 = getelementptr inbounds %struct.gp, %struct.gp* %7, i32 0, i32 5
  %8 = load %struct.hv*, %struct.hv** %gp_hv4, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags, align 4
  %and = and i32 %9, 32768
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %land.lhs.true, label %if.then.10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any6 = getelementptr inbounds %struct.gv, %struct.gv* %10, i32 0, i32 0
  %11 = load %struct.xpvgv*, %struct.xpvgv** %sv_any6, align 8
  %xgv_gp7 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %11, i32 0, i32 7
  %12 = load %struct.gp*, %struct.gp** %xgv_gp7, align 8
  %gp_hv8 = getelementptr inbounds %struct.gp, %struct.gp* %12, i32 0, i32 5
  %13 = load %struct.hv*, %struct.hv** %gp_hv8, align 8
  %14 = bitcast %struct.hv* %13 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %14, i32 69)
  %tobool9 = icmp ne %struct.magic* %call, null
  br i1 %tobool9, label %if.end.22, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %15 = load i8, i8* @PL_tainted, align 1
  store i8 %15, i8* %was_tainted, align 1
  %16 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp12, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %18, i32 0, i32 6
  %19 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  %tobool13 = icmp ne %struct.gv* %19, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %20 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any14 = getelementptr inbounds %struct.gv, %struct.gv* %20, i32 0, i32 0
  %21 = load %struct.xpvgv*, %struct.xpvgv** %sv_any14, align 8
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %21, i32 0, i32 7
  %22 = load %struct.gp*, %struct.gp** %xgv_gp15, align 8
  %gp_egv16 = getelementptr inbounds %struct.gp, %struct.gp* %22, i32 0, i32 6
  %23 = load %struct.gv*, %struct.gv** %gp_egv16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %24 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gv* [ %23, %cond.true ], [ %24, %cond.false ]
  %sv_any17 = getelementptr inbounds %struct.gv, %struct.gv* %cond, i32 0, i32 0
  %25 = load %struct.xpvgv*, %struct.xpvgv** %sv_any17, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %25, i32 0, i32 8
  %26 = load i8*, i8** %xgv_name, align 8
  store i8* %26, i8** %name, align 8
  store i8 1, i8* @PL_tainted, align 1
  %27 = load i8*, i8** %name, align 8
  %call18 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %cond.end
  call void @Perl_taint_proper(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.21

if.else:                                          ; preds = %cond.end
  %28 = load i8*, i8** %name, align 8
  call void @Perl_taint_proper(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i8* %28)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %29 = load i8, i8* %was_tainted, align 1
  store i8 %29, i8* @PL_tainted, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true
  %30 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any23 = getelementptr inbounds %struct.gv, %struct.gv* %30, i32 0, i32 0
  %31 = load %struct.xpvgv*, %struct.xpvgv** %sv_any23, align 8
  %xgv_gp24 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %31, i32 0, i32 7
  %32 = load %struct.gp*, %struct.gp** %xgv_gp24, align 8
  %gp_hv25 = getelementptr inbounds %struct.gp, %struct.gp* %32, i32 0, i32 5
  %33 = load %struct.hv*, %struct.hv** %gp_hv25, align 8
  %tobool26 = icmp ne %struct.hv* %33, null
  br i1 %tobool26, label %cond.true.27, label %cond.false.31

cond.true.27:                                     ; preds = %if.end.22
  %34 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any28 = getelementptr inbounds %struct.gv, %struct.gv* %34, i32 0, i32 0
  %35 = load %struct.xpvgv*, %struct.xpvgv** %sv_any28, align 8
  %xgv_gp29 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %35, i32 0, i32 7
  %36 = load %struct.gp*, %struct.gp** %xgv_gp29, align 8
  %gp_hv30 = getelementptr inbounds %struct.gp, %struct.gp* %36, i32 0, i32 5
  %37 = load %struct.hv*, %struct.hv** %gp_hv30, align 8
  br label %cond.end.36

cond.false.31:                                    ; preds = %if.end.22
  %38 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %call32 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %38)
  %sv_any33 = getelementptr inbounds %struct.gv, %struct.gv* %call32, i32 0, i32 0
  %39 = load %struct.xpvgv*, %struct.xpvgv** %sv_any33, align 8
  %xgv_gp34 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %39, i32 0, i32 7
  %40 = load %struct.gp*, %struct.gp** %xgv_gp34, align 8
  %gp_hv35 = getelementptr inbounds %struct.gp, %struct.gp* %40, i32 0, i32 5
  %41 = load %struct.hv*, %struct.hv** %gp_hv35, align 8
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.31, %cond.true.27
  %cond37 = phi %struct.hv* [ %37, %cond.true.27 ], [ %41, %cond.false.31 ]
  %call38 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 4, i32 0)
  store %struct.sv** %call38, %struct.sv*** %svp, align 8
  %42 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool39 = icmp ne %struct.sv** %42, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.59

land.lhs.true.40:                                 ; preds = %cond.end.36
  %43 = load %struct.sv**, %struct.sv*** %svp, align 8
  %44 = load %struct.sv*, %struct.sv** %43, align 8
  %tobool41 = icmp ne %struct.sv* %44, null
  br i1 %tobool41, label %if.then.42, label %if.end.59

if.then.42:                                       ; preds = %land.lhs.true.40
  %45 = load %struct.sv**, %struct.sv*** %svp, align 8
  %46 = load %struct.sv*, %struct.sv** %45, align 8
  %sv_flags43 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 2
  %47 = load i32, i32* %sv_flags43, align 4
  %and44 = and i32 %47, 57344
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.50

land.lhs.true.46:                                 ; preds = %if.then.42
  %48 = load %struct.sv**, %struct.sv*** %svp, align 8
  %49 = load %struct.sv*, %struct.sv** %48, align 8
  %call47 = call signext i8 @Perl_sv_tainted(%struct.sv* %49)
  %conv = sext i8 %call47 to i32
  %tobool48 = icmp ne i32 %conv, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.46
  store i8 1, i8* @PL_tainted, align 1
  call void @Perl_taint_proper(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %land.lhs.true.46, %if.then.42
  %50 = load %struct.sv**, %struct.sv*** %svp, align 8
  %51 = load %struct.sv*, %struct.sv** %50, align 8
  %call51 = call %struct.magic* @Perl_mg_find(%struct.sv* %51, i32 101)
  store %struct.magic* %call51, %struct.magic** %mg, align 8
  %tobool52 = icmp ne %struct.magic* %call51, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.58

land.lhs.true.53:                                 ; preds = %if.end.50
  %52 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %52, i32 0, i32 4
  %53 = load i8, i8* %mg_flags, align 1
  %conv54 = zext i8 %53 to i32
  %and55 = and i32 %conv54, 1
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i8 1, i8* @PL_tainted, align 1
  call void @Perl_taint_proper(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %land.lhs.true.53, %if.end.50
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true.40, %cond.end.36
  %54 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any60 = getelementptr inbounds %struct.gv, %struct.gv* %54, i32 0, i32 0
  %55 = load %struct.xpvgv*, %struct.xpvgv** %sv_any60, align 8
  %xgv_gp61 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %55, i32 0, i32 7
  %56 = load %struct.gp*, %struct.gp** %xgv_gp61, align 8
  %gp_hv62 = getelementptr inbounds %struct.gp, %struct.gp* %56, i32 0, i32 5
  %57 = load %struct.hv*, %struct.hv** %gp_hv62, align 8
  %tobool63 = icmp ne %struct.hv* %57, null
  br i1 %tobool63, label %cond.true.64, label %cond.false.68

cond.true.64:                                     ; preds = %if.end.59
  %58 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any65 = getelementptr inbounds %struct.gv, %struct.gv* %58, i32 0, i32 0
  %59 = load %struct.xpvgv*, %struct.xpvgv** %sv_any65, align 8
  %xgv_gp66 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %59, i32 0, i32 7
  %60 = load %struct.gp*, %struct.gp** %xgv_gp66, align 8
  %gp_hv67 = getelementptr inbounds %struct.gp, %struct.gp* %60, i32 0, i32 5
  %61 = load %struct.hv*, %struct.hv** %gp_hv67, align 8
  br label %cond.end.73

cond.false.68:                                    ; preds = %if.end.59
  %62 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %call69 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %62)
  %sv_any70 = getelementptr inbounds %struct.gv, %struct.gv* %call69, i32 0, i32 0
  %63 = load %struct.xpvgv*, %struct.xpvgv** %sv_any70, align 8
  %xgv_gp71 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %63, i32 0, i32 7
  %64 = load %struct.gp*, %struct.gp** %xgv_gp71, align 8
  %gp_hv72 = getelementptr inbounds %struct.gp, %struct.gp* %64, i32 0, i32 5
  %65 = load %struct.hv*, %struct.hv** %gp_hv72, align 8
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.68, %cond.true.64
  %cond74 = phi %struct.hv* [ %61, %cond.true.64 ], [ %65, %cond.false.68 ]
  %call75 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 4, i32 0)
  store %struct.sv** %call75, %struct.sv*** %svp, align 8
  %66 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool76 = icmp ne %struct.sv** %66, null
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.169

land.lhs.true.77:                                 ; preds = %cond.end.73
  %67 = load %struct.sv**, %struct.sv*** %svp, align 8
  %68 = load %struct.sv*, %struct.sv** %67, align 8
  %tobool78 = icmp ne %struct.sv* %68, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.169

land.lhs.true.79:                                 ; preds = %land.lhs.true.77
  %69 = load %struct.sv**, %struct.sv*** %svp, align 8
  %70 = load %struct.sv*, %struct.sv** %69, align 8
  %sv_flags80 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags80, align 4
  %and81 = and i32 %71, 57344
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.169

land.lhs.true.83:                                 ; preds = %land.lhs.true.79
  %72 = load %struct.sv**, %struct.sv*** %svp, align 8
  %73 = load %struct.sv*, %struct.sv** %72, align 8
  %call84 = call signext i8 @Perl_sv_tainted(%struct.sv* %73)
  %conv85 = sext i8 %call84 to i32
  %tobool86 = icmp ne i32 %conv85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.169

if.then.87:                                       ; preds = %land.lhs.true.83
  %74 = load i8, i8* @PL_tainted, align 1
  store i8 %74, i8* %was_tainted88, align 1
  %75 = load %struct.sv**, %struct.sv*** %svp, align 8
  %76 = load %struct.sv*, %struct.sv** %75, align 8
  %sv_flags89 = getelementptr inbounds %struct.sv, %struct.sv* %76, i32 0, i32 2
  %77 = load i32, i32* %sv_flags89, align 4
  %and90 = and i32 %77, 262144
  %cmp = icmp eq i32 %and90, 262144
  br i1 %cmp, label %cond.true.92, label %cond.false.95

cond.true.92:                                     ; preds = %if.then.87
  %78 = load %struct.sv**, %struct.sv*** %svp, align 8
  %79 = load %struct.sv*, %struct.sv** %78, align 8
  %sv_any93 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 0
  %80 = load i8*, i8** %sv_any93, align 8
  %81 = bitcast i8* %80 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %81, i32 0, i32 1
  %82 = load i64, i64* %xpv_cur, align 8
  store i64 %82, i64* %n_a, align 8
  %83 = load %struct.sv**, %struct.sv*** %svp, align 8
  %84 = load %struct.sv*, %struct.sv** %83, align 8
  %sv_any94 = getelementptr inbounds %struct.sv, %struct.sv* %84, i32 0, i32 0
  %85 = load i8*, i8** %sv_any94, align 8
  %86 = bitcast i8* %85 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %86, i32 0, i32 0
  %87 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.97

cond.false.95:                                    ; preds = %if.then.87
  %88 = load %struct.sv**, %struct.sv*** %svp, align 8
  %89 = load %struct.sv*, %struct.sv** %88, align 8
  %call96 = call i8* @Perl_sv_2pv_flags(%struct.sv* %89, i64* %n_a, i32 2)
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.92
  %cond98 = phi i8* [ %87, %cond.true.92 ], [ %call96, %cond.false.95 ]
  store i8* %cond98, i8** %t, align 8
  %90 = load i8*, i8** %t, align 8
  %91 = load i64, i64* %n_a, align 8
  %add.ptr = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %add.ptr, i8** %e99, align 8
  %92 = load i8, i8* %was_tainted88, align 1
  store i8 %92, i8* @PL_tainted, align 1
  %93 = load i8*, i8** %t, align 8
  %94 = load i8*, i8** %e99, align 8
  %cmp100 = icmp ult i8* %93, %94
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.131

land.lhs.true.102:                                ; preds = %cond.end.97
  %95 = load i8*, i8** %t, align 8
  %96 = load i8, i8* %95, align 1
  %conv103 = sext i8 %96 to i32
  %cmp104 = icmp sge i32 %conv103, 65
  br i1 %cmp104, label %land.lhs.true.106, label %lor.lhs.false.110

land.lhs.true.106:                                ; preds = %land.lhs.true.102
  %97 = load i8*, i8** %t, align 8
  %98 = load i8, i8* %97, align 1
  %conv107 = sext i8 %98 to i32
  %cmp108 = icmp sle i32 %conv107, 90
  br i1 %cmp108, label %if.then.130, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.106, %land.lhs.true.102
  %99 = load i8*, i8** %t, align 8
  %100 = load i8, i8* %99, align 1
  %conv111 = sext i8 %100 to i32
  %cmp112 = icmp sge i32 %conv111, 97
  br i1 %cmp112, label %land.lhs.true.114, label %lor.lhs.false.118

land.lhs.true.114:                                ; preds = %lor.lhs.false.110
  %101 = load i8*, i8** %t, align 8
  %102 = load i8, i8* %101, align 1
  %conv115 = sext i8 %102 to i32
  %cmp116 = icmp sle i32 %conv115, 122
  br i1 %cmp116, label %if.then.130, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %land.lhs.true.114, %lor.lhs.false.110
  %103 = load i8*, i8** %t, align 8
  %104 = load i8, i8* %103, align 1
  %conv119 = sext i8 %104 to i32
  %cmp120 = icmp sge i32 %conv119, 48
  br i1 %cmp120, label %land.lhs.true.122, label %lor.lhs.false.126

land.lhs.true.122:                                ; preds = %lor.lhs.false.118
  %105 = load i8*, i8** %t, align 8
  %106 = load i8, i8* %105, align 1
  %conv123 = sext i8 %106 to i32
  %cmp124 = icmp sle i32 %conv123, 57
  br i1 %cmp124, label %if.then.130, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %land.lhs.true.122, %lor.lhs.false.118
  %107 = load i8*, i8** %t, align 8
  %108 = load i8, i8* %107, align 1
  %conv127 = sext i8 %108 to i32
  %cmp128 = icmp eq i32 %conv127, 95
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %lor.lhs.false.126, %land.lhs.true.122, %land.lhs.true.114, %land.lhs.true.106
  %109 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %lor.lhs.false.126, %cond.end.97
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.131
  %110 = load i8*, i8** %t, align 8
  %111 = load i8*, i8** %e99, align 8
  %cmp132 = icmp ult i8* %110, %111
  br i1 %cmp132, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %112 = load i8*, i8** %t, align 8
  %113 = load i8, i8* %112, align 1
  %conv134 = sext i8 %113 to i32
  %cmp135 = icmp sge i32 %conv134, 65
  br i1 %cmp135, label %land.lhs.true.137, label %lor.lhs.false.141

land.lhs.true.137:                                ; preds = %land.rhs
  %114 = load i8*, i8** %t, align 8
  %115 = load i8, i8* %114, align 1
  %conv138 = sext i8 %115 to i32
  %cmp139 = icmp sle i32 %conv138, 90
  br i1 %cmp139, label %lor.end, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %land.lhs.true.137, %land.rhs
  %116 = load i8*, i8** %t, align 8
  %117 = load i8, i8* %116, align 1
  %conv142 = sext i8 %117 to i32
  %cmp143 = icmp sge i32 %conv142, 97
  br i1 %cmp143, label %land.lhs.true.145, label %lor.lhs.false.149

land.lhs.true.145:                                ; preds = %lor.lhs.false.141
  %118 = load i8*, i8** %t, align 8
  %119 = load i8, i8* %118, align 1
  %conv146 = sext i8 %119 to i32
  %cmp147 = icmp sle i32 %conv146, 122
  br i1 %cmp147, label %lor.end, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %land.lhs.true.145, %lor.lhs.false.141
  %120 = load i8*, i8** %t, align 8
  %121 = load i8, i8* %120, align 1
  %conv150 = sext i8 %121 to i32
  %cmp151 = icmp sge i32 %conv150, 48
  br i1 %cmp151, label %land.lhs.true.153, label %lor.lhs.false.157

land.lhs.true.153:                                ; preds = %lor.lhs.false.149
  %122 = load i8*, i8** %t, align 8
  %123 = load i8, i8* %122, align 1
  %conv154 = sext i8 %123 to i32
  %cmp155 = icmp sle i32 %conv154, 57
  br i1 %cmp155, label %lor.end, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %land.lhs.true.153, %lor.lhs.false.149
  %124 = load i8*, i8** %t, align 8
  %125 = load i8, i8* %124, align 1
  %conv158 = sext i8 %125 to i32
  %cmp159 = icmp eq i32 %conv158, 95
  br i1 %cmp159, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.157
  %126 = load i8*, i8** %t, align 8
  %127 = load i8, i8* %126, align 1
  %conv161 = sext i8 %127 to i32
  %call162 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %conv161)
  %tobool163 = icmp ne i8* %call162, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.157, %land.lhs.true.153, %land.lhs.true.145, %land.lhs.true.137
  %128 = phi i1 [ true, %lor.lhs.false.157 ], [ true, %land.lhs.true.153 ], [ true, %land.lhs.true.145 ], [ true, %land.lhs.true.137 ], [ %tobool163, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %129 = phi i1 [ false, %while.cond ], [ %128, %lor.end ]
  br i1 %129, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %130 = load i8*, i8** %t, align 8
  %incdec.ptr164 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr164, i8** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %131 = load i8*, i8** %t, align 8
  %132 = load i8*, i8** %e99, align 8
  %cmp165 = icmp ult i8* %131, %132
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %while.end
  store i8 1, i8* @PL_tainted, align 1
  call void @Perl_taint_proper(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %while.end
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %land.lhs.true.83, %land.lhs.true.79, %land.lhs.true.77, %cond.end.73
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @Perl_taint_env.misc_env, i32 0, i32 0), i8*** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.169
  %133 = load i8**, i8*** %e, align 8
  %134 = load i8*, i8** %133, align 8
  %tobool170 = icmp ne i8* %134, null
  br i1 %tobool170, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %135 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any171 = getelementptr inbounds %struct.gv, %struct.gv* %135, i32 0, i32 0
  %136 = load %struct.xpvgv*, %struct.xpvgv** %sv_any171, align 8
  %xgv_gp172 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %136, i32 0, i32 7
  %137 = load %struct.gp*, %struct.gp** %xgv_gp172, align 8
  %gp_hv173 = getelementptr inbounds %struct.gp, %struct.gp* %137, i32 0, i32 5
  %138 = load %struct.hv*, %struct.hv** %gp_hv173, align 8
  %tobool174 = icmp ne %struct.hv* %138, null
  br i1 %tobool174, label %cond.true.175, label %cond.false.179

cond.true.175:                                    ; preds = %for.body
  %139 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any176 = getelementptr inbounds %struct.gv, %struct.gv* %139, i32 0, i32 0
  %140 = load %struct.xpvgv*, %struct.xpvgv** %sv_any176, align 8
  %xgv_gp177 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %140, i32 0, i32 7
  %141 = load %struct.gp*, %struct.gp** %xgv_gp177, align 8
  %gp_hv178 = getelementptr inbounds %struct.gp, %struct.gp* %141, i32 0, i32 5
  %142 = load %struct.hv*, %struct.hv** %gp_hv178, align 8
  br label %cond.end.184

cond.false.179:                                   ; preds = %for.body
  %143 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %call180 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %143)
  %sv_any181 = getelementptr inbounds %struct.gv, %struct.gv* %call180, i32 0, i32 0
  %144 = load %struct.xpvgv*, %struct.xpvgv** %sv_any181, align 8
  %xgv_gp182 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %144, i32 0, i32 7
  %145 = load %struct.gp*, %struct.gp** %xgv_gp182, align 8
  %gp_hv183 = getelementptr inbounds %struct.gp, %struct.gp* %145, i32 0, i32 5
  %146 = load %struct.hv*, %struct.hv** %gp_hv183, align 8
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.179, %cond.true.175
  %cond185 = phi %struct.hv* [ %142, %cond.true.175 ], [ %146, %cond.false.179 ]
  %147 = load i8**, i8*** %e, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = load i8**, i8*** %e, align 8
  %150 = load i8*, i8** %149, align 8
  %call186 = call i64 @strlen(i8* %150)
  %conv187 = trunc i64 %call186 to i32
  %call188 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond185, i8* %148, i32 %conv187, i32 0)
  store %struct.sv** %call188, %struct.sv*** %svp, align 8
  %151 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool189 = icmp ne %struct.sv** %151, null
  br i1 %tobool189, label %land.lhs.true.190, label %if.end.202

land.lhs.true.190:                                ; preds = %cond.end.184
  %152 = load %struct.sv**, %struct.sv*** %svp, align 8
  %153 = load %struct.sv*, %struct.sv** %152, align 8
  %cmp191 = icmp ne %struct.sv* %153, @PL_sv_undef
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.202

land.lhs.true.193:                                ; preds = %land.lhs.true.190
  %154 = load %struct.sv**, %struct.sv*** %svp, align 8
  %155 = load %struct.sv*, %struct.sv** %154, align 8
  %sv_flags194 = getelementptr inbounds %struct.sv, %struct.sv* %155, i32 0, i32 2
  %156 = load i32, i32* %sv_flags194, align 4
  %and195 = and i32 %156, 57344
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %land.lhs.true.197, label %if.end.202

land.lhs.true.197:                                ; preds = %land.lhs.true.193
  %157 = load %struct.sv**, %struct.sv*** %svp, align 8
  %158 = load %struct.sv*, %struct.sv** %157, align 8
  %call198 = call signext i8 @Perl_sv_tainted(%struct.sv* %158)
  %conv199 = sext i8 %call198 to i32
  %tobool200 = icmp ne i32 %conv199, 0
  br i1 %tobool200, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %land.lhs.true.197
  store i8 1, i8* @PL_tainted, align 1
  %159 = load i8**, i8*** %e, align 8
  %160 = load i8*, i8** %159, align 8
  call void @Perl_taint_proper(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %160)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %land.lhs.true.197, %land.lhs.true.193, %land.lhs.true.190, %cond.end.184
  br label %for.inc

for.inc:                                          ; preds = %if.end.202
  %161 = load i8**, i8*** %e, align 8
  %incdec.ptr203 = getelementptr inbounds i8*, i8** %161, i32 1
  store i8** %incdec.ptr203, i8*** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

declare i32 @strcmp(i8*, i8*) #1

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

declare signext i8 @Perl_sv_tainted(%struct.sv*) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i8* @strchr(i8*, i32) #1

declare i64 @strlen(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
