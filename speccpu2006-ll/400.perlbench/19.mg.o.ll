; ModuleID = 'mg.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%union.any = type { i8* }
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
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpv = type { i8*, i64, i64 }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.magic_state = type { %struct.sv*, i32, i32 }
%struct.ufuncs = type { i32 (i64, %struct.sv*)*, i32 (i64, %struct.sv*)*, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.xpvlv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i64, i64, %struct.sv*, i8 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xrv = type { %struct.sv* }
%struct.xpvnv = type { i8*, i64, i64, i64, double }

@PL_Sv = external global %struct.sv*, align 8
@PL_savestack = external global %union.any*, align 8
@PL_curcop = external global %struct.cop*, align 8
@.str = private unnamed_addr constant [27 x i8] c"Size magic not implemented\00", align 1
@PL_curpm = external global %struct.pmop*, align 8
@PL_no_modify = external constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"panic: magic_len: %ld\00", align 1
@PL_dowarn = external global i8, align 1
@PL_bodytarget = external global %struct.sv*, align 8
@PL_minus_c = external global i8, align 1
@PL_debug = external global i32, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"NCODING\00", align 1
@PL_encoding = external global %struct.sv*, align 8
@PL_maxsysfd = external global i32, align 4
@PL_hints = external global i32, align 4
@PL_inplace = external global i8*, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_osname = external global i8*, align 8
@PL_tainting = external global i8, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0FPEN\00", align 1
@PL_compiling = external global %struct.cop, align 8
@PL_perldb = external global i32, align 4
@PL_lex_state = external global i32, align 4
@PL_in_eval = external global i32, align 4
@PL_basetime = external global i64, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"\14AINT\00", align 1
@PL_taint_warn = external global i8, align 1
@PL_unsafe = external global i8, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\15NICODE\00", align 1
@PL_unicode = external global i32, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"\15TF8LOCALE\00", align 1
@PL_utf8locale = external global i8, align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ARNING_BITS\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"warnings::Bits\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"UUUUUUUUUUUU\00", align 1
@PL_tainted = external global i8, align 1
@PL_last_in_gv = external global %struct.gv*, align 8
@PL_statusvalue = external global i32, align 4
@PL_defoutgv = external global %struct.gv*, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"_TOP\00", align 1
@PL_ors_sv = external global %struct.sv*, align 8
@PL_ofmt = external global i8*, align 8
@PL_uid = external global i32, align 4
@PL_euid = external global i32, align 4
@PL_gid = external global i32, align 4
@PL_egid = external global i32, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@PL_localizing = external global i32, align 4
@PL_use_safe_putenv = external global i32, align 4
@environ = external global i8**, align 8
@PL_origenviron = external global i8**, align 8
@PL_psig_ptr = external global %struct.sv**, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"__DIE__\00", align 1
@PL_diehook = external global %struct.sv*, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"__WARN__\00", align 1
@PL_warnhook = external global %struct.sv*, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"No such hook: %s\00", align 1
@PL_sig_pending = external global i32, align 4
@PL_psig_name = external global %struct.sv**, align 8
@PL_psig_pend = external global i32*, align 8
@PL_signals = external global i32, align 4
@PL_sighandlerp = external global void (i32)*, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"No such signal: SIG%s\00", align 1
@PL_csighandlerp = external global void (i32)*, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@PL_sub_generation = external global i32, align 4
@PL_amagic_generation = external global i64, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"FETCH\00", align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_curstack = external global %struct.av*, align 8
@PL_stack_max = external global %struct.sv**, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@PL_stderrgv = external global %struct.gv*, align 8
@.str.24 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@PL_tmps_floor = external global i32, align 4
@PL_tmps_ix = external global i32, align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"FETCHSIZE\00", align 1
@PL_markstack_ptr = external global i32*, align 8
@PL_markstack_max = external global i32*, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"NEXTKEY\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"FIRSTKEY\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_DBline = external global %struct.gv*, align 8
@PL_Xpv = external global %struct.xpv*, align 8
@.str.32 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@PL_no_helem = external constant [0 x i8], align 1
@PL_no_aelem = external constant [0 x i8], align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"panic: magic_killbackrefs\00", align 1
@PL_regfree = external global void (%struct.regexp*)*, align 8
@.str.34 = private unnamed_addr constant [17 x i8] c"assigning to $^O\00", align 1
@PL_DBsingle = external global %struct.sv*, align 8
@PL_multiline = external global i32, align 4
@PL_rs = external global %struct.sv*, align 8
@PL_ofs_sv = external global %struct.sv*, align 8
@PL_delaymagic = external global i32, align 4
@.str.35 = private unnamed_addr constant [26 x i8] c"setruid() not implemented\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"seteuid() not implemented\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"setrgid() not implemented\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"setegid() not implemented\00", align 1
@PL_chopset = external global i8*, align 8
@PL_origalen = external global i32, align 4
@PL_origargv = external global i8**, align 8
@PL_origargc = external global i32, align 4
@PL_sig_name = external global [0 x i8*], align 8
@PL_sig_num = external global [0 x i32], align 4
@.str.39 = private unnamed_addr constant [5 x i8] c"CHLD\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"CLD\00", align 1
@PL_op = external global %struct.op*, align 8
@PL_savestack_ix = external global i32, align 4
@PL_savestack_max = external global i32, align 4
@PL_retstack_ix = external global i32, align 4
@PL_retstack_max = external global i32, align 4
@PL_scopestack_ix = external global i32, align 4
@PL_scopestack_max = external global i32, align 4
@.str.41 = private unnamed_addr constant [51 x i8] c"Signal SIG%s received, but no signal handler set.\0A\00", align 1
@PL_retstack = external global %struct.op**, align 8
@.str.42 = private unnamed_addr constant [33 x i8] c"SIG%s handler \22%s\22 not defined.\0A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"__ANON__\00", align 1
@sig_sv = internal global %struct.sv* null, align 8
@PL_errgv = external global %struct.gv*, align 8

; Function Attrs: nounwind uwtable
define void @Perl_mg_magical(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %vtbl = alloca %struct.mgvtbl*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %2, i32 0, i32 5
  %3 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %3, %struct.magic** %mg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool = icmp ne %struct.magic* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_virtual = getelementptr inbounds %struct.magic, %struct.magic* %5, i32 0, i32 1
  %6 = load %struct.mgvtbl*, %struct.mgvtbl** %mg_virtual, align 8
  store %struct.mgvtbl* %6, %struct.mgvtbl** %vtbl, align 8
  %7 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %tobool1 = icmp ne %struct.mgvtbl* %7, null
  br i1 %tobool1, label %if.then, label %if.end.18

if.then:                                          ; preds = %for.body
  %8 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_get = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %8, i32 0, i32 0
  %9 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_get, align 8
  %tobool2 = icmp ne i32 (%struct.sv*, %struct.magic*)* %9, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %10 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %10, i32 0, i32 4
  %11 = load i8, i8* %mg_flags, align 1
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 4
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %12 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags, align 4
  %or = or i32 %13, 8192
  store i32 %or, i32* %sv_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %14 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_set = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %14, i32 0, i32 1
  %15 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_set, align 8
  %tobool5 = icmp ne i32 (%struct.sv*, %struct.magic*)* %15, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %16 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags7 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags7, align 4
  %or8 = or i32 %17, 16384
  store i32 %or8, i32* %sv_flags7, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %18 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %19, 24576
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %if.end.9
  %20 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_clear = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %20, i32 0, i32 3
  %21 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_clear, align 8
  %tobool13 = icmp ne i32 (%struct.sv*, %struct.magic*)* %21, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.9
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags15 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags15, align 4
  %or16 = or i32 %23, 32768
  store i32 %or16, i32* %sv_flags15, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %lor.lhs.false
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %24 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %24, i32 0, i32 0
  %25 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %25, %struct.magic** %mg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_mg_get(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %have_new = alloca i32, align 4
  %newmg = alloca %struct.magic*, align 8
  %head = alloca %struct.magic*, align 8
  %cur = alloca %struct.magic*, align 8
  %mg = alloca %struct.magic*, align 8
  %mgs_ix = alloca i32, align 4
  %was_temp = alloca i32, align 4
  %vtbl = alloca %struct.mgvtbl*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 0, i32* %have_new, align 4
  %call = call i32 @Perl_save_alloc(i32 16, i32 0)
  store i32 %call, i32* %mgs_ix, align 4
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 2048
  store i32 %and, i32* %was_temp, align 4
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  store %struct.sv* %2, %struct.sv** @PL_Sv, align 8
  %3 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 1
  %5 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool1 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  %7 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call2 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %7)
  %8 = load i32, i32* %was_temp, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  %9 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %10, -2049
  store i32 %and5, i32* %sv_flags4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %11 = load i32, i32* %mgs_ix, align 4
  %12 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @S_save_magic(i32 %11, %struct.sv* %12)
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any, align 8
  %15 = bitcast i8* %14 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %15, i32 0, i32 5
  %16 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %16, %struct.magic** %mg, align 8
  store %struct.magic* %16, %struct.magic** %head, align 8
  store %struct.magic* %16, %struct.magic** %cur, align 8
  store %struct.magic* %16, %struct.magic** %newmg, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %if.end
  %17 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool6 = icmp ne %struct.magic* %17, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_virtual = getelementptr inbounds %struct.magic, %struct.magic* %18, i32 0, i32 1
  %19 = load %struct.mgvtbl*, %struct.mgvtbl** %mg_virtual, align 8
  store %struct.mgvtbl* %19, %struct.mgvtbl** %vtbl, align 8
  %20 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %20, i32 0, i32 4
  %21 = load i8, i8* %mg_flags, align 1
  %conv = zext i8 %21 to i32
  %and7 = and i32 %conv, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end.26, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %22 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %tobool9 = icmp ne %struct.mgvtbl* %22, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.26

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %23 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_get = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %23, i32 0, i32 0
  %24 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_get, align 8
  %tobool11 = icmp ne i32 (%struct.sv*, %struct.magic*)* %24, null
  br i1 %tobool11, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %land.lhs.true.10
  %25 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_get13 = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %25, i32 0, i32 0
  %26 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_get13, align 8
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %28 = load %struct.magic*, %struct.magic** %mg, align 8
  %call14 = call i32 %26(%struct.sv* %27, %struct.magic* %28)
  %29 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any15, align 8
  %31 = bitcast i8* %30 to %struct.xpvmg*
  %xmg_magic16 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %31, i32 0, i32 5
  %32 = load %struct.magic*, %struct.magic** %xmg_magic16, align 8
  %tobool17 = icmp ne %struct.magic* %32, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.12
  br label %while.end

if.end.19:                                        ; preds = %if.then.12
  %33 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_flags20 = getelementptr inbounds %struct.magic, %struct.magic* %33, i32 0, i32 4
  %34 = load i8, i8* %mg_flags20, align 1
  %conv21 = zext i8 %34 to i32
  %and22 = and i32 %conv21, 4
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  %35 = load %union.any*, %union.any** @PL_savestack, align 8
  %36 = bitcast %union.any* %35 to i8*
  %37 = load i32, i32* %mgs_ix, align 4
  %idx.ext = sext i32 %37 to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  %38 = bitcast i8* %add.ptr to %struct.magic_state*
  %mgs_flags = getelementptr inbounds %struct.magic_state, %struct.magic_state* %38, i32 0, i32 1
  store i32 0, i32* %mgs_flags, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %land.lhs.true.10, %land.lhs.true, %while.body
  %39 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %39, i32 0, i32 0
  %40 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %40, %struct.magic** %mg, align 8
  %41 = load i32, i32* %have_new, align 4
  %tobool27 = icmp ne i32 %41, 0
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.end.26
  %42 = load %struct.magic*, %struct.magic** %mg, align 8
  %43 = load %struct.magic*, %struct.magic** %head, align 8
  %cmp = icmp eq %struct.magic* %42, %43
  br i1 %cmp, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.28
  store i32 0, i32* %have_new, align 4
  %44 = load %struct.magic*, %struct.magic** %cur, align 8
  store %struct.magic* %44, %struct.magic** %mg, align 8
  %45 = load %struct.magic*, %struct.magic** %newmg, align 8
  store %struct.magic* %45, %struct.magic** %head, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.26
  %46 = load i32, i32* %have_new, align 4
  %tobool33 = icmp ne i32 %46, 0
  br i1 %tobool33, label %if.end.40, label %land.lhs.true.34

land.lhs.true.34:                                 ; preds = %if.end.32
  %47 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any35 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 0
  %48 = load i8*, i8** %sv_any35, align 8
  %49 = bitcast i8* %48 to %struct.xpvmg*
  %xmg_magic36 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %49, i32 0, i32 5
  %50 = load %struct.magic*, %struct.magic** %xmg_magic36, align 8
  store %struct.magic* %50, %struct.magic** %newmg, align 8
  %51 = load %struct.magic*, %struct.magic** %head, align 8
  %cmp37 = icmp ne %struct.magic* %50, %51
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %have_new, align 4
  %52 = load %struct.magic*, %struct.magic** %mg, align 8
  store %struct.magic* %52, %struct.magic** %cur, align 8
  %53 = load %struct.magic*, %struct.magic** %newmg, align 8
  store %struct.magic* %53, %struct.magic** %mg, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %land.lhs.true.34, %if.end.32
  br label %while.cond

while.end:                                        ; preds = %if.then.18, %while.cond
  %54 = load i32, i32* %mgs_ix, align 4
  %conv41 = sext i32 %54 to i64
  %55 = inttoptr i64 %conv41 to i8*
  call void @restore_magic(i8* %55)
  %56 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_refcnt42 = getelementptr inbounds %struct.sv, %struct.sv* %56, i32 0, i32 1
  %57 = load i32, i32* %sv_refcnt42, align 4
  %cmp43 = icmp eq i32 %57, 1
  br i1 %cmp43, label %if.then.45, label %if.end.56

if.then.45:                                       ; preds = %while.end
  %58 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags46 = getelementptr inbounds %struct.sv, %struct.sv* %58, i32 0, i32 2
  %59 = load i32, i32* %sv_flags46, align 4
  %and47 = and i32 %59, 1223753727
  store i32 %and47, i32* %sv_flags46, align 4
  %60 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags48 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 2
  %61 = load i32, i32* %sv_flags48, align 4
  %and49 = and i32 %61, 2097152
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %land.rhs.51, label %land.end.54

land.rhs.51:                                      ; preds = %if.then.45
  %62 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call52 = call i32 @Perl_sv_backoff(%struct.sv* %62)
  %tobool53 = icmp ne i32 %call52, 0
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.51, %if.then.45
  %63 = phi i1 [ false, %if.then.45 ], [ %tobool53, %land.rhs.51 ]
  %land.ext55 = zext i1 %63 to i32
  br label %if.end.56

if.end.56:                                        ; preds = %land.end.54, %while.end
  ret i32 0
}

declare i32 @Perl_save_alloc(i32, i32) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal void @S_save_magic(i32 %mgs_ix, %struct.sv* %sv) #0 {
entry:
  %mgs_ix.addr = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mgs = alloca %struct.magic_state*, align 8
  store i32 %mgs_ix, i32* %mgs_ix.addr, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load i32, i32* %mgs_ix.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = inttoptr i64 %conv to i8*
  call void @Perl_save_destructor_x(void (i8*)* @restore_magic, i8* %1)
  %2 = load %union.any*, %union.any** @PL_savestack, align 8
  %3 = bitcast %union.any* %2 to i8*
  %4 = load i32, i32* %mgs_ix.addr, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %5 = bitcast i8* %add.ptr to %struct.magic_state*
  store %struct.magic_state* %5, %struct.magic_state** %mgs, align 8
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %7 = load %struct.magic_state*, %struct.magic_state** %mgs, align 8
  %mgs_sv = getelementptr inbounds %struct.magic_state, %struct.magic_state* %7, i32 0, i32 0
  store %struct.sv* %6, %struct.sv** %mgs_sv, align 8
  %8 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags, align 4
  %and = and i32 %9, 57344
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %11, 8388608
  %or = or i32 %and, %and2
  %12 = load %struct.magic_state*, %struct.magic_state** %mgs, align 8
  %mgs_flags = getelementptr inbounds %struct.magic_state, %struct.magic_state* %12, i32 0, i32 1
  store i32 %or, i32* %mgs_flags, align 4
  %13 = load i32, i32* @PL_savestack_ix, align 4
  %14 = load %struct.magic_state*, %struct.magic_state** %mgs, align 8
  %mgs_ss_ix = getelementptr inbounds %struct.magic_state, %struct.magic_state* %14, i32 0, i32 2
  store i32 %13, i32* %mgs_ss_ix, align 4
  %15 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags3 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags3, align 4
  %and4 = and i32 %16, -57345
  store i32 %and4, i32* %sv_flags3, align 4
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %18, -8388609
  store i32 %and6, i32* %sv_flags5, align 4
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags7 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags7, align 4
  %and8 = and i32 %20, 100663296
  %shr = lshr i32 %and8, 8
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags9, align 4
  %or10 = or i32 %22, %shr
  store i32 %or10, i32* %sv_flags9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restore_magic(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %mgs = alloca %struct.magic_state*, align 8
  %sv = alloca %struct.sv*, align 8
  %popval = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  %0 = load %union.any*, %union.any** @PL_savestack, align 8
  %1 = bitcast %union.any* %0 to i8*
  %2 = load i8*, i8** %p.addr, align 8
  %3 = ptrtoint i8* %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %3
  %4 = bitcast i8* %add.ptr to %struct.magic_state*
  store %struct.magic_state* %4, %struct.magic_state** %mgs, align 8
  %5 = load %struct.magic_state*, %struct.magic_state** %mgs, align 8
  %mgs_sv = getelementptr inbounds %struct.magic_state, %struct.magic_state* %5, i32 0, i32 0
  %6 = load %struct.sv*, %struct.sv** %mgs_sv, align 8
  store %struct.sv* %6, %struct.sv** %sv, align 8
  %7 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool = icmp ne %struct.sv* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.28

if.end:                                           ; preds = %entry
  %8 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags, align 4
  %and = and i32 %9, 255
  %cmp = icmp uge i32 %and, 7
  br i1 %cmp, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %12, i32 0, i32 5
  %13 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  %tobool1 = icmp ne %struct.magic* %13, null
  br i1 %tobool1, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %land.lhs.true
  %14 = load %struct.magic_state*, %struct.magic_state** %mgs, align 8
  %mgs_flags = getelementptr inbounds %struct.magic_state, %struct.magic_state* %14, i32 0, i32 1
  %15 = load i32, i32* %mgs_flags, align 4
  %tobool3 = icmp ne i32 %15, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %16 = load %struct.magic_state*, %struct.magic_state** %mgs, align 8
  %mgs_flags5 = getelementptr inbounds %struct.magic_state, %struct.magic_state* %16, i32 0, i32 1
  %17 = load i32, i32* %mgs_flags5, align 4
  %18 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags6 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags6, align 4
  %or = or i32 %19, %17
  store i32 %or, i32* %sv_flags6, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.then.2
  %20 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_mg_magical(%struct.sv* %20)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %21 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %22, 8192
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.7
  %23 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags12 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags12, align 4
  %and13 = and i32 %24, -458753
  store i32 %and13, i32* %sv_flags12, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.end
  %25 = load %struct.magic_state*, %struct.magic_state** %mgs, align 8
  %mgs_sv16 = getelementptr inbounds %struct.magic_state, %struct.magic_state* %25, i32 0, i32 0
  store %struct.sv* null, %struct.sv** %mgs_sv16, align 8
  %26 = load i32, i32* @PL_savestack_ix, align 4
  %27 = load %struct.magic_state*, %struct.magic_state** %mgs, align 8
  %mgs_ss_ix = getelementptr inbounds %struct.magic_state, %struct.magic_state* %27, i32 0, i32 2
  %28 = load i32, i32* %mgs_ss_ix, align 4
  %cmp17 = icmp eq i32 %26, %28
  br i1 %cmp17, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %if.end.15
  %29 = load i32, i32* @PL_savestack_ix, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %dec to i64
  %30 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %30, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  %31 = load i32, i32* %any_i32, align 4
  store i32 %31, i32* %popval, align 4
  %32 = load i32, i32* @PL_savestack_ix, align 4
  %sub = sub nsw i32 %32, 2
  store i32 %sub, i32* @PL_savestack_ix, align 4
  %33 = load i32, i32* @PL_savestack_ix, align 4
  %dec19 = add nsw i32 %33, -1
  store i32 %dec19, i32* @PL_savestack_ix, align 4
  %idxprom20 = sext i32 %dec19 to i64
  %34 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx21 = getelementptr inbounds %union.any, %union.any* %34, i64 %idxprom20
  %any_i3222 = bitcast %union.any* %arrayidx21 to i32*
  %35 = load i32, i32* %any_i3222, align 4
  store i32 %35, i32* %popval, align 4
  %36 = load i32, i32* @PL_savestack_ix, align 4
  %dec23 = add nsw i32 %36, -1
  store i32 %dec23, i32* @PL_savestack_ix, align 4
  %idxprom24 = sext i32 %dec23 to i64
  %37 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx25 = getelementptr inbounds %union.any, %union.any* %37, i64 %idxprom24
  %any_i3226 = bitcast %union.any* %arrayidx25 to i32*
  %38 = load i32, i32* %any_i3226, align 4
  store i32 %38, i32* %popval, align 4
  %39 = load i32, i32* %popval, align 4
  %40 = load i32, i32* @PL_savestack_ix, align 4
  %sub27 = sub nsw i32 %40, %39
  store i32 %sub27, i32* @PL_savestack_ix, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then, %if.then.18, %if.end.15
  ret void
}

declare i32 @Perl_sv_backoff(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_mg_set(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mgs_ix = alloca i32, align 4
  %mg = alloca %struct.magic*, align 8
  %nextmg = alloca %struct.magic*, align 8
  %vtbl = alloca %struct.mgvtbl*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %call = call i32 @Perl_save_alloc(i32 16, i32 0)
  store i32 %call, i32* %mgs_ix, align 4
  %0 = load i32, i32* %mgs_ix, align 4
  %1 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @S_save_magic(i32 %0, %struct.sv* %1)
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %4, i32 0, i32 5
  %5 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %5, %struct.magic** %mg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool = icmp ne %struct.magic* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_virtual = getelementptr inbounds %struct.magic, %struct.magic* %7, i32 0, i32 1
  %8 = load %struct.mgvtbl*, %struct.mgvtbl** %mg_virtual, align 8
  store %struct.mgvtbl* %8, %struct.mgvtbl** %vtbl, align 8
  %9 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %9, i32 0, i32 0
  %10 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %10, %struct.magic** %nextmg, align 8
  %11 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %11, i32 0, i32 4
  %12 = load i8, i8* %mg_flags, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 4
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_flags2 = getelementptr inbounds %struct.magic, %struct.magic* %13, i32 0, i32 4
  %14 = load i8, i8* %mg_flags2, align 1
  %conv3 = zext i8 %14 to i32
  %and4 = and i32 %conv3, -5
  %conv5 = trunc i32 %and4 to i8
  store i8 %conv5, i8* %mg_flags2, align 1
  %15 = load %union.any*, %union.any** @PL_savestack, align 8
  %16 = bitcast %union.any* %15 to i8*
  %17 = load i32, i32* %mgs_ix, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %18 = bitcast i8* %add.ptr to %struct.magic_state*
  %mgs_flags = getelementptr inbounds %struct.magic_state, %struct.magic_state* %18, i32 0, i32 1
  store i32 0, i32* %mgs_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %19 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %tobool6 = icmp ne %struct.mgvtbl* %19, null
  br i1 %tobool6, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %20 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_set = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %20, i32 0, i32 1
  %21 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_set, align 8
  %tobool7 = icmp ne i32 (%struct.sv*, %struct.magic*)* %21, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %land.lhs.true
  %22 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_set9 = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %22, i32 0, i32 1
  %23 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_set9, align 8
  %24 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %25 = load %struct.magic*, %struct.magic** %mg, align 8
  %call10 = call i32 %23(%struct.sv* %24, %struct.magic* %25)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %26 = load %struct.magic*, %struct.magic** %nextmg, align 8
  store %struct.magic* %26, %struct.magic** %mg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %mgs_ix, align 4
  %conv12 = sext i32 %27 to i64
  %28 = inttoptr i64 %conv12 to i8*
  call void @restore_magic(i8* %28)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_mg_length(%struct.sv* %sv) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %len = alloca i64, align 8
  %vtbl = alloca %struct.mgvtbl*, align 8
  %mgs_ix = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %2, i32 0, i32 5
  %3 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %3, %struct.magic** %mg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool = icmp ne %struct.magic* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_virtual = getelementptr inbounds %struct.magic, %struct.magic* %5, i32 0, i32 1
  %6 = load %struct.mgvtbl*, %struct.mgvtbl** %mg_virtual, align 8
  store %struct.mgvtbl* %6, %struct.mgvtbl** %vtbl, align 8
  %7 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %tobool1 = icmp ne %struct.mgvtbl* %7, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_len = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %8, i32 0, i32 2
  %9 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_len, align 8
  %tobool2 = icmp ne i32 (%struct.sv*, %struct.magic*)* %9, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @Perl_save_alloc(i32 16, i32 0)
  store i32 %call, i32* %mgs_ix, align 4
  %10 = load i32, i32* %mgs_ix, align 4
  %11 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @S_save_magic(i32 %10, %struct.sv* %11)
  %12 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_len3 = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %12, i32 0, i32 2
  %13 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_len3, align 8
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %15 = load %struct.magic*, %struct.magic** %mg, align 8
  %call4 = call i32 %13(%struct.sv* %14, %struct.magic* %15)
  %conv = zext i32 %call4 to i64
  store i64 %conv, i64* %len, align 8
  %16 = load i32, i32* %mgs_ix, align 4
  %conv5 = sext i32 %16 to i64
  %17 = inttoptr i64 %conv5 to i8*
  call void @restore_magic(i8* %17)
  %18 = load i64, i64* %len, align 8
  %conv6 = trunc i64 %18 to i32
  store i32 %conv6, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %19, i32 0, i32 0
  %20 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %20, %struct.magic** %mg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags, align 4
  %and = and i32 %22, 536870912
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %for.end
  %23 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %23, i32 0, i32 7
  %24 = load i8, i8* %op_private, align 1
  %conv9 = zext i8 %24 to i32
  %and10 = and i32 %conv9, 8
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.8
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %26, 262144
  %cmp = icmp eq i32 %and14, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any16, align 8
  %29 = bitcast i8* %28 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %29, i32 0, i32 1
  %30 = load i64, i64* %xpv_cur, align 8
  store i64 %30, i64* %len, align 8
  %31 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any17 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any17, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 0
  %34 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %35 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call18 = call i8* @Perl_sv_2pv_flags(%struct.sv* %35, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %34, %cond.true ], [ %call18, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %36 = load i8*, i8** %s, align 8
  %37 = load i8*, i8** %s, align 8
  %38 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %38
  %call19 = call i64 @Perl_utf8_length(i8* %36, i8* %add.ptr)
  store i64 %call19, i64* %len, align 8
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true.8, %for.end
  %39 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags20 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 2
  %40 = load i32, i32* %sv_flags20, align 4
  %and21 = and i32 %40, 262144
  %cmp22 = icmp eq i32 %and21, 262144
  br i1 %cmp22, label %cond.true.24, label %cond.false.29

cond.true.24:                                     ; preds = %if.else
  %41 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any25 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any25, align 8
  %43 = bitcast i8* %42 to %struct.xpv*
  %xpv_cur26 = getelementptr inbounds %struct.xpv, %struct.xpv* %43, i32 0, i32 1
  %44 = load i64, i64* %xpv_cur26, align 8
  store i64 %44, i64* %len, align 8
  %45 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any27 = getelementptr inbounds %struct.sv, %struct.sv* %45, i32 0, i32 0
  %46 = load i8*, i8** %sv_any27, align 8
  %47 = bitcast i8* %46 to %struct.xpv*
  %xpv_pv28 = getelementptr inbounds %struct.xpv, %struct.xpv* %47, i32 0, i32 0
  %48 = load i8*, i8** %xpv_pv28, align 8
  br label %cond.end.31

cond.false.29:                                    ; preds = %if.else
  %49 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call30 = call i8* @Perl_sv_2pv_flags(%struct.sv* %49, i64* %len, i32 2)
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.24
  %cond32 = phi i8* [ %48, %cond.true.24 ], [ %call30, %cond.false.29 ]
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.31, %cond.end
  %50 = load i64, i64* %len, align 8
  %conv34 = trunc i64 %50 to i32
  store i32 %conv34, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i64 @Perl_utf8_length(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_mg_size(%struct.sv* %sv) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %len = alloca i32, align 4
  %vtbl = alloca %struct.mgvtbl*, align 8
  %mgs_ix = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %2, i32 0, i32 5
  %3 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %3, %struct.magic** %mg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool = icmp ne %struct.magic* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_virtual = getelementptr inbounds %struct.magic, %struct.magic* %5, i32 0, i32 1
  %6 = load %struct.mgvtbl*, %struct.mgvtbl** %mg_virtual, align 8
  store %struct.mgvtbl* %6, %struct.mgvtbl** %vtbl, align 8
  %7 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %tobool1 = icmp ne %struct.mgvtbl* %7, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_len = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %8, i32 0, i32 2
  %9 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_len, align 8
  %tobool2 = icmp ne i32 (%struct.sv*, %struct.magic*)* %9, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @Perl_save_alloc(i32 16, i32 0)
  store i32 %call, i32* %mgs_ix, align 4
  %10 = load i32, i32* %mgs_ix, align 4
  %11 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @S_save_magic(i32 %10, %struct.sv* %11)
  %12 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_len3 = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %12, i32 0, i32 2
  %13 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_len3, align 8
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %15 = load %struct.magic*, %struct.magic** %mg, align 8
  %call4 = call i32 %13(%struct.sv* %14, %struct.magic* %15)
  store i32 %call4, i32* %len, align 4
  %16 = load i32, i32* %mgs_ix, align 4
  %conv = sext i32 %16 to i64
  %17 = inttoptr i64 %conv to i8*
  call void @restore_magic(i8* %17)
  %18 = load i32, i32* %len, align 4
  store i32 %18, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %19, i32 0, i32 0
  %20 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %20, %struct.magic** %mg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags, align 4
  %and = and i32 %22, 255
  switch i32 %and, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %for.end
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %24 = bitcast %struct.sv* %23 to %struct.av*
  %sv_any5 = getelementptr inbounds %struct.av, %struct.av* %24, i32 0, i32 0
  %25 = load %struct.xpvav*, %struct.xpvav** %sv_any5, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %25, i32 0, i32 1
  %26 = load i64, i64* %xav_fill, align 8
  %conv6 = trunc i64 %26 to i32
  store i32 %conv6, i32* %len, align 4
  %27 = load i32, i32* %len, align 4
  store i32 %27, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %for.end
  br label %sw.default

sw.default:                                       ; preds = %for.end, %sw.bb.7
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_mg_clear(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mgs_ix = alloca i32, align 4
  %mg = alloca %struct.magic*, align 8
  %vtbl = alloca %struct.mgvtbl*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %call = call i32 @Perl_save_alloc(i32 16, i32 0)
  store i32 %call, i32* %mgs_ix, align 4
  %0 = load i32, i32* %mgs_ix, align 4
  %1 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @S_save_magic(i32 %0, %struct.sv* %1)
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %4, i32 0, i32 5
  %5 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %5, %struct.magic** %mg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool = icmp ne %struct.magic* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_virtual = getelementptr inbounds %struct.magic, %struct.magic* %7, i32 0, i32 1
  %8 = load %struct.mgvtbl*, %struct.mgvtbl** %mg_virtual, align 8
  store %struct.mgvtbl* %8, %struct.mgvtbl** %vtbl, align 8
  %9 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %tobool1 = icmp ne %struct.mgvtbl* %9, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_clear = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %10, i32 0, i32 3
  %11 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_clear, align 8
  %tobool2 = icmp ne i32 (%struct.sv*, %struct.magic*)* %11, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_clear3 = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %12, i32 0, i32 3
  %13 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_clear3, align 8
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %15 = load %struct.magic*, %struct.magic** %mg, align 8
  %call4 = call i32 %13(%struct.sv* %14, %struct.magic* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %16, i32 0, i32 0
  %17 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %17, %struct.magic** %mg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %mgs_ix, align 4
  %conv = sext i32 %18 to i64
  %19 = inttoptr i64 %conv to i8*
  call void @restore_magic(i8* %19)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 %type) #0 {
entry:
  %retval = alloca %struct.magic*, align 8
  %sv.addr = alloca %struct.sv*, align 8
  %type.addr = alloca i32, align 4
  %mg = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %tobool = icmp ne %struct.sv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.magic* null, %struct.magic** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 0
  %2 = load i8*, i8** %sv_any, align 8
  %3 = bitcast i8* %2 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %3, i32 0, i32 5
  %4 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %4, %struct.magic** %mg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool1 = icmp ne %struct.magic* %5, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type = getelementptr inbounds %struct.magic, %struct.magic* %6, i32 0, i32 3
  %7 = load i8, i8* %mg_type, align 1
  %conv = sext i8 %7 to i32
  %8 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %conv, %8
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  %9 = load %struct.magic*, %struct.magic** %mg, align 8
  store %struct.magic* %9, %struct.magic** %retval
  br label %return

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %10 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %10, i32 0, i32 0
  %11 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %11, %struct.magic** %mg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.magic* null, %struct.magic** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %12 = load %struct.magic*, %struct.magic** %retval
  ret %struct.magic* %12
}

; Function Attrs: nounwind uwtable
define i32 @Perl_mg_copy(%struct.sv* %sv, %struct.sv* %nsv, i8* %key, i32 %klen) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %nsv.addr = alloca %struct.sv*, align 8
  %key.addr = alloca i8*, align 8
  %klen.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %mg = alloca %struct.magic*, align 8
  %vtbl = alloca %struct.mgvtbl*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.sv* %nsv, %struct.sv** %nsv.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %klen, i32* %klen.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %2, i32 0, i32 5
  %3 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %3, %struct.magic** %mg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool = icmp ne %struct.magic* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_virtual = getelementptr inbounds %struct.magic, %struct.magic* %5, i32 0, i32 1
  %6 = load %struct.mgvtbl*, %struct.mgvtbl** %mg_virtual, align 8
  store %struct.mgvtbl* %6, %struct.mgvtbl** %vtbl, align 8
  %7 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %7, i32 0, i32 4
  %8 = load i8, i8* %mg_flags, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 8
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_copy = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %9, i32 0, i32 5
  %10 = load i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)** %svt_copy, align 8
  %tobool2 = icmp ne i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* %10, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_copy3 = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %11, i32 0, i32 5
  %12 = load i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)** %svt_copy3, align 8
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %14 = load %struct.magic*, %struct.magic** %mg, align 8
  %15 = load %struct.sv*, %struct.sv** %nsv.addr, align 8
  %16 = load i8*, i8** %key.addr, align 8
  %17 = load i32, i32* %klen.addr, align 4
  %call = call i32 %12(%struct.sv* %13, %struct.magic* %14, %struct.sv* %15, i8* %16, i32 %17)
  %18 = load i32, i32* %count, align 4
  %add = add nsw i32 %18, %call
  store i32 %add, i32* %count, align 4
  br label %if.end.54

if.else:                                          ; preds = %land.lhs.true, %for.body
  %19 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type = getelementptr inbounds %struct.magic, %struct.magic* %19, i32 0, i32 3
  %20 = load i8, i8* %mg_type, align 1
  %conv4 = sext i8 %20 to i32
  %cmp = icmp sge i32 %conv4, 65
  br i1 %cmp, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.else
  %21 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type7 = getelementptr inbounds %struct.magic, %struct.magic* %21, i32 0, i32 3
  %22 = load i8, i8* %mg_type7, align 1
  %conv8 = sext i8 %22 to i32
  %cmp9 = icmp sle i32 %conv8, 90
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true.6
  %23 = load %struct.sv*, %struct.sv** %nsv.addr, align 8
  %24 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type12 = getelementptr inbounds %struct.magic, %struct.magic* %24, i32 0, i32 3
  %25 = load i8, i8* %mg_type12, align 1
  %conv13 = sext i8 %25 to i32
  %cmp14 = icmp eq i32 %conv13, 80
  br i1 %cmp14, label %cond.true, label %cond.false.21

cond.true:                                        ; preds = %if.then.11
  %26 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %26, i32 0, i32 5
  %27 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool16 = icmp ne %struct.sv* %27, null
  br i1 %tobool16, label %cond.true.17, label %cond.false

cond.true.17:                                     ; preds = %cond.true
  %28 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj18 = getelementptr inbounds %struct.magic, %struct.magic* %28, i32 0, i32 5
  %29 = load %struct.sv*, %struct.sv** %mg_obj18, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %30 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call19 = call %struct.sv* @Perl_newRV(%struct.sv* %30)
  %call20 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call19)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.17
  %cond = phi %struct.sv* [ %29, %cond.true.17 ], [ %call20, %cond.false ]
  br label %cond.end.34

cond.false.21:                                    ; preds = %if.then.11
  %31 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type22 = getelementptr inbounds %struct.magic, %struct.magic* %31, i32 0, i32 3
  %32 = load i8, i8* %mg_type22, align 1
  %conv23 = sext i8 %32 to i32
  %cmp24 = icmp eq i32 %conv23, 68
  br i1 %cmp24, label %land.lhs.true.26, label %cond.false.30

land.lhs.true.26:                                 ; preds = %cond.false.21
  %33 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj27 = getelementptr inbounds %struct.magic, %struct.magic* %33, i32 0, i32 5
  %34 = load %struct.sv*, %struct.sv** %mg_obj27, align 8
  %tobool28 = icmp ne %struct.sv* %34, null
  br i1 %tobool28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %land.lhs.true.26
  %35 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  br label %cond.end.32

cond.false.30:                                    ; preds = %land.lhs.true.26, %cond.false.21
  %36 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj31 = getelementptr inbounds %struct.magic, %struct.magic* %36, i32 0, i32 5
  %37 = load %struct.sv*, %struct.sv** %mg_obj31, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.29
  %cond33 = phi %struct.sv* [ %35, %cond.true.29 ], [ %37, %cond.false.30 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.end
  %cond35 = phi %struct.sv* [ %cond, %cond.end ], [ %cond33, %cond.end.32 ]
  %38 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type36 = getelementptr inbounds %struct.magic, %struct.magic* %38, i32 0, i32 3
  %39 = load i8, i8* %mg_type36, align 1
  %conv37 = sext i8 %39 to i32
  %cmp38 = icmp sge i32 %conv37, 65
  br i1 %cmp38, label %land.lhs.true.40, label %cond.false.49

land.lhs.true.40:                                 ; preds = %cond.end.34
  %40 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type41 = getelementptr inbounds %struct.magic, %struct.magic* %40, i32 0, i32 3
  %41 = load i8, i8* %mg_type41, align 1
  %conv42 = sext i8 %41 to i32
  %cmp43 = icmp sle i32 %conv42, 90
  br i1 %cmp43, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %land.lhs.true.40
  %42 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type46 = getelementptr inbounds %struct.magic, %struct.magic* %42, i32 0, i32 3
  %43 = load i8, i8* %mg_type46, align 1
  %conv47 = sext i8 %43 to i32
  %add48 = add nsw i32 %conv47, 32
  br label %cond.end.52

cond.false.49:                                    ; preds = %land.lhs.true.40, %cond.end.34
  %44 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type50 = getelementptr inbounds %struct.magic, %struct.magic* %44, i32 0, i32 3
  %45 = load i8, i8* %mg_type50, align 1
  %conv51 = sext i8 %45 to i32
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.49, %cond.true.45
  %cond53 = phi i32 [ %add48, %cond.true.45 ], [ %conv51, %cond.false.49 ]
  %46 = load i8*, i8** %key.addr, align 8
  %47 = load i32, i32* %klen.addr, align 4
  call void @Perl_sv_magic(%struct.sv* %23, %struct.sv* %cond35, i32 %cond53, i8* %46, i32 %47)
  %48 = load i32, i32* %count, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.52, %land.lhs.true.6, %if.else
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %49 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %49, i32 0, i32 0
  %50 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %50, %struct.magic** %mg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %count, align 4
  ret i32 %51
}

declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

declare %struct.sv* @Perl_newRV(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_mg_free(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %moremagic = alloca %struct.magic*, align 8
  %vtbl = alloca %struct.mgvtbl*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %2, i32 0, i32 5
  %3 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %3, %struct.magic** %mg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool = icmp ne %struct.magic* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_virtual = getelementptr inbounds %struct.magic, %struct.magic* %5, i32 0, i32 1
  %6 = load %struct.mgvtbl*, %struct.mgvtbl** %mg_virtual, align 8
  store %struct.mgvtbl* %6, %struct.mgvtbl** %vtbl, align 8
  %7 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %7, i32 0, i32 0
  %8 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %8, %struct.magic** %moremagic, align 8
  %9 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %tobool1 = icmp ne %struct.mgvtbl* %9, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_free = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %10, i32 0, i32 4
  %11 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_free, align 8
  %tobool2 = icmp ne i32 (%struct.sv*, %struct.magic*)* %11, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.mgvtbl*, %struct.mgvtbl** %vtbl, align 8
  %svt_free3 = getelementptr inbounds %struct.mgvtbl, %struct.mgvtbl* %12, i32 0, i32 4
  %13 = load i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)** %svt_free3, align 8
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %15 = load %struct.magic*, %struct.magic** %mg, align 8
  %call = call i32 %13(%struct.sv* %14, %struct.magic* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %16 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %16, i32 0, i32 6
  %17 = load i8*, i8** %mg_ptr, align 8
  %tobool4 = icmp ne i8* %17, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.23

land.lhs.true.5:                                  ; preds = %if.end
  %18 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type = getelementptr inbounds %struct.magic, %struct.magic* %18, i32 0, i32 3
  %19 = load i8, i8* %mg_type, align 1
  %conv = sext i8 %19 to i32
  %cmp = icmp ne i32 %conv, 103
  br i1 %cmp, label %if.then.7, label %if.end.23

if.then.7:                                        ; preds = %land.lhs.true.5
  %20 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %20, i32 0, i32 7
  %21 = load i32, i32* %mg_len, align 4
  %cmp8 = icmp sgt i32 %21, 0
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.7
  %22 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type10 = getelementptr inbounds %struct.magic, %struct.magic* %22, i32 0, i32 3
  %23 = load i8, i8* %mg_type10, align 1
  %conv11 = sext i8 %23 to i32
  %cmp12 = icmp eq i32 %conv11, 119
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false, %if.then.7
  %24 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr15 = getelementptr inbounds %struct.magic, %struct.magic* %24, i32 0, i32 6
  %25 = load i8*, i8** %mg_ptr15, align 8
  call void @Perl_safesysfree(i8* %25)
  br label %if.end.22

if.else:                                          ; preds = %lor.lhs.false
  %26 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_len16 = getelementptr inbounds %struct.magic, %struct.magic* %26, i32 0, i32 7
  %27 = load i32, i32* %mg_len16, align 4
  %cmp17 = icmp eq i32 %27, -2
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else
  %28 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr20 = getelementptr inbounds %struct.magic, %struct.magic* %28, i32 0, i32 6
  %29 = load i8*, i8** %mg_ptr20, align 8
  %30 = bitcast i8* %29 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %30)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true.5, %if.end
  %31 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %31, i32 0, i32 4
  %32 = load i8, i8* %mg_flags, align 1
  %conv24 = zext i8 %32 to i32
  %and = and i32 %conv24, 2
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %33 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %33, i32 0, i32 5
  %34 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  call void @Perl_sv_free(%struct.sv* %34)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  %35 = load %struct.magic*, %struct.magic** %mg, align 8
  %36 = bitcast %struct.magic* %35 to i8*
  call void @Perl_safesysfree(i8* %36)
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %37 = load %struct.magic*, %struct.magic** %moremagic, align 8
  store %struct.magic* %37, %struct.magic** %mg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any28 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any28, align 8
  %40 = bitcast i8* %39 to %struct.xpvmg*
  %xmg_magic29 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %40, i32 0, i32 5
  store %struct.magic* null, %struct.magic** %xmg_magic29, align 8
  ret i32 0
}

declare void @Perl_safesysfree(i8*) #1

declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_regdata_cnt(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %rx = alloca %struct.regexp*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool = icmp ne %struct.pmop* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp = getelementptr inbounds %struct.pmop, %struct.pmop* %1, i32 0, i32 13
  %2 = load %struct.regexp*, %struct.regexp** %op_pmregexp, align 8
  store %struct.regexp* %2, %struct.regexp** %rx, align 8
  %tobool1 = icmp ne %struct.regexp* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %3, i32 0, i32 5
  %4 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool2 = icmp ne %struct.sv* %4, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %nparens = getelementptr inbounds %struct.regexp, %struct.regexp* %5, i32 0, i32 12
  %6 = load i32, i32* %nparens, align 4
  store i32 %6, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %7 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %lastparen = getelementptr inbounds %struct.regexp, %struct.regexp* %7, i32 0, i32 13
  %8 = load i32, i32* %lastparen, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.3
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_regdatum_get(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %paren = alloca i32, align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %rx = alloca %struct.regexp*, align 8
  %t = alloca i32, align 4
  %b = alloca i8*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool = icmp ne %struct.pmop* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp = getelementptr inbounds %struct.pmop, %struct.pmop* %1, i32 0, i32 13
  %2 = load %struct.regexp*, %struct.regexp** %op_pmregexp, align 8
  store %struct.regexp* %2, %struct.regexp** %rx, align 8
  %tobool1 = icmp ne %struct.regexp* %2, null
  br i1 %tobool1, label %if.then, label %if.end.24

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %3, i32 0, i32 7
  %4 = load i32, i32* %mg_len, align 4
  store i32 %4, i32* %paren, align 4
  %5 = load i32, i32* %paren, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* %paren, align 4
  %7 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %nparens = getelementptr inbounds %struct.regexp, %struct.regexp* %7, i32 0, i32 12
  %8 = load i32, i32* %nparens, align 4
  %cmp3 = icmp sle i32 %6, %8
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.23

land.lhs.true.4:                                  ; preds = %if.end
  %9 = load i32, i32* %paren, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %startp = getelementptr inbounds %struct.regexp, %struct.regexp* %10, i32 0, i32 0
  %11 = load i32*, i32** %startp, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  store i32 %12, i32* %s, align 4
  %cmp5 = icmp ne i32 %12, -1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.23

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %13 = load i32, i32* %paren, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %endp = getelementptr inbounds %struct.regexp, %struct.regexp* %14, i32 0, i32 1
  %15 = load i32*, i32** %endp, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  store i32 %16, i32* %t, align 4
  %cmp9 = icmp ne i32 %16, -1
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %land.lhs.true.6
  %17 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %17, i32 0, i32 5
  %18 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool11 = icmp ne %struct.sv* %18, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  %19 = load i32, i32* %t, align 4
  store i32 %19, i32* %i, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.then.10
  %20 = load i32, i32* %s, align 4
  store i32 %20, i32* %i, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %21 = load i32, i32* %i, align 4
  %cmp14 = icmp sgt i32 %21, 0
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %if.end.13
  %22 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %reganch = getelementptr inbounds %struct.regexp, %struct.regexp* %22, i32 0, i32 15
  %23 = load i32, i32* %reganch, align 4
  %and = and i32 %23, 268435456
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %land.lhs.true.15
  %24 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %subbeg = getelementptr inbounds %struct.regexp, %struct.regexp* %24, i32 0, i32 6
  %25 = load i8*, i8** %subbeg, align 8
  store i8* %25, i8** %b, align 8
  %26 = load i8*, i8** %b, align 8
  %tobool18 = icmp ne i8* %26, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %27 = load i8*, i8** %b, align 8
  %28 = load i8*, i8** %b, align 8
  %29 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  %call = call i64 @Perl_utf8_length(i8* %27, i8* %add.ptr)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %i, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true.15, %if.end.13
  %30 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %31 = load i32, i32* %i, align 4
  %conv22 = sext i32 %31 to i64
  call void @Perl_sv_setiv(%struct.sv* %30, i64 %conv22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.21, %land.lhs.true.6, %land.lhs.true.4, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.2
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_regdatum_set(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_len(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %paren = alloca i32, align 4
  %i = alloca i32, align 4
  %rx = alloca %struct.regexp*, align 8
  %s1 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %s = alloca i8*, align 8
  %send = alloca i8*, align 8
  %n_a = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 6
  %1 = load i8*, i8** %mg_ptr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.epilog [
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 38, label %sw.bb
    i32 43, label %sw.bb.91
    i32 14, label %sw.bb.101
    i32 96, label %sw.bb.111
    i32 39, label %sw.bb.130
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool = icmp ne %struct.pmop* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else.60

land.lhs.true:                                    ; preds = %sw.bb
  %4 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp = getelementptr inbounds %struct.pmop, %struct.pmop* %4, i32 0, i32 13
  %5 = load %struct.regexp*, %struct.regexp** %op_pmregexp, align 8
  store %struct.regexp* %5, %struct.regexp** %rx, align 8
  %tobool1 = icmp ne %struct.regexp* %5, null
  br i1 %tobool1, label %if.then, label %if.else.60

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr2 = getelementptr inbounds %struct.magic, %struct.magic* %6, i32 0, i32 6
  %7 = load i8*, i8** %mg_ptr2, align 8
  %call = call i32 @atoi(i8* %7)
  store i32 %call, i32* %paren, align 4
  br label %getparen

getparen:                                         ; preds = %if.then.108, %if.then.98, %if.then
  %8 = load i32, i32* %paren, align 4
  %9 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %nparens = getelementptr inbounds %struct.regexp, %struct.regexp* %9, i32 0, i32 12
  %10 = load i32, i32* %nparens, align 4
  %cmp = icmp sle i32 %8, %10
  br i1 %cmp, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %getparen
  %11 = load i32, i32* %paren, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %startp = getelementptr inbounds %struct.regexp, %struct.regexp* %12, i32 0, i32 0
  %13 = load i32*, i32** %startp, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  store i32 %14, i32* %s1, align 4
  %cmp5 = icmp ne i32 %14, -1
  br i1 %cmp5, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %15 = load i32, i32* %paren, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %endp = getelementptr inbounds %struct.regexp, %struct.regexp* %16, i32 0, i32 1
  %17 = load i32*, i32** %endp, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  store i32 %18, i32* %t1, align 4
  %cmp10 = icmp ne i32 %18, -1
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true.7
  %19 = load i32, i32* %t1, align 4
  %20 = load i32, i32* %s1, align 4
  %sub = sub nsw i32 %19, %20
  store i32 %sub, i32* %i, align 4
  br label %getlen

getlen:                                           ; preds = %if.then.146, %if.then.126, %if.then.12
  %21 = load i32, i32* %i, align 4
  %cmp13 = icmp sgt i32 %21, 0
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.28

land.lhs.true.15:                                 ; preds = %getlen
  %22 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %reganch = getelementptr inbounds %struct.regexp, %struct.regexp* %22, i32 0, i32 15
  %23 = load i32, i32* %reganch, align 4
  %and = and i32 %23, 268435456
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.then.17, label %if.end.28

if.then.17:                                       ; preds = %land.lhs.true.15
  %24 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %subbeg = getelementptr inbounds %struct.regexp, %struct.regexp* %24, i32 0, i32 6
  %25 = load i8*, i8** %subbeg, align 8
  %26 = load i32, i32* %s1, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %27 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %subbeg18 = getelementptr inbounds %struct.regexp, %struct.regexp* %27, i32 0, i32 6
  %28 = load i8*, i8** %subbeg18, align 8
  %29 = load i32, i32* %t1, align 4
  %idx.ext19 = sext i32 %29 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %28, i64 %idx.ext19
  store i8* %add.ptr20, i8** %send, align 8
  %30 = load i32, i32* %t1, align 4
  %31 = load i32, i32* %s1, align 4
  %sub21 = sub nsw i32 %30, %31
  store i32 %sub21, i32* %i, align 4
  %32 = load i8*, i8** %s, align 8
  %33 = load i32, i32* %i, align 4
  %conv22 = sext i32 %33 to i64
  %call23 = call signext i8 @Perl_is_utf8_string(i8* %32, i64 %conv22)
  %tobool24 = icmp ne i8 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then.17
  %34 = load i8*, i8** %s, align 8
  %35 = load i8*, i8** %send, align 8
  %call26 = call i64 @Perl_utf8_length(i8* %34, i8* %35)
  %conv27 = trunc i64 %call26 to i32
  store i32 %conv27, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.then.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %land.lhs.true.15, %getlen
  %36 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %36, 0
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.28
  %37 = load i32, i32* %i, align 4
  %conv32 = sext i32 %37 to i64
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i64 %conv32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.28
  %38 = load i32, i32* %i, align 4
  store i32 %38, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.7, %land.lhs.true.4, %getparen
  %39 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %39, i32 0, i32 14
  %40 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp34 = icmp ne %struct.sv* %40, null
  br i1 %cmp34, label %land.lhs.true.36, label %lor.lhs.false.49

land.lhs.true.36:                                 ; preds = %if.else
  %41 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings37 = getelementptr inbounds %struct.cop, %struct.cop* %41, i32 0, i32 14
  %42 = load %struct.sv*, %struct.sv** %cop_warnings37, align 8
  %cmp38 = icmp ne %struct.sv* %42, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp38, label %land.lhs.true.40, label %lor.lhs.false.49

land.lhs.true.40:                                 ; preds = %land.lhs.true.36
  %43 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings41 = getelementptr inbounds %struct.cop, %struct.cop* %43, i32 0, i32 14
  %44 = load %struct.sv*, %struct.sv** %cop_warnings41, align 8
  %cmp42 = icmp eq %struct.sv* %44, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp42, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.40
  %45 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings44 = getelementptr inbounds %struct.cop, %struct.cop* %45, i32 0, i32 14
  %46 = load %struct.sv*, %struct.sv** %cop_warnings44, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 0
  %47 = load i8*, i8** %sv_any, align 8
  %48 = bitcast i8* %47 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %48, i32 0, i32 0
  %49 = load i8*, i8** %xpv_pv, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %49, i64 10
  %50 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %50 to i32
  %and47 = and i32 %conv46, 4
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.57, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false, %land.lhs.true.36, %if.else
  %51 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings50 = getelementptr inbounds %struct.cop, %struct.cop* %51, i32 0, i32 14
  %52 = load %struct.sv*, %struct.sv** %cop_warnings50, align 8
  %cmp51 = icmp eq %struct.sv* %52, null
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.58

land.lhs.true.53:                                 ; preds = %lor.lhs.false.49
  %53 = load i8, i8* @PL_dowarn, align 1
  %conv54 = zext i8 %53 to i32
  %and55 = and i32 %conv54, 1
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.53, %lor.lhs.false, %land.lhs.true.40
  call void @Perl_report_uninit()
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %land.lhs.true.53, %lor.lhs.false.49
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  br label %if.end.90

if.else.60:                                       ; preds = %land.lhs.true, %sw.bb
  %54 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings61 = getelementptr inbounds %struct.cop, %struct.cop* %54, i32 0, i32 14
  %55 = load %struct.sv*, %struct.sv** %cop_warnings61, align 8
  %cmp62 = icmp ne %struct.sv* %55, null
  br i1 %cmp62, label %land.lhs.true.64, label %lor.lhs.false.80

land.lhs.true.64:                                 ; preds = %if.else.60
  %56 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings65 = getelementptr inbounds %struct.cop, %struct.cop* %56, i32 0, i32 14
  %57 = load %struct.sv*, %struct.sv** %cop_warnings65, align 8
  %cmp66 = icmp ne %struct.sv* %57, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp66, label %land.lhs.true.68, label %lor.lhs.false.80

land.lhs.true.68:                                 ; preds = %land.lhs.true.64
  %58 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings69 = getelementptr inbounds %struct.cop, %struct.cop* %58, i32 0, i32 14
  %59 = load %struct.sv*, %struct.sv** %cop_warnings69, align 8
  %cmp70 = icmp eq %struct.sv* %59, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp70, label %if.then.88, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %land.lhs.true.68
  %60 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings73 = getelementptr inbounds %struct.cop, %struct.cop* %60, i32 0, i32 14
  %61 = load %struct.sv*, %struct.sv** %cop_warnings73, align 8
  %sv_any74 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 0
  %62 = load i8*, i8** %sv_any74, align 8
  %63 = bitcast i8* %62 to %struct.xpv*
  %xpv_pv75 = getelementptr inbounds %struct.xpv, %struct.xpv* %63, i32 0, i32 0
  %64 = load i8*, i8** %xpv_pv75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %64, i64 10
  %65 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %65 to i32
  %and78 = and i32 %conv77, 4
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.88, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.72, %land.lhs.true.64, %if.else.60
  %66 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings81 = getelementptr inbounds %struct.cop, %struct.cop* %66, i32 0, i32 14
  %67 = load %struct.sv*, %struct.sv** %cop_warnings81, align 8
  %cmp82 = icmp eq %struct.sv* %67, null
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.89

land.lhs.true.84:                                 ; preds = %lor.lhs.false.80
  %68 = load i8, i8* @PL_dowarn, align 1
  %conv85 = zext i8 %68 to i32
  %and86 = and i32 %conv85, 1
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %land.lhs.true.84, %lor.lhs.false.72, %land.lhs.true.68
  call void @Perl_report_uninit()
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %land.lhs.true.84, %lor.lhs.false.80
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.59
  store i32 0, i32* %retval
  br label %return

sw.bb.91:                                         ; preds = %entry
  %69 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool92 = icmp ne %struct.pmop* %69, null
  br i1 %tobool92, label %land.lhs.true.93, label %if.end.100

land.lhs.true.93:                                 ; preds = %sw.bb.91
  %70 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp94 = getelementptr inbounds %struct.pmop, %struct.pmop* %70, i32 0, i32 13
  %71 = load %struct.regexp*, %struct.regexp** %op_pmregexp94, align 8
  store %struct.regexp* %71, %struct.regexp** %rx, align 8
  %tobool95 = icmp ne %struct.regexp* %71, null
  br i1 %tobool95, label %if.then.96, label %if.end.100

if.then.96:                                       ; preds = %land.lhs.true.93
  %72 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %lastparen = getelementptr inbounds %struct.regexp, %struct.regexp* %72, i32 0, i32 13
  %73 = load i32, i32* %lastparen, align 4
  store i32 %73, i32* %paren, align 4
  %74 = load i32, i32* %paren, align 4
  %tobool97 = icmp ne i32 %74, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.then.96
  br label %getparen

if.end.99:                                        ; preds = %if.then.96
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %land.lhs.true.93, %sw.bb.91
  store i32 0, i32* %retval
  br label %return

sw.bb.101:                                        ; preds = %entry
  %75 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool102 = icmp ne %struct.pmop* %75, null
  br i1 %tobool102, label %land.lhs.true.103, label %if.end.110

land.lhs.true.103:                                ; preds = %sw.bb.101
  %76 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp104 = getelementptr inbounds %struct.pmop, %struct.pmop* %76, i32 0, i32 13
  %77 = load %struct.regexp*, %struct.regexp** %op_pmregexp104, align 8
  store %struct.regexp* %77, %struct.regexp** %rx, align 8
  %tobool105 = icmp ne %struct.regexp* %77, null
  br i1 %tobool105, label %if.then.106, label %if.end.110

if.then.106:                                      ; preds = %land.lhs.true.103
  %78 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %lastcloseparen = getelementptr inbounds %struct.regexp, %struct.regexp* %78, i32 0, i32 14
  %79 = load i32, i32* %lastcloseparen, align 4
  store i32 %79, i32* %paren, align 4
  %80 = load i32, i32* %paren, align 4
  %tobool107 = icmp ne i32 %80, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.then.106
  br label %getparen

if.end.109:                                       ; preds = %if.then.106
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %land.lhs.true.103, %sw.bb.101
  store i32 0, i32* %retval
  br label %return

sw.bb.111:                                        ; preds = %entry
  %81 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool112 = icmp ne %struct.pmop* %81, null
  br i1 %tobool112, label %land.lhs.true.113, label %if.end.129

land.lhs.true.113:                                ; preds = %sw.bb.111
  %82 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp114 = getelementptr inbounds %struct.pmop, %struct.pmop* %82, i32 0, i32 13
  %83 = load %struct.regexp*, %struct.regexp** %op_pmregexp114, align 8
  store %struct.regexp* %83, %struct.regexp** %rx, align 8
  %tobool115 = icmp ne %struct.regexp* %83, null
  br i1 %tobool115, label %if.then.116, label %if.end.129

if.then.116:                                      ; preds = %land.lhs.true.113
  %84 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %startp117 = getelementptr inbounds %struct.regexp, %struct.regexp* %84, i32 0, i32 0
  %85 = load i32*, i32** %startp117, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %85, i64 0
  %86 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp ne i32 %86, -1
  br i1 %cmp119, label %if.then.121, label %if.end.128

if.then.121:                                      ; preds = %if.then.116
  %87 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %startp122 = getelementptr inbounds %struct.regexp, %struct.regexp* %87, i32 0, i32 0
  %88 = load i32*, i32** %startp122, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %88, i64 0
  %89 = load i32, i32* %arrayidx123, align 4
  store i32 %89, i32* %i, align 4
  %90 = load i32, i32* %i, align 4
  %cmp124 = icmp sgt i32 %90, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.then.121
  store i32 0, i32* %s1, align 4
  %91 = load i32, i32* %i, align 4
  store i32 %91, i32* %t1, align 4
  br label %getlen

if.end.127:                                       ; preds = %if.then.121
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.116
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %land.lhs.true.113, %sw.bb.111
  store i32 0, i32* %retval
  br label %return

sw.bb.130:                                        ; preds = %entry
  %92 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool131 = icmp ne %struct.pmop* %92, null
  br i1 %tobool131, label %land.lhs.true.132, label %if.end.152

land.lhs.true.132:                                ; preds = %sw.bb.130
  %93 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp133 = getelementptr inbounds %struct.pmop, %struct.pmop* %93, i32 0, i32 13
  %94 = load %struct.regexp*, %struct.regexp** %op_pmregexp133, align 8
  store %struct.regexp* %94, %struct.regexp** %rx, align 8
  %tobool134 = icmp ne %struct.regexp* %94, null
  br i1 %tobool134, label %if.then.135, label %if.end.152

if.then.135:                                      ; preds = %land.lhs.true.132
  %95 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %endp136 = getelementptr inbounds %struct.regexp, %struct.regexp* %95, i32 0, i32 1
  %96 = load i32*, i32** %endp136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %96, i64 0
  %97 = load i32, i32* %arrayidx137, align 4
  %cmp138 = icmp ne i32 %97, -1
  br i1 %cmp138, label %if.then.140, label %if.end.151

if.then.140:                                      ; preds = %if.then.135
  %98 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %sublen = getelementptr inbounds %struct.regexp, %struct.regexp* %98, i32 0, i32 8
  %99 = load i32, i32* %sublen, align 4
  %100 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %endp141 = getelementptr inbounds %struct.regexp, %struct.regexp* %100, i32 0, i32 1
  %101 = load i32*, i32** %endp141, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %101, i64 0
  %102 = load i32, i32* %arrayidx142, align 4
  %sub143 = sub nsw i32 %99, %102
  store i32 %sub143, i32* %i, align 4
  %103 = load i32, i32* %i, align 4
  %cmp144 = icmp sgt i32 %103, 0
  br i1 %cmp144, label %if.then.146, label %if.end.150

if.then.146:                                      ; preds = %if.then.140
  %104 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %endp147 = getelementptr inbounds %struct.regexp, %struct.regexp* %104, i32 0, i32 1
  %105 = load i32*, i32** %endp147, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %105, i64 0
  %106 = load i32, i32* %arrayidx148, align 4
  store i32 %106, i32* %s1, align 4
  %107 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %sublen149 = getelementptr inbounds %struct.regexp, %struct.regexp* %107, i32 0, i32 8
  %108 = load i32, i32* %sublen149, align 4
  store i32 %108, i32* %t1, align 4
  br label %getlen

if.end.150:                                       ; preds = %if.then.140
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.135
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %land.lhs.true.132, %sw.bb.130
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %109 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %110 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %call153 = call i32 @Perl_magic_get(%struct.sv* %109, %struct.magic* %110)
  %111 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %111, i32 0, i32 2
  %112 = load i32, i32* %sv_flags, align 4
  %and154 = and i32 %112, 262144
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.end.162, label %land.lhs.true.156

land.lhs.true.156:                                ; preds = %sw.epilog
  %113 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags157 = getelementptr inbounds %struct.sv, %struct.sv* %113, i32 0, i32 2
  %114 = load i32, i32* %sv_flags157, align 4
  %and158 = and i32 %114, 196608
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %land.lhs.true.156
  %115 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call161 = call i8* @Perl_sv_2pv_flags(%struct.sv* %115, i64* %n_a, i32 2)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %land.lhs.true.156, %sw.epilog
  %116 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags163 = getelementptr inbounds %struct.sv, %struct.sv* %116, i32 0, i32 2
  %117 = load i32, i32* %sv_flags163, align 4
  %and164 = and i32 %117, 262144
  %tobool165 = icmp ne i32 %and164, 0
  br i1 %tobool165, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %if.end.162
  %118 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any167 = getelementptr inbounds %struct.sv, %struct.sv* %118, i32 0, i32 0
  %119 = load i8*, i8** %sv_any167, align 8
  %120 = bitcast i8* %119 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %120, i32 0, i32 1
  %121 = load i64, i64* %xpv_cur, align 8
  %conv168 = trunc i64 %121 to i32
  store i32 %conv168, i32* %retval
  br label %return

if.end.169:                                       ; preds = %if.end.162
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.169, %if.then.166, %if.end.152, %if.end.129, %if.end.110, %if.end.100, %if.end.90, %if.end.33
  %122 = load i32, i32* %retval
  ret i32 %122
}

declare i32 @atoi(i8*) #1

declare signext i8 @Perl_is_utf8_string(i8*, i64) #1

declare void @Perl_report_uninit() #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_get(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %paren = alloca i32, align 4
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %rx = alloca %struct.regexp*, align 8
  %saveerrno = alloca i32, align 4
  %bits_all = alloca %struct.sv**, align 8
  %bits = alloca %struct.hv*, align 8
  %s1 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %mg209 = alloca %struct.magic*, align 8
  %mgt = alloca %struct.magic*, align 8
  %saveerrno437 = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  store i8* null, i8** %s, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 6
  %1 = load i8*, i8** %mg_ptr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.3
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.21
    i32 8, label %sw.bb.23
    i32 9, label %sw.bb.25
    i32 15, label %sw.bb.30
    i32 16, label %sw.bb.51
    i32 19, label %sw.bb.53
    i32 20, label %sw.bb.79
    i32 21, label %sw.bb.105
    i32 23, label %sw.bb.119
    i32 49, label %sw.bb.162
    i32 50, label %sw.bb.162
    i32 51, label %sw.bb.162
    i32 52, label %sw.bb.162
    i32 53, label %sw.bb.162
    i32 54, label %sw.bb.162
    i32 55, label %sw.bb.162
    i32 56, label %sw.bb.162
    i32 57, label %sw.bb.162
    i32 38, label %sw.bb.162
    i32 43, label %sw.bb.238
    i32 14, label %sw.bb.248
    i32 96, label %sw.bb.258
    i32 39, label %sw.bb.276
    i32 46, label %sw.bb.300
    i32 63, label %sw.bb.321
    i32 94, label %sw.bb.323
    i32 126, label %sw.bb.349
    i32 61, label %sw.bb.376
    i32 45, label %sw.bb.387
    i32 37, label %sw.bb.398
    i32 58, label %sw.bb.409
    i32 47, label %sw.bb.410
    i32 91, label %sw.bb.411
    i32 124, label %sw.bb.413
    i32 44, label %sw.bb.430
    i32 92, label %sw.bb.431
    i32 35, label %sw.bb.435
    i32 33, label %sw.bb.436
    i32 60, label %sw.bb.452
    i32 62, label %sw.bb.454
    i32 40, label %sw.bb.456
    i32 41, label %sw.bb.458
    i32 42, label %sw.bb.470
    i32 48, label %sw.bb.471
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %4 = load %struct.sv*, %struct.sv** @PL_bodytarget, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %3, %struct.sv* %4, i32 2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %6 = load i8, i8* @PL_minus_c, align 1
  %conv2 = sext i8 %6 to i64
  call void @Perl_sv_setiv(%struct.sv* %5, i64 %conv2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %8 = load volatile i32, i32* @PL_debug, align 4
  %and = and i32 %8, 2093055
  %conv4 = zext i32 %and to i64
  call void @Perl_sv_setiv(%struct.sv* %7, i64 %conv4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr6 = getelementptr inbounds %struct.magic, %struct.magic* %9, i32 0, i32 6
  %10 = load i8*, i8** %mg_ptr6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %add.ptr, align 1
  %conv7 = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.5
  %call = call i32* @__errno_location()
  %12 = load i32, i32* %call, align 4
  store i32 %12, i32* %saveerrno, align 4
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call9 = call i32* @__errno_location()
  %14 = load i32, i32* %call9, align 4
  %conv10 = sitofp i32 %14 to double
  call void @Perl_sv_setnv(%struct.sv* %13, double %conv10)
  %15 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call11 = call i32* @__errno_location()
  %16 = load i32, i32* %call11, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call12 = call i32* @__errno_location()
  %17 = load i32, i32* %call12, align 4
  %call13 = call i8* @strerror(i32 %17)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call13, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %cond.false ]
  call void @Perl_sv_setpv(%struct.sv* %15, i8* %cond)
  %18 = load i32, i32* %saveerrno, align 4
  %call14 = call i32* @__errno_location()
  store i32 %18, i32* %call14, align 4
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags, align 4
  %or = or i32 %20, 33685504
  store i32 %or, i32* %sv_flags, align 4
  br label %if.end.20

if.else:                                          ; preds = %sw.bb.5
  %21 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr15 = getelementptr inbounds %struct.magic, %struct.magic* %21, i32 0, i32 6
  %22 = load i8*, i8** %mg_ptr15, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %22, i64 1
  %call17 = call i32 @strcmp(i8* %add.ptr16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %24 = load %struct.sv*, %struct.sv** @PL_encoding, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %23, %struct.sv* %24, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %cond.end
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %26 = load i32, i32* @PL_maxsysfd, align 4
  %conv22 = sext i32 %26 to i64
  call void @Perl_sv_setiv(%struct.sv* %25, i64 %conv22)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %28 = load i32, i32* @PL_hints, align 4
  %conv24 = zext i32 %28 to i64
  call void @Perl_sv_setiv(%struct.sv* %27, i64 %conv24)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %29 = load i8*, i8** @PL_inplace, align 8
  %tobool26 = icmp ne i8* %29, null
  br i1 %tobool26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %sw.bb.25
  %30 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %31 = load i8*, i8** @PL_inplace, align 8
  call void @Perl_sv_setpv(%struct.sv* %30, i8* %31)
  br label %if.end.29

if.else.28:                                       ; preds = %sw.bb.25
  %32 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %32, %struct.sv* @PL_sv_undef, i32 2)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %33 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr31 = getelementptr inbounds %struct.magic, %struct.magic* %33, i32 0, i32 6
  %34 = load i8*, i8** %mg_ptr31, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %add.ptr32, align 1
  %conv33 = sext i8 %35 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.else.40

if.then.36:                                       ; preds = %sw.bb.30
  %36 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %37 = load i8*, i8** @PL_osname, align 8
  call void @Perl_sv_setpv(%struct.sv* %36, i8* %37)
  %38 = load i8, i8* @PL_tainting, align 1
  %tobool37 = icmp ne i8 %38, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.36
  %39 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_untaint(%struct.sv* %39)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.then.36
  br label %if.end.50

if.else.40:                                       ; preds = %sw.bb.30
  %40 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr41 = getelementptr inbounds %struct.magic, %struct.magic* %40, i32 0, i32 6
  %41 = load i8*, i8** %mg_ptr41, align 8
  %call42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.49, label %if.then.44

if.then.44:                                       ; preds = %if.else.40
  %42 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 15), align 8
  %tobool45 = icmp ne %struct.sv* %42, null
  br i1 %tobool45, label %if.else.47, label %if.then.46

if.then.46:                                       ; preds = %if.then.44
  %43 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %43, %struct.sv* @PL_sv_undef, i32 2)
  br label %if.end.48

if.else.47:                                       ; preds = %if.then.44
  %44 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %45 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 15), align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %44, %struct.sv* %45, i32 2)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.else.40
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.39
  br label %sw.epilog

sw.bb.51:                                         ; preds = %entry
  %46 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %47 = load i32, i32* @PL_perldb, align 4
  %conv52 = zext i32 %47 to i64
  call void @Perl_sv_setiv(%struct.sv* %46, i64 %conv52)
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  %48 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr54 = getelementptr inbounds %struct.magic, %struct.magic* %48, i32 0, i32 6
  %49 = load i8*, i8** %mg_ptr54, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %add.ptr55, align 1
  %conv56 = sext i8 %50 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.78

if.then.59:                                       ; preds = %sw.bb.53
  %51 = load i32, i32* @PL_lex_state, align 4
  %cmp60 = icmp ne i32 %51, 11
  br i1 %cmp60, label %if.then.62, label %if.else.70

if.then.62:                                       ; preds = %if.then.59
  %52 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags63 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 2
  %53 = load i32, i32* %sv_flags63, align 4
  %and64 = and i32 %53, 1223753727
  store i32 %and64, i32* %sv_flags63, align 4
  %54 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags65 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 2
  %55 = load i32, i32* %sv_flags65, align 4
  %and66 = and i32 %55, 2097152
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.62
  %56 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call68 = call i32 @Perl_sv_backoff(%struct.sv* %56)
  %tobool69 = icmp ne i32 %call68, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.62
  %57 = phi i1 [ false, %if.then.62 ], [ %tobool69, %land.rhs ]
  %land.ext = zext i1 %57 to i32
  br label %if.end.77

if.else.70:                                       ; preds = %if.then.59
  %58 = load volatile i32, i32* @PL_in_eval, align 4
  %tobool71 = icmp ne i32 %58, 0
  br i1 %tobool71, label %if.then.72, label %if.else.75

if.then.72:                                       ; preds = %if.else.70
  %59 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %60 = load volatile i32, i32* @PL_in_eval, align 4
  %and73 = and i32 %60, -9
  %conv74 = sext i32 %and73 to i64
  call void @Perl_sv_setiv(%struct.sv* %59, i64 %conv74)
  br label %if.end.76

if.else.75:                                       ; preds = %if.else.70
  %61 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setiv(%struct.sv* %61, i64 0)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.72
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.end
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %sw.bb.53
  br label %sw.epilog

sw.bb.79:                                         ; preds = %entry
  %62 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr80 = getelementptr inbounds %struct.magic, %struct.magic* %62, i32 0, i32 6
  %63 = load i8*, i8** %mg_ptr80, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %add.ptr81, align 1
  %conv82 = sext i8 %64 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %sw.bb.79
  %65 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %66 = load i64, i64* @PL_basetime, align 8
  call void @Perl_sv_setiv(%struct.sv* %65, i64 %66)
  br label %if.end.104

if.else.86:                                       ; preds = %sw.bb.79
  %67 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr87 = getelementptr inbounds %struct.magic, %struct.magic* %67, i32 0, i32 6
  %68 = load i8*, i8** %mg_ptr87, align 8
  %call88 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.end.103, label %if.then.90

if.then.90:                                       ; preds = %if.else.86
  %69 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %70 = load i8, i8* @PL_tainting, align 1
  %conv91 = sext i8 %70 to i32
  %tobool92 = icmp ne i32 %conv91, 0
  br i1 %tobool92, label %cond.true.93, label %cond.false.99

cond.true.93:                                     ; preds = %if.then.90
  %71 = load i8, i8* @PL_taint_warn, align 1
  %conv94 = sext i8 %71 to i32
  %tobool95 = icmp ne i32 %conv94, 0
  br i1 %tobool95, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.93
  %72 = load i8, i8* @PL_unsafe, align 1
  %conv96 = sext i8 %72 to i32
  %tobool97 = icmp ne i32 %conv96, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.93
  %73 = phi i1 [ true, %cond.true.93 ], [ %tobool97, %lor.rhs ]
  %cond98 = select i1 %73, i32 -1, i32 1
  br label %cond.end.100

cond.false.99:                                    ; preds = %if.then.90
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %lor.end
  %cond101 = phi i32 [ %cond98, %lor.end ], [ 0, %cond.false.99 ]
  %conv102 = sext i32 %cond101 to i64
  call void @Perl_sv_setiv(%struct.sv* %69, i64 %conv102)
  br label %if.end.103

if.end.103:                                       ; preds = %cond.end.100, %if.else.86
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.85
  br label %sw.epilog

sw.bb.105:                                        ; preds = %entry
  %74 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr106 = getelementptr inbounds %struct.magic, %struct.magic* %74, i32 0, i32 6
  %75 = load i8*, i8** %mg_ptr106, align 8
  %call107 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.else.111, label %if.then.109

if.then.109:                                      ; preds = %sw.bb.105
  %76 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %77 = load i32, i32* @PL_unicode, align 4
  %conv110 = zext i32 %77 to i64
  call void @Perl_sv_setuv(%struct.sv* %76, i64 %conv110)
  br label %if.end.118

if.else.111:                                      ; preds = %sw.bb.105
  %78 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr112 = getelementptr inbounds %struct.magic, %struct.magic* %78, i32 0, i32 6
  %79 = load i8*, i8** %mg_ptr112, align 8
  %call113 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.end.117, label %if.then.115

if.then.115:                                      ; preds = %if.else.111
  %80 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %81 = load i8, i8* @PL_utf8locale, align 1
  %conv116 = sext i8 %81 to i64
  call void @Perl_sv_setuv(%struct.sv* %80, i64 %conv116)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.else.111
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.109
  br label %sw.epilog

sw.bb.119:                                        ; preds = %entry
  %82 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr120 = getelementptr inbounds %struct.magic, %struct.magic* %82, i32 0, i32 6
  %83 = load i8*, i8** %mg_ptr120, align 8
  %add.ptr121 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %add.ptr121, align 1
  %conv122 = sext i8 %84 to i32
  %cmp123 = icmp eq i32 %conv122, 0
  br i1 %cmp123, label %if.then.125, label %if.else.131

if.then.125:                                      ; preds = %sw.bb.119
  %85 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %86 = load i8, i8* @PL_dowarn, align 1
  %conv126 = zext i8 %86 to i32
  %and127 = and i32 %conv126, 1
  %tobool128 = icmp ne i32 %and127, 0
  %cond129 = select i1 %tobool128, i32 1, i32 0
  %conv130 = sext i32 %cond129 to i64
  call void @Perl_sv_setiv(%struct.sv* %85, i64 %conv130)
  br label %if.end.161

if.else.131:                                      ; preds = %sw.bb.119
  %87 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr132 = getelementptr inbounds %struct.magic, %struct.magic* %87, i32 0, i32 6
  %88 = load i8*, i8** %mg_ptr132, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %88, i64 1
  %call134 = call i32 @strcmp(i8* %add.ptr133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.end.160, label %if.then.136

if.then.136:                                      ; preds = %if.else.131
  %89 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp137 = icmp eq %struct.sv* %89, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp137, label %if.then.141, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.136
  %90 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp139 = icmp eq %struct.sv* %90, null
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %lor.lhs.false, %if.then.136
  %91 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i64 12)
  br label %if.end.155

if.else.142:                                      ; preds = %lor.lhs.false
  %92 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp143 = icmp eq %struct.sv* %92, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp143, label %if.then.145, label %if.else.153

if.then.145:                                      ; preds = %if.else.142
  %call146 = call %struct.hv* @Perl_get_hv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0)
  store %struct.hv* %call146, %struct.hv** %bits, align 8
  %93 = load %struct.hv*, %struct.hv** %bits, align 8
  %tobool147 = icmp ne %struct.hv* %93, null
  br i1 %tobool147, label %land.lhs.true, label %if.else.151

land.lhs.true:                                    ; preds = %if.then.145
  %94 = load %struct.hv*, %struct.hv** %bits, align 8
  %call148 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 0)
  store %struct.sv** %call148, %struct.sv*** %bits_all, align 8
  %tobool149 = icmp ne %struct.sv** %call148, null
  br i1 %tobool149, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %land.lhs.true
  %95 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %96 = load %struct.sv**, %struct.sv*** %bits_all, align 8
  %97 = load %struct.sv*, %struct.sv** %96, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %95, %struct.sv* %97, i32 2)
  br label %if.end.152

if.else.151:                                      ; preds = %land.lhs.true, %if.then.145
  %98 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i64 12)
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.151, %if.then.150
  br label %if.end.154

if.else.153:                                      ; preds = %if.else.142
  %99 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %100 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %99, %struct.sv* %100, i32 2)
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.153, %if.end.152
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.141
  %101 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags156 = getelementptr inbounds %struct.sv, %struct.sv* %101, i32 0, i32 2
  %102 = load i32, i32* %sv_flags156, align 4
  %and157 = and i32 %102, 1223753727
  store i32 %and157, i32* %sv_flags156, align 4
  %103 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags158 = getelementptr inbounds %struct.sv, %struct.sv* %103, i32 0, i32 2
  %104 = load i32, i32* %sv_flags158, align 4
  %or159 = or i32 %104, 67371008
  store i32 %or159, i32* %sv_flags158, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.155, %if.else.131
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.125
  br label %sw.epilog

sw.bb.162:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %105 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool163 = icmp ne %struct.pmop* %105, null
  br i1 %tobool163, label %land.lhs.true.164, label %if.end.237

land.lhs.true.164:                                ; preds = %sw.bb.162
  %106 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp = getelementptr inbounds %struct.pmop, %struct.pmop* %106, i32 0, i32 13
  %107 = load %struct.regexp*, %struct.regexp** %op_pmregexp, align 8
  store %struct.regexp* %107, %struct.regexp** %rx, align 8
  %tobool165 = icmp ne %struct.regexp* %107, null
  br i1 %tobool165, label %if.then.166, label %if.end.237

if.then.166:                                      ; preds = %land.lhs.true.164
  %108 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr167 = getelementptr inbounds %struct.magic, %struct.magic* %108, i32 0, i32 6
  %109 = load i8*, i8** %mg_ptr167, align 8
  %call168 = call i32 @atoi(i8* %109)
  store i32 %call168, i32* %paren, align 4
  br label %getparen

getparen:                                         ; preds = %if.then.255, %if.then.245, %if.then.166
  %110 = load i32, i32* %paren, align 4
  %111 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %nparens = getelementptr inbounds %struct.regexp, %struct.regexp* %111, i32 0, i32 12
  %112 = load i32, i32* %nparens, align 4
  %cmp169 = icmp sle i32 %110, %112
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.236

land.lhs.true.171:                                ; preds = %getparen
  %113 = load i32, i32* %paren, align 4
  %idxprom = sext i32 %113 to i64
  %114 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %startp = getelementptr inbounds %struct.regexp, %struct.regexp* %114, i32 0, i32 0
  %115 = load i32*, i32** %startp, align 8
  %arrayidx = getelementptr inbounds i32, i32* %115, i64 %idxprom
  %116 = load i32, i32* %arrayidx, align 4
  store i32 %116, i32* %s1, align 4
  %cmp172 = icmp ne i32 %116, -1
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.236

land.lhs.true.174:                                ; preds = %land.lhs.true.171
  %117 = load i32, i32* %paren, align 4
  %idxprom175 = sext i32 %117 to i64
  %118 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %endp = getelementptr inbounds %struct.regexp, %struct.regexp* %118, i32 0, i32 1
  %119 = load i32*, i32** %endp, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %119, i64 %idxprom175
  %120 = load i32, i32* %arrayidx176, align 4
  store i32 %120, i32* %t1, align 4
  %cmp177 = icmp ne i32 %120, -1
  br i1 %cmp177, label %if.then.179, label %if.end.236

if.then.179:                                      ; preds = %land.lhs.true.174
  %121 = load i32, i32* %t1, align 4
  %122 = load i32, i32* %s1, align 4
  %sub = sub nsw i32 %121, %122
  store i32 %sub, i32* %i, align 4
  %123 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %subbeg = getelementptr inbounds %struct.regexp, %struct.regexp* %123, i32 0, i32 6
  %124 = load i8*, i8** %subbeg, align 8
  %125 = load i32, i32* %s1, align 4
  %idx.ext = sext i32 %125 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %124, i64 %idx.ext
  store i8* %add.ptr180, i8** %s, align 8
  %126 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %subbeg181 = getelementptr inbounds %struct.regexp, %struct.regexp* %126, i32 0, i32 6
  %127 = load i8*, i8** %subbeg181, align 8
  %tobool182 = icmp ne i8* %127, null
  br i1 %tobool182, label %if.end.184, label %if.then.183

if.then.183:                                      ; preds = %if.then.179
  br label %sw.epilog

if.end.184:                                       ; preds = %if.then.179
  br label %getrx

getrx:                                            ; preds = %if.then.289, %if.then.271, %if.end.184
  %128 = load i32, i32* %i, align 4
  %cmp185 = icmp sge i32 %128, 0
  br i1 %cmp185, label %if.then.187, label %if.end.235

if.then.187:                                      ; preds = %getrx
  %129 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %130 = load i8*, i8** %s, align 8
  %131 = load i32, i32* %i, align 4
  %conv188 = sext i32 %131 to i64
  call void @Perl_sv_setpvn(%struct.sv* %129, i8* %130, i64 %conv188)
  %132 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %reganch = getelementptr inbounds %struct.regexp, %struct.regexp* %132, i32 0, i32 15
  %133 = load i32, i32* %reganch, align 4
  %and189 = and i32 %133, 268435456
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %land.lhs.true.191, label %if.else.199

land.lhs.true.191:                                ; preds = %if.then.187
  %134 = load i8*, i8** %s, align 8
  %135 = load i32, i32* %i, align 4
  %conv192 = sext i32 %135 to i64
  %call193 = call signext i8 @Perl_is_utf8_string(i8* %134, i64 %conv192)
  %conv194 = sext i8 %call193 to i32
  %tobool195 = icmp ne i32 %conv194, 0
  br i1 %tobool195, label %if.then.196, label %if.else.199

if.then.196:                                      ; preds = %land.lhs.true.191
  %136 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags197 = getelementptr inbounds %struct.sv, %struct.sv* %136, i32 0, i32 2
  %137 = load i32, i32* %sv_flags197, align 4
  %or198 = or i32 %137, 536870912
  store i32 %or198, i32* %sv_flags197, align 4
  br label %if.end.202

if.else.199:                                      ; preds = %land.lhs.true.191, %if.then.187
  %138 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags200 = getelementptr inbounds %struct.sv, %struct.sv* %138, i32 0, i32 2
  %139 = load i32, i32* %sv_flags200, align 4
  %and201 = and i32 %139, -536870913
  store i32 %and201, i32* %sv_flags200, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.196
  %140 = load i8, i8* @PL_tainting, align 1
  %tobool203 = icmp ne i8 %140, 0
  br i1 %tobool203, label %if.then.204, label %if.end.234

if.then.204:                                      ; preds = %if.end.202
  %141 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %reganch205 = getelementptr inbounds %struct.regexp, %struct.regexp* %141, i32 0, i32 15
  %142 = load i32, i32* %reganch205, align 4
  %and206 = and i32 %142, 524288
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %if.then.208, label %if.else.229

if.then.208:                                      ; preds = %if.then.204
  %143 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %143, i32 0, i32 0
  %144 = load i8*, i8** %sv_any, align 8
  %145 = bitcast i8* %144 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %145, i32 0, i32 5
  %146 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %146, %struct.magic** %mg209, align 8
  store i8 1, i8* @PL_tainted, align 1
  %147 = load %struct.magic*, %struct.magic** %mg209, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %147, i32 0, i32 0
  %148 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  %149 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any210 = getelementptr inbounds %struct.sv, %struct.sv* %149, i32 0, i32 0
  %150 = load i8*, i8** %sv_any210, align 8
  %151 = bitcast i8* %150 to %struct.xpvmg*
  %xmg_magic211 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %151, i32 0, i32 5
  store %struct.magic* %148, %struct.magic** %xmg_magic211, align 8
  %152 = load i8, i8* @PL_tainting, align 1
  %tobool212 = icmp ne i8 %152, 0
  br i1 %tobool212, label %if.then.213, label %if.end.220

if.then.213:                                      ; preds = %if.then.208
  %153 = load i8, i8* @PL_tainted, align 1
  %tobool214 = icmp ne i8 %153, 0
  br i1 %tobool214, label %if.then.215, label %if.end.219

if.then.215:                                      ; preds = %if.then.213
  %154 = load i8, i8* @PL_tainting, align 1
  %tobool216 = icmp ne i8 %154, 0
  br i1 %tobool216, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.then.215
  %155 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_taint(%struct.sv* %155)
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.217, %if.then.215
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.213
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.208
  %156 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any221 = getelementptr inbounds %struct.sv, %struct.sv* %156, i32 0, i32 0
  %157 = load i8*, i8** %sv_any221, align 8
  %158 = bitcast i8* %157 to %struct.xpvmg*
  %xmg_magic222 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %158, i32 0, i32 5
  %159 = load %struct.magic*, %struct.magic** %xmg_magic222, align 8
  store %struct.magic* %159, %struct.magic** %mgt, align 8
  %tobool223 = icmp ne %struct.magic* %159, null
  br i1 %tobool223, label %if.then.224, label %if.end.228

if.then.224:                                      ; preds = %if.end.220
  %160 = load %struct.magic*, %struct.magic** %mgt, align 8
  %161 = load %struct.magic*, %struct.magic** %mg209, align 8
  %mg_moremagic225 = getelementptr inbounds %struct.magic, %struct.magic* %161, i32 0, i32 0
  store %struct.magic* %160, %struct.magic** %mg_moremagic225, align 8
  %162 = load %struct.magic*, %struct.magic** %mg209, align 8
  %163 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any226 = getelementptr inbounds %struct.sv, %struct.sv* %163, i32 0, i32 0
  %164 = load i8*, i8** %sv_any226, align 8
  %165 = bitcast i8* %164 to %struct.xpvmg*
  %xmg_magic227 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %165, i32 0, i32 5
  store %struct.magic* %162, %struct.magic** %xmg_magic227, align 8
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.224, %if.end.220
  br label %if.end.233

if.else.229:                                      ; preds = %if.then.204
  %166 = load i8, i8* @PL_tainting, align 1
  %tobool230 = icmp ne i8 %166, 0
  br i1 %tobool230, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.else.229
  %167 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_untaint(%struct.sv* %167)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %if.else.229
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.end.228
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.end.202
  br label %sw.epilog

if.end.235:                                       ; preds = %getrx
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %land.lhs.true.174, %land.lhs.true.171, %getparen
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %land.lhs.true.164, %sw.bb.162
  %168 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %168, %struct.sv* @PL_sv_undef, i32 2)
  br label %sw.epilog

sw.bb.238:                                        ; preds = %entry
  %169 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool239 = icmp ne %struct.pmop* %169, null
  br i1 %tobool239, label %land.lhs.true.240, label %if.end.247

land.lhs.true.240:                                ; preds = %sw.bb.238
  %170 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp241 = getelementptr inbounds %struct.pmop, %struct.pmop* %170, i32 0, i32 13
  %171 = load %struct.regexp*, %struct.regexp** %op_pmregexp241, align 8
  store %struct.regexp* %171, %struct.regexp** %rx, align 8
  %tobool242 = icmp ne %struct.regexp* %171, null
  br i1 %tobool242, label %if.then.243, label %if.end.247

if.then.243:                                      ; preds = %land.lhs.true.240
  %172 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %lastparen = getelementptr inbounds %struct.regexp, %struct.regexp* %172, i32 0, i32 13
  %173 = load i32, i32* %lastparen, align 4
  store i32 %173, i32* %paren, align 4
  %174 = load i32, i32* %paren, align 4
  %tobool244 = icmp ne i32 %174, 0
  br i1 %tobool244, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.then.243
  br label %getparen

if.end.246:                                       ; preds = %if.then.243
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %land.lhs.true.240, %sw.bb.238
  %175 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %175, %struct.sv* @PL_sv_undef, i32 2)
  br label %sw.epilog

sw.bb.248:                                        ; preds = %entry
  %176 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool249 = icmp ne %struct.pmop* %176, null
  br i1 %tobool249, label %land.lhs.true.250, label %if.end.257

land.lhs.true.250:                                ; preds = %sw.bb.248
  %177 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp251 = getelementptr inbounds %struct.pmop, %struct.pmop* %177, i32 0, i32 13
  %178 = load %struct.regexp*, %struct.regexp** %op_pmregexp251, align 8
  store %struct.regexp* %178, %struct.regexp** %rx, align 8
  %tobool252 = icmp ne %struct.regexp* %178, null
  br i1 %tobool252, label %if.then.253, label %if.end.257

if.then.253:                                      ; preds = %land.lhs.true.250
  %179 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %lastcloseparen = getelementptr inbounds %struct.regexp, %struct.regexp* %179, i32 0, i32 14
  %180 = load i32, i32* %lastcloseparen, align 4
  store i32 %180, i32* %paren, align 4
  %181 = load i32, i32* %paren, align 4
  %tobool254 = icmp ne i32 %181, 0
  br i1 %tobool254, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.then.253
  br label %getparen

if.end.256:                                       ; preds = %if.then.253
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %land.lhs.true.250, %sw.bb.248
  %182 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %182, %struct.sv* @PL_sv_undef, i32 2)
  br label %sw.epilog

sw.bb.258:                                        ; preds = %entry
  %183 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool259 = icmp ne %struct.pmop* %183, null
  br i1 %tobool259, label %land.lhs.true.260, label %if.end.275

land.lhs.true.260:                                ; preds = %sw.bb.258
  %184 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp261 = getelementptr inbounds %struct.pmop, %struct.pmop* %184, i32 0, i32 13
  %185 = load %struct.regexp*, %struct.regexp** %op_pmregexp261, align 8
  store %struct.regexp* %185, %struct.regexp** %rx, align 8
  %tobool262 = icmp ne %struct.regexp* %185, null
  br i1 %tobool262, label %if.then.263, label %if.end.275

if.then.263:                                      ; preds = %land.lhs.true.260
  %186 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %subbeg264 = getelementptr inbounds %struct.regexp, %struct.regexp* %186, i32 0, i32 6
  %187 = load i8*, i8** %subbeg264, align 8
  store i8* %187, i8** %s, align 8
  %tobool265 = icmp ne i8* %187, null
  br i1 %tobool265, label %land.lhs.true.266, label %if.end.274

land.lhs.true.266:                                ; preds = %if.then.263
  %188 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %startp267 = getelementptr inbounds %struct.regexp, %struct.regexp* %188, i32 0, i32 0
  %189 = load i32*, i32** %startp267, align 8
  %arrayidx268 = getelementptr inbounds i32, i32* %189, i64 0
  %190 = load i32, i32* %arrayidx268, align 4
  %cmp269 = icmp ne i32 %190, -1
  br i1 %cmp269, label %if.then.271, label %if.end.274

if.then.271:                                      ; preds = %land.lhs.true.266
  %191 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %startp272 = getelementptr inbounds %struct.regexp, %struct.regexp* %191, i32 0, i32 0
  %192 = load i32*, i32** %startp272, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %192, i64 0
  %193 = load i32, i32* %arrayidx273, align 4
  store i32 %193, i32* %i, align 4
  br label %getrx

if.end.274:                                       ; preds = %land.lhs.true.266, %if.then.263
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %land.lhs.true.260, %sw.bb.258
  %194 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %194, %struct.sv* @PL_sv_undef, i32 2)
  br label %sw.epilog

sw.bb.276:                                        ; preds = %entry
  %195 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %tobool277 = icmp ne %struct.pmop* %195, null
  br i1 %tobool277, label %land.lhs.true.278, label %if.end.299

land.lhs.true.278:                                ; preds = %sw.bb.276
  %196 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %op_pmregexp279 = getelementptr inbounds %struct.pmop, %struct.pmop* %196, i32 0, i32 13
  %197 = load %struct.regexp*, %struct.regexp** %op_pmregexp279, align 8
  store %struct.regexp* %197, %struct.regexp** %rx, align 8
  %tobool280 = icmp ne %struct.regexp* %197, null
  br i1 %tobool280, label %if.then.281, label %if.end.299

if.then.281:                                      ; preds = %land.lhs.true.278
  %198 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %subbeg282 = getelementptr inbounds %struct.regexp, %struct.regexp* %198, i32 0, i32 6
  %199 = load i8*, i8** %subbeg282, align 8
  %tobool283 = icmp ne i8* %199, null
  br i1 %tobool283, label %land.lhs.true.284, label %if.end.298

land.lhs.true.284:                                ; preds = %if.then.281
  %200 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %endp285 = getelementptr inbounds %struct.regexp, %struct.regexp* %200, i32 0, i32 1
  %201 = load i32*, i32** %endp285, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %201, i64 0
  %202 = load i32, i32* %arrayidx286, align 4
  %cmp287 = icmp ne i32 %202, -1
  br i1 %cmp287, label %if.then.289, label %if.end.298

if.then.289:                                      ; preds = %land.lhs.true.284
  %203 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %subbeg290 = getelementptr inbounds %struct.regexp, %struct.regexp* %203, i32 0, i32 6
  %204 = load i8*, i8** %subbeg290, align 8
  %205 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %endp291 = getelementptr inbounds %struct.regexp, %struct.regexp* %205, i32 0, i32 1
  %206 = load i32*, i32** %endp291, align 8
  %arrayidx292 = getelementptr inbounds i32, i32* %206, i64 0
  %207 = load i32, i32* %arrayidx292, align 4
  %idx.ext293 = sext i32 %207 to i64
  %add.ptr294 = getelementptr inbounds i8, i8* %204, i64 %idx.ext293
  store i8* %add.ptr294, i8** %s, align 8
  %208 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %sublen = getelementptr inbounds %struct.regexp, %struct.regexp* %208, i32 0, i32 8
  %209 = load i32, i32* %sublen, align 4
  %210 = load %struct.regexp*, %struct.regexp** %rx, align 8
  %endp295 = getelementptr inbounds %struct.regexp, %struct.regexp* %210, i32 0, i32 1
  %211 = load i32*, i32** %endp295, align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %211, i64 0
  %212 = load i32, i32* %arrayidx296, align 4
  %sub297 = sub nsw i32 %209, %212
  store i32 %sub297, i32* %i, align 4
  br label %getrx

if.end.298:                                       ; preds = %land.lhs.true.284, %if.then.281
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %land.lhs.true.278, %sw.bb.276
  %213 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %213, %struct.sv* @PL_sv_undef, i32 2)
  br label %sw.epilog

sw.bb.300:                                        ; preds = %entry
  %214 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %tobool301 = icmp ne %struct.gv* %214, null
  br i1 %tobool301, label %land.lhs.true.302, label %cond.false.314

land.lhs.true.302:                                ; preds = %sw.bb.300
  %215 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %216 = bitcast %struct.gv* %215 to %struct.sv*
  %sv_flags303 = getelementptr inbounds %struct.sv, %struct.sv* %216, i32 0, i32 2
  %217 = load i32, i32* %sv_flags303, align 4
  %and304 = and i32 %217, 255
  %cmp305 = icmp eq i32 %and304, 13
  br i1 %cmp305, label %land.lhs.true.307, label %cond.false.314

land.lhs.true.307:                                ; preds = %land.lhs.true.302
  %218 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any308 = getelementptr inbounds %struct.gv, %struct.gv* %218, i32 0, i32 0
  %219 = load %struct.xpvgv*, %struct.xpvgv** %sv_any308, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %219, i32 0, i32 7
  %220 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool309 = icmp ne %struct.gp* %220, null
  br i1 %tobool309, label %cond.true.310, label %cond.false.314

cond.true.310:                                    ; preds = %land.lhs.true.307
  %221 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any311 = getelementptr inbounds %struct.gv, %struct.gv* %221, i32 0, i32 0
  %222 = load %struct.xpvgv*, %struct.xpvgv** %sv_any311, align 8
  %xgv_gp312 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %222, i32 0, i32 7
  %223 = load %struct.gp*, %struct.gp** %xgv_gp312, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %223, i32 0, i32 2
  %224 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool313 = icmp ne %struct.io* %224, null
  br i1 %tobool313, label %if.then.315, label %if.end.320

cond.false.314:                                   ; preds = %land.lhs.true.307, %land.lhs.true.302, %sw.bb.300
  br i1 false, label %if.then.315, label %if.end.320

if.then.315:                                      ; preds = %cond.false.314, %cond.true.310
  %225 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %226 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any316 = getelementptr inbounds %struct.gv, %struct.gv* %226, i32 0, i32 0
  %227 = load %struct.xpvgv*, %struct.xpvgv** %sv_any316, align 8
  %xgv_gp317 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %227, i32 0, i32 7
  %228 = load %struct.gp*, %struct.gp** %xgv_gp317, align 8
  %gp_io318 = getelementptr inbounds %struct.gp, %struct.gp* %228, i32 0, i32 2
  %229 = load %struct.io*, %struct.io** %gp_io318, align 8
  %sv_any319 = getelementptr inbounds %struct.io, %struct.io* %229, i32 0, i32 0
  %230 = load %struct.xpvio*, %struct.xpvio** %sv_any319, align 8
  %xio_lines = getelementptr inbounds %struct.xpvio, %struct.xpvio* %230, i32 0, i32 10
  %231 = load i64, i64* %xio_lines, align 8
  call void @Perl_sv_setiv(%struct.sv* %225, i64 %231)
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.315, %cond.false.314, %cond.true.310
  br label %sw.epilog

sw.bb.321:                                        ; preds = %entry
  %232 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %233 = load i32, i32* @PL_statusvalue, align 4
  %conv322 = sext i32 %233 to i64
  call void @Perl_sv_setiv(%struct.sv* %232, i64 %conv322)
  br label %sw.epilog

sw.bb.323:                                        ; preds = %entry
  %234 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any324 = getelementptr inbounds %struct.gv, %struct.gv* %234, i32 0, i32 0
  %235 = load %struct.xpvgv*, %struct.xpvgv** %sv_any324, align 8
  %xgv_gp325 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %235, i32 0, i32 7
  %236 = load %struct.gp*, %struct.gp** %xgv_gp325, align 8
  %gp_io326 = getelementptr inbounds %struct.gp, %struct.gp* %236, i32 0, i32 2
  %237 = load %struct.io*, %struct.io** %gp_io326, align 8
  %tobool327 = icmp ne %struct.io* %237, null
  br i1 %tobool327, label %if.then.328, label %if.end.333

if.then.328:                                      ; preds = %sw.bb.323
  %238 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any329 = getelementptr inbounds %struct.gv, %struct.gv* %238, i32 0, i32 0
  %239 = load %struct.xpvgv*, %struct.xpvgv** %sv_any329, align 8
  %xgv_gp330 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %239, i32 0, i32 7
  %240 = load %struct.gp*, %struct.gp** %xgv_gp330, align 8
  %gp_io331 = getelementptr inbounds %struct.gp, %struct.gp* %240, i32 0, i32 2
  %241 = load %struct.io*, %struct.io** %gp_io331, align 8
  %sv_any332 = getelementptr inbounds %struct.io, %struct.io* %241, i32 0, i32 0
  %242 = load %struct.xpvio*, %struct.xpvio** %sv_any332, align 8
  %xio_top_name = getelementptr inbounds %struct.xpvio, %struct.xpvio* %242, i32 0, i32 14
  %243 = load i8*, i8** %xio_top_name, align 8
  store i8* %243, i8** %s, align 8
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.328, %sw.bb.323
  %244 = load i8*, i8** %s, align 8
  %tobool334 = icmp ne i8* %244, null
  br i1 %tobool334, label %if.then.335, label %if.else.336

if.then.335:                                      ; preds = %if.end.333
  %245 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %246 = load i8*, i8** %s, align 8
  call void @Perl_sv_setpv(%struct.sv* %245, i8* %246)
  br label %if.end.348

if.else.336:                                      ; preds = %if.end.333
  %247 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %248 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any337 = getelementptr inbounds %struct.gv, %struct.gv* %248, i32 0, i32 0
  %249 = load %struct.xpvgv*, %struct.xpvgv** %sv_any337, align 8
  %xgv_gp338 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %249, i32 0, i32 7
  %250 = load %struct.gp*, %struct.gp** %xgv_gp338, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %250, i32 0, i32 6
  %251 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  %tobool339 = icmp ne %struct.gv* %251, null
  br i1 %tobool339, label %cond.true.340, label %cond.false.344

cond.true.340:                                    ; preds = %if.else.336
  %252 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any341 = getelementptr inbounds %struct.gv, %struct.gv* %252, i32 0, i32 0
  %253 = load %struct.xpvgv*, %struct.xpvgv** %sv_any341, align 8
  %xgv_gp342 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %253, i32 0, i32 7
  %254 = load %struct.gp*, %struct.gp** %xgv_gp342, align 8
  %gp_egv343 = getelementptr inbounds %struct.gp, %struct.gp* %254, i32 0, i32 6
  %255 = load %struct.gv*, %struct.gv** %gp_egv343, align 8
  br label %cond.end.345

cond.false.344:                                   ; preds = %if.else.336
  %256 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  br label %cond.end.345

cond.end.345:                                     ; preds = %cond.false.344, %cond.true.340
  %cond346 = phi %struct.gv* [ %255, %cond.true.340 ], [ %256, %cond.false.344 ]
  %sv_any347 = getelementptr inbounds %struct.gv, %struct.gv* %cond346, i32 0, i32 0
  %257 = load %struct.xpvgv*, %struct.xpvgv** %sv_any347, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %257, i32 0, i32 8
  %258 = load i8*, i8** %xgv_name, align 8
  call void @Perl_sv_setpv(%struct.sv* %247, i8* %258)
  %259 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_catpv(%struct.sv* %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.348

if.end.348:                                       ; preds = %cond.end.345, %if.then.335
  br label %sw.epilog

sw.bb.349:                                        ; preds = %entry
  %260 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any350 = getelementptr inbounds %struct.gv, %struct.gv* %260, i32 0, i32 0
  %261 = load %struct.xpvgv*, %struct.xpvgv** %sv_any350, align 8
  %xgv_gp351 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %261, i32 0, i32 7
  %262 = load %struct.gp*, %struct.gp** %xgv_gp351, align 8
  %gp_io352 = getelementptr inbounds %struct.gp, %struct.gp* %262, i32 0, i32 2
  %263 = load %struct.io*, %struct.io** %gp_io352, align 8
  %tobool353 = icmp ne %struct.io* %263, null
  br i1 %tobool353, label %if.then.354, label %if.end.359

if.then.354:                                      ; preds = %sw.bb.349
  %264 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any355 = getelementptr inbounds %struct.gv, %struct.gv* %264, i32 0, i32 0
  %265 = load %struct.xpvgv*, %struct.xpvgv** %sv_any355, align 8
  %xgv_gp356 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %265, i32 0, i32 7
  %266 = load %struct.gp*, %struct.gp** %xgv_gp356, align 8
  %gp_io357 = getelementptr inbounds %struct.gp, %struct.gp* %266, i32 0, i32 2
  %267 = load %struct.io*, %struct.io** %gp_io357, align 8
  %sv_any358 = getelementptr inbounds %struct.io, %struct.io* %267, i32 0, i32 0
  %268 = load %struct.xpvio*, %struct.xpvio** %sv_any358, align 8
  %xio_fmt_name = getelementptr inbounds %struct.xpvio, %struct.xpvio* %268, i32 0, i32 16
  %269 = load i8*, i8** %xio_fmt_name, align 8
  store i8* %269, i8** %s, align 8
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.354, %sw.bb.349
  %270 = load i8*, i8** %s, align 8
  %tobool360 = icmp ne i8* %270, null
  br i1 %tobool360, label %if.end.375, label %if.then.361

if.then.361:                                      ; preds = %if.end.359
  %271 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any362 = getelementptr inbounds %struct.gv, %struct.gv* %271, i32 0, i32 0
  %272 = load %struct.xpvgv*, %struct.xpvgv** %sv_any362, align 8
  %xgv_gp363 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %272, i32 0, i32 7
  %273 = load %struct.gp*, %struct.gp** %xgv_gp363, align 8
  %gp_egv364 = getelementptr inbounds %struct.gp, %struct.gp* %273, i32 0, i32 6
  %274 = load %struct.gv*, %struct.gv** %gp_egv364, align 8
  %tobool365 = icmp ne %struct.gv* %274, null
  br i1 %tobool365, label %cond.true.366, label %cond.false.370

cond.true.366:                                    ; preds = %if.then.361
  %275 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any367 = getelementptr inbounds %struct.gv, %struct.gv* %275, i32 0, i32 0
  %276 = load %struct.xpvgv*, %struct.xpvgv** %sv_any367, align 8
  %xgv_gp368 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %276, i32 0, i32 7
  %277 = load %struct.gp*, %struct.gp** %xgv_gp368, align 8
  %gp_egv369 = getelementptr inbounds %struct.gp, %struct.gp* %277, i32 0, i32 6
  %278 = load %struct.gv*, %struct.gv** %gp_egv369, align 8
  br label %cond.end.371

cond.false.370:                                   ; preds = %if.then.361
  %279 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  br label %cond.end.371

cond.end.371:                                     ; preds = %cond.false.370, %cond.true.366
  %cond372 = phi %struct.gv* [ %278, %cond.true.366 ], [ %279, %cond.false.370 ]
  %sv_any373 = getelementptr inbounds %struct.gv, %struct.gv* %cond372, i32 0, i32 0
  %280 = load %struct.xpvgv*, %struct.xpvgv** %sv_any373, align 8
  %xgv_name374 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %280, i32 0, i32 8
  %281 = load i8*, i8** %xgv_name374, align 8
  store i8* %281, i8** %s, align 8
  br label %if.end.375

if.end.375:                                       ; preds = %cond.end.371, %if.end.359
  %282 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %283 = load i8*, i8** %s, align 8
  call void @Perl_sv_setpv(%struct.sv* %282, i8* %283)
  br label %sw.epilog

sw.bb.376:                                        ; preds = %entry
  %284 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any377 = getelementptr inbounds %struct.gv, %struct.gv* %284, i32 0, i32 0
  %285 = load %struct.xpvgv*, %struct.xpvgv** %sv_any377, align 8
  %xgv_gp378 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %285, i32 0, i32 7
  %286 = load %struct.gp*, %struct.gp** %xgv_gp378, align 8
  %gp_io379 = getelementptr inbounds %struct.gp, %struct.gp* %286, i32 0, i32 2
  %287 = load %struct.io*, %struct.io** %gp_io379, align 8
  %tobool380 = icmp ne %struct.io* %287, null
  br i1 %tobool380, label %if.then.381, label %if.end.386

if.then.381:                                      ; preds = %sw.bb.376
  %288 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %289 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any382 = getelementptr inbounds %struct.gv, %struct.gv* %289, i32 0, i32 0
  %290 = load %struct.xpvgv*, %struct.xpvgv** %sv_any382, align 8
  %xgv_gp383 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %290, i32 0, i32 7
  %291 = load %struct.gp*, %struct.gp** %xgv_gp383, align 8
  %gp_io384 = getelementptr inbounds %struct.gp, %struct.gp* %291, i32 0, i32 2
  %292 = load %struct.io*, %struct.io** %gp_io384, align 8
  %sv_any385 = getelementptr inbounds %struct.io, %struct.io* %292, i32 0, i32 0
  %293 = load %struct.xpvio*, %struct.xpvio** %sv_any385, align 8
  %xio_page_len = getelementptr inbounds %struct.xpvio, %struct.xpvio* %293, i32 0, i32 12
  %294 = load i64, i64* %xio_page_len, align 8
  call void @Perl_sv_setiv(%struct.sv* %288, i64 %294)
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.381, %sw.bb.376
  br label %sw.epilog

sw.bb.387:                                        ; preds = %entry
  %295 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any388 = getelementptr inbounds %struct.gv, %struct.gv* %295, i32 0, i32 0
  %296 = load %struct.xpvgv*, %struct.xpvgv** %sv_any388, align 8
  %xgv_gp389 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %296, i32 0, i32 7
  %297 = load %struct.gp*, %struct.gp** %xgv_gp389, align 8
  %gp_io390 = getelementptr inbounds %struct.gp, %struct.gp* %297, i32 0, i32 2
  %298 = load %struct.io*, %struct.io** %gp_io390, align 8
  %tobool391 = icmp ne %struct.io* %298, null
  br i1 %tobool391, label %if.then.392, label %if.end.397

if.then.392:                                      ; preds = %sw.bb.387
  %299 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %300 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any393 = getelementptr inbounds %struct.gv, %struct.gv* %300, i32 0, i32 0
  %301 = load %struct.xpvgv*, %struct.xpvgv** %sv_any393, align 8
  %xgv_gp394 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %301, i32 0, i32 7
  %302 = load %struct.gp*, %struct.gp** %xgv_gp394, align 8
  %gp_io395 = getelementptr inbounds %struct.gp, %struct.gp* %302, i32 0, i32 2
  %303 = load %struct.io*, %struct.io** %gp_io395, align 8
  %sv_any396 = getelementptr inbounds %struct.io, %struct.io* %303, i32 0, i32 0
  %304 = load %struct.xpvio*, %struct.xpvio** %sv_any396, align 8
  %xio_lines_left = getelementptr inbounds %struct.xpvio, %struct.xpvio* %304, i32 0, i32 13
  %305 = load i64, i64* %xio_lines_left, align 8
  call void @Perl_sv_setiv(%struct.sv* %299, i64 %305)
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.392, %sw.bb.387
  br label %sw.epilog

sw.bb.398:                                        ; preds = %entry
  %306 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any399 = getelementptr inbounds %struct.gv, %struct.gv* %306, i32 0, i32 0
  %307 = load %struct.xpvgv*, %struct.xpvgv** %sv_any399, align 8
  %xgv_gp400 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %307, i32 0, i32 7
  %308 = load %struct.gp*, %struct.gp** %xgv_gp400, align 8
  %gp_io401 = getelementptr inbounds %struct.gp, %struct.gp* %308, i32 0, i32 2
  %309 = load %struct.io*, %struct.io** %gp_io401, align 8
  %tobool402 = icmp ne %struct.io* %309, null
  br i1 %tobool402, label %if.then.403, label %if.end.408

if.then.403:                                      ; preds = %sw.bb.398
  %310 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %311 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any404 = getelementptr inbounds %struct.gv, %struct.gv* %311, i32 0, i32 0
  %312 = load %struct.xpvgv*, %struct.xpvgv** %sv_any404, align 8
  %xgv_gp405 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %312, i32 0, i32 7
  %313 = load %struct.gp*, %struct.gp** %xgv_gp405, align 8
  %gp_io406 = getelementptr inbounds %struct.gp, %struct.gp* %313, i32 0, i32 2
  %314 = load %struct.io*, %struct.io** %gp_io406, align 8
  %sv_any407 = getelementptr inbounds %struct.io, %struct.io* %314, i32 0, i32 0
  %315 = load %struct.xpvio*, %struct.xpvio** %sv_any407, align 8
  %xio_page = getelementptr inbounds %struct.xpvio, %struct.xpvio* %315, i32 0, i32 11
  %316 = load i64, i64* %xio_page, align 8
  call void @Perl_sv_setiv(%struct.sv* %310, i64 %316)
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.403, %sw.bb.398
  br label %sw.epilog

sw.bb.409:                                        ; preds = %entry
  br label %sw.epilog

sw.bb.410:                                        ; preds = %entry
  br label %sw.epilog

sw.bb.411:                                        ; preds = %entry
  %317 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %318 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_arybase = getelementptr inbounds %struct.cop, %struct.cop* %318, i32 0, i32 12
  %319 = load i32, i32* %cop_arybase, align 4
  %conv412 = sext i32 %319 to i64
  call void @Perl_sv_setiv(%struct.sv* %317, i64 %conv412)
  br label %sw.epilog

sw.bb.413:                                        ; preds = %entry
  %320 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any414 = getelementptr inbounds %struct.gv, %struct.gv* %320, i32 0, i32 0
  %321 = load %struct.xpvgv*, %struct.xpvgv** %sv_any414, align 8
  %xgv_gp415 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %321, i32 0, i32 7
  %322 = load %struct.gp*, %struct.gp** %xgv_gp415, align 8
  %gp_io416 = getelementptr inbounds %struct.gp, %struct.gp* %322, i32 0, i32 2
  %323 = load %struct.io*, %struct.io** %gp_io416, align 8
  %tobool417 = icmp ne %struct.io* %323, null
  br i1 %tobool417, label %if.then.418, label %if.end.429

if.then.418:                                      ; preds = %sw.bb.413
  %324 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %325 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any419 = getelementptr inbounds %struct.gv, %struct.gv* %325, i32 0, i32 0
  %326 = load %struct.xpvgv*, %struct.xpvgv** %sv_any419, align 8
  %xgv_gp420 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %326, i32 0, i32 7
  %327 = load %struct.gp*, %struct.gp** %xgv_gp420, align 8
  %gp_io421 = getelementptr inbounds %struct.gp, %struct.gp* %327, i32 0, i32 2
  %328 = load %struct.io*, %struct.io** %gp_io421, align 8
  %sv_any422 = getelementptr inbounds %struct.io, %struct.io* %328, i32 0, i32 0
  %329 = load %struct.xpvio*, %struct.xpvio** %sv_any422, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %329, i32 0, i32 22
  %330 = load i8, i8* %xio_flags, align 1
  %conv423 = sext i8 %330 to i32
  %and424 = and i32 %conv423, 4
  %conv425 = sext i32 %and424 to i64
  %cmp426 = icmp ne i64 %conv425, 0
  %conv427 = zext i1 %cmp426 to i32
  %conv428 = sext i32 %conv427 to i64
  call void @Perl_sv_setiv(%struct.sv* %324, i64 %conv428)
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.418, %sw.bb.413
  br label %sw.epilog

sw.bb.430:                                        ; preds = %entry
  br label %sw.epilog

sw.bb.431:                                        ; preds = %entry
  %331 = load %struct.sv*, %struct.sv** @PL_ors_sv, align 8
  %tobool432 = icmp ne %struct.sv* %331, null
  br i1 %tobool432, label %if.then.433, label %if.end.434

if.then.433:                                      ; preds = %sw.bb.431
  %332 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %333 = load %struct.sv*, %struct.sv** @PL_ors_sv, align 8
  call void @Perl_sv_copypv(%struct.sv* %332, %struct.sv* %333)
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.433, %sw.bb.431
  br label %sw.epilog

sw.bb.435:                                        ; preds = %entry
  %334 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %335 = load i8*, i8** @PL_ofmt, align 8
  call void @Perl_sv_setpv(%struct.sv* %334, i8* %335)
  br label %sw.epilog

sw.bb.436:                                        ; preds = %entry
  %call438 = call i32* @__errno_location()
  %336 = load i32, i32* %call438, align 4
  store i32 %336, i32* %saveerrno437, align 4
  %337 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call439 = call i32* @__errno_location()
  %338 = load i32, i32* %call439, align 4
  %conv440 = sitofp i32 %338 to double
  call void @Perl_sv_setnv(%struct.sv* %337, double %conv440)
  %339 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call441 = call i32* @__errno_location()
  %340 = load i32, i32* %call441, align 4
  %tobool442 = icmp ne i32 %340, 0
  br i1 %tobool442, label %cond.true.443, label %cond.false.446

cond.true.443:                                    ; preds = %sw.bb.436
  %call444 = call i32* @__errno_location()
  %341 = load i32, i32* %call444, align 4
  %call445 = call i8* @strerror(i32 %341)
  br label %cond.end.447

cond.false.446:                                   ; preds = %sw.bb.436
  br label %cond.end.447

cond.end.447:                                     ; preds = %cond.false.446, %cond.true.443
  %cond448 = phi i8* [ %call445, %cond.true.443 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %cond.false.446 ]
  call void @Perl_sv_setpv(%struct.sv* %339, i8* %cond448)
  %342 = load i32, i32* %saveerrno437, align 4
  %call449 = call i32* @__errno_location()
  store i32 %342, i32* %call449, align 4
  %343 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags450 = getelementptr inbounds %struct.sv, %struct.sv* %343, i32 0, i32 2
  %344 = load i32, i32* %sv_flags450, align 4
  %or451 = or i32 %344, 33685504
  store i32 %or451, i32* %sv_flags450, align 4
  br label %sw.epilog

sw.bb.452:                                        ; preds = %entry
  %345 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %346 = load i32, i32* @PL_uid, align 4
  %conv453 = zext i32 %346 to i64
  call void @Perl_sv_setiv(%struct.sv* %345, i64 %conv453)
  br label %sw.epilog

sw.bb.454:                                        ; preds = %entry
  %347 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %348 = load i32, i32* @PL_euid, align 4
  %conv455 = zext i32 %348 to i64
  call void @Perl_sv_setiv(%struct.sv* %347, i64 %conv455)
  br label %sw.epilog

sw.bb.456:                                        ; preds = %entry
  %349 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %350 = load i32, i32* @PL_gid, align 4
  %conv457 = zext i32 %350 to i64
  call void @Perl_sv_setiv(%struct.sv* %349, i64 %conv457)
  br label %add_groups

sw.bb.458:                                        ; preds = %entry
  %351 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %352 = load i32, i32* @PL_egid, align 4
  %conv459 = zext i32 %352 to i64
  call void @Perl_sv_setiv(%struct.sv* %351, i64 %conv459)
  br label %add_groups

add_groups:                                       ; preds = %sw.bb.458, %sw.bb.456
  %353 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags460 = getelementptr inbounds %struct.sv, %struct.sv* %353, i32 0, i32 2
  %354 = load i32, i32* %sv_flags460, align 4
  %and461 = and i32 %354, 2097152
  %tobool462 = icmp ne i32 %and461, 0
  br i1 %tobool462, label %land.rhs.463, label %land.end.466

land.rhs.463:                                     ; preds = %add_groups
  %355 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call464 = call i32 @Perl_sv_backoff(%struct.sv* %355)
  %tobool465 = icmp ne i32 %call464, 0
  br label %land.end.466

land.end.466:                                     ; preds = %land.rhs.463, %add_groups
  %356 = phi i1 [ false, %add_groups ], [ %tobool465, %land.rhs.463 ]
  %land.ext467 = zext i1 %356 to i32
  %357 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags468 = getelementptr inbounds %struct.sv, %struct.sv* %357, i32 0, i32 2
  %358 = load i32, i32* %sv_flags468, align 4
  %or469 = or i32 %358, 16842752
  store i32 %or469, i32* %sv_flags468, align 4
  br label %sw.epilog

sw.bb.470:                                        ; preds = %entry
  br label %sw.epilog

sw.bb.471:                                        ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.471, %sw.bb.470, %land.end.466, %sw.bb.454, %sw.bb.452, %cond.end.447, %sw.bb.435, %if.end.434, %sw.bb.430, %if.end.429, %sw.bb.411, %sw.bb.410, %sw.bb.409, %if.end.408, %if.end.397, %if.end.386, %if.end.375, %if.end.348, %sw.bb.321, %if.end.320, %if.end.299, %if.end.275, %if.end.257, %if.end.247, %if.end.237, %if.end.234, %if.then.183, %if.end.161, %if.end.118, %if.end.104, %if.end.78, %sw.bb.51, %if.end.50, %if.end.29, %sw.bb.23, %sw.bb.21, %if.end.20, %sw.bb.3, %sw.bb.1, %sw.bb
  ret i32 0
}

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare i32* @__errno_location() #1

declare void @Perl_sv_setnv(%struct.sv*, double) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare i8* @strerror(i32) #1

declare i32 @strcmp(i8*, i8*) #1

declare void @Perl_sv_untaint(%struct.sv*) #1

declare void @Perl_sv_setuv(%struct.sv*, i64) #1

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare %struct.hv* @Perl_get_hv(i8*, i32) #1

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

declare void @Perl_sv_taint(%struct.sv*) #1

declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

declare void @Perl_sv_copypv(%struct.sv*, %struct.sv*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_getuvar(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %uf = alloca %struct.ufuncs*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 6
  %1 = load i8*, i8** %mg_ptr, align 8
  %2 = bitcast i8* %1 to %struct.ufuncs*
  store %struct.ufuncs* %2, %struct.ufuncs** %uf, align 8
  %3 = load %struct.ufuncs*, %struct.ufuncs** %uf, align 8
  %tobool = icmp ne %struct.ufuncs* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.ufuncs*, %struct.ufuncs** %uf, align 8
  %uf_val = getelementptr inbounds %struct.ufuncs, %struct.ufuncs* %4, i32 0, i32 0
  %5 = load i32 (i64, %struct.sv*)*, i32 (i64, %struct.sv*)** %uf_val, align 8
  %tobool1 = icmp ne i32 (i64, %struct.sv*)* %5, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.ufuncs*, %struct.ufuncs** %uf, align 8
  %uf_val2 = getelementptr inbounds %struct.ufuncs, %struct.ufuncs* %6, i32 0, i32 0
  %7 = load i32 (i64, %struct.sv*)*, i32 (i64, %struct.sv*)** %uf_val2, align 8
  %8 = load %struct.ufuncs*, %struct.ufuncs** %uf, align 8
  %uf_index = getelementptr inbounds %struct.ufuncs, %struct.ufuncs* %8, i32 0, i32 2
  %9 = load i64, i64* %uf_index, align 8
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i32 %7(i64 %9, %struct.sv* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setenv(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %s = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %len = alloca i64, align 8
  %klen = alloca i64, align 8
  %strend = alloca i8*, align 8
  %tmpbuf = alloca [256 x i8], align 16
  %st = alloca %struct.stat, align 8
  %i = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 1
  %5 = load i64, i64* %xpv_cur, align 8
  store i64 %5, i64* %len, align 8
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 0
  %9 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %10, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %11 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %11, i32 0, i32 7
  %12 = load i32, i32* %mg_len, align 4
  %conv = sext i32 %12 to i64
  store i64 %conv, i64* %klen, align 8
  %conv2 = trunc i64 %conv to i32
  %cmp3 = icmp eq i32 %conv2, -2
  br i1 %cmp3, label %cond.true.5, label %cond.false.22

cond.true.5:                                      ; preds = %cond.end
  %13 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %13, i32 0, i32 6
  %14 = load i8*, i8** %mg_ptr, align 8
  %15 = bitcast i8* %14 to %struct.sv*
  %sv_flags6 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags6, align 4
  %and7 = and i32 %16, 262144
  %cmp8 = icmp eq i32 %and7, 262144
  br i1 %cmp8, label %cond.true.10, label %cond.false.17

cond.true.10:                                     ; preds = %cond.true.5
  %17 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr11 = getelementptr inbounds %struct.magic, %struct.magic* %17, i32 0, i32 6
  %18 = load i8*, i8** %mg_ptr11, align 8
  %19 = bitcast i8* %18 to %struct.sv*
  %sv_any12 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any12, align 8
  %21 = bitcast i8* %20 to %struct.xpv*
  %xpv_cur13 = getelementptr inbounds %struct.xpv, %struct.xpv* %21, i32 0, i32 1
  %22 = load i64, i64* %xpv_cur13, align 8
  store i64 %22, i64* %klen, align 8
  %23 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr14 = getelementptr inbounds %struct.magic, %struct.magic* %23, i32 0, i32 6
  %24 = load i8*, i8** %mg_ptr14, align 8
  %25 = bitcast i8* %24 to %struct.sv*
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any15, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  %xpv_pv16 = getelementptr inbounds %struct.xpv, %struct.xpv* %27, i32 0, i32 0
  %28 = load i8*, i8** %xpv_pv16, align 8
  br label %cond.end.20

cond.false.17:                                    ; preds = %cond.true.5
  %29 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr18 = getelementptr inbounds %struct.magic, %struct.magic* %29, i32 0, i32 6
  %30 = load i8*, i8** %mg_ptr18, align 8
  %31 = bitcast i8* %30 to %struct.sv*
  %call19 = call i8* @Perl_sv_2pv_flags(%struct.sv* %31, i64* %klen, i32 2)
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.10
  %cond21 = phi i8* [ %28, %cond.true.10 ], [ %call19, %cond.false.17 ]
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.end
  %32 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr23 = getelementptr inbounds %struct.magic, %struct.magic* %32, i32 0, i32 6
  %33 = load i8*, i8** %mg_ptr23, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.end.20
  %cond25 = phi i8* [ %cond21, %cond.end.20 ], [ %33, %cond.false.22 ]
  store i8* %cond25, i8** %ptr, align 8
  %34 = load i8*, i8** %ptr, align 8
  %35 = load i8*, i8** %s, align 8
  call void @Perl_my_setenv(i8* %34, i8* %35)
  %36 = load i8, i8* @PL_tainting, align 1
  %tobool = icmp ne i8 %36, 0
  br i1 %tobool, label %if.then, label %if.end.61

if.then:                                          ; preds = %cond.end.24
  %37 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %37, i32 0, i32 4
  %38 = load i8, i8* %mg_flags, align 1
  %conv26 = zext i8 %38 to i32
  %and27 = and i32 %conv26, -2
  %conv28 = trunc i32 %and27 to i8
  store i8 %conv28, i8* %mg_flags, align 1
  %39 = load i8*, i8** %s, align 8
  %tobool29 = icmp ne i8* %39, null
  br i1 %tobool29, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.then
  %40 = load i64, i64* %klen, align 8
  %cmp30 = icmp eq i64 %40, 4
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.60

land.lhs.true.32:                                 ; preds = %land.lhs.true
  %41 = load i8*, i8** %ptr, align 8
  %call33 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0))
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.60, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true.32
  %42 = load i8*, i8** %s, align 8
  %43 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %add.ptr, i8** %strend, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then.35
  %44 = load i8*, i8** %s, align 8
  %45 = load i8*, i8** %strend, align 8
  %cmp36 = icmp ult i8* %44, %45
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %tmpbuf, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [256 x i8], [256 x i8]* %tmpbuf, i32 0, i32 0
  %add.ptr39 = getelementptr inbounds i8, i8* %arraydecay38, i64 256
  %46 = load i8*, i8** %s, align 8
  %47 = load i8*, i8** %strend, align 8
  %call40 = call i8* @Perl_delimcpy(i8* %arraydecay, i8* %add.ptr39, i8* %46, i8* %47, i32 58, i32* %i)
  store i8* %call40, i8** %s, align 8
  %48 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %49 = load i32, i32* %i, align 4
  %conv41 = sext i32 %49 to i64
  %cmp42 = icmp uge i64 %conv41, 256
  br i1 %cmp42, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %arraydecay44 = getelementptr inbounds [256 x i8], [256 x i8]* %tmpbuf, i32 0, i32 0
  %50 = load i8, i8* %arraydecay44, align 1
  %conv45 = sext i8 %50 to i32
  %cmp46 = icmp ne i32 %conv45, 47
  br i1 %cmp46, label %if.then.56, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false
  %arraydecay49 = getelementptr inbounds [256 x i8], [256 x i8]* %tmpbuf, i32 0, i32 0
  %call50 = call i32 @stat(i8* %arraydecay49, %struct.stat* %st)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.end

land.lhs.true.53:                                 ; preds = %lor.lhs.false.48
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %51 = load i32, i32* %st_mode, align 4
  %and54 = and i32 %51, 2
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then.56, label %if.end

if.then.56:                                       ; preds = %land.lhs.true.53, %lor.lhs.false, %while.body
  %52 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags57 = getelementptr inbounds %struct.magic, %struct.magic* %52, i32 0, i32 4
  %53 = load i8, i8* %mg_flags57, align 1
  %conv58 = zext i8 %53 to i32
  %or = or i32 %conv58, 1
  %conv59 = trunc i32 %or to i8
  store i8 %conv59, i8* %mg_flags57, align 1
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.53, %lor.lhs.false.48
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.60

if.end.60:                                        ; preds = %while.end, %land.lhs.true.32, %land.lhs.true, %if.then
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %cond.end.24
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.56
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare void @Perl_my_setenv(i8*, i8*) #1

declare i8* @Perl_delimcpy(i8*, i8*, i8*, i8*, i32, i32*) #1

declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_clearenv(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %n_a = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 7
  %1 = load i32, i32* %mg_len, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %n_a, align 8
  %conv1 = trunc i64 %conv to i32
  %cmp = icmp eq i32 %conv1, -2
  br i1 %cmp, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %entry
  %2 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %2, i32 0, i32 6
  %3 = load i8*, i8** %mg_ptr, align 8
  %4 = bitcast i8* %3 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 262144
  %cmp3 = icmp eq i32 %and, 262144
  br i1 %cmp3, label %cond.true.5, label %cond.false

cond.true.5:                                      ; preds = %cond.true
  %6 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr6 = getelementptr inbounds %struct.magic, %struct.magic* %6, i32 0, i32 6
  %7 = load i8*, i8** %mg_ptr6, align 8
  %8 = bitcast i8* %7 to %struct.sv*
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 1
  %11 = load i64, i64* %xpv_cur, align 8
  store i64 %11, i64* %n_a, align 8
  %12 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr7 = getelementptr inbounds %struct.magic, %struct.magic* %12, i32 0, i32 6
  %13 = load i8*, i8** %mg_ptr7, align 8
  %14 = bitcast i8* %13 to %struct.sv*
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any8, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 0
  %17 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %18 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr9 = getelementptr inbounds %struct.magic, %struct.magic* %18, i32 0, i32 6
  %19 = load i8*, i8** %mg_ptr9, align 8
  %20 = bitcast i8* %19 to %struct.sv*
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %20, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.5
  %cond = phi i8* [ %17, %cond.true.5 ], [ %call, %cond.false ]
  br label %cond.end.12

cond.false.10:                                    ; preds = %entry
  %21 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr11 = getelementptr inbounds %struct.magic, %struct.magic* %21, i32 0, i32 6
  %22 = load i8*, i8** %mg_ptr11, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.end
  %cond13 = phi i8* [ %cond, %cond.end ], [ %22, %cond.false.10 ]
  call void @Perl_my_setenv(i8* %cond13, i8* null)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_set_all_env(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %entry1 = alloca %struct.he*, align 8
  %n_a = alloca i64, align 8
  %keylen = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load i32, i32* @PL_localizing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %2 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %call = call i32 @Perl_magic_clear_all_env(%struct.sv* %1, %struct.magic* %2)
  %3 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %4 = bitcast %struct.sv* %3 to %struct.hv*
  %call2 = call i32 @Perl_hv_iterinit(%struct.hv* %4)
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %6 = bitcast %struct.sv* %5 to %struct.hv*
  %call3 = call %struct.he* @Perl_hv_iternext(%struct.hv* %6)
  store %struct.he* %call3, %struct.he** %entry1, align 8
  %tobool4 = icmp ne %struct.he* %call3, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.he*, %struct.he** %entry1, align 8
  %call5 = call i8* @Perl_hv_iterkey(%struct.he* %7, i32* %keylen)
  %8 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %9 = bitcast %struct.sv* %8 to %struct.hv*
  %10 = load %struct.he*, %struct.he** %entry1, align 8
  %call6 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %9, %struct.he* %10)
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %call6, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %12 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %13 = bitcast %struct.sv* %12 to %struct.hv*
  %14 = load %struct.he*, %struct.he** %entry1, align 8
  %call7 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %13, %struct.he* %14)
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %call7, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 1
  %17 = load i64, i64* %xpv_cur, align 8
  store i64 %17, i64* %n_a, align 8
  %18 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %19 = bitcast %struct.sv* %18 to %struct.hv*
  %20 = load %struct.he*, %struct.he** %entry1, align 8
  %call8 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %19, %struct.he* %20)
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %call8, i32 0, i32 0
  %21 = load i8*, i8** %sv_any9, align 8
  %22 = bitcast i8* %21 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %22, i32 0, i32 0
  %23 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %24 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %25 = bitcast %struct.sv* %24 to %struct.hv*
  %26 = load %struct.he*, %struct.he** %entry1, align 8
  %call10 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %25, %struct.he* %26)
  %call11 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call10, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %23, %cond.true ], [ %call11, %cond.false ]
  call void @Perl_my_setenv(i8* %call5, i8* %cond)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_clear_all_env(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %i = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load i32, i32* @PL_use_safe_putenv, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** @environ, align 8
  %2 = load i8**, i8*** @PL_origenviron, align 8
  %cmp = icmp eq i8** %1, %2
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %call = call i8* @Perl_safesysmalloc(i64 8)
  %3 = bitcast i8* %call to i8**
  store i8** %3, i8*** @environ, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** @environ, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %tobool2 = icmp ne i8* %6, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i8**, i8*** @environ, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 %idxprom3
  %9 = load i8*, i8** %arrayidx4, align 8
  call void @Perl_safesysfree(i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.1
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %11 = load i8**, i8*** @environ, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %11, i64 0
  store i8* null, i8** %arrayidx6, align 8
  ret i32 0
}

declare i32 @Perl_hv_iterinit(%struct.hv*) #1

declare %struct.he* @Perl_hv_iternext(%struct.hv*) #1

declare i8* @Perl_hv_iterkey(%struct.he*, i32*) #1

declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #1

declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_getsig(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %i = alloca i32, align 4
  %n_a = alloca i64, align 8
  %sigstate = alloca void (i32)*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 7
  %1 = load i32, i32* %mg_len, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %n_a, align 8
  %conv1 = trunc i64 %conv to i32
  %cmp = icmp eq i32 %conv1, -2
  br i1 %cmp, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %entry
  %2 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %2, i32 0, i32 6
  %3 = load i8*, i8** %mg_ptr, align 8
  %4 = bitcast i8* %3 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 262144
  %cmp3 = icmp eq i32 %and, 262144
  br i1 %cmp3, label %cond.true.5, label %cond.false

cond.true.5:                                      ; preds = %cond.true
  %6 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr6 = getelementptr inbounds %struct.magic, %struct.magic* %6, i32 0, i32 6
  %7 = load i8*, i8** %mg_ptr6, align 8
  %8 = bitcast i8* %7 to %struct.sv*
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 1
  %11 = load i64, i64* %xpv_cur, align 8
  store i64 %11, i64* %n_a, align 8
  %12 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr7 = getelementptr inbounds %struct.magic, %struct.magic* %12, i32 0, i32 6
  %13 = load i8*, i8** %mg_ptr7, align 8
  %14 = bitcast i8* %13 to %struct.sv*
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any8, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 0
  %17 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %18 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr9 = getelementptr inbounds %struct.magic, %struct.magic* %18, i32 0, i32 6
  %19 = load i8*, i8** %mg_ptr9, align 8
  %20 = bitcast i8* %19 to %struct.sv*
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %20, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.5
  %cond = phi i8* [ %17, %cond.true.5 ], [ %call, %cond.false ]
  br label %cond.end.12

cond.false.10:                                    ; preds = %entry
  %21 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr11 = getelementptr inbounds %struct.magic, %struct.magic* %21, i32 0, i32 6
  %22 = load i8*, i8** %mg_ptr11, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.end
  %cond13 = phi i8* [ %cond, %cond.end ], [ %22, %cond.false.10 ]
  %call14 = call i32 @Perl_whichsig(i8* %cond13)
  store i32 %call14, i32* %i, align 4
  %23 = load i32, i32* %i, align 4
  %cmp15 = icmp sgt i32 %23, 0
  br i1 %cmp15, label %if.then, label %if.end.32

if.then:                                          ; preds = %cond.end.12
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom
  %26 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %tobool = icmp ne %struct.sv* %26, null
  br i1 %tobool, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %28 to i64
  %29 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx19 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idxprom18
  %30 = load %struct.sv*, %struct.sv** %arrayidx19, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %27, %struct.sv* %30, i32 2)
  br label %if.end.31

if.else:                                          ; preds = %if.then
  %31 = load i32, i32* %i, align 4
  %call20 = call void (i32)* @Perl_rsignal_state(i32 %31)
  store void (i32)* %call20, void (i32)** %sigstate, align 8
  %32 = load void (i32)*, void (i32)** %sigstate, align 8
  %cmp21 = icmp eq void (i32)* %32, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else
  %33 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setpv(%struct.sv* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.else.24:                                       ; preds = %if.else
  %34 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %34, %struct.sv* @PL_sv_undef, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.else.24, %if.then.23
  %35 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  store %struct.sv* %35, %struct.sv** @PL_Sv, align 8
  %36 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool25 = icmp ne %struct.sv* %36, null
  br i1 %tobool25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %37 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 1
  %38 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool26 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %39 = phi i1 [ false, %if.end ], [ %tobool26, %land.rhs ]
  %land.ext = zext i1 %39 to i32
  %40 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %41 to i64
  %42 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx28 = getelementptr inbounds %struct.sv*, %struct.sv** %42, i64 %idxprom27
  store %struct.sv* %40, %struct.sv** %arrayidx28, align 8
  %43 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags29 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 2
  %44 = load i32, i32* %sv_flags29, align 4
  %and30 = and i32 %44, -2049
  store i32 %and30, i32* %sv_flags29, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %land.end, %if.then.17
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %cond.end.12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_whichsig(i8* %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %sig.addr = alloca i8*, align 8
  %sigv = alloca i8**, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @PL_sig_name, i32 0, i32 0), i8*** %sigv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %sigv, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %sig.addr, align 8
  %3 = load i8**, i8*** %sigv, align 8
  %4 = load i8*, i8** %3, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i8**, i8*** %sigv, align 8
  %sub.ptr.lhs.cast = ptrtoint i8** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([0 x i8*]* @PL_sig_name to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @PL_sig_num, i32 0, i64 %sub.ptr.div
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i8**, i8*** %sigv, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i32 1
  store i8** %incdec.ptr, i8*** %sigv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %sig.addr, align 8
  %call2 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %for.end
  store i32 17, i32* %retval
  br label %return

if.end.5:                                         ; preds = %for.end
  %9 = load i8*, i8** %sig.addr, align 8
  %call6 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0))
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  store i32 17, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.4, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare void (i32)* @Perl_rsignal_state(i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_clearsig(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %s = alloca i8*, align 8
  %n_a = alloca i64, align 8
  %to_dec = alloca %struct.sv*, align 8
  %svp = alloca %struct.sv**, align 8
  %i = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 7
  %1 = load i32, i32* %mg_len, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %n_a, align 8
  %conv1 = trunc i64 %conv to i32
  %cmp = icmp eq i32 %conv1, -2
  br i1 %cmp, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %entry
  %2 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %2, i32 0, i32 6
  %3 = load i8*, i8** %mg_ptr, align 8
  %4 = bitcast i8* %3 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 262144
  %cmp3 = icmp eq i32 %and, 262144
  br i1 %cmp3, label %cond.true.5, label %cond.false

cond.true.5:                                      ; preds = %cond.true
  %6 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr6 = getelementptr inbounds %struct.magic, %struct.magic* %6, i32 0, i32 6
  %7 = load i8*, i8** %mg_ptr6, align 8
  %8 = bitcast i8* %7 to %struct.sv*
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 1
  %11 = load i64, i64* %xpv_cur, align 8
  store i64 %11, i64* %n_a, align 8
  %12 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr7 = getelementptr inbounds %struct.magic, %struct.magic* %12, i32 0, i32 6
  %13 = load i8*, i8** %mg_ptr7, align 8
  %14 = bitcast i8* %13 to %struct.sv*
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any8, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 0
  %17 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %18 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr9 = getelementptr inbounds %struct.magic, %struct.magic* %18, i32 0, i32 6
  %19 = load i8*, i8** %mg_ptr9, align 8
  %20 = bitcast i8* %19 to %struct.sv*
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %20, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.5
  %cond = phi i8* [ %17, %cond.true.5 ], [ %call, %cond.false ]
  br label %cond.end.12

cond.false.10:                                    ; preds = %entry
  %21 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr11 = getelementptr inbounds %struct.magic, %struct.magic* %21, i32 0, i32 6
  %22 = load i8*, i8** %mg_ptr11, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.end
  %cond13 = phi i8* [ %cond, %cond.end ], [ %22, %cond.false.10 ]
  store i8* %cond13, i8** %s, align 8
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv14 = sext i8 %24 to i32
  %cmp15 = icmp eq i32 %conv14, 95
  br i1 %cmp15, label %if.then, label %if.else.27

if.then:                                          ; preds = %cond.end.12
  %25 = load i8*, i8** %s, align 8
  %call17 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %if.then
  store %struct.sv** @PL_diehook, %struct.sv*** %svp, align 8
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %26 = load i8*, i8** %s, align 8
  %call19 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.else
  store %struct.sv** @PL_warnhook, %struct.sv*** %svp, align 8
  br label %if.end

if.else.22:                                       ; preds = %if.else
  %27 = load i8*, i8** %s, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* %27)
  br label %if.end

if.end:                                           ; preds = %if.else.22, %if.then.21
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.18
  %28 = load %struct.sv**, %struct.sv*** %svp, align 8
  %29 = load %struct.sv*, %struct.sv** %28, align 8
  %tobool24 = icmp ne %struct.sv* %29, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %30 = load %struct.sv**, %struct.sv*** %svp, align 8
  %31 = load %struct.sv*, %struct.sv** %30, align 8
  store %struct.sv* %31, %struct.sv** %to_dec, align 8
  %32 = load %struct.sv**, %struct.sv*** %svp, align 8
  store %struct.sv* null, %struct.sv** %32, align 8
  %33 = load %struct.sv*, %struct.sv** %to_dec, align 8
  call void @Perl_sv_free(%struct.sv* %33)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  br label %if.end.54

if.else.27:                                       ; preds = %cond.end.12
  %34 = load i8*, i8** %s, align 8
  %call28 = call i32 @Perl_whichsig(i8* %34)
  store i32 %call28, i32* %i, align 4
  %35 = load i32, i32* %i, align 4
  %cmp29 = icmp sgt i32 %35, 0
  br i1 %cmp29, label %if.then.31, label %if.end.53

if.then.31:                                       ; preds = %if.else.27
  %36 = load i32, i32* @PL_sig_pending, align 4
  %tobool32 = icmp ne i32 %36, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.31
  call void @Perl_despatch_signals()
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.31
  %37 = load i32, i32* %i, align 4
  %call35 = call void (i32)* @Perl_rsignal(i32 %37, void (i32)* null)
  %38 = load i32, i32* %i, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idxprom
  %40 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %tobool36 = icmp ne %struct.sv* %40, null
  br i1 %tobool36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.end.34
  %41 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %41 to i64
  %42 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %arrayidx39 = getelementptr inbounds %struct.sv*, %struct.sv** %42, i64 %idxprom38
  %43 = load %struct.sv*, %struct.sv** %arrayidx39, align 8
  call void @Perl_sv_free(%struct.sv* %43)
  %44 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %44 to i64
  %45 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %arrayidx41 = getelementptr inbounds %struct.sv*, %struct.sv** %45, i64 %idxprom40
  store %struct.sv* null, %struct.sv** %arrayidx41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %if.end.34
  %46 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %46 to i64
  %47 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx44 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i64 %idxprom43
  %48 = load %struct.sv*, %struct.sv** %arrayidx44, align 8
  %tobool45 = icmp ne %struct.sv* %48, null
  br i1 %tobool45, label %if.then.46, label %if.else.51

if.then.46:                                       ; preds = %if.end.42
  %49 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %49 to i64
  %50 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx48 = getelementptr inbounds %struct.sv*, %struct.sv** %50, i64 %idxprom47
  %51 = load %struct.sv*, %struct.sv** %arrayidx48, align 8
  store %struct.sv* %51, %struct.sv** %to_dec, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %52 to i64
  %53 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx50 = getelementptr inbounds %struct.sv*, %struct.sv** %53, i64 %idxprom49
  store %struct.sv* null, %struct.sv** %arrayidx50, align 8
  call void @Perl_pop_scope()
  %54 = load %struct.sv*, %struct.sv** %to_dec, align 8
  call void @Perl_sv_free(%struct.sv* %54)
  br label %if.end.52

if.else.51:                                       ; preds = %if.end.42
  call void @Perl_pop_scope()
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.46
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.else.27
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.26
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @Perl_despatch_signals() #0 {
entry:
  %sig = alloca i32, align 4
  store i32 0, i32* @PL_sig_pending, align 4
  store i32 1, i32* %sig, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %sig, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %sig, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** @PL_psig_pend, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %sig, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** @PL_psig_pend, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  %6 = load void (i32)*, void (i32)** @PL_sighandlerp, align 8
  %7 = load i32, i32* %sig, align 4
  call void %6(i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %sig, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %sig, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void (i32)* @Perl_rsignal(i32, void (i32)*) #1

declare void @Perl_pop_scope() #1

; Function Attrs: nounwind uwtable
define void @Perl_raise_signal(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** @PL_psig_pend, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %arrayidx, align 4
  store i32 1, i32* @PL_sig_pending, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_csighandler(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* @PL_signals, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load void (i32)*, void (i32)** @PL_sighandlerp, align 8
  %2 = load i32, i32* %sig.addr, align 4
  call void %1(i32 %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %sig.addr, align 4
  call void @Perl_raise_signal(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setsig(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %svp = alloca %struct.sv**, align 8
  %to_dec = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  store %struct.sv** null, %struct.sv*** %svp, align 8
  store %struct.sv* null, %struct.sv** %to_dec, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 7
  %1 = load i32, i32* %mg_len, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %len, align 8
  %conv1 = trunc i64 %conv to i32
  %cmp = icmp eq i32 %conv1, -2
  br i1 %cmp, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %entry
  %2 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %2, i32 0, i32 6
  %3 = load i8*, i8** %mg_ptr, align 8
  %4 = bitcast i8* %3 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 262144
  %cmp3 = icmp eq i32 %and, 262144
  br i1 %cmp3, label %cond.true.5, label %cond.false

cond.true.5:                                      ; preds = %cond.true
  %6 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr6 = getelementptr inbounds %struct.magic, %struct.magic* %6, i32 0, i32 6
  %7 = load i8*, i8** %mg_ptr6, align 8
  %8 = bitcast i8* %7 to %struct.sv*
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 1
  %11 = load i64, i64* %xpv_cur, align 8
  store i64 %11, i64* %len, align 8
  %12 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr7 = getelementptr inbounds %struct.magic, %struct.magic* %12, i32 0, i32 6
  %13 = load i8*, i8** %mg_ptr7, align 8
  %14 = bitcast i8* %13 to %struct.sv*
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any8, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 0
  %17 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %18 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr9 = getelementptr inbounds %struct.magic, %struct.magic* %18, i32 0, i32 6
  %19 = load i8*, i8** %mg_ptr9, align 8
  %20 = bitcast i8* %19 to %struct.sv*
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %20, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.5
  %cond = phi i8* [ %17, %cond.true.5 ], [ %call, %cond.false ]
  br label %cond.end.12

cond.false.10:                                    ; preds = %entry
  %21 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr11 = getelementptr inbounds %struct.magic, %struct.magic* %21, i32 0, i32 6
  %22 = load i8*, i8** %mg_ptr11, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.end
  %cond13 = phi i8* [ %cond, %cond.end ], [ %22, %cond.false.10 ]
  store i8* %cond13, i8** %s, align 8
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv14 = sext i8 %24 to i32
  %cmp15 = icmp eq i32 %conv14, 95
  br i1 %cmp15, label %if.then, label %if.else.27

if.then:                                          ; preds = %cond.end.12
  %25 = load i8*, i8** %s, align 8
  %call17 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %if.then
  store %struct.sv** @PL_diehook, %struct.sv*** %svp, align 8
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %26 = load i8*, i8** %s, align 8
  %call19 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.else
  store %struct.sv** @PL_warnhook, %struct.sv*** %svp, align 8
  br label %if.end

if.else.22:                                       ; preds = %if.else
  %27 = load i8*, i8** %s, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* %27)
  br label %if.end

if.end:                                           ; preds = %if.else.22, %if.then.21
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.18
  store i32 0, i32* %i, align 4
  %28 = load %struct.sv**, %struct.sv*** %svp, align 8
  %29 = load %struct.sv*, %struct.sv** %28, align 8
  %tobool24 = icmp ne %struct.sv* %29, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %30 = load %struct.sv**, %struct.sv*** %svp, align 8
  %31 = load %struct.sv*, %struct.sv** %30, align 8
  store %struct.sv* %31, %struct.sv** %to_dec, align 8
  %32 = load %struct.sv**, %struct.sv*** %svp, align 8
  store %struct.sv* null, %struct.sv** %32, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  br label %if.end.76

if.else.27:                                       ; preds = %cond.end.12
  %33 = load i8*, i8** %s, align 8
  %call28 = call i32 @Perl_whichsig(i8* %33)
  store i32 %call28, i32* %i, align 4
  %34 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %34, 0
  br i1 %cmp29, label %if.then.31, label %if.end.57

if.then.31:                                       ; preds = %if.else.27
  %35 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %35, i32 0, i32 14
  %36 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp32 = icmp ne %struct.sv* %36, null
  br i1 %cmp32, label %land.lhs.true, label %lor.lhs.false.47

land.lhs.true:                                    ; preds = %if.then.31
  %37 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings34 = getelementptr inbounds %struct.cop, %struct.cop* %37, i32 0, i32 14
  %38 = load %struct.sv*, %struct.sv** %cop_warnings34, align 8
  %cmp35 = icmp ne %struct.sv* %38, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp35, label %land.lhs.true.37, label %lor.lhs.false.47

land.lhs.true.37:                                 ; preds = %land.lhs.true
  %39 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings38 = getelementptr inbounds %struct.cop, %struct.cop* %39, i32 0, i32 14
  %40 = load %struct.sv*, %struct.sv** %cop_warnings38, align 8
  %cmp39 = icmp eq %struct.sv* %40, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp39, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.37
  %41 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings41 = getelementptr inbounds %struct.cop, %struct.cop* %41, i32 0, i32 14
  %42 = load %struct.sv*, %struct.sv** %cop_warnings41, align 8
  %sv_any42 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 0
  %43 = load i8*, i8** %sv_any42, align 8
  %44 = bitcast i8* %43 to %struct.xpv*
  %xpv_pv43 = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 0
  %45 = load i8*, i8** %xpv_pv43, align 8
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 6
  %46 = load i8, i8* %arrayidx, align 1
  %conv44 = sext i8 %46 to i32
  %and45 = and i32 %conv44, 16
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.55, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false, %land.lhs.true, %if.then.31
  %47 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings48 = getelementptr inbounds %struct.cop, %struct.cop* %47, i32 0, i32 14
  %48 = load %struct.sv*, %struct.sv** %cop_warnings48, align 8
  %cmp49 = icmp eq %struct.sv* %48, null
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.56

land.lhs.true.51:                                 ; preds = %lor.lhs.false.47
  %49 = load i8, i8* @PL_dowarn, align 1
  %conv52 = zext i8 %49 to i32
  %and53 = and i32 %conv52, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.51, %lor.lhs.false, %land.lhs.true.37
  %50 = load i8*, i8** %s, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* %50)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.51, %lor.lhs.false.47
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.else.27
  %51 = load i32, i32* @PL_sig_pending, align 4
  %tobool58 = icmp ne i32 %51, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  call void @Perl_despatch_signals()
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.57
  %52 = load i32, i32* %i, align 4
  %idxprom = sext i32 %52 to i64
  %53 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %arrayidx61 = getelementptr inbounds %struct.sv*, %struct.sv** %53, i64 %idxprom
  %54 = load %struct.sv*, %struct.sv** %arrayidx61, align 8
  call void @Perl_sv_free(%struct.sv* %54)
  %55 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %55 to i64
  %56 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx63 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i64 %idxprom62
  %57 = load %struct.sv*, %struct.sv** %arrayidx63, align 8
  store %struct.sv* %57, %struct.sv** %to_dec, align 8
  %58 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  store %struct.sv* %58, %struct.sv** @PL_Sv, align 8
  %59 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool64 = icmp ne %struct.sv* %59, null
  br i1 %tobool64, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.60
  %60 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 1
  %61 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %61, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool65 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.60
  %62 = phi i1 [ false, %if.end.60 ], [ %tobool65, %land.rhs ]
  %land.ext = zext i1 %62 to i32
  %63 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %64 to i64
  %65 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx67 = getelementptr inbounds %struct.sv*, %struct.sv** %65, i64 %idxprom66
  store %struct.sv* %63, %struct.sv** %arrayidx67, align 8
  %66 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags68 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 2
  %67 = load i32, i32* %sv_flags68, align 4
  %and69 = and i32 %67, -2049
  store i32 %and69, i32* %sv_flags68, align 4
  %68 = load i8*, i8** %s, align 8
  %69 = load i64, i64* %len, align 8
  %call70 = call %struct.sv* @Perl_newSVpvn(i8* %68, i64 %69)
  %70 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %70 to i64
  %71 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %arrayidx72 = getelementptr inbounds %struct.sv*, %struct.sv** %71, i64 %idxprom71
  store %struct.sv* %call70, %struct.sv** %arrayidx72, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %72 to i64
  %73 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %arrayidx74 = getelementptr inbounds %struct.sv*, %struct.sv** %73, i64 %idxprom73
  %74 = load %struct.sv*, %struct.sv** %arrayidx74, align 8
  %sv_flags75 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 2
  %75 = load i32, i32* %sv_flags75, align 4
  %or = or i32 %75, 8388608
  store i32 %or, i32* %sv_flags75, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %land.end, %if.end.26
  %76 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags77 = getelementptr inbounds %struct.sv, %struct.sv* %76, i32 0, i32 2
  %77 = load i32, i32* %sv_flags77, align 4
  %and78 = and i32 %77, 255
  %cmp79 = icmp eq i32 %and78, 13
  br i1 %cmp79, label %if.then.85, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.76
  %78 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags82 = getelementptr inbounds %struct.sv, %struct.sv* %78, i32 0, i32 2
  %79 = load i32, i32* %sv_flags82, align 4
  %and83 = and i32 %79, 524288
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.101

if.then.85:                                       ; preds = %lor.lhs.false.81, %if.end.76
  %80 = load i32, i32* %i, align 4
  %tobool86 = icmp ne i32 %80, 0
  br i1 %tobool86, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.then.85
  %81 = load i32, i32* %i, align 4
  %82 = load void (i32)*, void (i32)** @PL_csighandlerp, align 8
  %call88 = call void (i32)* @Perl_rsignal(i32 %81, void (i32)* %82)
  br label %if.end.97

if.else.89:                                       ; preds = %if.then.85
  %83 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  store %struct.sv* %83, %struct.sv** @PL_Sv, align 8
  %84 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool90 = icmp ne %struct.sv* %84, null
  br i1 %tobool90, label %land.rhs.91, label %land.end.95

land.rhs.91:                                      ; preds = %if.else.89
  %85 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt92 = getelementptr inbounds %struct.sv, %struct.sv* %85, i32 0, i32 1
  %86 = load i32, i32* %sv_refcnt92, align 4
  %inc93 = add i32 %86, 1
  store i32 %inc93, i32* %sv_refcnt92, align 4
  %tobool94 = icmp ne i32 %inc93, 0
  br label %land.end.95

land.end.95:                                      ; preds = %land.rhs.91, %if.else.89
  %87 = phi i1 [ false, %if.else.89 ], [ %tobool94, %land.rhs.91 ]
  %land.ext96 = zext i1 %87 to i32
  %88 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %89 = load %struct.sv**, %struct.sv*** %svp, align 8
  store %struct.sv* %88, %struct.sv** %89, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %land.end.95, %if.then.87
  %90 = load %struct.sv*, %struct.sv** %to_dec, align 8
  %tobool98 = icmp ne %struct.sv* %90, null
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.97
  %91 = load %struct.sv*, %struct.sv** %to_dec, align 8
  call void @Perl_sv_free(%struct.sv* %91)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.end.97
  store i32 0, i32* %retval
  br label %return

if.end.101:                                       ; preds = %lor.lhs.false.81
  %92 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags102 = getelementptr inbounds %struct.sv, %struct.sv* %92, i32 0, i32 2
  %93 = load i32, i32* %sv_flags102, align 4
  %and103 = and i32 %93, 10223616
  %cmp104 = icmp eq i32 %and103, 262144
  br i1 %cmp104, label %cond.true.106, label %cond.false.111

cond.true.106:                                    ; preds = %if.end.101
  %94 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any107 = getelementptr inbounds %struct.sv, %struct.sv* %94, i32 0, i32 0
  %95 = load i8*, i8** %sv_any107, align 8
  %96 = bitcast i8* %95 to %struct.xpv*
  %xpv_cur108 = getelementptr inbounds %struct.xpv, %struct.xpv* %96, i32 0, i32 1
  %97 = load i64, i64* %xpv_cur108, align 8
  store i64 %97, i64* %len, align 8
  %98 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any109 = getelementptr inbounds %struct.sv, %struct.sv* %98, i32 0, i32 0
  %99 = load i8*, i8** %sv_any109, align 8
  %100 = bitcast i8* %99 to %struct.xpv*
  %xpv_pv110 = getelementptr inbounds %struct.xpv, %struct.xpv* %100, i32 0, i32 0
  %101 = load i8*, i8** %xpv_pv110, align 8
  br label %cond.end.113

cond.false.111:                                   ; preds = %if.end.101
  %102 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call112 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %102, i64* %len, i32 2)
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.111, %cond.true.106
  %cond114 = phi i8* [ %101, %cond.true.106 ], [ %call112, %cond.false.111 ]
  store i8* %cond114, i8** %s, align 8
  %103 = load i8*, i8** %s, align 8
  %call115 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.else.122, label %if.then.117

if.then.117:                                      ; preds = %cond.end.113
  %104 = load i32, i32* %i, align 4
  %tobool118 = icmp ne i32 %104, 0
  br i1 %tobool118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.then.117
  %105 = load i32, i32* %i, align 4
  %call120 = call void (i32)* @Perl_rsignal(i32 %105, void (i32)* inttoptr (i64 1 to void (i32)*))
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.then.117
  br label %if.end.153

if.else.122:                                      ; preds = %cond.end.113
  %106 = load i8*, i8** %s, align 8
  %call123 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0))
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %lor.lhs.false.125, label %if.then.127

lor.lhs.false.125:                                ; preds = %if.else.122
  %107 = load i8*, i8** %s, align 8
  %108 = load i8, i8* %107, align 1
  %tobool126 = icmp ne i8 %108, 0
  br i1 %tobool126, label %if.else.132, label %if.then.127

if.then.127:                                      ; preds = %lor.lhs.false.125, %if.else.122
  %109 = load i32, i32* %i, align 4
  %tobool128 = icmp ne i32 %109, 0
  br i1 %tobool128, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %if.then.127
  %110 = load i32, i32* %i, align 4
  %call130 = call void (i32)* @Perl_rsignal(i32 %110, void (i32)* null)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.then.127
  br label %if.end.152

if.else.132:                                      ; preds = %lor.lhs.false.125
  %111 = load i8*, i8** %s, align 8
  %call133 = call i8* @strchr(i8* %111, i32 58)
  %tobool134 = icmp ne i8* %call133, null
  br i1 %tobool134, label %if.end.139, label %land.lhs.true.135

land.lhs.true.135:                                ; preds = %if.else.132
  %112 = load i8*, i8** %s, align 8
  %call136 = call i8* @strchr(i8* %112, i32 39)
  %tobool137 = icmp ne i8* %call136, null
  br i1 %tobool137, label %if.end.139, label %if.then.138

if.then.138:                                      ; preds = %land.lhs.true.135
  %113 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_insert(%struct.sv* %113, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i64 6)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %land.lhs.true.135, %if.else.132
  %114 = load i32, i32* %i, align 4
  %tobool140 = icmp ne i32 %114, 0
  br i1 %tobool140, label %if.then.141, label %if.else.143

if.then.141:                                      ; preds = %if.end.139
  %115 = load i32, i32* %i, align 4
  %116 = load void (i32)*, void (i32)** @PL_csighandlerp, align 8
  %call142 = call void (i32)* @Perl_rsignal(i32 %115, void (i32)* %116)
  br label %if.end.151

if.else.143:                                      ; preds = %if.end.139
  %117 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  store %struct.sv* %117, %struct.sv** @PL_Sv, align 8
  %118 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool144 = icmp ne %struct.sv* %118, null
  br i1 %tobool144, label %land.rhs.145, label %land.end.149

land.rhs.145:                                     ; preds = %if.else.143
  %119 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt146 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 1
  %120 = load i32, i32* %sv_refcnt146, align 4
  %inc147 = add i32 %120, 1
  store i32 %inc147, i32* %sv_refcnt146, align 4
  %tobool148 = icmp ne i32 %inc147, 0
  br label %land.end.149

land.end.149:                                     ; preds = %land.rhs.145, %if.else.143
  %121 = phi i1 [ false, %if.else.143 ], [ %tobool148, %land.rhs.145 ]
  %land.ext150 = zext i1 %121 to i32
  %122 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %123 = load %struct.sv**, %struct.sv*** %svp, align 8
  store %struct.sv* %122, %struct.sv** %123, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %land.end.149, %if.then.141
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.131
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.121
  %124 = load %struct.sv*, %struct.sv** %to_dec, align 8
  %tobool154 = icmp ne %struct.sv* %124, null
  br i1 %tobool154, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.153
  %125 = load %struct.sv*, %struct.sv** %to_dec, align 8
  call void @Perl_sv_free(%struct.sv* %125)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %if.end.153
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.156, %if.end.100, %if.end.56
  %126 = load i32, i32* %retval
  ret i32 %126
}

declare void @Perl_warner(i32, i8*, ...) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

declare i8* @strchr(i8*, i32) #1

declare void @Perl_sv_insert(%struct.sv*, i64, i64, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setisa(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load i32, i32* @PL_sub_generation, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @PL_sub_generation, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setamagic(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load i64, i64* @PL_amagic_generation, align 8
  %inc = add nsw i64 %0, 1
  store i64 %inc, i64* @PL_amagic_generation, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_getnkeys(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %hv = alloca %struct.hv*, align 8
  %i = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %2, i32 0, i32 9
  %3 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  %4 = bitcast %struct.sv* %3 to %struct.hv*
  store %struct.hv* %4, %struct.hv** %hv, align 8
  store i32 0, i32* %i, align 4
  %5 = load %struct.hv*, %struct.hv** %hv, align 8
  %tobool = icmp ne %struct.hv* %5, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct.hv*, %struct.hv** %hv, align 8
  %call = call i32 @Perl_hv_iterinit(%struct.hv* %6)
  %7 = load %struct.hv*, %struct.hv** %hv, align 8
  %8 = bitcast %struct.hv* %7 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags, align 4
  %and = and i32 %9, 32768
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load %struct.hv*, %struct.hv** %hv, align 8
  %11 = bitcast %struct.hv* %10 to %struct.sv*
  %call2 = call %struct.magic* @Perl_mg_find(%struct.sv* %11, i32 80)
  %tobool3 = icmp ne %struct.magic* %call2, null
  br i1 %tobool3, label %if.else, label %if.then.4

cond.false:                                       ; preds = %if.then
  br i1 false, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %cond.false, %cond.true
  %12 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any5 = getelementptr inbounds %struct.hv, %struct.hv* %12, i32 0, i32 0
  %13 = load %struct.xpvhv*, %struct.xpvhv** %sv_any5, align 8
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %13, i32 0, i32 3
  %14 = load i64, i64* %xhv_keys, align 8
  %15 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any6 = getelementptr inbounds %struct.hv, %struct.hv* %15, i32 0, i32 0
  %16 = load %struct.xpvhv*, %struct.xpvhv** %sv_any6, align 8
  %xnv_nv = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %16, i32 0, i32 4
  %17 = load double, double* %xnv_nv, align 8
  %conv = fptosi double %17 to i64
  %sub = sub nsw i64 %14, %conv
  %conv7 = trunc i64 %sub to i32
  store i32 %conv7, i32* %i, align 4
  br label %if.end

if.else:                                          ; preds = %cond.false, %cond.true
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %18 = load %struct.hv*, %struct.hv** %hv, align 8
  %call8 = call %struct.he* @Perl_hv_iternext(%struct.hv* %18)
  %tobool9 = icmp ne %struct.he* %call8, null
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %20 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %21 = load i32, i32* %i, align 4
  %conv11 = sext i32 %21 to i64
  call void @Perl_sv_setiv(%struct.sv* %20, i64 %conv11)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setnkeys(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %2, i32 0, i32 9
  %3 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  %tobool = icmp ne %struct.sv* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any1, align 8
  %6 = bitcast i8* %5 to %struct.xpvlv*
  %xlv_targ2 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %6, i32 0, i32 9
  %7 = load %struct.sv*, %struct.sv** %xlv_targ2, align 8
  %8 = bitcast %struct.sv* %7 to %struct.hv*
  %9 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %and = and i32 %10, 65536
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any4, align 8
  %13 = bitcast i8* %12 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %13, i32 0, i32 3
  %14 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %call, %cond.false ]
  call void @Perl_hv_ksplit(%struct.hv* %8, i64 %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  ret i32 0
}

declare void @Perl_hv_ksplit(%struct.hv*, i64) #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_getpack(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 6
  %1 = load i8*, i8** %mg_ptr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %2, i32 0, i32 4
  %3 = load i8, i8* %mg_flags, align 1
  %conv = zext i8 %3 to i32
  %or = or i32 %conv, 4
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, i8* %mg_flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %5 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %call = call i32 @S_magic_methpack(%struct.sv* %4, %struct.magic* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @S_magic_methpack(%struct.sv* %sv, %struct.magic* %mg, i8* %meth) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %meth.addr = alloca i8*, align 8
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %sp18 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp58 = alloca %struct.av*, align 8
  %tmp60 = alloca %struct.stackinfo*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  store i8* %meth, i8** %meth.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %1 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %1, i32* @PL_tmps_floor, align 4
  %2 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %2, i32 0, i32 6
  %3 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %3, %struct.stackinfo** %next, align 8
  %4 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool = icmp ne %struct.stackinfo* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call, %struct.stackinfo** %next, align 8
  %5 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %6 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %6, i32 0, i32 5
  store %struct.stackinfo* %5, %struct.stackinfo** %si_prev, align 8
  %7 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %8 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next1 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %8, i32 0, i32 6
  store %struct.stackinfo* %7, %struct.stackinfo** %si_next1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %9, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %10 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %10, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %11 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %11, i32 0, i32 0
  %12 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %12, i32 0, i32 0
  %13 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %13, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %14 = load %struct.sv**, %struct.sv*** %sp, align 8
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %14 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %16 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any2 = getelementptr inbounds %struct.av, %struct.av* %16, i32 0, i32 0
  %17 = load %struct.xpvav*, %struct.xpvav** %sv_any2, align 8
  %xav_fill3 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %17, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill3, align 8
  %18 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack4 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %18, i32 0, i32 0
  %19 = load %struct.av*, %struct.av** %si_stack4, align 8
  %sv_any5 = getelementptr inbounds %struct.av, %struct.av* %19, i32 0, i32 0
  %20 = load %struct.xpvav*, %struct.xpvav** %sv_any5, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %20, i32 0, i32 0
  %21 = load i8*, i8** %xav_array, align 8
  %22 = bitcast i8* %21 to %struct.sv**
  store %struct.sv** %22, %struct.sv*** @PL_stack_base, align 8
  %23 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %24 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack6 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %24, i32 0, i32 0
  %25 = load %struct.av*, %struct.av** %si_stack6, align 8
  %sv_any7 = getelementptr inbounds %struct.av, %struct.av* %25, i32 0, i32 0
  %26 = load %struct.xpvav*, %struct.xpvav** %sv_any7, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %26, i32 0, i32 2
  %27 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 %27
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %29 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack8 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %29, i32 0, i32 0
  %30 = load %struct.av*, %struct.av** %si_stack8, align 8
  %sv_any9 = getelementptr inbounds %struct.av, %struct.av* %30, i32 0, i32 0
  %31 = load %struct.xpvav*, %struct.xpvav** %sv_any9, align 8
  %xav_fill10 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %31, i32 0, i32 1
  %32 = load i64, i64* %xav_fill10, align 8
  %add.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %32
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr11, %struct.sv*** %sp, align 8
  %33 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack12 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %33, i32 0, i32 0
  %34 = load %struct.av*, %struct.av** %si_stack12, align 8
  store %struct.av* %34, %struct.av** @PL_curstack, align 8
  store %struct.av* %34, %struct.av** %tmp
  %35 = load %struct.av*, %struct.av** %tmp
  %36 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %36, %struct.stackinfo** @PL_curstackinfo, align 8
  %37 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %38 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %39 = load i8*, i8** %meth.addr, align 8
  %call13 = call i32 @S_magic_methcall(%struct.sv* %37, %struct.magic* %38, i8* %39, i32 0, i32 2, %struct.sv* null)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %40 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %41 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %41, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8
  %42 = load %struct.sv*, %struct.sv** %41, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %40, %struct.sv* %42, i32 2)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %43, %struct.sv*** %sp18, align 8
  %44 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev20 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %44, i32 0, i32 5
  %45 = load %struct.stackinfo*, %struct.stackinfo** %si_prev20, align 8
  store %struct.stackinfo* %45, %struct.stackinfo** %prev, align 8
  %46 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool21 = icmp ne %struct.stackinfo* %46, null
  br i1 %tobool21, label %if.end.40, label %if.then.22

if.then.22:                                       ; preds = %if.end.16
  %47 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool23 = icmp ne %struct.gv* %47, null
  br i1 %tobool23, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.22
  %48 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %48, i32 0, i32 2
  %49 = load i32, i32* %sv_flags, align 4
  %and = and i32 %49, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.24, label %cond.false

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %50 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any25 = getelementptr inbounds %struct.gv, %struct.gv* %50, i32 0, i32 0
  %51 = load %struct.xpvgv*, %struct.xpvgv** %sv_any25, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %51, i32 0, i32 7
  %52 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %52, i32 0, i32 2
  %53 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool26 = icmp ne %struct.io* %53, null
  br i1 %tobool26, label %land.lhs.true.27, label %cond.false

land.lhs.true.27:                                 ; preds = %land.lhs.true.24
  %54 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any28 = getelementptr inbounds %struct.gv, %struct.gv* %54, i32 0, i32 0
  %55 = load %struct.xpvgv*, %struct.xpvgv** %sv_any28, align 8
  %xgv_gp29 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %55, i32 0, i32 7
  %56 = load %struct.gp*, %struct.gp** %xgv_gp29, align 8
  %gp_io30 = getelementptr inbounds %struct.gp, %struct.gp* %56, i32 0, i32 2
  %57 = load %struct.io*, %struct.io** %gp_io30, align 8
  %sv_any31 = getelementptr inbounds %struct.io, %struct.io* %57, i32 0, i32 0
  %58 = load %struct.xpvio*, %struct.xpvio** %sv_any31, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %58, i32 0, i32 8
  %59 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool32 = icmp ne %struct._PerlIO** %59, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.27
  %60 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any33 = getelementptr inbounds %struct.gv, %struct.gv* %60, i32 0, i32 0
  %61 = load %struct.xpvgv*, %struct.xpvgv** %sv_any33, align 8
  %xgv_gp34 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %61, i32 0, i32 7
  %62 = load %struct.gp*, %struct.gp** %xgv_gp34, align 8
  %gp_io35 = getelementptr inbounds %struct.gp, %struct.gp* %62, i32 0, i32 2
  %63 = load %struct.io*, %struct.io** %gp_io35, align 8
  %sv_any36 = getelementptr inbounds %struct.io, %struct.io* %63, i32 0, i32 0
  %64 = load %struct.xpvio*, %struct.xpvio** %sv_any36, align 8
  %xio_ofp37 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %64, i32 0, i32 8
  %65 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp37, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.27, %land.lhs.true.24, %land.lhs.true, %if.then.22
  %call38 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %65, %cond.true ], [ %call38, %cond.false ]
  %call39 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.40

if.end.40:                                        ; preds = %cond.end, %if.end.16
  %66 = load %struct.sv**, %struct.sv*** %sp18, align 8
  %67 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast41 = ptrtoint %struct.sv** %66 to i64
  %sub.ptr.rhs.cast42 = ptrtoint %struct.sv** %67 to i64
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %sub.ptr.div44 = sdiv exact i64 %sub.ptr.sub43, 8
  %68 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any45 = getelementptr inbounds %struct.av, %struct.av* %68, i32 0, i32 0
  %69 = load %struct.xpvav*, %struct.xpvav** %sv_any45, align 8
  %xav_fill46 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %69, i32 0, i32 1
  store i64 %sub.ptr.div44, i64* %xav_fill46, align 8
  %70 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack47 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %70, i32 0, i32 0
  %71 = load %struct.av*, %struct.av** %si_stack47, align 8
  %sv_any48 = getelementptr inbounds %struct.av, %struct.av* %71, i32 0, i32 0
  %72 = load %struct.xpvav*, %struct.xpvav** %sv_any48, align 8
  %xav_array49 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %72, i32 0, i32 0
  %73 = load i8*, i8** %xav_array49, align 8
  %74 = bitcast i8* %73 to %struct.sv**
  store %struct.sv** %74, %struct.sv*** @PL_stack_base, align 8
  %75 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %76 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack50 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %76, i32 0, i32 0
  %77 = load %struct.av*, %struct.av** %si_stack50, align 8
  %sv_any51 = getelementptr inbounds %struct.av, %struct.av* %77, i32 0, i32 0
  %78 = load %struct.xpvav*, %struct.xpvav** %sv_any51, align 8
  %xav_max52 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %78, i32 0, i32 2
  %79 = load i64, i64* %xav_max52, align 8
  %add.ptr53 = getelementptr inbounds %struct.sv*, %struct.sv** %75, i64 %79
  store %struct.sv** %add.ptr53, %struct.sv*** @PL_stack_max, align 8
  %80 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %81 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack54 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %81, i32 0, i32 0
  %82 = load %struct.av*, %struct.av** %si_stack54, align 8
  %sv_any55 = getelementptr inbounds %struct.av, %struct.av* %82, i32 0, i32 0
  %83 = load %struct.xpvav*, %struct.xpvav** %sv_any55, align 8
  %xav_fill56 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %83, i32 0, i32 1
  %84 = load i64, i64* %xav_fill56, align 8
  %add.ptr57 = getelementptr inbounds %struct.sv*, %struct.sv** %80, i64 %84
  store %struct.sv** %add.ptr57, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr57, %struct.sv*** %sp18, align 8
  %85 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack59 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %85, i32 0, i32 0
  %86 = load %struct.av*, %struct.av** %si_stack59, align 8
  store %struct.av* %86, %struct.av** @PL_curstack, align 8
  store %struct.av* %86, %struct.av** %tmp58
  %87 = load %struct.av*, %struct.av** %tmp58
  %88 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %88, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %88, %struct.stackinfo** %tmp60
  %89 = load %struct.stackinfo*, %struct.stackinfo** %tmp60
  %90 = load i32, i32* @PL_tmps_ix, align 4
  %91 = load i32, i32* @PL_tmps_floor, align 4
  %cmp61 = icmp sgt i32 %90, %91
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.40
  call void @Perl_free_tmps()
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end.40
  call void @Perl_pop_scope()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setpack(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %sp15 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp55 = alloca %struct.av*, align 8
  %tmp57 = alloca %struct.stackinfo*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  call void @Perl_push_scope()
  %1 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %1, i32 0, i32 6
  %2 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %2, %struct.stackinfo** %next, align 8
  %3 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool = icmp ne %struct.stackinfo* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call, %struct.stackinfo** %next, align 8
  %4 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %5 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %5, i32 0, i32 5
  store %struct.stackinfo* %4, %struct.stackinfo** %si_prev, align 8
  %6 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %7 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next1 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %7, i32 0, i32 6
  store %struct.stackinfo* %6, %struct.stackinfo** %si_next1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %8, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %9 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %9, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %10 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %10, i32 0, i32 0
  %11 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %11, i32 0, i32 0
  %12 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %12, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %13 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %15 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any2 = getelementptr inbounds %struct.av, %struct.av* %15, i32 0, i32 0
  %16 = load %struct.xpvav*, %struct.xpvav** %sv_any2, align 8
  %xav_fill3 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %16, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill3, align 8
  %17 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack4 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %17, i32 0, i32 0
  %18 = load %struct.av*, %struct.av** %si_stack4, align 8
  %sv_any5 = getelementptr inbounds %struct.av, %struct.av* %18, i32 0, i32 0
  %19 = load %struct.xpvav*, %struct.xpvav** %sv_any5, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %19, i32 0, i32 0
  %20 = load i8*, i8** %xav_array, align 8
  %21 = bitcast i8* %20 to %struct.sv**
  store %struct.sv** %21, %struct.sv*** @PL_stack_base, align 8
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %23 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack6 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %23, i32 0, i32 0
  %24 = load %struct.av*, %struct.av** %si_stack6, align 8
  %sv_any7 = getelementptr inbounds %struct.av, %struct.av* %24, i32 0, i32 0
  %25 = load %struct.xpvav*, %struct.xpvav** %sv_any7, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %25, i32 0, i32 2
  %26 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %26
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %28 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack8 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %28, i32 0, i32 0
  %29 = load %struct.av*, %struct.av** %si_stack8, align 8
  %sv_any9 = getelementptr inbounds %struct.av, %struct.av* %29, i32 0, i32 0
  %30 = load %struct.xpvav*, %struct.xpvav** %sv_any9, align 8
  %xav_fill10 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %30, i32 0, i32 1
  %31 = load i64, i64* %xav_fill10, align 8
  %add.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %31
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr11, %struct.sv*** %sp, align 8
  %32 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack12 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %32, i32 0, i32 0
  %33 = load %struct.av*, %struct.av** %si_stack12, align 8
  store %struct.av* %33, %struct.av** @PL_curstack, align 8
  store %struct.av* %33, %struct.av** %tmp
  %34 = load %struct.av*, %struct.av** %tmp
  %35 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %35, %struct.stackinfo** @PL_curstackinfo, align 8
  %36 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %37 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %38 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call13 = call i32 @S_magic_methcall(%struct.sv* %36, %struct.magic* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 2, i32 3, %struct.sv* %38)
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %39, %struct.sv*** %sp15, align 8
  %40 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev17 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %40, i32 0, i32 5
  %41 = load %struct.stackinfo*, %struct.stackinfo** %si_prev17, align 8
  store %struct.stackinfo* %41, %struct.stackinfo** %prev, align 8
  %42 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool18 = icmp ne %struct.stackinfo* %42, null
  br i1 %tobool18, label %if.end.37, label %if.then.19

if.then.19:                                       ; preds = %if.end
  %43 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool20 = icmp ne %struct.gv* %43, null
  br i1 %tobool20, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.19
  %44 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %44, i32 0, i32 2
  %45 = load i32, i32* %sv_flags, align 4
  %and = and i32 %45, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.21, label %cond.false

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %46 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any22 = getelementptr inbounds %struct.gv, %struct.gv* %46, i32 0, i32 0
  %47 = load %struct.xpvgv*, %struct.xpvgv** %sv_any22, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %47, i32 0, i32 7
  %48 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %48, i32 0, i32 2
  %49 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool23 = icmp ne %struct.io* %49, null
  br i1 %tobool23, label %land.lhs.true.24, label %cond.false

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %50 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any25 = getelementptr inbounds %struct.gv, %struct.gv* %50, i32 0, i32 0
  %51 = load %struct.xpvgv*, %struct.xpvgv** %sv_any25, align 8
  %xgv_gp26 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %51, i32 0, i32 7
  %52 = load %struct.gp*, %struct.gp** %xgv_gp26, align 8
  %gp_io27 = getelementptr inbounds %struct.gp, %struct.gp* %52, i32 0, i32 2
  %53 = load %struct.io*, %struct.io** %gp_io27, align 8
  %sv_any28 = getelementptr inbounds %struct.io, %struct.io* %53, i32 0, i32 0
  %54 = load %struct.xpvio*, %struct.xpvio** %sv_any28, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %54, i32 0, i32 8
  %55 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool29 = icmp ne %struct._PerlIO** %55, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.24
  %56 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any30 = getelementptr inbounds %struct.gv, %struct.gv* %56, i32 0, i32 0
  %57 = load %struct.xpvgv*, %struct.xpvgv** %sv_any30, align 8
  %xgv_gp31 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %57, i32 0, i32 7
  %58 = load %struct.gp*, %struct.gp** %xgv_gp31, align 8
  %gp_io32 = getelementptr inbounds %struct.gp, %struct.gp* %58, i32 0, i32 2
  %59 = load %struct.io*, %struct.io** %gp_io32, align 8
  %sv_any33 = getelementptr inbounds %struct.io, %struct.io* %59, i32 0, i32 0
  %60 = load %struct.xpvio*, %struct.xpvio** %sv_any33, align 8
  %xio_ofp34 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %60, i32 0, i32 8
  %61 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp34, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true, %if.then.19
  %call35 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %61, %cond.true ], [ %call35, %cond.false ]
  %call36 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.37

if.end.37:                                        ; preds = %cond.end, %if.end
  %62 = load %struct.sv**, %struct.sv*** %sp15, align 8
  %63 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast38 = ptrtoint %struct.sv** %62 to i64
  %sub.ptr.rhs.cast39 = ptrtoint %struct.sv** %63 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %sub.ptr.div41 = sdiv exact i64 %sub.ptr.sub40, 8
  %64 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any42 = getelementptr inbounds %struct.av, %struct.av* %64, i32 0, i32 0
  %65 = load %struct.xpvav*, %struct.xpvav** %sv_any42, align 8
  %xav_fill43 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %65, i32 0, i32 1
  store i64 %sub.ptr.div41, i64* %xav_fill43, align 8
  %66 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack44 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %66, i32 0, i32 0
  %67 = load %struct.av*, %struct.av** %si_stack44, align 8
  %sv_any45 = getelementptr inbounds %struct.av, %struct.av* %67, i32 0, i32 0
  %68 = load %struct.xpvav*, %struct.xpvav** %sv_any45, align 8
  %xav_array46 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %68, i32 0, i32 0
  %69 = load i8*, i8** %xav_array46, align 8
  %70 = bitcast i8* %69 to %struct.sv**
  store %struct.sv** %70, %struct.sv*** @PL_stack_base, align 8
  %71 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %72 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack47 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %72, i32 0, i32 0
  %73 = load %struct.av*, %struct.av** %si_stack47, align 8
  %sv_any48 = getelementptr inbounds %struct.av, %struct.av* %73, i32 0, i32 0
  %74 = load %struct.xpvav*, %struct.xpvav** %sv_any48, align 8
  %xav_max49 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %74, i32 0, i32 2
  %75 = load i64, i64* %xav_max49, align 8
  %add.ptr50 = getelementptr inbounds %struct.sv*, %struct.sv** %71, i64 %75
  store %struct.sv** %add.ptr50, %struct.sv*** @PL_stack_max, align 8
  %76 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %77 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack51 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %77, i32 0, i32 0
  %78 = load %struct.av*, %struct.av** %si_stack51, align 8
  %sv_any52 = getelementptr inbounds %struct.av, %struct.av* %78, i32 0, i32 0
  %79 = load %struct.xpvav*, %struct.xpvav** %sv_any52, align 8
  %xav_fill53 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %79, i32 0, i32 1
  %80 = load i64, i64* %xav_fill53, align 8
  %add.ptr54 = getelementptr inbounds %struct.sv*, %struct.sv** %76, i64 %80
  store %struct.sv** %add.ptr54, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr54, %struct.sv*** %sp15, align 8
  %81 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack56 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %81, i32 0, i32 0
  %82 = load %struct.av*, %struct.av** %si_stack56, align 8
  store %struct.av* %82, %struct.av** @PL_curstack, align 8
  store %struct.av* %82, %struct.av** %tmp55
  %83 = load %struct.av*, %struct.av** %tmp55
  %84 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %84, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %84, %struct.stackinfo** %tmp57
  %85 = load %struct.stackinfo*, %struct.stackinfo** %tmp57
  call void @Perl_pop_scope()
  ret i32 0
}

declare void @Perl_push_scope() #1

declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @S_magic_methcall(%struct.sv* %sv, %struct.magic* %mg, i8* %meth, i32 %flags, i32 %n, %struct.sv* %val) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %meth.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %val.addr = alloca %struct.sv*, align 8
  %sp = alloca %struct.sv**, align 8
  %tmp = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  store i8* %meth, i8** %meth.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store %struct.sv* %val, %struct.sv** %val.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %1, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %2 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_markstack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %4 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  %5 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %5, align 4
  store i32 %conv, i32* %tmp
  %6 = load i32, i32* %tmp
  %7 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %8 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %9 = load i32, i32* %n.addr, align 4
  %conv5 = sext i32 %9 to i64
  %cmp6 = icmp slt i64 %sub.ptr.div4, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %12 = load i32, i32* %n.addr, align 4
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %10, %struct.sv** %11, i32 %12)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %13 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %13, i32 0, i32 5
  %14 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool = icmp ne %struct.sv* %14, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %15 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj10 = getelementptr inbounds %struct.magic, %struct.magic* %15, i32 0, i32 5
  %16 = load %struct.sv*, %struct.sv** %mg_obj10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call11 = call %struct.sv* @Perl_newRV(%struct.sv* %17)
  %call12 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %16, %cond.true ], [ %call12, %cond.false ]
  %18 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i32 1
  store %struct.sv** %incdec.ptr13, %struct.sv*** %sp, align 8
  store %struct.sv* %cond, %struct.sv** %incdec.ptr13, align 8
  %19 = load i32, i32* %n.addr, align 4
  %cmp14 = icmp sgt i32 %19, 1
  br i1 %cmp14, label %if.then.16, label %if.end.48

if.then.16:                                       ; preds = %cond.end
  %20 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %20, i32 0, i32 6
  %21 = load i8*, i8** %mg_ptr, align 8
  %tobool17 = icmp ne i8* %21, null
  br i1 %tobool17, label %if.then.18, label %if.else.36

if.then.18:                                       ; preds = %if.then.16
  %22 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %22, i32 0, i32 7
  %23 = load i32, i32* %mg_len, align 4
  %cmp19 = icmp sge i32 %23, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.18
  %24 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr22 = getelementptr inbounds %struct.magic, %struct.magic* %24, i32 0, i32 6
  %25 = load i8*, i8** %mg_ptr22, align 8
  %26 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len23 = getelementptr inbounds %struct.magic, %struct.magic* %26, i32 0, i32 7
  %27 = load i32, i32* %mg_len23, align 4
  %conv24 = sext i32 %27 to i64
  %call25 = call %struct.sv* @Perl_newSVpvn(i8* %25, i64 %conv24)
  %call26 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call25)
  %28 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr27 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i32 1
  store %struct.sv** %incdec.ptr27, %struct.sv*** %sp, align 8
  store %struct.sv* %call26, %struct.sv** %incdec.ptr27, align 8
  br label %if.end.35

if.else:                                          ; preds = %if.then.18
  %29 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len28 = getelementptr inbounds %struct.magic, %struct.magic* %29, i32 0, i32 7
  %30 = load i32, i32* %mg_len28, align 4
  %cmp29 = icmp eq i32 %30, -2
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.else
  %31 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr32 = getelementptr inbounds %struct.magic, %struct.magic* %31, i32 0, i32 6
  %32 = load i8*, i8** %mg_ptr32, align 8
  %33 = bitcast i8* %32 to %struct.sv*
  %34 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr33 = getelementptr inbounds %struct.sv*, %struct.sv** %34, i32 1
  store %struct.sv** %incdec.ptr33, %struct.sv*** %sp, align 8
  store %struct.sv* %33, %struct.sv** %incdec.ptr33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.21
  br label %if.end.47

if.else.36:                                       ; preds = %if.then.16
  %35 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_type = getelementptr inbounds %struct.magic, %struct.magic* %35, i32 0, i32 3
  %36 = load i8, i8* %mg_type, align 1
  %conv37 = sext i8 %36 to i32
  %cmp38 = icmp eq i32 %conv37, 112
  br i1 %cmp38, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %if.else.36
  %37 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len41 = getelementptr inbounds %struct.magic, %struct.magic* %37, i32 0, i32 7
  %38 = load i32, i32* %mg_len41, align 4
  %conv42 = sext i32 %38 to i64
  %call43 = call %struct.sv* @Perl_newSViv(i64 %conv42)
  %call44 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call43)
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr45 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i32 1
  store %struct.sv** %incdec.ptr45, %struct.sv*** %sp, align 8
  store %struct.sv* %call44, %struct.sv** %incdec.ptr45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.40, %if.else.36
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.35
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %cond.end
  %40 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp sgt i32 %40, 2
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.48
  %41 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %42 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr52 = getelementptr inbounds %struct.sv*, %struct.sv** %42, i32 1
  store %struct.sv** %incdec.ptr52, %struct.sv*** %sp, align 8
  store %struct.sv* %41, %struct.sv** %incdec.ptr52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.48
  %43 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %43, %struct.sv*** @PL_stack_sp, align 8
  %44 = load i8*, i8** %meth.addr, align 8
  %45 = load i32, i32* %flags.addr, align 4
  %call54 = call i32 @Perl_call_method(i8* %44, i32 %45)
  ret i32 %call54
}

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

declare void @Perl_my_exit(i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_clearpack(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %1 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %call = call i32 @S_magic_methpack(%struct.sv* %0, %struct.magic* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_sizepack(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %sp = alloca %struct.sv**, align 8
  %retval1 = alloca i32, align 4
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %sp22 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp69 = alloca %struct.av*, align 8
  %tmp71 = alloca %struct.stackinfo*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  store i32 0, i32* %retval1, align 4
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %1 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %1, i32* @PL_tmps_floor, align 4
  %2 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %2, i32 0, i32 6
  %3 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %3, %struct.stackinfo** %next, align 8
  %4 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool = icmp ne %struct.stackinfo* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call, %struct.stackinfo** %next, align 8
  %5 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %6 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %6, i32 0, i32 5
  store %struct.stackinfo* %5, %struct.stackinfo** %si_prev, align 8
  %7 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %8 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next2 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %8, i32 0, i32 6
  store %struct.stackinfo* %7, %struct.stackinfo** %si_next2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %9, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %10 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %10, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %11 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %11, i32 0, i32 0
  %12 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %12, i32 0, i32 0
  %13 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %13, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %14 = load %struct.sv**, %struct.sv*** %sp, align 8
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %14 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %16 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any3 = getelementptr inbounds %struct.av, %struct.av* %16, i32 0, i32 0
  %17 = load %struct.xpvav*, %struct.xpvav** %sv_any3, align 8
  %xav_fill4 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %17, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill4, align 8
  %18 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack5 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %18, i32 0, i32 0
  %19 = load %struct.av*, %struct.av** %si_stack5, align 8
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %19, i32 0, i32 0
  %20 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %20, i32 0, i32 0
  %21 = load i8*, i8** %xav_array, align 8
  %22 = bitcast i8* %21 to %struct.sv**
  store %struct.sv** %22, %struct.sv*** @PL_stack_base, align 8
  %23 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %24 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack7 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %24, i32 0, i32 0
  %25 = load %struct.av*, %struct.av** %si_stack7, align 8
  %sv_any8 = getelementptr inbounds %struct.av, %struct.av* %25, i32 0, i32 0
  %26 = load %struct.xpvav*, %struct.xpvav** %sv_any8, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %26, i32 0, i32 2
  %27 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 %27
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %29 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack9 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %29, i32 0, i32 0
  %30 = load %struct.av*, %struct.av** %si_stack9, align 8
  %sv_any10 = getelementptr inbounds %struct.av, %struct.av* %30, i32 0, i32 0
  %31 = load %struct.xpvav*, %struct.xpvav** %sv_any10, align 8
  %xav_fill11 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %31, i32 0, i32 1
  %32 = load i64, i64* %xav_fill11, align 8
  %add.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %32
  store %struct.sv** %add.ptr12, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr12, %struct.sv*** %sp, align 8
  %33 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack13 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %33, i32 0, i32 0
  %34 = load %struct.av*, %struct.av** %si_stack13, align 8
  store %struct.av* %34, %struct.av** @PL_curstack, align 8
  store %struct.av* %34, %struct.av** %tmp
  %35 = load %struct.av*, %struct.av** %tmp
  %36 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %36, %struct.stackinfo** @PL_curstackinfo, align 8
  %37 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %38 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %call14 = call i32 @S_magic_methcall(%struct.sv* %37, %struct.magic* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 2, %struct.sv* null)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %39, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8
  %40 = load %struct.sv*, %struct.sv** %39, align 8
  store %struct.sv* %40, %struct.sv** %sv.addr, align 8
  %41 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 2
  %42 = load i32, i32* %sv_flags, align 4
  %and = and i32 %42, 65536
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  %43 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any18 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 0
  %44 = load i8*, i8** %sv_any18, align 8
  %45 = bitcast i8* %44 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %45, i32 0, i32 3
  %46 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %47 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call19 = call i64 @Perl_sv_2iv(%struct.sv* %47)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %46, %cond.true ], [ %call19, %cond.false ]
  %conv = trunc i64 %cond to i32
  %sub = sub i32 %conv, 1
  store i32 %sub, i32* %retval1, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %cond.end, %if.end
  %48 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %48, %struct.sv*** %sp22, align 8
  %49 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev24 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %49, i32 0, i32 5
  %50 = load %struct.stackinfo*, %struct.stackinfo** %si_prev24, align 8
  store %struct.stackinfo* %50, %struct.stackinfo** %prev, align 8
  %51 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool25 = icmp ne %struct.stackinfo* %51, null
  br i1 %tobool25, label %if.end.51, label %if.then.26

if.then.26:                                       ; preds = %if.end.20
  %52 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool27 = icmp ne %struct.gv* %52, null
  br i1 %tobool27, label %land.lhs.true, label %cond.false.46

land.lhs.true:                                    ; preds = %if.then.26
  %53 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags28 = getelementptr inbounds %struct.gv, %struct.gv* %53, i32 0, i32 2
  %54 = load i32, i32* %sv_flags28, align 4
  %and29 = and i32 %54, 255
  %cmp = icmp eq i32 %and29, 13
  br i1 %cmp, label %land.lhs.true.31, label %cond.false.46

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %55 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any32 = getelementptr inbounds %struct.gv, %struct.gv* %55, i32 0, i32 0
  %56 = load %struct.xpvgv*, %struct.xpvgv** %sv_any32, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %56, i32 0, i32 7
  %57 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %57, i32 0, i32 2
  %58 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool33 = icmp ne %struct.io* %58, null
  br i1 %tobool33, label %land.lhs.true.34, label %cond.false.46

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %59 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any35 = getelementptr inbounds %struct.gv, %struct.gv* %59, i32 0, i32 0
  %60 = load %struct.xpvgv*, %struct.xpvgv** %sv_any35, align 8
  %xgv_gp36 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %60, i32 0, i32 7
  %61 = load %struct.gp*, %struct.gp** %xgv_gp36, align 8
  %gp_io37 = getelementptr inbounds %struct.gp, %struct.gp* %61, i32 0, i32 2
  %62 = load %struct.io*, %struct.io** %gp_io37, align 8
  %sv_any38 = getelementptr inbounds %struct.io, %struct.io* %62, i32 0, i32 0
  %63 = load %struct.xpvio*, %struct.xpvio** %sv_any38, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %63, i32 0, i32 8
  %64 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool39 = icmp ne %struct._PerlIO** %64, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.46

cond.true.40:                                     ; preds = %land.lhs.true.34
  %65 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any41 = getelementptr inbounds %struct.gv, %struct.gv* %65, i32 0, i32 0
  %66 = load %struct.xpvgv*, %struct.xpvgv** %sv_any41, align 8
  %xgv_gp42 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %66, i32 0, i32 7
  %67 = load %struct.gp*, %struct.gp** %xgv_gp42, align 8
  %gp_io43 = getelementptr inbounds %struct.gp, %struct.gp* %67, i32 0, i32 2
  %68 = load %struct.io*, %struct.io** %gp_io43, align 8
  %sv_any44 = getelementptr inbounds %struct.io, %struct.io* %68, i32 0, i32 0
  %69 = load %struct.xpvio*, %struct.xpvio** %sv_any44, align 8
  %xio_ofp45 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %69, i32 0, i32 8
  %70 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp45, align 8
  br label %cond.end.48

cond.false.46:                                    ; preds = %land.lhs.true.34, %land.lhs.true.31, %land.lhs.true, %if.then.26
  %call47 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.40
  %cond49 = phi %struct._PerlIO** [ %70, %cond.true.40 ], [ %call47, %cond.false.46 ]
  %call50 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.51

if.end.51:                                        ; preds = %cond.end.48, %if.end.20
  %71 = load %struct.sv**, %struct.sv*** %sp22, align 8
  %72 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast52 = ptrtoint %struct.sv** %71 to i64
  %sub.ptr.rhs.cast53 = ptrtoint %struct.sv** %72 to i64
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53
  %sub.ptr.div55 = sdiv exact i64 %sub.ptr.sub54, 8
  %73 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any56 = getelementptr inbounds %struct.av, %struct.av* %73, i32 0, i32 0
  %74 = load %struct.xpvav*, %struct.xpvav** %sv_any56, align 8
  %xav_fill57 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %74, i32 0, i32 1
  store i64 %sub.ptr.div55, i64* %xav_fill57, align 8
  %75 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack58 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %75, i32 0, i32 0
  %76 = load %struct.av*, %struct.av** %si_stack58, align 8
  %sv_any59 = getelementptr inbounds %struct.av, %struct.av* %76, i32 0, i32 0
  %77 = load %struct.xpvav*, %struct.xpvav** %sv_any59, align 8
  %xav_array60 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %77, i32 0, i32 0
  %78 = load i8*, i8** %xav_array60, align 8
  %79 = bitcast i8* %78 to %struct.sv**
  store %struct.sv** %79, %struct.sv*** @PL_stack_base, align 8
  %80 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %81 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack61 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %81, i32 0, i32 0
  %82 = load %struct.av*, %struct.av** %si_stack61, align 8
  %sv_any62 = getelementptr inbounds %struct.av, %struct.av* %82, i32 0, i32 0
  %83 = load %struct.xpvav*, %struct.xpvav** %sv_any62, align 8
  %xav_max63 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %83, i32 0, i32 2
  %84 = load i64, i64* %xav_max63, align 8
  %add.ptr64 = getelementptr inbounds %struct.sv*, %struct.sv** %80, i64 %84
  store %struct.sv** %add.ptr64, %struct.sv*** @PL_stack_max, align 8
  %85 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %86 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack65 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %86, i32 0, i32 0
  %87 = load %struct.av*, %struct.av** %si_stack65, align 8
  %sv_any66 = getelementptr inbounds %struct.av, %struct.av* %87, i32 0, i32 0
  %88 = load %struct.xpvav*, %struct.xpvav** %sv_any66, align 8
  %xav_fill67 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %88, i32 0, i32 1
  %89 = load i64, i64* %xav_fill67, align 8
  %add.ptr68 = getelementptr inbounds %struct.sv*, %struct.sv** %85, i64 %89
  store %struct.sv** %add.ptr68, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr68, %struct.sv*** %sp22, align 8
  %90 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack70 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %90, i32 0, i32 0
  %91 = load %struct.av*, %struct.av** %si_stack70, align 8
  store %struct.av* %91, %struct.av** @PL_curstack, align 8
  store %struct.av* %91, %struct.av** %tmp69
  %92 = load %struct.av*, %struct.av** %tmp69
  %93 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %93, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %93, %struct.stackinfo** %tmp71
  %94 = load %struct.stackinfo*, %struct.stackinfo** %tmp71
  %95 = load i32, i32* @PL_tmps_ix, align 4
  %96 = load i32, i32* @PL_tmps_floor, align 4
  %cmp72 = icmp sgt i32 %95, %96
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.51
  call void @Perl_free_tmps()
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.end.51
  call void @Perl_pop_scope()
  %97 = load i32, i32* %retval1, align 4
  ret i32 %97
}

declare void @Perl_save_int(i32*) #1

declare void @Perl_free_tmps() #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_wipepack(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp15 = alloca i32, align 4
  %tmp29 = alloca %struct.sv*, align 8
  %sp37 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp83 = alloca %struct.av*, align 8
  %tmp85 = alloca %struct.stackinfo*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  call void @Perl_push_scope()
  %1 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %1, i32 0, i32 6
  %2 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %2, %struct.stackinfo** %next, align 8
  %3 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool = icmp ne %struct.stackinfo* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call, %struct.stackinfo** %next, align 8
  %4 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %5 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %5, i32 0, i32 5
  store %struct.stackinfo* %4, %struct.stackinfo** %si_prev, align 8
  %6 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %7 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next1 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %7, i32 0, i32 6
  store %struct.stackinfo* %6, %struct.stackinfo** %si_next1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %8, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %9 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %9, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %10 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %10, i32 0, i32 0
  %11 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %11, i32 0, i32 0
  %12 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %12, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %13 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %15 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any2 = getelementptr inbounds %struct.av, %struct.av* %15, i32 0, i32 0
  %16 = load %struct.xpvav*, %struct.xpvav** %sv_any2, align 8
  %xav_fill3 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %16, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill3, align 8
  %17 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack4 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %17, i32 0, i32 0
  %18 = load %struct.av*, %struct.av** %si_stack4, align 8
  %sv_any5 = getelementptr inbounds %struct.av, %struct.av* %18, i32 0, i32 0
  %19 = load %struct.xpvav*, %struct.xpvav** %sv_any5, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %19, i32 0, i32 0
  %20 = load i8*, i8** %xav_array, align 8
  %21 = bitcast i8* %20 to %struct.sv**
  store %struct.sv** %21, %struct.sv*** @PL_stack_base, align 8
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %23 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack6 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %23, i32 0, i32 0
  %24 = load %struct.av*, %struct.av** %si_stack6, align 8
  %sv_any7 = getelementptr inbounds %struct.av, %struct.av* %24, i32 0, i32 0
  %25 = load %struct.xpvav*, %struct.xpvav** %sv_any7, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %25, i32 0, i32 2
  %26 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %26
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %28 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack8 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %28, i32 0, i32 0
  %29 = load %struct.av*, %struct.av** %si_stack8, align 8
  %sv_any9 = getelementptr inbounds %struct.av, %struct.av* %29, i32 0, i32 0
  %30 = load %struct.xpvav*, %struct.xpvav** %sv_any9, align 8
  %xav_fill10 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %30, i32 0, i32 1
  %31 = load i64, i64* %xav_fill10, align 8
  %add.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %31
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr11, %struct.sv*** %sp, align 8
  %32 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack12 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %32, i32 0, i32 0
  %33 = load %struct.av*, %struct.av** %si_stack12, align 8
  store %struct.av* %33, %struct.av** @PL_curstack, align 8
  store %struct.av* %33, %struct.av** %tmp
  %34 = load %struct.av*, %struct.av** %tmp
  %35 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %35, %struct.stackinfo** @PL_curstackinfo, align 8
  %36 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %37 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %37
  br i1 %cmp, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  call void @Perl_markstack_grow()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast16 = ptrtoint %struct.sv** %38 to i64
  %sub.ptr.rhs.cast17 = ptrtoint %struct.sv** %39 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %sub.ptr.div19 = sdiv exact i64 %sub.ptr.sub18, 8
  %conv = trunc i64 %sub.ptr.div19 to i32
  %40 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %40, align 4
  store i32 %conv, i32* %tmp15
  %41 = load i32, i32* %tmp15
  %42 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %43 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast20 = ptrtoint %struct.sv** %42 to i64
  %sub.ptr.rhs.cast21 = ptrtoint %struct.sv** %43 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %sub.ptr.div23 = sdiv exact i64 %sub.ptr.sub22, 8
  %cmp24 = icmp slt i64 %sub.ptr.div23, 1
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.14
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %45 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call27 = call %struct.sv** @Perl_stack_grow(%struct.sv** %44, %struct.sv** %45, i32 1)
  store %struct.sv** %call27, %struct.sv*** %sp, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.14
  %46 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %46, i32 0, i32 5
  %47 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool30 = icmp ne %struct.sv* %47, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %48 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj31 = getelementptr inbounds %struct.magic, %struct.magic* %48, i32 0, i32 5
  %49 = load %struct.sv*, %struct.sv** %mg_obj31, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  %50 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call32 = call %struct.sv* @Perl_newRV(%struct.sv* %50)
  %call33 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %49, %cond.true ], [ %call33, %cond.false ]
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr34 = getelementptr inbounds %struct.sv*, %struct.sv** %51, i32 1
  store %struct.sv** %incdec.ptr34, %struct.sv*** %sp, align 8
  store %struct.sv* %cond, %struct.sv** %incdec.ptr34, align 8
  store %struct.sv* %cond, %struct.sv** %tmp29
  %52 = load %struct.sv*, %struct.sv** %tmp29
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %53, %struct.sv*** @PL_stack_sp, align 8
  %call35 = call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 2)
  %54 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %54, %struct.sv*** %sp37, align 8
  %55 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev39 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %55, i32 0, i32 5
  %56 = load %struct.stackinfo*, %struct.stackinfo** %si_prev39, align 8
  store %struct.stackinfo* %56, %struct.stackinfo** %prev, align 8
  %57 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool40 = icmp ne %struct.stackinfo* %57, null
  br i1 %tobool40, label %if.end.65, label %if.then.41

if.then.41:                                       ; preds = %cond.end
  %58 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool42 = icmp ne %struct.gv* %58, null
  br i1 %tobool42, label %land.lhs.true, label %cond.false.60

land.lhs.true:                                    ; preds = %if.then.41
  %59 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %59, i32 0, i32 2
  %60 = load i32, i32* %sv_flags, align 4
  %and = and i32 %60, 255
  %cmp43 = icmp eq i32 %and, 13
  br i1 %cmp43, label %land.lhs.true.45, label %cond.false.60

land.lhs.true.45:                                 ; preds = %land.lhs.true
  %61 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any46 = getelementptr inbounds %struct.gv, %struct.gv* %61, i32 0, i32 0
  %62 = load %struct.xpvgv*, %struct.xpvgv** %sv_any46, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %62, i32 0, i32 7
  %63 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %63, i32 0, i32 2
  %64 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool47 = icmp ne %struct.io* %64, null
  br i1 %tobool47, label %land.lhs.true.48, label %cond.false.60

land.lhs.true.48:                                 ; preds = %land.lhs.true.45
  %65 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any49 = getelementptr inbounds %struct.gv, %struct.gv* %65, i32 0, i32 0
  %66 = load %struct.xpvgv*, %struct.xpvgv** %sv_any49, align 8
  %xgv_gp50 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %66, i32 0, i32 7
  %67 = load %struct.gp*, %struct.gp** %xgv_gp50, align 8
  %gp_io51 = getelementptr inbounds %struct.gp, %struct.gp* %67, i32 0, i32 2
  %68 = load %struct.io*, %struct.io** %gp_io51, align 8
  %sv_any52 = getelementptr inbounds %struct.io, %struct.io* %68, i32 0, i32 0
  %69 = load %struct.xpvio*, %struct.xpvio** %sv_any52, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %69, i32 0, i32 8
  %70 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool53 = icmp ne %struct._PerlIO** %70, null
  br i1 %tobool53, label %cond.true.54, label %cond.false.60

cond.true.54:                                     ; preds = %land.lhs.true.48
  %71 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any55 = getelementptr inbounds %struct.gv, %struct.gv* %71, i32 0, i32 0
  %72 = load %struct.xpvgv*, %struct.xpvgv** %sv_any55, align 8
  %xgv_gp56 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %72, i32 0, i32 7
  %73 = load %struct.gp*, %struct.gp** %xgv_gp56, align 8
  %gp_io57 = getelementptr inbounds %struct.gp, %struct.gp* %73, i32 0, i32 2
  %74 = load %struct.io*, %struct.io** %gp_io57, align 8
  %sv_any58 = getelementptr inbounds %struct.io, %struct.io* %74, i32 0, i32 0
  %75 = load %struct.xpvio*, %struct.xpvio** %sv_any58, align 8
  %xio_ofp59 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %75, i32 0, i32 8
  %76 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp59, align 8
  br label %cond.end.62

cond.false.60:                                    ; preds = %land.lhs.true.48, %land.lhs.true.45, %land.lhs.true, %if.then.41
  %call61 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.true.54
  %cond63 = phi %struct._PerlIO** [ %76, %cond.true.54 ], [ %call61, %cond.false.60 ]
  %call64 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.65

if.end.65:                                        ; preds = %cond.end.62, %cond.end
  %77 = load %struct.sv**, %struct.sv*** %sp37, align 8
  %78 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast66 = ptrtoint %struct.sv** %77 to i64
  %sub.ptr.rhs.cast67 = ptrtoint %struct.sv** %78 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %sub.ptr.div69 = sdiv exact i64 %sub.ptr.sub68, 8
  %79 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any70 = getelementptr inbounds %struct.av, %struct.av* %79, i32 0, i32 0
  %80 = load %struct.xpvav*, %struct.xpvav** %sv_any70, align 8
  %xav_fill71 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %80, i32 0, i32 1
  store i64 %sub.ptr.div69, i64* %xav_fill71, align 8
  %81 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack72 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %81, i32 0, i32 0
  %82 = load %struct.av*, %struct.av** %si_stack72, align 8
  %sv_any73 = getelementptr inbounds %struct.av, %struct.av* %82, i32 0, i32 0
  %83 = load %struct.xpvav*, %struct.xpvav** %sv_any73, align 8
  %xav_array74 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %83, i32 0, i32 0
  %84 = load i8*, i8** %xav_array74, align 8
  %85 = bitcast i8* %84 to %struct.sv**
  store %struct.sv** %85, %struct.sv*** @PL_stack_base, align 8
  %86 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %87 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack75 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %87, i32 0, i32 0
  %88 = load %struct.av*, %struct.av** %si_stack75, align 8
  %sv_any76 = getelementptr inbounds %struct.av, %struct.av* %88, i32 0, i32 0
  %89 = load %struct.xpvav*, %struct.xpvav** %sv_any76, align 8
  %xav_max77 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %89, i32 0, i32 2
  %90 = load i64, i64* %xav_max77, align 8
  %add.ptr78 = getelementptr inbounds %struct.sv*, %struct.sv** %86, i64 %90
  store %struct.sv** %add.ptr78, %struct.sv*** @PL_stack_max, align 8
  %91 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %92 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack79 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %92, i32 0, i32 0
  %93 = load %struct.av*, %struct.av** %si_stack79, align 8
  %sv_any80 = getelementptr inbounds %struct.av, %struct.av* %93, i32 0, i32 0
  %94 = load %struct.xpvav*, %struct.xpvav** %sv_any80, align 8
  %xav_fill81 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %94, i32 0, i32 1
  %95 = load i64, i64* %xav_fill81, align 8
  %add.ptr82 = getelementptr inbounds %struct.sv*, %struct.sv** %91, i64 %95
  store %struct.sv** %add.ptr82, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr82, %struct.sv*** %sp37, align 8
  %96 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack84 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %96, i32 0, i32 0
  %97 = load %struct.av*, %struct.av** %si_stack84, align 8
  store %struct.av* %97, %struct.av** @PL_curstack, align 8
  store %struct.av* %97, %struct.av** %tmp83
  %98 = load %struct.av*, %struct.av** %tmp83
  %99 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %99, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %99, %struct.stackinfo** %tmp85
  %100 = load %struct.stackinfo*, %struct.stackinfo** %tmp85
  call void @Perl_pop_scope()
  ret i32 0
}

declare void @Perl_markstack_grow() #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare i32 @Perl_call_method(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_nextpack(%struct.sv* %sv, %struct.magic* %mg, %struct.sv* %key) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %key.addr = alloca %struct.sv*, align 8
  %sp = alloca %struct.sv**, align 8
  %meth = alloca i8*, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp16 = alloca i32, align 4
  %sp48 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp96 = alloca %struct.av*, align 8
  %tmp98 = alloca %struct.stackinfo*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  store %struct.sv* %key, %struct.sv** %key.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv*, %struct.sv** %key.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 118423552
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)
  store i8* %cond, i8** %meth, align 8
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %3 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %3, i32* @PL_tmps_floor, align 4
  %4 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %4, i32 0, i32 6
  %5 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %5, %struct.stackinfo** %next, align 8
  %6 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool1 = icmp ne %struct.stackinfo* %6, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call, %struct.stackinfo** %next, align 8
  %7 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %8 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %8, i32 0, i32 5
  store %struct.stackinfo* %7, %struct.stackinfo** %si_prev, align 8
  %9 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %10 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next2 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %10, i32 0, i32 6
  store %struct.stackinfo* %9, %struct.stackinfo** %si_next2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %11, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %12 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %12, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %13 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %13, i32 0, i32 0
  %14 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %14, i32 0, i32 0
  %15 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %15, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %16 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %18 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any3 = getelementptr inbounds %struct.av, %struct.av* %18, i32 0, i32 0
  %19 = load %struct.xpvav*, %struct.xpvav** %sv_any3, align 8
  %xav_fill4 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %19, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill4, align 8
  %20 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack5 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %20, i32 0, i32 0
  %21 = load %struct.av*, %struct.av** %si_stack5, align 8
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %21, i32 0, i32 0
  %22 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %22, i32 0, i32 0
  %23 = load i8*, i8** %xav_array, align 8
  %24 = bitcast i8* %23 to %struct.sv**
  store %struct.sv** %24, %struct.sv*** @PL_stack_base, align 8
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack7 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %26, i32 0, i32 0
  %27 = load %struct.av*, %struct.av** %si_stack7, align 8
  %sv_any8 = getelementptr inbounds %struct.av, %struct.av* %27, i32 0, i32 0
  %28 = load %struct.xpvav*, %struct.xpvav** %sv_any8, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %28, i32 0, i32 2
  %29 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %29
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %31 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack9 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %31, i32 0, i32 0
  %32 = load %struct.av*, %struct.av** %si_stack9, align 8
  %sv_any10 = getelementptr inbounds %struct.av, %struct.av* %32, i32 0, i32 0
  %33 = load %struct.xpvav*, %struct.xpvav** %sv_any10, align 8
  %xav_fill11 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %33, i32 0, i32 1
  %34 = load i64, i64* %xav_fill11, align 8
  %add.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %34
  store %struct.sv** %add.ptr12, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr12, %struct.sv*** %sp, align 8
  %35 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack13 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %35, i32 0, i32 0
  %36 = load %struct.av*, %struct.av** %si_stack13, align 8
  store %struct.av* %36, %struct.av** @PL_curstack, align 8
  store %struct.av* %36, %struct.av** %tmp
  %37 = load %struct.av*, %struct.av** %tmp
  %38 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %38, %struct.stackinfo** @PL_curstackinfo, align 8
  %39 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %40 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %40
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  call void @Perl_markstack_grow()
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  %41 = load %struct.sv**, %struct.sv*** %sp, align 8
  %42 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast17 = ptrtoint %struct.sv** %41 to i64
  %sub.ptr.rhs.cast18 = ptrtoint %struct.sv** %42 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %sub.ptr.div20 = sdiv exact i64 %sub.ptr.sub19, 8
  %conv = trunc i64 %sub.ptr.div20 to i32
  %43 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %43, align 4
  store i32 %conv, i32* %tmp16
  %44 = load i32, i32* %tmp16
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast21 = ptrtoint %struct.sv** %45 to i64
  %sub.ptr.rhs.cast22 = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %sub.ptr.div24 = sdiv exact i64 %sub.ptr.sub23, 8
  %cmp25 = icmp slt i64 %sub.ptr.div24, 2
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.15
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %48 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call28 = call %struct.sv** @Perl_stack_grow(%struct.sv** %47, %struct.sv** %48, i32 2)
  store %struct.sv** %call28, %struct.sv*** %sp, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.15
  %49 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %49, i32 0, i32 5
  %50 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool30 = icmp ne %struct.sv* %50, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.29
  %51 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj31 = getelementptr inbounds %struct.magic, %struct.magic* %51, i32 0, i32 5
  %52 = load %struct.sv*, %struct.sv** %mg_obj31, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.29
  %53 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call32 = call %struct.sv* @Perl_newRV(%struct.sv* %53)
  %call33 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond34 = phi %struct.sv* [ %52, %cond.true ], [ %call33, %cond.false ]
  %54 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr35 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i32 1
  store %struct.sv** %incdec.ptr35, %struct.sv*** %sp, align 8
  store %struct.sv* %cond34, %struct.sv** %incdec.ptr35, align 8
  %55 = load %struct.sv*, %struct.sv** %key.addr, align 8
  %sv_flags36 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 2
  %56 = load i32, i32* %sv_flags36, align 4
  %and37 = and i32 %56, 118423552
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %cond.end
  %57 = load %struct.sv*, %struct.sv** %key.addr, align 8
  %58 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr40 = getelementptr inbounds %struct.sv*, %struct.sv** %58, i32 1
  store %struct.sv** %incdec.ptr40, %struct.sv*** %sp, align 8
  store %struct.sv* %57, %struct.sv** %incdec.ptr40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %cond.end
  %59 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %59, %struct.sv*** @PL_stack_sp, align 8
  %60 = load i8*, i8** %meth, align 8
  %call42 = call i32 @Perl_call_method(i8* %60, i32 0)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.41
  %61 = load %struct.sv*, %struct.sv** %key.addr, align 8
  %62 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr45 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i32 -1
  store %struct.sv** %incdec.ptr45, %struct.sv*** @PL_stack_sp, align 8
  %63 = load %struct.sv*, %struct.sv** %62, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %61, %struct.sv* %63, i32 2)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.41
  %64 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %64, %struct.sv*** %sp48, align 8
  %65 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev50 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %65, i32 0, i32 5
  %66 = load %struct.stackinfo*, %struct.stackinfo** %si_prev50, align 8
  store %struct.stackinfo* %66, %struct.stackinfo** %prev, align 8
  %67 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool51 = icmp ne %struct.stackinfo* %67, null
  br i1 %tobool51, label %if.end.78, label %if.then.52

if.then.52:                                       ; preds = %if.end.46
  %68 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool53 = icmp ne %struct.gv* %68, null
  br i1 %tobool53, label %land.lhs.true, label %cond.false.73

land.lhs.true:                                    ; preds = %if.then.52
  %69 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags54 = getelementptr inbounds %struct.gv, %struct.gv* %69, i32 0, i32 2
  %70 = load i32, i32* %sv_flags54, align 4
  %and55 = and i32 %70, 255
  %cmp56 = icmp eq i32 %and55, 13
  br i1 %cmp56, label %land.lhs.true.58, label %cond.false.73

land.lhs.true.58:                                 ; preds = %land.lhs.true
  %71 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any59 = getelementptr inbounds %struct.gv, %struct.gv* %71, i32 0, i32 0
  %72 = load %struct.xpvgv*, %struct.xpvgv** %sv_any59, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %72, i32 0, i32 7
  %73 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %73, i32 0, i32 2
  %74 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool60 = icmp ne %struct.io* %74, null
  br i1 %tobool60, label %land.lhs.true.61, label %cond.false.73

land.lhs.true.61:                                 ; preds = %land.lhs.true.58
  %75 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any62 = getelementptr inbounds %struct.gv, %struct.gv* %75, i32 0, i32 0
  %76 = load %struct.xpvgv*, %struct.xpvgv** %sv_any62, align 8
  %xgv_gp63 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %76, i32 0, i32 7
  %77 = load %struct.gp*, %struct.gp** %xgv_gp63, align 8
  %gp_io64 = getelementptr inbounds %struct.gp, %struct.gp* %77, i32 0, i32 2
  %78 = load %struct.io*, %struct.io** %gp_io64, align 8
  %sv_any65 = getelementptr inbounds %struct.io, %struct.io* %78, i32 0, i32 0
  %79 = load %struct.xpvio*, %struct.xpvio** %sv_any65, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %79, i32 0, i32 8
  %80 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool66 = icmp ne %struct._PerlIO** %80, null
  br i1 %tobool66, label %cond.true.67, label %cond.false.73

cond.true.67:                                     ; preds = %land.lhs.true.61
  %81 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any68 = getelementptr inbounds %struct.gv, %struct.gv* %81, i32 0, i32 0
  %82 = load %struct.xpvgv*, %struct.xpvgv** %sv_any68, align 8
  %xgv_gp69 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %82, i32 0, i32 7
  %83 = load %struct.gp*, %struct.gp** %xgv_gp69, align 8
  %gp_io70 = getelementptr inbounds %struct.gp, %struct.gp* %83, i32 0, i32 2
  %84 = load %struct.io*, %struct.io** %gp_io70, align 8
  %sv_any71 = getelementptr inbounds %struct.io, %struct.io* %84, i32 0, i32 0
  %85 = load %struct.xpvio*, %struct.xpvio** %sv_any71, align 8
  %xio_ofp72 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %85, i32 0, i32 8
  %86 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp72, align 8
  br label %cond.end.75

cond.false.73:                                    ; preds = %land.lhs.true.61, %land.lhs.true.58, %land.lhs.true, %if.then.52
  %call74 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.67
  %cond76 = phi %struct._PerlIO** [ %86, %cond.true.67 ], [ %call74, %cond.false.73 ]
  %call77 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.78

if.end.78:                                        ; preds = %cond.end.75, %if.end.46
  %87 = load %struct.sv**, %struct.sv*** %sp48, align 8
  %88 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast79 = ptrtoint %struct.sv** %87 to i64
  %sub.ptr.rhs.cast80 = ptrtoint %struct.sv** %88 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  %sub.ptr.div82 = sdiv exact i64 %sub.ptr.sub81, 8
  %89 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any83 = getelementptr inbounds %struct.av, %struct.av* %89, i32 0, i32 0
  %90 = load %struct.xpvav*, %struct.xpvav** %sv_any83, align 8
  %xav_fill84 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %90, i32 0, i32 1
  store i64 %sub.ptr.div82, i64* %xav_fill84, align 8
  %91 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack85 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %91, i32 0, i32 0
  %92 = load %struct.av*, %struct.av** %si_stack85, align 8
  %sv_any86 = getelementptr inbounds %struct.av, %struct.av* %92, i32 0, i32 0
  %93 = load %struct.xpvav*, %struct.xpvav** %sv_any86, align 8
  %xav_array87 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %93, i32 0, i32 0
  %94 = load i8*, i8** %xav_array87, align 8
  %95 = bitcast i8* %94 to %struct.sv**
  store %struct.sv** %95, %struct.sv*** @PL_stack_base, align 8
  %96 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %97 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack88 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %97, i32 0, i32 0
  %98 = load %struct.av*, %struct.av** %si_stack88, align 8
  %sv_any89 = getelementptr inbounds %struct.av, %struct.av* %98, i32 0, i32 0
  %99 = load %struct.xpvav*, %struct.xpvav** %sv_any89, align 8
  %xav_max90 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %99, i32 0, i32 2
  %100 = load i64, i64* %xav_max90, align 8
  %add.ptr91 = getelementptr inbounds %struct.sv*, %struct.sv** %96, i64 %100
  store %struct.sv** %add.ptr91, %struct.sv*** @PL_stack_max, align 8
  %101 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %102 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack92 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %102, i32 0, i32 0
  %103 = load %struct.av*, %struct.av** %si_stack92, align 8
  %sv_any93 = getelementptr inbounds %struct.av, %struct.av* %103, i32 0, i32 0
  %104 = load %struct.xpvav*, %struct.xpvav** %sv_any93, align 8
  %xav_fill94 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %104, i32 0, i32 1
  %105 = load i64, i64* %xav_fill94, align 8
  %add.ptr95 = getelementptr inbounds %struct.sv*, %struct.sv** %101, i64 %105
  store %struct.sv** %add.ptr95, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr95, %struct.sv*** %sp48, align 8
  %106 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack97 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %106, i32 0, i32 0
  %107 = load %struct.av*, %struct.av** %si_stack97, align 8
  store %struct.av* %107, %struct.av** @PL_curstack, align 8
  store %struct.av* %107, %struct.av** %tmp96
  %108 = load %struct.av*, %struct.av** %tmp96
  %109 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %109, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %109, %struct.stackinfo** %tmp98
  %110 = load %struct.stackinfo*, %struct.stackinfo** %tmp98
  %111 = load i32, i32* @PL_tmps_ix, align 4
  %112 = load i32, i32* @PL_tmps_floor, align 4
  %cmp99 = icmp sgt i32 %111, %112
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.78
  call void @Perl_free_tmps()
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.end.78
  call void @Perl_pop_scope()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_existspack(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %1 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %call = call i32 @S_magic_methpack(%struct.sv* %0, %struct.magic* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_magic_scalarpack(%struct.hv* %hv, %struct.magic* %mg) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %hv.addr = alloca %struct.hv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %sp = alloca %struct.sv**, align 8
  %retval1 = alloca %struct.sv*, align 8
  %tied = alloca %struct.sv*, align 8
  %pkg = alloca %struct.hv*, align 8
  %key = alloca %struct.sv*, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp36 = alloca i32, align 4
  %sp57 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp105 = alloca %struct.av*, align 8
  %tmp107 = alloca %struct.stackinfo*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %retval1, align 8
  %1 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %1, i32 0, i32 5
  %2 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool = icmp ne %struct.sv* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj2 = getelementptr inbounds %struct.magic, %struct.magic* %3, i32 0, i32 5
  %4 = load %struct.sv*, %struct.sv** %mg_obj2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %6 = bitcast %struct.hv* %5 to %struct.sv*
  %call = call %struct.sv* @Perl_newRV(%struct.sv* %6)
  %call3 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %4, %cond.true ], [ %call3, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %tied, align 8
  %7 = load %struct.sv*, %struct.sv** %tied, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %9, i32 0, i32 0
  %10 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_any4 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any4, align 8
  %12 = bitcast i8* %11 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %12, i32 0, i32 6
  %13 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  store %struct.hv* %13, %struct.hv** %pkg, align 8
  %14 = load %struct.hv*, %struct.hv** %pkg, align 8
  %call5 = call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 0)
  %tobool6 = icmp ne %struct.gv* %call5, null
  br i1 %tobool6, label %if.end.16, label %if.then

if.then:                                          ; preds = %cond.end
  %15 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any7 = getelementptr inbounds %struct.hv, %struct.hv* %15, i32 0, i32 0
  %16 = load %struct.xpvhv*, %struct.xpvhv** %sv_any7, align 8
  %xhv_eiter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %16, i32 0, i32 8
  %17 = load %struct.he*, %struct.he** %xhv_eiter, align 8
  %tobool8 = icmp ne %struct.he* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store %struct.sv* @PL_sv_yes, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call10 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call10, %struct.sv** %key, align 8
  %18 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %19 = bitcast %struct.hv* %18 to %struct.sv*
  %20 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %21 = load %struct.sv*, %struct.sv** %key, align 8
  %call11 = call i32 @Perl_magic_nextpack(%struct.sv* %19, %struct.magic* %20, %struct.sv* %21)
  %22 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any12 = getelementptr inbounds %struct.hv, %struct.hv* %22, i32 0, i32 0
  %23 = load %struct.xpvhv*, %struct.xpvhv** %sv_any12, align 8
  %xhv_eiter13 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %23, i32 0, i32 8
  store %struct.he* null, %struct.he** %xhv_eiter13, align 8
  %24 = load %struct.sv*, %struct.sv** %key, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags, align 4
  %and = and i32 %25, 118423552
  %tobool14 = icmp ne i32 %and, 0
  %cond15 = select i1 %tobool14, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  store %struct.sv* %cond15, %struct.sv** %retval
  br label %return

if.end.16:                                        ; preds = %cond.end
  call void @Perl_push_scope()
  %26 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %26, i32 0, i32 6
  %27 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %27, %struct.stackinfo** %next, align 8
  %28 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool17 = icmp ne %struct.stackinfo* %28, null
  br i1 %tobool17, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  %call19 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call19, %struct.stackinfo** %next, align 8
  %29 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %30 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %30, i32 0, i32 5
  store %struct.stackinfo* %29, %struct.stackinfo** %si_prev, align 8
  %31 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %32 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next20 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %32, i32 0, i32 6
  store %struct.stackinfo* %31, %struct.stackinfo** %si_next20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.16
  %33 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %33, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %34 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %34, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %35 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %35, i32 0, i32 0
  %36 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any22 = getelementptr inbounds %struct.av, %struct.av* %36, i32 0, i32 0
  %37 = load %struct.xpvav*, %struct.xpvav** %sv_any22, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %37, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %38 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %40 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any23 = getelementptr inbounds %struct.av, %struct.av* %40, i32 0, i32 0
  %41 = load %struct.xpvav*, %struct.xpvav** %sv_any23, align 8
  %xav_fill24 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %41, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill24, align 8
  %42 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack25 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %42, i32 0, i32 0
  %43 = load %struct.av*, %struct.av** %si_stack25, align 8
  %sv_any26 = getelementptr inbounds %struct.av, %struct.av* %43, i32 0, i32 0
  %44 = load %struct.xpvav*, %struct.xpvav** %sv_any26, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %44, i32 0, i32 0
  %45 = load i8*, i8** %xav_array, align 8
  %46 = bitcast i8* %45 to %struct.sv**
  store %struct.sv** %46, %struct.sv*** @PL_stack_base, align 8
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %48 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack27 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %48, i32 0, i32 0
  %49 = load %struct.av*, %struct.av** %si_stack27, align 8
  %sv_any28 = getelementptr inbounds %struct.av, %struct.av* %49, i32 0, i32 0
  %50 = load %struct.xpvav*, %struct.xpvav** %sv_any28, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %50, i32 0, i32 2
  %51 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %47, i64 %51
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %52 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %53 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack29 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %53, i32 0, i32 0
  %54 = load %struct.av*, %struct.av** %si_stack29, align 8
  %sv_any30 = getelementptr inbounds %struct.av, %struct.av* %54, i32 0, i32 0
  %55 = load %struct.xpvav*, %struct.xpvav** %sv_any30, align 8
  %xav_fill31 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %55, i32 0, i32 1
  %56 = load i64, i64* %xav_fill31, align 8
  %add.ptr32 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i64 %56
  store %struct.sv** %add.ptr32, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr32, %struct.sv*** %sp, align 8
  %57 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack33 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %57, i32 0, i32 0
  %58 = load %struct.av*, %struct.av** %si_stack33, align 8
  store %struct.av* %58, %struct.av** @PL_curstack, align 8
  store %struct.av* %58, %struct.av** %tmp
  %59 = load %struct.av*, %struct.av** %tmp
  %60 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %60, %struct.stackinfo** @PL_curstackinfo, align 8
  %61 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %62 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %62
  br i1 %cmp, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.21
  call void @Perl_markstack_grow()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.21
  %63 = load %struct.sv**, %struct.sv*** %sp, align 8
  %64 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast37 = ptrtoint %struct.sv** %63 to i64
  %sub.ptr.rhs.cast38 = ptrtoint %struct.sv** %64 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %sub.ptr.div40 = sdiv exact i64 %sub.ptr.sub39, 8
  %conv = trunc i64 %sub.ptr.div40 to i32
  %65 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %65, align 4
  store i32 %conv, i32* %tmp36
  %66 = load i32, i32* %tmp36
  %67 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %68 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast41 = ptrtoint %struct.sv** %67 to i64
  %sub.ptr.rhs.cast42 = ptrtoint %struct.sv** %68 to i64
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %sub.ptr.div44 = sdiv exact i64 %sub.ptr.sub43, 8
  %cmp45 = icmp slt i64 %sub.ptr.div44, 1
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.35
  %69 = load %struct.sv**, %struct.sv*** %sp, align 8
  %70 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call48 = call %struct.sv** @Perl_stack_grow(%struct.sv** %69, %struct.sv** %70, i32 1)
  store %struct.sv** %call48, %struct.sv*** %sp, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.35
  %71 = load %struct.sv*, %struct.sv** %tied, align 8
  %72 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr50 = getelementptr inbounds %struct.sv*, %struct.sv** %72, i32 1
  store %struct.sv** %incdec.ptr50, %struct.sv*** %sp, align 8
  store %struct.sv* %71, %struct.sv** %incdec.ptr50, align 8
  %73 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %73, %struct.sv*** @PL_stack_sp, align 8
  %call51 = call i32 @Perl_call_method(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 0)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.49
  %74 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr54 = getelementptr inbounds %struct.sv*, %struct.sv** %74, i32 -1
  store %struct.sv** %incdec.ptr54, %struct.sv*** @PL_stack_sp, align 8
  %75 = load %struct.sv*, %struct.sv** %74, align 8
  store %struct.sv* %75, %struct.sv** %retval1, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.49
  %76 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %76, %struct.sv*** %sp57, align 8
  %77 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev59 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %77, i32 0, i32 5
  %78 = load %struct.stackinfo*, %struct.stackinfo** %si_prev59, align 8
  store %struct.stackinfo* %78, %struct.stackinfo** %prev, align 8
  %79 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool60 = icmp ne %struct.stackinfo* %79, null
  br i1 %tobool60, label %if.end.87, label %if.then.61

if.then.61:                                       ; preds = %if.end.55
  %80 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool62 = icmp ne %struct.gv* %80, null
  br i1 %tobool62, label %land.lhs.true, label %cond.false.82

land.lhs.true:                                    ; preds = %if.then.61
  %81 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags63 = getelementptr inbounds %struct.gv, %struct.gv* %81, i32 0, i32 2
  %82 = load i32, i32* %sv_flags63, align 4
  %and64 = and i32 %82, 255
  %cmp65 = icmp eq i32 %and64, 13
  br i1 %cmp65, label %land.lhs.true.67, label %cond.false.82

land.lhs.true.67:                                 ; preds = %land.lhs.true
  %83 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any68 = getelementptr inbounds %struct.gv, %struct.gv* %83, i32 0, i32 0
  %84 = load %struct.xpvgv*, %struct.xpvgv** %sv_any68, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %84, i32 0, i32 7
  %85 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %85, i32 0, i32 2
  %86 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool69 = icmp ne %struct.io* %86, null
  br i1 %tobool69, label %land.lhs.true.70, label %cond.false.82

land.lhs.true.70:                                 ; preds = %land.lhs.true.67
  %87 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any71 = getelementptr inbounds %struct.gv, %struct.gv* %87, i32 0, i32 0
  %88 = load %struct.xpvgv*, %struct.xpvgv** %sv_any71, align 8
  %xgv_gp72 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %88, i32 0, i32 7
  %89 = load %struct.gp*, %struct.gp** %xgv_gp72, align 8
  %gp_io73 = getelementptr inbounds %struct.gp, %struct.gp* %89, i32 0, i32 2
  %90 = load %struct.io*, %struct.io** %gp_io73, align 8
  %sv_any74 = getelementptr inbounds %struct.io, %struct.io* %90, i32 0, i32 0
  %91 = load %struct.xpvio*, %struct.xpvio** %sv_any74, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %91, i32 0, i32 8
  %92 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool75 = icmp ne %struct._PerlIO** %92, null
  br i1 %tobool75, label %cond.true.76, label %cond.false.82

cond.true.76:                                     ; preds = %land.lhs.true.70
  %93 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any77 = getelementptr inbounds %struct.gv, %struct.gv* %93, i32 0, i32 0
  %94 = load %struct.xpvgv*, %struct.xpvgv** %sv_any77, align 8
  %xgv_gp78 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %94, i32 0, i32 7
  %95 = load %struct.gp*, %struct.gp** %xgv_gp78, align 8
  %gp_io79 = getelementptr inbounds %struct.gp, %struct.gp* %95, i32 0, i32 2
  %96 = load %struct.io*, %struct.io** %gp_io79, align 8
  %sv_any80 = getelementptr inbounds %struct.io, %struct.io* %96, i32 0, i32 0
  %97 = load %struct.xpvio*, %struct.xpvio** %sv_any80, align 8
  %xio_ofp81 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %97, i32 0, i32 8
  %98 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp81, align 8
  br label %cond.end.84

cond.false.82:                                    ; preds = %land.lhs.true.70, %land.lhs.true.67, %land.lhs.true, %if.then.61
  %call83 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.76
  %cond85 = phi %struct._PerlIO** [ %98, %cond.true.76 ], [ %call83, %cond.false.82 ]
  %call86 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.87

if.end.87:                                        ; preds = %cond.end.84, %if.end.55
  %99 = load %struct.sv**, %struct.sv*** %sp57, align 8
  %100 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast88 = ptrtoint %struct.sv** %99 to i64
  %sub.ptr.rhs.cast89 = ptrtoint %struct.sv** %100 to i64
  %sub.ptr.sub90 = sub i64 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast89
  %sub.ptr.div91 = sdiv exact i64 %sub.ptr.sub90, 8
  %101 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any92 = getelementptr inbounds %struct.av, %struct.av* %101, i32 0, i32 0
  %102 = load %struct.xpvav*, %struct.xpvav** %sv_any92, align 8
  %xav_fill93 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %102, i32 0, i32 1
  store i64 %sub.ptr.div91, i64* %xav_fill93, align 8
  %103 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack94 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %103, i32 0, i32 0
  %104 = load %struct.av*, %struct.av** %si_stack94, align 8
  %sv_any95 = getelementptr inbounds %struct.av, %struct.av* %104, i32 0, i32 0
  %105 = load %struct.xpvav*, %struct.xpvav** %sv_any95, align 8
  %xav_array96 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %105, i32 0, i32 0
  %106 = load i8*, i8** %xav_array96, align 8
  %107 = bitcast i8* %106 to %struct.sv**
  store %struct.sv** %107, %struct.sv*** @PL_stack_base, align 8
  %108 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %109 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack97 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %109, i32 0, i32 0
  %110 = load %struct.av*, %struct.av** %si_stack97, align 8
  %sv_any98 = getelementptr inbounds %struct.av, %struct.av* %110, i32 0, i32 0
  %111 = load %struct.xpvav*, %struct.xpvav** %sv_any98, align 8
  %xav_max99 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %111, i32 0, i32 2
  %112 = load i64, i64* %xav_max99, align 8
  %add.ptr100 = getelementptr inbounds %struct.sv*, %struct.sv** %108, i64 %112
  store %struct.sv** %add.ptr100, %struct.sv*** @PL_stack_max, align 8
  %113 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %114 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack101 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %114, i32 0, i32 0
  %115 = load %struct.av*, %struct.av** %si_stack101, align 8
  %sv_any102 = getelementptr inbounds %struct.av, %struct.av* %115, i32 0, i32 0
  %116 = load %struct.xpvav*, %struct.xpvav** %sv_any102, align 8
  %xav_fill103 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %116, i32 0, i32 1
  %117 = load i64, i64* %xav_fill103, align 8
  %add.ptr104 = getelementptr inbounds %struct.sv*, %struct.sv** %113, i64 %117
  store %struct.sv** %add.ptr104, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr104, %struct.sv*** %sp57, align 8
  %118 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack106 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %118, i32 0, i32 0
  %119 = load %struct.av*, %struct.av** %si_stack106, align 8
  store %struct.av* %119, %struct.av** @PL_curstack, align 8
  store %struct.av* %119, %struct.av** %tmp105
  %120 = load %struct.av*, %struct.av** %tmp105
  %121 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %121, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %121, %struct.stackinfo** %tmp107
  %122 = load %struct.stackinfo*, %struct.stackinfo** %tmp107
  call void @Perl_pop_scope()
  %123 = load %struct.sv*, %struct.sv** %retval1, align 8
  store %struct.sv* %123, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.87, %if.end, %if.then.9
  %124 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %124
}

declare %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv*, i8*, i32) #1

declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setdbline(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %o = alloca %struct.op*, align 8
  %i = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  %svp = alloca %struct.sv**, align 8
  %n_a = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.gv*, %struct.gv** @PL_DBline, align 8
  store %struct.gv* %0, %struct.gv** %gv, align 8
  %1 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %tobool = icmp ne %struct.sv* %1, null
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end.33

cond.false:                                       ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 262144
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true.2, label %cond.false.10

cond.true.2:                                      ; preds = %cond.false
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  store %struct.xpv* %6, %struct.xpv** @PL_Xpv, align 8
  %tobool3 = icmp ne %struct.xpv* %6, null
  br i1 %tobool3, label %land.rhs, label %land.end.9

land.rhs:                                         ; preds = %cond.true.2
  %7 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %7, i32 0, i32 1
  %8 = load i64, i64* %xpv_cur, align 8
  %cmp = icmp ugt i64 %8, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %9 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur4 = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 1
  %10 = load i64, i64* %xpv_cur4, align 8
  %tobool5 = icmp ne i64 %10, 0
  br i1 %tobool5, label %land.rhs.6, label %land.end

land.rhs.6:                                       ; preds = %lor.rhs
  %11 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 0
  %12 = load i8*, i8** %xpv_pv, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %cmp7 = icmp ne i32 %conv, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs.6, %lor.rhs
  %14 = phi i1 [ false, %lor.rhs ], [ %cmp7, %land.rhs.6 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %15 = phi i1 [ true, %land.rhs ], [ %14, %land.end ]
  br label %land.end.9

land.end.9:                                       ; preds = %lor.end, %cond.true.2
  %16 = phi i1 [ false, %cond.true.2 ], [ %15, %lor.end ]
  %cond = select i1 %16, i32 1, i32 0
  br label %cond.end.31

cond.false.10:                                    ; preds = %cond.false
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags11, align 4
  %and12 = and i32 %18, 65536
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.18

cond.true.14:                                     ; preds = %cond.false.10
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any15, align 8
  %21 = bitcast i8* %20 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %21, i32 0, i32 3
  %22 = load i64, i64* %xiv_iv, align 8
  %cmp16 = icmp ne i64 %22, 0
  %conv17 = zext i1 %cmp16 to i32
  br label %cond.end.29

cond.false.18:                                    ; preds = %cond.false.10
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags19 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags19, align 4
  %and20 = and i32 %24, 131072
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %cond.true.22, label %cond.false.26

cond.true.22:                                     ; preds = %cond.false.18
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any23 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any23, align 8
  %27 = bitcast i8* %26 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %27, i32 0, i32 4
  %28 = load double, double* %xnv_nv, align 8
  %cmp24 = fcmp une double %28, 0.000000e+00
  %conv25 = zext i1 %cmp24 to i32
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.18
  %29 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call signext i8 @Perl_sv_2bool(%struct.sv* %29)
  %conv27 = sext i8 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.22
  %cond28 = phi i32 [ %conv25, %cond.true.22 ], [ %conv27, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true.14
  %cond30 = phi i32 [ %conv17, %cond.true.14 ], [ %cond28, %cond.end ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %land.end.9
  %cond32 = phi i32 [ %cond, %land.end.9 ], [ %cond30, %cond.end.29 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true
  %cond34 = phi i32 [ 0, %cond.true ], [ %cond32, %cond.end.31 ]
  store i32 %cond34, i32* %i, align 4
  %30 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any35 = getelementptr inbounds %struct.gv, %struct.gv* %30, i32 0, i32 0
  %31 = load %struct.xpvgv*, %struct.xpvgv** %sv_any35, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %31, i32 0, i32 7
  %32 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %32, i32 0, i32 4
  %33 = load %struct.av*, %struct.av** %gp_av, align 8
  %34 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %34, i32 0, i32 7
  %35 = load i32, i32* %mg_len, align 4
  %conv36 = sext i32 %35 to i64
  store i64 %conv36, i64* %n_a, align 8
  %conv37 = trunc i64 %conv36 to i32
  %cmp38 = icmp eq i32 %conv37, -2
  br i1 %cmp38, label %cond.true.40, label %cond.false.57

cond.true.40:                                     ; preds = %cond.end.33
  %36 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %36, i32 0, i32 6
  %37 = load i8*, i8** %mg_ptr, align 8
  %38 = bitcast i8* %37 to %struct.sv*
  %sv_flags41 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags41, align 4
  %and42 = and i32 %39, 262144
  %cmp43 = icmp eq i32 %and42, 262144
  br i1 %cmp43, label %cond.true.45, label %cond.false.52

cond.true.45:                                     ; preds = %cond.true.40
  %40 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr46 = getelementptr inbounds %struct.magic, %struct.magic* %40, i32 0, i32 6
  %41 = load i8*, i8** %mg_ptr46, align 8
  %42 = bitcast i8* %41 to %struct.sv*
  %sv_any47 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 0
  %43 = load i8*, i8** %sv_any47, align 8
  %44 = bitcast i8* %43 to %struct.xpv*
  %xpv_cur48 = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 1
  %45 = load i64, i64* %xpv_cur48, align 8
  store i64 %45, i64* %n_a, align 8
  %46 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr49 = getelementptr inbounds %struct.magic, %struct.magic* %46, i32 0, i32 6
  %47 = load i8*, i8** %mg_ptr49, align 8
  %48 = bitcast i8* %47 to %struct.sv*
  %sv_any50 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 0
  %49 = load i8*, i8** %sv_any50, align 8
  %50 = bitcast i8* %49 to %struct.xpv*
  %xpv_pv51 = getelementptr inbounds %struct.xpv, %struct.xpv* %50, i32 0, i32 0
  %51 = load i8*, i8** %xpv_pv51, align 8
  br label %cond.end.55

cond.false.52:                                    ; preds = %cond.true.40
  %52 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr53 = getelementptr inbounds %struct.magic, %struct.magic* %52, i32 0, i32 6
  %53 = load i8*, i8** %mg_ptr53, align 8
  %54 = bitcast i8* %53 to %struct.sv*
  %call54 = call i8* @Perl_sv_2pv_flags(%struct.sv* %54, i64* %n_a, i32 2)
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.52, %cond.true.45
  %cond56 = phi i8* [ %51, %cond.true.45 ], [ %call54, %cond.false.52 ]
  br label %cond.end.59

cond.false.57:                                    ; preds = %cond.end.33
  %55 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr58 = getelementptr inbounds %struct.magic, %struct.magic* %55, i32 0, i32 6
  %56 = load i8*, i8** %mg_ptr58, align 8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.end.55
  %cond60 = phi i8* [ %cond56, %cond.end.55 ], [ %56, %cond.false.57 ]
  %call61 = call i32 @atoi(i8* %cond60)
  %call62 = call %struct.sv** @Perl_av_fetch(%struct.av* %33, i32 %call61, i32 0)
  store %struct.sv** %call62, %struct.sv*** %svp, align 8
  %57 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool63 = icmp ne %struct.sv** %57, null
  br i1 %tobool63, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %cond.end.59
  %58 = load %struct.sv**, %struct.sv*** %svp, align 8
  %59 = load %struct.sv*, %struct.sv** %58, align 8
  %sv_flags64 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 2
  %60 = load i32, i32* %sv_flags64, align 4
  %and65 = and i32 %60, 16777216
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.79

land.lhs.true.67:                                 ; preds = %land.lhs.true
  %61 = load %struct.sv**, %struct.sv*** %svp, align 8
  %62 = load %struct.sv*, %struct.sv** %61, align 8
  %sv_any68 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 0
  %63 = load i8*, i8** %sv_any68, align 8
  %64 = bitcast i8* %63 to %struct.xpviv*
  %xiv_iv69 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %64, i32 0, i32 3
  %65 = load i64, i64* %xiv_iv69, align 8
  %66 = inttoptr i64 %65 to %struct.op*
  store %struct.op* %66, %struct.op** %o, align 8
  %tobool70 = icmp ne %struct.op* %66, null
  br i1 %tobool70, label %if.then, label %if.end.79

if.then:                                          ; preds = %land.lhs.true.67
  %67 = load i32, i32* %i, align 4
  %tobool71 = icmp ne i32 %67, 0
  br i1 %tobool71, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.then
  %68 = load %struct.op*, %struct.op** %o, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %68, i32 0, i32 6
  %69 = load i8, i8* %op_flags, align 1
  %conv73 = zext i8 %69 to i32
  %or = or i32 %conv73, 128
  %conv74 = trunc i32 %or to i8
  store i8 %conv74, i8* %op_flags, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %70 = load %struct.op*, %struct.op** %o, align 8
  %op_flags75 = getelementptr inbounds %struct.op, %struct.op* %70, i32 0, i32 6
  %71 = load i8, i8* %op_flags75, align 1
  %conv76 = zext i8 %71 to i32
  %and77 = and i32 %conv76, -129
  %conv78 = trunc i32 %and77 to i8
  store i8 %conv78, i8* %op_flags75, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.72
  br label %if.end.79

if.end.79:                                        ; preds = %if.end, %land.lhs.true.67, %land.lhs.true, %cond.end.59
  ret i32 0
}

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_getarylen(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %1 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %1, i32 0, i32 5
  %2 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %3 = bitcast %struct.sv* %2 to %struct.av*
  %4 = bitcast %struct.av* %3 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj1 = getelementptr inbounds %struct.magic, %struct.magic* %6, i32 0, i32 5
  %7 = load %struct.sv*, %struct.sv** %mg_obj1, align 8
  %8 = bitcast %struct.sv* %7 to %struct.av*
  %9 = bitcast %struct.av* %8 to %struct.sv*
  %call = call i32 @Perl_mg_size(%struct.sv* %9)
  %conv = sext i32 %call to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj2 = getelementptr inbounds %struct.magic, %struct.magic* %10, i32 0, i32 5
  %11 = load %struct.sv*, %struct.sv** %mg_obj2, align 8
  %12 = bitcast %struct.sv* %11 to %struct.av*
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %12, i32 0, i32 0
  %13 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %13, i32 0, i32 1
  %14 = load i64, i64* %xav_fill, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %14, %cond.false ]
  %15 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_arybase = getelementptr inbounds %struct.cop, %struct.cop* %15, i32 0, i32 12
  %16 = load i32, i32* %cop_arybase, align 4
  %conv3 = sext i32 %16 to i64
  %add = add nsw i64 %cond, %conv3
  call void @Perl_sv_setiv(%struct.sv* %0, i64 %add)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setarylen(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 5
  %1 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %2 = bitcast %struct.sv* %1 to %struct.av*
  %3 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any, align 8
  %7 = bitcast i8* %6 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %7, i32 0, i32 3
  %8 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %call, %cond.false ]
  %10 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_arybase = getelementptr inbounds %struct.cop, %struct.cop* %10, i32 0, i32 12
  %11 = load i32, i32* %cop_arybase, align 4
  %conv = sext i32 %11 to i64
  %sub = sub nsw i64 %cond, %conv
  %conv1 = trunc i64 %sub to i32
  call void @Perl_av_fill(%struct.av* %2, i32 %conv1)
  ret i32 0
}

declare void @Perl_av_fill(%struct.av*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_getpos(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %lsv = alloca %struct.sv*, align 8
  %i = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %2, i32 0, i32 9
  %3 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  store %struct.sv* %3, %struct.sv** %lsv, align 8
  %4 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 255
  %cmp = icmp uge i32 %and, 7
  br i1 %cmp, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %8, i32 0, i32 5
  %9 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  %tobool = icmp ne %struct.magic* %9, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.sv*, %struct.sv** %lsv, align 8
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %10, i32 103)
  store %struct.magic* %call, %struct.magic** %mg.addr, align 8
  %11 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %tobool2 = icmp ne %struct.magic* %11, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.15

land.lhs.true.3:                                  ; preds = %if.then
  %12 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %12, i32 0, i32 7
  %13 = load i32, i32* %mg_len, align 4
  %cmp4 = icmp sge i32 %13, 0
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %land.lhs.true.3
  %14 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len6 = getelementptr inbounds %struct.magic, %struct.magic* %14, i32 0, i32 7
  %15 = load i32, i32* %mg_len6, align 4
  store i32 %15, i32* %i, align 4
  %16 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_flags7 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags7, align 4
  %and8 = and i32 %17, 536870912
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %if.then.5
  %18 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %18, i32 0, i32 7
  %19 = load i8, i8* %op_private, align 1
  %conv = zext i8 %19 to i32
  %and11 = and i32 %conv, 8
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.10
  %20 = load %struct.sv*, %struct.sv** %lsv, align 8
  call void @Perl_sv_pos_b2u(%struct.sv* %20, i32* %i)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true.10, %if.then.5
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %22 = load i32, i32* %i, align 4
  %23 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_arybase = getelementptr inbounds %struct.cop, %struct.cop* %23, i32 0, i32 12
  %24 = load i32, i32* %cop_arybase, align 4
  %add = add nsw i32 %22, %24
  %conv14 = sext i32 %add to i64
  call void @Perl_sv_setiv(%struct.sv* %21, i64 %conv14)
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.3, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true, %entry
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %26, 1223753727
  store i32 %and18, i32* %sv_flags17, align 4
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags19 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags19, align 4
  %and20 = and i32 %28, 2097152
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.16
  %29 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call22 = call i32 @Perl_sv_backoff(%struct.sv* %29)
  %tobool23 = icmp ne i32 %call22, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.16
  %30 = phi i1 [ false, %if.end.16 ], [ %tobool23, %land.rhs ]
  %land.ext = zext i1 %30 to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.end
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @Perl_sv_pos_b2u(%struct.sv*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setpos(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %lsv = alloca %struct.sv*, align 8
  %pos = alloca i64, align 8
  %len = alloca i64, align 8
  %ulen = alloca i64, align 8
  %p = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %2, i32 0, i32 9
  %3 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  store %struct.sv* %3, %struct.sv** %lsv, align 8
  store i64 0, i64* %ulen, align 8
  store %struct.magic* null, %struct.magic** %mg.addr, align 8
  %4 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 255
  %cmp = icmp uge i32 %and, 7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %8, i32 0, i32 5
  %9 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  %tobool = icmp ne %struct.magic* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.sv*, %struct.sv** %lsv, align 8
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %10, i32 103)
  store %struct.magic* %call, %struct.magic** %mg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %tobool2 = icmp ne %struct.magic* %11, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %12 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %13, 118423552
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.3
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.3
  %14 = load %struct.sv*, %struct.sv** %lsv, align 8
  call void @Perl_sv_magic(%struct.sv* %14, %struct.sv* null, i32 103, i8* null, i32 0)
  %15 = load %struct.sv*, %struct.sv** %lsv, align 8
  %call9 = call %struct.magic* @Perl_mg_find(%struct.sv* %15, i32 103)
  store %struct.magic* %call9, %struct.magic** %mg.addr, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %16 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %17, 118423552
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.else
  %18 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %18, i32 0, i32 7
  store i32 -1, i32* %mg_len, align 4
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.8
  %19 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_flags16 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags16, align 4
  %and17 = and i32 %20, 262144
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %21 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_any19 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 0
  %22 = load i8*, i8** %sv_any19, align 8
  %23 = bitcast i8* %22 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %23, i32 0, i32 1
  %24 = load i64, i64* %xpv_cur, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  %25 = load %struct.sv*, %struct.sv** %lsv, align 8
  %call20 = call i64 @Perl_sv_len(%struct.sv* %25)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %24, %cond.true ], [ %call20, %cond.false ]
  store i64 %cond, i64* %len, align 8
  %26 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags21 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 2
  %27 = load i32, i32* %sv_flags21, align 4
  %and22 = and i32 %27, 65536
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.end
  %28 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any25 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 0
  %29 = load i8*, i8** %sv_any25, align 8
  %30 = bitcast i8* %29 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %30, i32 0, i32 3
  %31 = load i64, i64* %xiv_iv, align 8
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.end
  %32 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call27 = call i64 @Perl_sv_2iv(%struct.sv* %32)
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi i64 [ %31, %cond.true.24 ], [ %call27, %cond.false.26 ]
  %33 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_arybase = getelementptr inbounds %struct.cop, %struct.cop* %33, i32 0, i32 12
  %34 = load i32, i32* %cop_arybase, align 4
  %conv = sext i32 %34 to i64
  %sub = sub nsw i64 %cond29, %conv
  store i64 %sub, i64* %pos, align 8
  %35 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_flags30 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags30, align 4
  %and31 = and i32 %36, 536870912
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.42

land.lhs.true.33:                                 ; preds = %cond.end.28
  %37 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %37, i32 0, i32 7
  %38 = load i8, i8* %op_private, align 1
  %conv34 = zext i8 %38 to i32
  %and35 = and i32 %conv34, 8
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.end.42, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.33
  %39 = load %struct.sv*, %struct.sv** %lsv, align 8
  %call38 = call i64 @Perl_sv_len_utf8(%struct.sv* %39)
  store i64 %call38, i64* %ulen, align 8
  %40 = load i64, i64* %ulen, align 8
  %tobool39 = icmp ne i64 %40, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.37
  %41 = load i64, i64* %ulen, align 8
  store i64 %41, i64* %len, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.then.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true.33, %cond.end.28
  %42 = load i64, i64* %pos, align 8
  %cmp43 = icmp slt i64 %42, 0
  br i1 %cmp43, label %if.then.45, label %if.else.50

if.then.45:                                       ; preds = %if.end.42
  %43 = load i64, i64* %len, align 8
  %44 = load i64, i64* %pos, align 8
  %add = add i64 %44, %43
  store i64 %add, i64* %pos, align 8
  %45 = load i64, i64* %pos, align 8
  %cmp46 = icmp slt i64 %45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  store i64 0, i64* %pos, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.then.45
  br label %if.end.55

if.else.50:                                       ; preds = %if.end.42
  %46 = load i64, i64* %pos, align 8
  %47 = load i64, i64* %len, align 8
  %cmp51 = icmp sgt i64 %46, %47
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.50
  %48 = load i64, i64* %len, align 8
  store i64 %48, i64* %pos, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.else.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.49
  %49 = load i64, i64* %ulen, align 8
  %tobool56 = icmp ne i64 %49, 0
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.55
  %50 = load i64, i64* %pos, align 8
  %conv58 = trunc i64 %50 to i32
  store i32 %conv58, i32* %p, align 4
  %51 = load %struct.sv*, %struct.sv** %lsv, align 8
  call void @Perl_sv_pos_u2b(%struct.sv* %51, i32* %p, i32* null)
  %52 = load i32, i32* %p, align 4
  %conv59 = sext i32 %52 to i64
  store i64 %conv59, i64* %pos, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.55
  %53 = load i64, i64* %pos, align 8
  %conv61 = trunc i64 %53 to i32
  %54 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len62 = getelementptr inbounds %struct.magic, %struct.magic* %54, i32 0, i32 7
  store i32 %conv61, i32* %mg_len62, align 4
  %55 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %55, i32 0, i32 4
  %56 = load i8, i8* %mg_flags, align 1
  %conv63 = zext i8 %56 to i32
  %and64 = and i32 %conv63, -2
  %conv65 = trunc i32 %and64 to i8
  store i8 %conv65, i8* %mg_flags, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then.13, %if.then.7
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i64 @Perl_sv_len(%struct.sv*) #1

declare i64 @Perl_sv_len_utf8(%struct.sv*) #1

declare void @Perl_sv_pos_u2b(%struct.sv*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_getglob(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 1048576
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %3, -1048577
  store i32 %and2, i32* %sv_flags1, align 4
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %6 = bitcast %struct.sv* %5 to %struct.gv*
  call void @Perl_gv_efullname4(%struct.sv* %4, %struct.gv* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8 signext 1)
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags3 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags3, align 4
  %or = or i32 %8, 1048576
  store i32 %or, i32* %sv_flags3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %11 = bitcast %struct.sv* %10 to %struct.gv*
  call void @Perl_gv_efullname4(%struct.sv* %9, %struct.gv* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8 signext 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare void @Perl_gv_efullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setglob(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %s = alloca i8*, align 8
  %gv = alloca %struct.gv*, align 8
  %n_a = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 118423552
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %3, 262144
  %cmp = icmp eq i32 %and2, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %6, i32 0, i32 1
  %7 = load i64, i64* %xpv_cur, align 8
  store i64 %7, i64* %n_a, align 8
  %8 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any3, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 0
  %11 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %12, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %cmp4 = icmp eq i32 %conv, 42
  br i1 %cmp4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %cond.end
  %15 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %16 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  %17 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %cond.end
  %18 = load i8*, i8** %s, align 8
  %call10 = call %struct.gv* @Perl_gv_fetchpv(i8* %18, i32 1, i32 13)
  store %struct.gv* %call10, %struct.gv** %gv, align 8
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %20 = load %struct.gv*, %struct.gv** %gv, align 8
  %21 = bitcast %struct.gv* %20 to %struct.sv*
  %cmp11 = icmp eq %struct.sv* %19, %21
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any15, align 8
  %24 = bitcast i8* %23 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool16 = icmp ne %struct.gp* %25, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %26 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %27 = bitcast %struct.sv* %26 to %struct.gv*
  call void @Perl_gp_free(%struct.gv* %27)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  %28 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any19 = getelementptr inbounds %struct.gv, %struct.gv* %28, i32 0, i32 0
  %29 = load %struct.xpvgv*, %struct.xpvgv** %sv_any19, align 8
  %xgv_gp20 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %29, i32 0, i32 7
  %30 = load %struct.gp*, %struct.gp** %xgv_gp20, align 8
  %call21 = call %struct.gp* @Perl_gp_ref(%struct.gp* %30)
  %31 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any22 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any22, align 8
  %33 = bitcast i8* %32 to %struct.xpvgv*
  %xgv_gp23 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  store %struct.gp* %call21, %struct.gp** %xgv_gp23, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.13, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

declare void @Perl_gp_free(%struct.gv*) #1

declare %struct.gp* @Perl_gp_ref(%struct.gp*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_getsubstr(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %len = alloca i64, align 8
  %lsv = alloca %struct.sv*, align 8
  %tmps = alloca i8*, align 8
  %offs = alloca i32, align 4
  %rem = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %2, i32 0, i32 9
  %3 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  store %struct.sv* %3, %struct.sv** %lsv, align 8
  %4 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 1
  %9 = load i64, i64* %xpv_cur, align 8
  store i64 %9, i64* %len, align 8
  %10 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_any2 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any2, align 8
  %12 = bitcast i8* %11 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %12, i32 0, i32 0
  %13 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load %struct.sv*, %struct.sv** %lsv, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %14, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %tmps, align 8
  %15 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any3, align 8
  %17 = bitcast i8* %16 to %struct.xpvlv*
  %xlv_targoff = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %17, i32 0, i32 7
  %18 = load i64, i64* %xlv_targoff, align 8
  %conv = trunc i64 %18 to i32
  store i32 %conv, i32* %offs, align 4
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any4, align 8
  %21 = bitcast i8* %20 to %struct.xpvlv*
  %xlv_targlen = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %21, i32 0, i32 8
  %22 = load i64, i64* %xlv_targlen, align 8
  %conv5 = trunc i64 %22 to i32
  store i32 %conv5, i32* %rem, align 4
  %23 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_flags6 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags6, align 4
  %and7 = and i32 %24, 536870912
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %25 = load %struct.sv*, %struct.sv** %lsv, align 8
  call void @Perl_sv_pos_u2b(%struct.sv* %25, i32* %offs, i32* %rem)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %26 = load i32, i32* %offs, align 4
  %27 = load i64, i64* %len, align 8
  %conv8 = trunc i64 %27 to i32
  %cmp9 = icmp sgt i32 %26, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %28 = load i64, i64* %len, align 8
  %conv12 = trunc i64 %28 to i32
  store i32 %conv12, i32* %offs, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %29 = load i32, i32* %rem, align 4
  %30 = load i32, i32* %offs, align 4
  %add = add nsw i32 %29, %30
  %31 = load i64, i64* %len, align 8
  %conv14 = trunc i64 %31 to i32
  %cmp15 = icmp sgt i32 %add, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.13
  %32 = load i64, i64* %len, align 8
  %33 = load i32, i32* %offs, align 4
  %conv18 = sext i32 %33 to i64
  %sub = sub i64 %32, %conv18
  %conv19 = trunc i64 %sub to i32
  store i32 %conv19, i32* %rem, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.13
  %34 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %35 = load i8*, i8** %tmps, align 8
  %36 = load i32, i32* %offs, align 4
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  %37 = load i32, i32* %rem, align 4
  %conv21 = sext i32 %37 to i64
  call void @Perl_sv_setpvn(%struct.sv* %34, i8* %add.ptr, i64 %conv21)
  %38 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_flags22 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags22, align 4
  %and23 = and i32 %39, 536870912
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.20
  %40 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags26 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags26, align 4
  %or = or i32 %41, 536870912
  store i32 %or, i32* %sv_flags26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.20
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setsubstr(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %len = alloca i64, align 8
  %tmps = alloca i8*, align 8
  %lsv = alloca %struct.sv*, align 8
  %lvoff = alloca i32, align 4
  %lvlen = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 1
  %5 = load i64, i64* %xpv_cur, align 8
  store i64 %5, i64* %len, align 8
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 0
  %9 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %10, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %tmps, align 8
  %11 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any2, align 8
  %13 = bitcast i8* %12 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %13, i32 0, i32 9
  %14 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  store %struct.sv* %14, %struct.sv** %lsv, align 8
  %15 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any3, align 8
  %17 = bitcast i8* %16 to %struct.xpvlv*
  %xlv_targoff = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %17, i32 0, i32 7
  %18 = load i64, i64* %xlv_targoff, align 8
  %conv = trunc i64 %18 to i32
  store i32 %conv, i32* %lvoff, align 4
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any4, align 8
  %21 = bitcast i8* %20 to %struct.xpvlv*
  %xlv_targlen = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %21, i32 0, i32 8
  %22 = load i64, i64* %xlv_targlen, align 8
  %conv5 = trunc i64 %22 to i32
  store i32 %conv5, i32* %lvlen, align 4
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags6 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags6, align 4
  %and7 = and i32 %24, 536870912
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %25 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %25, i32 0, i32 7
  %26 = load i8, i8* %op_private, align 1
  %conv8 = zext i8 %26 to i32
  %and9 = and i32 %conv8, 8
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %27 = load %struct.sv*, %struct.sv** %lsv, align 8
  %call11 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %27, i32 2)
  %28 = load %struct.sv*, %struct.sv** %lsv, align 8
  call void @Perl_sv_pos_u2b(%struct.sv* %28, i32* %lvoff, i32* %lvlen)
  %29 = load %struct.sv*, %struct.sv** %lsv, align 8
  %30 = load i32, i32* %lvoff, align 4
  %conv12 = sext i32 %30 to i64
  %31 = load i32, i32* %lvlen, align 4
  %conv13 = sext i32 %31 to i64
  %32 = load i8*, i8** %tmps, align 8
  %33 = load i64, i64* %len, align 8
  call void @Perl_sv_insert(%struct.sv* %29, i64 %conv12, i64 %conv13, i8* %32, i64 %33)
  %34 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_flags14 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags14, align 4
  %or = or i32 %35, 536870912
  store i32 %or, i32* %sv_flags14, align 4
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %36 = load %struct.sv*, %struct.sv** %lsv, align 8
  %tobool15 = icmp ne %struct.sv* %36, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.else.24

land.lhs.true.16:                                 ; preds = %if.else
  %37 = load %struct.sv*, %struct.sv** %lsv, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 2
  %38 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %38, 536870912
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %land.lhs.true.16
  %39 = load %struct.sv*, %struct.sv** %lsv, align 8
  call void @Perl_sv_pos_u2b(%struct.sv* %39, i32* %lvoff, i32* %lvlen)
  %40 = load i8*, i8** %tmps, align 8
  %call21 = call i8* @Perl_bytes_to_utf8(i8* %40, i64* %len)
  store i8* %call21, i8** %tmps, align 8
  %41 = load %struct.sv*, %struct.sv** %lsv, align 8
  %42 = load i32, i32* %lvoff, align 4
  %conv22 = sext i32 %42 to i64
  %43 = load i32, i32* %lvlen, align 4
  %conv23 = sext i32 %43 to i64
  %44 = load i8*, i8** %tmps, align 8
  %45 = load i64, i64* %len, align 8
  call void @Perl_sv_insert(%struct.sv* %41, i64 %conv22, i64 %conv23, i8* %44, i64 %45)
  %46 = load i8*, i8** %tmps, align 8
  call void @Perl_safesysfree(i8* %46)
  br label %if.end

if.else.24:                                       ; preds = %land.lhs.true.16, %if.else
  %47 = load %struct.sv*, %struct.sv** %lsv, align 8
  %48 = load i32, i32* %lvoff, align 4
  %conv25 = sext i32 %48 to i64
  %49 = load i32, i32* %lvlen, align 4
  %conv26 = sext i32 %49 to i64
  %50 = load i8*, i8** %tmps, align 8
  %51 = load i64, i64* %len, align 8
  call void @Perl_sv_insert(%struct.sv* %47, i64 %conv25, i64 %conv26, i8* %50, i64 %51)
  br label %if.end

if.end:                                           ; preds = %if.else.24, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  ret i32 0
}

declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

declare i8* @Perl_bytes_to_utf8(i8*, i64*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_gettaint(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 7
  %1 = load i32, i32* %mg_len, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len1 = getelementptr inbounds %struct.magic, %struct.magic* %2, i32 0, i32 7
  %3 = load i32, i32* %mg_len1, align 4
  %and2 = and i32 %3, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %4, i32 0, i32 5
  %5 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp = icmp eq %struct.sv* %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i8 1, i8* @PL_tainted, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_settaint(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load i32, i32* @PL_localizing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @PL_localizing, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %2 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %2, i32 0, i32 7
  %3 = load i32, i32* %mg_len, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %mg_len, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len2 = getelementptr inbounds %struct.magic, %struct.magic* %4, i32 0, i32 7
  %5 = load i32, i32* %mg_len2, align 4
  %shr = ashr i32 %5, 1
  store i32 %shr, i32* %mg_len2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.10

if.else.3:                                        ; preds = %entry
  %6 = load i8, i8* @PL_tainted, align 1
  %tobool4 = icmp ne i8 %6, 0
  br i1 %tobool4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else.3
  %7 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len6 = getelementptr inbounds %struct.magic, %struct.magic* %7, i32 0, i32 7
  %8 = load i32, i32* %mg_len6, align 4
  %or = or i32 %8, 1
  store i32 %or, i32* %mg_len6, align 4
  br label %if.end.9

if.else.7:                                        ; preds = %if.else.3
  %9 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len8 = getelementptr inbounds %struct.magic, %struct.magic* %9, i32 0, i32 7
  %10 = load i32, i32* %mg_len8, align 4
  %and = and i32 %10, -2
  store i32 %and, i32* %mg_len8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_getvec(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %lsv = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %2, i32 0, i32 9
  %3 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  store %struct.sv* %3, %struct.sv** %lsv, align 8
  %4 = load %struct.sv*, %struct.sv** %lsv, align 8
  %tobool = icmp ne %struct.sv* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and = and i32 %6, 1223753727
  store i32 %and, i32* %sv_flags, align 4
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %8, 2097152
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %9 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i32 @Perl_sv_backoff(%struct.sv* %9)
  %tobool4 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %10 = phi i1 [ false, %if.then ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %12 = load %struct.sv*, %struct.sv** %lsv, align 8
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any5, align 8
  %15 = bitcast i8* %14 to %struct.xpvlv*
  %xlv_targoff = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %15, i32 0, i32 7
  %16 = load i64, i64* %xlv_targoff, align 8
  %conv = trunc i64 %16 to i32
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any6 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any6, align 8
  %19 = bitcast i8* %18 to %struct.xpvlv*
  %xlv_targlen = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %19, i32 0, i32 8
  %20 = load i64, i64* %xlv_targlen, align 8
  %conv7 = trunc i64 %20 to i32
  %call8 = call i64 @Perl_do_vecget(%struct.sv* %12, i32 %conv, i32 %conv7)
  call void @Perl_sv_setuv(%struct.sv* %11, i64 %call8)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i64 @Perl_do_vecget(%struct.sv*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setvec(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_do_vecset(%struct.sv* %0)
  ret i32 0
}

declare void @Perl_do_vecset(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_getdefelem(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %targ = alloca %struct.sv*, align 8
  %ahv = alloca %struct.sv*, align 8
  %he = alloca %struct.he*, align 8
  %svp = alloca %struct.sv**, align 8
  %av = alloca %struct.av*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  store %struct.sv* null, %struct.sv** %targ, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvlv*
  %xlv_targlen = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %2, i32 0, i32 8
  %3 = load i64, i64* %xlv_targlen, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %if.else.51

if.then:                                          ; preds = %entry
  %4 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %4, i32 0, i32 5
  %5 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool1 = icmp ne %struct.sv* %5, null
  br i1 %tobool1, label %if.then.2, label %if.else.14

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any3, align 8
  %8 = bitcast i8* %7 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %8, i32 0, i32 9
  %9 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  store %struct.sv* %9, %struct.sv** %ahv, align 8
  %10 = load %struct.sv*, %struct.sv** %ahv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, 255
  %cmp = icmp eq i32 %and, 11
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %12 = load %struct.sv*, %struct.sv** %ahv, align 8
  %13 = bitcast %struct.sv* %12 to %struct.hv*
  %14 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj5 = getelementptr inbounds %struct.magic, %struct.magic* %14, i32 0, i32 5
  %15 = load %struct.sv*, %struct.sv** %mg_obj5, align 8
  %call = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %13, %struct.sv* %15, i32 0, i32 0)
  store %struct.he* %call, %struct.he** %he, align 8
  %16 = load %struct.he*, %struct.he** %he, align 8
  %tobool6 = icmp ne %struct.he* %16, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %17 = load %struct.he*, %struct.he** %he, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %17, i32 0, i32 2
  %18 = load %struct.sv*, %struct.sv** %hent_val, align 8
  store %struct.sv* %18, %struct.sv** %targ, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.4
  br label %if.end.13

if.else:                                          ; preds = %if.then.2
  %19 = load %struct.sv*, %struct.sv** %ahv, align 8
  %20 = bitcast %struct.sv* %19 to %struct.av*
  %21 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj8 = getelementptr inbounds %struct.magic, %struct.magic* %21, i32 0, i32 5
  %22 = load %struct.sv*, %struct.sv** %mg_obj8, align 8
  %call9 = call %struct.sv** @Perl_avhv_fetch_ent(%struct.av* %20, %struct.sv* %22, i32 0, i32 0)
  store %struct.sv** %call9, %struct.sv*** %svp, align 8
  %23 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool10 = icmp ne %struct.sv** %23, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  %24 = load %struct.sv**, %struct.sv*** %svp, align 8
  %25 = load %struct.sv*, %struct.sv** %24, align 8
  store %struct.sv* %25, %struct.sv** %targ, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  br label %if.end.32

if.else.14:                                       ; preds = %if.then
  %26 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any15, align 8
  %28 = bitcast i8* %27 to %struct.xpvlv*
  %xlv_targ16 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %28, i32 0, i32 9
  %29 = load %struct.sv*, %struct.sv** %xlv_targ16, align 8
  %30 = bitcast %struct.sv* %29 to %struct.av*
  store %struct.av* %30, %struct.av** %av, align 8
  %31 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any17 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any17, align 8
  %33 = bitcast i8* %32 to %struct.xpvlv*
  %xlv_targoff = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %33, i32 0, i32 7
  %34 = load i64, i64* %xlv_targoff, align 8
  %conv = trunc i64 %34 to i32
  %conv18 = sext i32 %conv to i64
  %35 = load %struct.av*, %struct.av** %av, align 8
  %36 = bitcast %struct.av* %35 to %struct.sv*
  %sv_flags19 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 2
  %37 = load i32, i32* %sv_flags19, align 4
  %and20 = and i32 %37, 32768
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.14
  %38 = load %struct.av*, %struct.av** %av, align 8
  %39 = bitcast %struct.av* %38 to %struct.sv*
  %call22 = call i32 @Perl_mg_size(%struct.sv* %39)
  %conv23 = sext i32 %call22 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.else.14
  %40 = load %struct.av*, %struct.av** %av, align 8
  %sv_any24 = getelementptr inbounds %struct.av, %struct.av* %40, i32 0, i32 0
  %41 = load %struct.xpvav*, %struct.xpvav** %sv_any24, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %41, i32 0, i32 1
  %42 = load i64, i64* %xav_fill, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv23, %cond.true ], [ %42, %cond.false ]
  %cmp25 = icmp sle i64 %conv18, %cond
  br i1 %cmp25, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %cond.end
  %43 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any28 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 0
  %44 = load i8*, i8** %sv_any28, align 8
  %45 = bitcast i8* %44 to %struct.xpvlv*
  %xlv_targoff29 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %45, i32 0, i32 7
  %46 = load i64, i64* %xlv_targoff29, align 8
  %47 = load %struct.av*, %struct.av** %av, align 8
  %sv_any30 = getelementptr inbounds %struct.av, %struct.av* %47, i32 0, i32 0
  %48 = load %struct.xpvav*, %struct.xpvav** %sv_any30, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %48, i32 0, i32 0
  %49 = load i8*, i8** %xav_array, align 8
  %50 = bitcast i8* %49 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %50, i64 %46
  %51 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %51, %struct.sv** %targ, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %cond.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.13
  %52 = load %struct.sv*, %struct.sv** %targ, align 8
  %tobool33 = icmp ne %struct.sv* %52, null
  br i1 %tobool33, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.32
  %53 = load %struct.sv*, %struct.sv** %targ, align 8
  %cmp34 = icmp ne %struct.sv* %53, @PL_sv_undef
  br i1 %cmp34, label %if.then.36, label %if.end.50

if.then.36:                                       ; preds = %land.lhs.true
  %54 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any37 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 0
  %55 = load i8*, i8** %sv_any37, align 8
  %56 = bitcast i8* %55 to %struct.xpvlv*
  %xlv_targ38 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %56, i32 0, i32 9
  %57 = load %struct.sv*, %struct.sv** %xlv_targ38, align 8
  call void @Perl_sv_free(%struct.sv* %57)
  %58 = load %struct.sv*, %struct.sv** %targ, align 8
  store %struct.sv* %58, %struct.sv** @PL_Sv, align 8
  %59 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool39 = icmp ne %struct.sv* %59, null
  br i1 %tobool39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.36
  %60 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 1
  %61 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %61, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool40 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.36
  %62 = phi i1 [ false, %if.then.36 ], [ %tobool40, %land.rhs ]
  %land.ext = zext i1 %62 to i32
  %63 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %64 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any41 = getelementptr inbounds %struct.sv, %struct.sv* %64, i32 0, i32 0
  %65 = load i8*, i8** %sv_any41, align 8
  %66 = bitcast i8* %65 to %struct.xpvlv*
  %xlv_targ42 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %66, i32 0, i32 9
  store %struct.sv* %63, %struct.sv** %xlv_targ42, align 8
  %67 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any43 = getelementptr inbounds %struct.sv, %struct.sv* %67, i32 0, i32 0
  %68 = load i8*, i8** %sv_any43, align 8
  %69 = bitcast i8* %68 to %struct.xpvlv*
  %xlv_targlen44 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %69, i32 0, i32 8
  store i64 0, i64* %xlv_targlen44, align 8
  %70 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj45 = getelementptr inbounds %struct.magic, %struct.magic* %70, i32 0, i32 5
  %71 = load %struct.sv*, %struct.sv** %mg_obj45, align 8
  call void @Perl_sv_free(%struct.sv* %71)
  %72 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj46 = getelementptr inbounds %struct.magic, %struct.magic* %72, i32 0, i32 5
  store %struct.sv* null, %struct.sv** %mg_obj46, align 8
  %73 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %73, i32 0, i32 4
  %74 = load i8, i8* %mg_flags, align 1
  %conv47 = zext i8 %74 to i32
  %and48 = and i32 %conv47, -3
  %conv49 = trunc i32 %and48 to i8
  store i8 %conv49, i8* %mg_flags, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %land.end, %land.lhs.true, %if.end.32
  br label %if.end.54

if.else.51:                                       ; preds = %entry
  %75 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any52 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 0
  %76 = load i8*, i8** %sv_any52, align 8
  %77 = bitcast i8* %76 to %struct.xpvlv*
  %xlv_targ53 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %77, i32 0, i32 9
  %78 = load %struct.sv*, %struct.sv** %xlv_targ53, align 8
  store %struct.sv* %78, %struct.sv** %targ, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.end.50
  %79 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %80 = load %struct.sv*, %struct.sv** %targ, align 8
  %tobool55 = icmp ne %struct.sv* %80, null
  br i1 %tobool55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.end.54
  %81 = load %struct.sv*, %struct.sv** %targ, align 8
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.end.54
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi %struct.sv* [ %81, %cond.true.56 ], [ @PL_sv_undef, %cond.false.57 ]
  call void @Perl_sv_setsv_flags(%struct.sv* %79, %struct.sv* %cond59, i32 2)
  ret i32 0
}

declare %struct.he* @Perl_hv_fetch_ent(%struct.hv*, %struct.sv*, i32, i32) #1

declare %struct.sv** @Perl_avhv_fetch_ent(%struct.av*, %struct.sv*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setdefelem(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvlv*
  %xlv_targlen = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %2, i32 0, i32 8
  %3 = load i64, i64* %xlv_targlen, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_vivify_defelem(%struct.sv* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any1, align 8
  %7 = bitcast i8* %6 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %7, i32 0, i32 9
  %8 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  %tobool2 = icmp ne %struct.sv* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any4, align 8
  %11 = bitcast i8* %10 to %struct.xpvlv*
  %xlv_targ5 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %11, i32 0, i32 9
  %12 = load %struct.sv*, %struct.sv** %xlv_targ5, align 8
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %12, %struct.sv* %13, i32 2)
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any6 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any6, align 8
  %16 = bitcast i8* %15 to %struct.xpvlv*
  %xlv_targ7 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %16, i32 0, i32 9
  %17 = load %struct.sv*, %struct.sv** %xlv_targ7, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %and = and i32 %18, 16384
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.then.3
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any10, align 8
  %21 = bitcast i8* %20 to %struct.xpvlv*
  %xlv_targ11 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %21, i32 0, i32 9
  %22 = load %struct.sv*, %struct.sv** %xlv_targ11, align 8
  %call = call i32 @Perl_mg_set(%struct.sv* %22)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @Perl_vivify_defelem(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %value = alloca %struct.sv*, align 8
  %ahv = alloca %struct.sv*, align 8
  %n_a = alloca i64, align 8
  %he = alloca %struct.he*, align 8
  %svp = alloca %struct.sv**, align 8
  %av = alloca %struct.av*, align 8
  %svp58 = alloca %struct.sv**, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.sv* null, %struct.sv** %value, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvlv*
  %xlv_targlen = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %2, i32 0, i32 8
  %3 = load i64, i64* %xlv_targlen, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %4, i32 121)
  store %struct.magic* %call, %struct.magic** %mg, align 8
  %tobool1 = icmp ne %struct.magic* %call, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %5, i32 0, i32 5
  %6 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool2 = icmp ne %struct.sv* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else.32

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any4, align 8
  %9 = bitcast i8* %8 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %9, i32 0, i32 9
  %10 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  store %struct.sv* %10, %struct.sv** %ahv, align 8
  %11 = load %struct.sv*, %struct.sv** %ahv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags, align 4
  %and = and i32 %12, 255
  %cmp = icmp eq i32 %and, 11
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  %13 = load %struct.sv*, %struct.sv** %ahv, align 8
  %14 = bitcast %struct.sv* %13 to %struct.hv*
  %15 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj6 = getelementptr inbounds %struct.magic, %struct.magic* %15, i32 0, i32 5
  %16 = load %struct.sv*, %struct.sv** %mg_obj6, align 8
  %call7 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %14, %struct.sv* %16, i32 1, i32 0)
  store %struct.he* %call7, %struct.he** %he, align 8
  %17 = load %struct.he*, %struct.he** %he, align 8
  %tobool8 = icmp ne %struct.he* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  %18 = load %struct.he*, %struct.he** %he, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %18, i32 0, i32 2
  %19 = load %struct.sv*, %struct.sv** %hent_val, align 8
  store %struct.sv* %19, %struct.sv** %value, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.5
  br label %if.end.16

if.else:                                          ; preds = %if.then.3
  %20 = load %struct.sv*, %struct.sv** %ahv, align 8
  %21 = bitcast %struct.sv* %20 to %struct.av*
  %22 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj11 = getelementptr inbounds %struct.magic, %struct.magic* %22, i32 0, i32 5
  %23 = load %struct.sv*, %struct.sv** %mg_obj11, align 8
  %call12 = call %struct.sv** @Perl_avhv_fetch_ent(%struct.av* %21, %struct.sv* %23, i32 1, i32 0)
  store %struct.sv** %call12, %struct.sv*** %svp, align 8
  %24 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool13 = icmp ne %struct.sv** %24, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  %25 = load %struct.sv**, %struct.sv*** %svp, align 8
  %26 = load %struct.sv*, %struct.sv** %25, align 8
  store %struct.sv* %26, %struct.sv** %value, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.10
  %27 = load %struct.sv*, %struct.sv** %value, align 8
  %tobool17 = icmp ne %struct.sv* %27, null
  br i1 %tobool17, label %lor.lhs.false.18, label %if.then.20

lor.lhs.false.18:                                 ; preds = %if.end.16
  %28 = load %struct.sv*, %struct.sv** %value, align 8
  %cmp19 = icmp eq %struct.sv* %28, @PL_sv_undef
  br i1 %cmp19, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %lor.lhs.false.18, %if.end.16
  %29 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj21 = getelementptr inbounds %struct.magic, %struct.magic* %29, i32 0, i32 5
  %30 = load %struct.sv*, %struct.sv** %mg_obj21, align 8
  %sv_flags22 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 2
  %31 = load i32, i32* %sv_flags22, align 4
  %and23 = and i32 %31, 262144
  %cmp24 = icmp eq i32 %and23, 262144
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  %32 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj25 = getelementptr inbounds %struct.magic, %struct.magic* %32, i32 0, i32 5
  %33 = load %struct.sv*, %struct.sv** %mg_obj25, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 0
  %34 = load i8*, i8** %sv_any26, align 8
  %35 = bitcast i8* %34 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %35, i32 0, i32 1
  %36 = load i64, i64* %xpv_cur, align 8
  store i64 %36, i64* %n_a, align 8
  %37 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj27 = getelementptr inbounds %struct.magic, %struct.magic* %37, i32 0, i32 5
  %38 = load %struct.sv*, %struct.sv** %mg_obj27, align 8
  %sv_any28 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any28, align 8
  %40 = bitcast i8* %39 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %40, i32 0, i32 0
  %41 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %42 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj29 = getelementptr inbounds %struct.magic, %struct.magic* %42, i32 0, i32 5
  %43 = load %struct.sv*, %struct.sv** %mg_obj29, align 8
  %call30 = call i8* @Perl_sv_2pv_flags(%struct.sv* %43, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %41, %cond.true ], [ %call30, %cond.false ]
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_helem, i32 0, i32 0), i8* %cond)
  br label %if.end.31

if.end.31:                                        ; preds = %cond.end, %lor.lhs.false.18
  br label %if.end.73

if.else.32:                                       ; preds = %if.end
  %44 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any33 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any33, align 8
  %46 = bitcast i8* %45 to %struct.xpvlv*
  %xlv_targ34 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %46, i32 0, i32 9
  %47 = load %struct.sv*, %struct.sv** %xlv_targ34, align 8
  %48 = bitcast %struct.sv* %47 to %struct.av*
  store %struct.av* %48, %struct.av** %av, align 8
  %49 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any35 = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 0
  %50 = load i8*, i8** %sv_any35, align 8
  %51 = bitcast i8* %50 to %struct.xpvlv*
  %xlv_targlen36 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %51, i32 0, i32 8
  %52 = load i64, i64* %xlv_targlen36, align 8
  %conv = trunc i64 %52 to i32
  %cmp37 = icmp slt i32 %conv, 0
  br i1 %cmp37, label %land.lhs.true, label %if.else.57

land.lhs.true:                                    ; preds = %if.else.32
  %53 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any39 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 0
  %54 = load i8*, i8** %sv_any39, align 8
  %55 = bitcast i8* %54 to %struct.xpvlv*
  %xlv_targoff = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %55, i32 0, i32 7
  %56 = load i64, i64* %xlv_targoff, align 8
  %conv40 = trunc i64 %56 to i32
  %conv41 = sext i32 %conv40 to i64
  %57 = load %struct.av*, %struct.av** %av, align 8
  %58 = bitcast %struct.av* %57 to %struct.sv*
  %sv_flags42 = getelementptr inbounds %struct.sv, %struct.sv* %58, i32 0, i32 2
  %59 = load i32, i32* %sv_flags42, align 4
  %and43 = and i32 %59, 32768
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %cond.true.45, label %cond.false.48

cond.true.45:                                     ; preds = %land.lhs.true
  %60 = load %struct.av*, %struct.av** %av, align 8
  %61 = bitcast %struct.av* %60 to %struct.sv*
  %call46 = call i32 @Perl_mg_size(%struct.sv* %61)
  %conv47 = sext i32 %call46 to i64
  br label %cond.end.50

cond.false.48:                                    ; preds = %land.lhs.true
  %62 = load %struct.av*, %struct.av** %av, align 8
  %sv_any49 = getelementptr inbounds %struct.av, %struct.av* %62, i32 0, i32 0
  %63 = load %struct.xpvav*, %struct.xpvav** %sv_any49, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %63, i32 0, i32 1
  %64 = load i64, i64* %xav_fill, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.45
  %cond51 = phi i64 [ %conv47, %cond.true.45 ], [ %64, %cond.false.48 ]
  %cmp52 = icmp sgt i64 %conv41, %cond51
  br i1 %cmp52, label %if.then.54, label %if.else.57

if.then.54:                                       ; preds = %cond.end.50
  %65 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any55 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any55, align 8
  %67 = bitcast i8* %66 to %struct.xpvlv*
  %xlv_targ56 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %67, i32 0, i32 9
  store %struct.sv* null, %struct.sv** %xlv_targ56, align 8
  br label %if.end.72

if.else.57:                                       ; preds = %cond.end.50, %if.else.32
  %68 = load %struct.av*, %struct.av** %av, align 8
  %69 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any59 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 0
  %70 = load i8*, i8** %sv_any59, align 8
  %71 = bitcast i8* %70 to %struct.xpvlv*
  %xlv_targoff60 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %71, i32 0, i32 7
  %72 = load i64, i64* %xlv_targoff60, align 8
  %conv61 = trunc i64 %72 to i32
  %call62 = call %struct.sv** @Perl_av_fetch(%struct.av* %68, i32 %conv61, i32 1)
  store %struct.sv** %call62, %struct.sv*** %svp58, align 8
  %73 = load %struct.sv**, %struct.sv*** %svp58, align 8
  %tobool63 = icmp ne %struct.sv** %73, null
  br i1 %tobool63, label %lor.lhs.false.64, label %if.then.67

lor.lhs.false.64:                                 ; preds = %if.else.57
  %74 = load %struct.sv**, %struct.sv*** %svp58, align 8
  %75 = load %struct.sv*, %struct.sv** %74, align 8
  store %struct.sv* %75, %struct.sv** %value, align 8
  %cmp65 = icmp eq %struct.sv* %75, @PL_sv_undef
  br i1 %cmp65, label %if.then.67, label %if.end.71

if.then.67:                                       ; preds = %lor.lhs.false.64, %if.else.57
  %76 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any68 = getelementptr inbounds %struct.sv, %struct.sv* %76, i32 0, i32 0
  %77 = load i8*, i8** %sv_any68, align 8
  %78 = bitcast i8* %77 to %struct.xpvlv*
  %xlv_targoff69 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %78, i32 0, i32 7
  %79 = load i64, i64* %xlv_targoff69, align 8
  %conv70 = trunc i64 %79 to i32
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_aelem, i32 0, i32 0), i32 %conv70)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.67, %lor.lhs.false.64
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.54
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.31
  %80 = load %struct.sv*, %struct.sv** %value, align 8
  store %struct.sv* %80, %struct.sv** @PL_Sv, align 8
  %81 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool74 = icmp ne %struct.sv* %81, null
  br i1 %tobool74, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.73
  %82 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %82, i32 0, i32 1
  %83 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %83, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool75 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.73
  %84 = phi i1 [ false, %if.end.73 ], [ %tobool75, %land.rhs ]
  %land.ext = zext i1 %84 to i32
  %85 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %86 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any76 = getelementptr inbounds %struct.sv, %struct.sv* %86, i32 0, i32 0
  %87 = load i8*, i8** %sv_any76, align 8
  %88 = bitcast i8* %87 to %struct.xpvlv*
  %xlv_targ77 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %88, i32 0, i32 9
  %89 = load %struct.sv*, %struct.sv** %xlv_targ77, align 8
  call void @Perl_sv_free(%struct.sv* %89)
  %90 = load %struct.sv*, %struct.sv** %value, align 8
  %91 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any78 = getelementptr inbounds %struct.sv, %struct.sv* %91, i32 0, i32 0
  %92 = load i8*, i8** %sv_any78, align 8
  %93 = bitcast i8* %92 to %struct.xpvlv*
  %xlv_targ79 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %93, i32 0, i32 9
  store %struct.sv* %90, %struct.sv** %xlv_targ79, align 8
  %94 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any80 = getelementptr inbounds %struct.sv, %struct.sv* %94, i32 0, i32 0
  %95 = load i8*, i8** %sv_any80, align 8
  %96 = bitcast i8* %95 to %struct.xpvlv*
  %xlv_targlen81 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %96, i32 0, i32 8
  store i64 0, i64* %xlv_targlen81, align 8
  %97 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj82 = getelementptr inbounds %struct.magic, %struct.magic* %97, i32 0, i32 5
  %98 = load %struct.sv*, %struct.sv** %mg_obj82, align 8
  call void @Perl_sv_free(%struct.sv* %98)
  %99 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj83 = getelementptr inbounds %struct.magic, %struct.magic* %99, i32 0, i32 5
  store %struct.sv* null, %struct.sv** %mg_obj83, align 8
  %100 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_flags = getelementptr inbounds %struct.magic, %struct.magic* %100, i32 0, i32 4
  %101 = load i8, i8* %mg_flags, align 1
  %conv84 = zext i8 %101 to i32
  %and85 = and i32 %conv84, -3
  %conv86 = trunc i32 %and85 to i8
  store i8 %conv86, i8* %mg_flags, align 1
  br label %return

return:                                           ; preds = %land.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_killbackrefs(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %av = alloca %struct.av*, align 8
  %svp = alloca %struct.sv**, align 8
  %i = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 5
  %1 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %2 = bitcast %struct.sv* %1 to %struct.av*
  store %struct.av* %2, %struct.av** %av, align 8
  %3 = load %struct.av*, %struct.av** %av, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %3, i32 0, i32 0
  %4 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %4, i32 0, i32 0
  %5 = load i8*, i8** %xav_array, align 8
  %6 = bitcast i8* %5 to %struct.sv**
  store %struct.sv** %6, %struct.sv*** %svp, align 8
  %7 = load %struct.av*, %struct.av** %av, align 8
  %sv_any1 = getelementptr inbounds %struct.av, %struct.av* %7, i32 0, i32 0
  %8 = load %struct.xpvav*, %struct.xpvav** %sv_any1, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %8, i32 0, i32 1
  %9 = load i64, i64* %xav_fill, align 8
  %conv = trunc i64 %9 to i32
  store i32 %conv, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %entry
  %10 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %tobool = icmp ne %struct.sv* %13, null
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %while.body
  %14 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %14 to i64
  %15 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx4 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom3
  %16 = load %struct.sv*, %struct.sv** %arrayidx4, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags, align 4
  %and = and i32 %17, -2146959360
  %cmp5 = icmp eq i32 %and, -2146959360
  br i1 %cmp5, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom8
  %20 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any10, align 8
  %22 = bitcast i8* %21 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %22, i32 0, i32 0
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %23 to i64
  %24 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idxprom11
  %25 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %26, 1223753727
  store i32 %and14, i32* %sv_flags13, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %27 to i64
  %28 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx16 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %idxprom15
  %29 = load %struct.sv*, %struct.sv** %arrayidx16, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 2
  %30 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %30, 2097152
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %31 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %31 to i64
  %32 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx21 = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 %idxprom20
  %33 = load %struct.sv*, %struct.sv** %arrayidx21, align 8
  %call = call i32 @Perl_sv_backoff(%struct.sv* %33)
  %tobool22 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %34 = phi i1 [ false, %if.end ], [ %tobool22, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  %35 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %35 to i64
  %36 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx24 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idxprom23
  %37 = load %struct.sv*, %struct.sv** %arrayidx24, align 8
  %sv_flags25 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 2
  %38 = load i32, i32* %sv_flags25, align 4
  %and26 = and i32 %38, 2146959359
  store i32 %and26, i32* %sv_flags25, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %39 to i64
  %40 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx28 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i64 %idxprom27
  store %struct.sv* null, %struct.sv** %arrayidx28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %land.end, %while.body
  %41 = load i32, i32* %i, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct.av*, %struct.av** %av, align 8
  %43 = bitcast %struct.av* %42 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %43)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setmglob(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 7
  store i32 -1, i32* %mg_len, align 4
  %1 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, -134217729
  store i32 %and, i32* %sv_flags, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setbm(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i32 @Perl_sv_unmagic(%struct.sv* %0, i32 66)
  %1 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 2147483647
  store i32 %and, i32* %sv_flags, align 4
  ret i32 0
}

declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setfm(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i32 @Perl_sv_unmagic(%struct.sv* %0, i32 102)
  %1 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 2147483647
  store i32 %and, i32* %sv_flags, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setuvar(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %uf = alloca %struct.ufuncs*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 6
  %1 = load i8*, i8** %mg_ptr, align 8
  %2 = bitcast i8* %1 to %struct.ufuncs*
  store %struct.ufuncs* %2, %struct.ufuncs** %uf, align 8
  %3 = load %struct.ufuncs*, %struct.ufuncs** %uf, align 8
  %tobool = icmp ne %struct.ufuncs* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.ufuncs*, %struct.ufuncs** %uf, align 8
  %uf_set = getelementptr inbounds %struct.ufuncs, %struct.ufuncs* %4, i32 0, i32 1
  %5 = load i32 (i64, %struct.sv*)*, i32 (i64, %struct.sv*)** %uf_set, align 8
  %tobool1 = icmp ne i32 (i64, %struct.sv*)* %5, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.ufuncs*, %struct.ufuncs** %uf, align 8
  %uf_set2 = getelementptr inbounds %struct.ufuncs, %struct.ufuncs* %6, i32 0, i32 1
  %7 = load i32 (i64, %struct.sv*)*, i32 (i64, %struct.sv*)** %uf_set2, align 8
  %8 = load %struct.ufuncs*, %struct.ufuncs** %uf, align 8
  %uf_index = getelementptr inbounds %struct.ufuncs, %struct.ufuncs* %8, i32 0, i32 2
  %9 = load i64, i64* %uf_index, align 8
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i32 %7(i64 %9, %struct.sv* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setregexp(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i32 @Perl_sv_unmagic(%struct.sv* %0, i32 114)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_freeregexp(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %re = alloca %struct.regexp*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 5
  %1 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %2 = bitcast %struct.sv* %1 to %struct.regexp*
  store %struct.regexp* %2, %struct.regexp** %re, align 8
  %3 = load void (%struct.regexp*)*, void (%struct.regexp*)** @PL_regfree, align 8
  %4 = load %struct.regexp*, %struct.regexp** %re, align 8
  call void %3(%struct.regexp* %4)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_setutf8(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 6
  %1 = load i8*, i8** %mg_ptr, align 8
  call void @Perl_safesysfree(i8* %1)
  %2 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr1 = getelementptr inbounds %struct.magic, %struct.magic* %2, i32 0, i32 6
  store i8* null, i8** %mg_ptr1, align 8
  %3 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %3, i32 0, i32 7
  store i32 -1, i32* %mg_len, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_set(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  %len189 = alloca i64, align 8
  %i190 = alloca i64, align 8
  %accumulate = alloca i32, align 4
  %any_fatals = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %io = alloca %struct.io*, align 8
  %ofp = alloca %struct._PerlIO**, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 6
  %1 = load i8*, i8** %mg_ptr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.3
    i32 5, label %sw.bb.15
    i32 6, label %sw.bb.50
    i32 8, label %sw.bb.62
    i32 9, label %sw.bb.74
    i32 15, label %sw.bb.85
    i32 16, label %sw.bb.116
    i32 20, label %sw.bb.132
    i32 23, label %sw.bb.143
    i32 46, label %sw.bb.254
    i32 94, label %sw.bb.297
    i32 126, label %sw.bb.313
    i32 61, label %sw.bb.329
    i32 45, label %sw.bb.344
    i32 37, label %sw.bb.373
    i32 124, label %sw.bb.388
    i32 42, label %sw.bb.431
    i32 47, label %sw.bb.445
    i32 92, label %sw.bb.447
    i32 44, label %sw.bb.462
    i32 35, label %sw.bb.477
    i32 91, label %sw.bb.482
    i32 63, label %sw.bb.494
    i32 33, label %sw.bb.511
    i32 60, label %sw.bb.531
    i32 62, label %sw.bb.563
    i32 40, label %sw.bb.600
    i32 41, label %sw.bb.637
    i32 58, label %sw.bb.674
    i32 48, label %sw.bb.688
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.sv*, %struct.sv** @PL_bodytarget, align 8
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %3, %struct.sv* %4, i32 2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and = and i32 %6, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %9, i32 0, i32 3
  %10 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  %11 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %call, %cond.false ]
  %conv2 = trunc i64 %cond to i8
  store i8 %conv2, i8* @PL_minus_c, align 1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %13, 65536
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %sw.bb.3
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any8, align 8
  %16 = bitcast i8* %15 to %struct.xpviv*
  %xiv_iv9 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %16, i32 0, i32 3
  %17 = load i64, i64* %xiv_iv9, align 8
  br label %cond.end.12

cond.false.10:                                    ; preds = %sw.bb.3
  %18 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call11 = call i64 @Perl_sv_2iv(%struct.sv* %18)
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.7
  %cond13 = phi i64 [ %17, %cond.true.7 ], [ %call11, %cond.false.10 ]
  %or = or i64 %cond13, 2147483648
  %conv14 = trunc i64 %or to i32
  store volatile i32 %conv14, i32* @PL_debug, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %19 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr16 = getelementptr inbounds %struct.magic, %struct.magic* %19, i32 0, i32 6
  %20 = load i8*, i8** %mg_ptr16, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %add.ptr, align 1
  %conv17 = sext i8 %21 to i32
  %cmp = icmp eq i32 %conv17, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.15
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags19 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags19, align 4
  %and20 = and i32 %23, 65536
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %cond.true.22, label %cond.false.25

cond.true.22:                                     ; preds = %if.then
  %24 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any23 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 0
  %25 = load i8*, i8** %sv_any23, align 8
  %26 = bitcast i8* %25 to %struct.xpviv*
  %xiv_iv24 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %26, i32 0, i32 3
  %27 = load i64, i64* %xiv_iv24, align 8
  br label %cond.end.27

cond.false.25:                                    ; preds = %if.then
  %28 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call26 = call i64 @Perl_sv_2iv(%struct.sv* %28)
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.22
  %cond28 = phi i64 [ %27, %cond.true.22 ], [ %call26, %cond.false.25 ]
  %conv29 = trunc i64 %cond28 to i32
  %call30 = call i32* @__errno_location()
  store i32 %conv29, i32* %call30, align 4
  br label %if.end.49

if.else:                                          ; preds = %sw.bb.15
  %29 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr31 = getelementptr inbounds %struct.magic, %struct.magic* %29, i32 0, i32 6
  %30 = load i8*, i8** %mg_ptr31, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %30, i64 1
  %call33 = call i32 @strcmp(i8* %add.ptr32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.48, label %if.then.35

if.then.35:                                       ; preds = %if.else
  %31 = load %struct.sv*, %struct.sv** @PL_encoding, align 8
  %tobool36 = icmp ne %struct.sv* %31, null
  br i1 %tobool36, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %if.then.35
  %32 = load %struct.sv*, %struct.sv** @PL_encoding, align 8
  call void @Perl_sv_free(%struct.sv* %32)
  br label %if.end

if.end:                                           ; preds = %if.then.37, %if.then.35
  %33 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags38 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 2
  %34 = load i32, i32* %sv_flags38, align 4
  %and39 = and i32 %34, 118423552
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %35 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags41 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags41, align 4
  %and42 = and i32 %36, 8192
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %lor.lhs.false, %if.end
  %37 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call45 = call %struct.sv* @Perl_newSVsv(%struct.sv* %37)
  store %struct.sv* %call45, %struct.sv** @PL_encoding, align 8
  br label %if.end.47

if.else.46:                                       ; preds = %lor.lhs.false
  store %struct.sv* null, %struct.sv** @PL_encoding, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %cond.end.27
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %38 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags51 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags51, align 4
  %and52 = and i32 %39, 65536
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %cond.true.54, label %cond.false.57

cond.true.54:                                     ; preds = %sw.bb.50
  %40 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any55 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 0
  %41 = load i8*, i8** %sv_any55, align 8
  %42 = bitcast i8* %41 to %struct.xpviv*
  %xiv_iv56 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %42, i32 0, i32 3
  %43 = load i64, i64* %xiv_iv56, align 8
  br label %cond.end.59

cond.false.57:                                    ; preds = %sw.bb.50
  %44 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call58 = call i64 @Perl_sv_2iv(%struct.sv* %44)
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.true.54
  %cond60 = phi i64 [ %43, %cond.true.54 ], [ %call58, %cond.false.57 ]
  %conv61 = trunc i64 %cond60 to i32
  store i32 %conv61, i32* @PL_maxsysfd, align 4
  br label %sw.epilog

sw.bb.62:                                         ; preds = %entry
  %45 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags63 = getelementptr inbounds %struct.sv, %struct.sv* %45, i32 0, i32 2
  %46 = load i32, i32* %sv_flags63, align 4
  %and64 = and i32 %46, 65536
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %cond.true.66, label %cond.false.69

cond.true.66:                                     ; preds = %sw.bb.62
  %47 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any67 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 0
  %48 = load i8*, i8** %sv_any67, align 8
  %49 = bitcast i8* %48 to %struct.xpviv*
  %xiv_iv68 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %49, i32 0, i32 3
  %50 = load i64, i64* %xiv_iv68, align 8
  br label %cond.end.71

cond.false.69:                                    ; preds = %sw.bb.62
  %51 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call70 = call i64 @Perl_sv_2iv(%struct.sv* %51)
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.66
  %cond72 = phi i64 [ %50, %cond.true.66 ], [ %call70, %cond.false.69 ]
  %conv73 = trunc i64 %cond72 to i32
  store i32 %conv73, i32* @PL_hints, align 4
  br label %sw.epilog

sw.bb.74:                                         ; preds = %entry
  %52 = load i8*, i8** @PL_inplace, align 8
  %tobool75 = icmp ne i8* %52, null
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %sw.bb.74
  %53 = load i8*, i8** @PL_inplace, align 8
  call void @Perl_safesysfree(i8* %53)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %sw.bb.74
  %54 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags78 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 2
  %55 = load i32, i32* %sv_flags78, align 4
  %and79 = and i32 %55, 118423552
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.end.77
  %56 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call82 = call i8* @Perl_savesvpv(%struct.sv* %56)
  store i8* %call82, i8** @PL_inplace, align 8
  br label %if.end.84

if.else.83:                                       ; preds = %if.end.77
  store i8* null, i8** @PL_inplace, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.then.81
  br label %sw.epilog

sw.bb.85:                                         ; preds = %entry
  %57 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr86 = getelementptr inbounds %struct.magic, %struct.magic* %57, i32 0, i32 6
  %58 = load i8*, i8** %mg_ptr86, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %add.ptr87, align 1
  %conv88 = sext i8 %59 to i32
  %cmp89 = icmp eq i32 %conv88, 0
  br i1 %cmp89, label %if.then.91, label %if.else.104

if.then.91:                                       ; preds = %sw.bb.85
  %60 = load i8*, i8** @PL_osname, align 8
  %tobool92 = icmp ne i8* %60, null
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.91
  %61 = load i8*, i8** @PL_osname, align 8
  call void @Perl_safesysfree(i8* %61)
  store i8* null, i8** @PL_osname, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.then.91
  %62 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags95 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 2
  %63 = load i32, i32* %sv_flags95, align 4
  %and96 = and i32 %63, 118423552
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.103

if.then.98:                                       ; preds = %if.end.94
  %64 = load i8, i8* @PL_tainting, align 1
  %tobool99 = icmp ne i8 %64, 0
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.98
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.then.98
  %65 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call102 = call i8* @Perl_savesvpv(%struct.sv* %65)
  store i8* %call102, i8** @PL_osname, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.101, %if.end.94
  br label %if.end.115

if.else.104:                                      ; preds = %sw.bb.85
  %66 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr105 = getelementptr inbounds %struct.magic, %struct.magic* %66, i32 0, i32 6
  %67 = load i8*, i8** %mg_ptr105, align 8
  %call106 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.end.114, label %if.then.108

if.then.108:                                      ; preds = %if.else.104
  %68 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 15), align 8
  %tobool109 = icmp ne %struct.sv* %68, null
  br i1 %tobool109, label %if.else.112, label %if.then.110

if.then.110:                                      ; preds = %if.then.108
  %69 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call111 = call %struct.sv* @Perl_newSVsv(%struct.sv* %69)
  store %struct.sv* %call111, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 15), align 8
  br label %if.end.113

if.else.112:                                      ; preds = %if.then.108
  %70 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 15), align 8
  %71 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %70, %struct.sv* %71, i32 2)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.then.110
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.else.104
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.103
  br label %sw.epilog

sw.bb.116:                                        ; preds = %entry
  %72 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags117 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 2
  %73 = load i32, i32* %sv_flags117, align 4
  %and118 = and i32 %73, 65536
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %cond.true.120, label %cond.false.123

cond.true.120:                                    ; preds = %sw.bb.116
  %74 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any121 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 0
  %75 = load i8*, i8** %sv_any121, align 8
  %76 = bitcast i8* %75 to %struct.xpviv*
  %xiv_iv122 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %76, i32 0, i32 3
  %77 = load i64, i64* %xiv_iv122, align 8
  br label %cond.end.125

cond.false.123:                                   ; preds = %sw.bb.116
  %78 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call124 = call i64 @Perl_sv_2iv(%struct.sv* %78)
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.120
  %cond126 = phi i64 [ %77, %cond.true.120 ], [ %call124, %cond.false.123 ]
  %conv127 = trunc i64 %cond126 to i32
  store i32 %conv127, i32* @PL_perldb, align 4
  %79 = load i32, i32* @PL_perldb, align 4
  %tobool128 = icmp ne i32 %79, 0
  br i1 %tobool128, label %land.lhs.true, label %if.end.131

land.lhs.true:                                    ; preds = %cond.end.125
  %80 = load %struct.sv*, %struct.sv** @PL_DBsingle, align 8
  %tobool129 = icmp ne %struct.sv* %80, null
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %land.lhs.true
  call void @Perl_init_debugger()
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %land.lhs.true, %cond.end.125
  br label %sw.epilog

sw.bb.132:                                        ; preds = %entry
  %81 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags133 = getelementptr inbounds %struct.sv, %struct.sv* %81, i32 0, i32 2
  %82 = load i32, i32* %sv_flags133, align 4
  %and134 = and i32 %82, 65536
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %cond.true.136, label %cond.false.139

cond.true.136:                                    ; preds = %sw.bb.132
  %83 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any137 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 0
  %84 = load i8*, i8** %sv_any137, align 8
  %85 = bitcast i8* %84 to %struct.xpviv*
  %xiv_iv138 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %85, i32 0, i32 3
  %86 = load i64, i64* %xiv_iv138, align 8
  br label %cond.end.141

cond.false.139:                                   ; preds = %sw.bb.132
  %87 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call140 = call i64 @Perl_sv_2iv(%struct.sv* %87)
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.139, %cond.true.136
  %cond142 = phi i64 [ %86, %cond.true.136 ], [ %call140, %cond.false.139 ]
  store i64 %cond142, i64* @PL_basetime, align 8
  br label %sw.epilog

sw.bb.143:                                        ; preds = %entry
  %88 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr144 = getelementptr inbounds %struct.magic, %struct.magic* %88, i32 0, i32 6
  %89 = load i8*, i8** %mg_ptr144, align 8
  %add.ptr145 = getelementptr inbounds i8, i8* %89, i64 1
  %90 = load i8, i8* %add.ptr145, align 1
  %conv146 = sext i8 %90 to i32
  %cmp147 = icmp eq i32 %conv146, 0
  br i1 %cmp147, label %if.then.149, label %if.else.172

if.then.149:                                      ; preds = %sw.bb.143
  %91 = load i8, i8* @PL_dowarn, align 1
  %conv150 = zext i8 %91 to i32
  %and151 = and i32 %conv150, 6
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.end.171, label %if.then.153

if.then.153:                                      ; preds = %if.then.149
  %92 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags154 = getelementptr inbounds %struct.sv, %struct.sv* %92, i32 0, i32 2
  %93 = load i32, i32* %sv_flags154, align 4
  %and155 = and i32 %93, 65536
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %cond.true.157, label %cond.false.160

cond.true.157:                                    ; preds = %if.then.153
  %94 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any158 = getelementptr inbounds %struct.sv, %struct.sv* %94, i32 0, i32 0
  %95 = load i8*, i8** %sv_any158, align 8
  %96 = bitcast i8* %95 to %struct.xpviv*
  %xiv_iv159 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %96, i32 0, i32 3
  %97 = load i64, i64* %xiv_iv159, align 8
  br label %cond.end.162

cond.false.160:                                   ; preds = %if.then.153
  %98 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call161 = call i64 @Perl_sv_2iv(%struct.sv* %98)
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.160, %cond.true.157
  %cond163 = phi i64 [ %97, %cond.true.157 ], [ %call161, %cond.false.160 ]
  %conv164 = trunc i64 %cond163 to i32
  store i32 %conv164, i32* %i, align 4
  %99 = load i8, i8* @PL_dowarn, align 1
  %conv165 = zext i8 %99 to i32
  %and166 = and i32 %conv165, -2
  %100 = load i32, i32* %i, align 4
  %tobool167 = icmp ne i32 %100, 0
  %cond168 = select i1 %tobool167, i32 1, i32 0
  %or169 = or i32 %and166, %cond168
  %conv170 = trunc i32 %or169 to i8
  store i8 %conv170, i8* @PL_dowarn, align 1
  br label %if.end.171

if.end.171:                                       ; preds = %cond.end.162, %if.then.149
  br label %if.end.253

if.else.172:                                      ; preds = %sw.bb.143
  %101 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr173 = getelementptr inbounds %struct.magic, %struct.magic* %101, i32 0, i32 6
  %102 = load i8*, i8** %mg_ptr173, align 8
  %add.ptr174 = getelementptr inbounds i8, i8* %102, i64 1
  %call175 = call i32 @strcmp(i8* %add.ptr174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %if.end.252, label %if.then.177

if.then.177:                                      ; preds = %if.else.172
  %103 = load i8, i8* @PL_dowarn, align 1
  %conv178 = zext i8 %103 to i32
  %and179 = and i32 %conv178, 6
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.end.251, label %if.then.181

if.then.181:                                      ; preds = %if.then.177
  %104 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags182 = getelementptr inbounds %struct.sv, %struct.sv* %104, i32 0, i32 2
  %105 = load i32, i32* %sv_flags182, align 4
  %and183 = and i32 %105, 262144
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.end.188, label %land.lhs.true.185

land.lhs.true.185:                                ; preds = %if.then.181
  %106 = load i32, i32* @PL_localizing, align 4
  %tobool186 = icmp ne i32 %106, 0
  br i1 %tobool186, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %land.lhs.true.185
  %107 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i64 12)
  store %struct.sv* getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2), %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  br label %sw.epilog

if.end.188:                                       ; preds = %land.lhs.true.185, %if.then.181
  store i32 0, i32* %accumulate, align 4
  store i32 0, i32* %any_fatals, align 4
  %108 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags191 = getelementptr inbounds %struct.sv, %struct.sv* %108, i32 0, i32 2
  %109 = load i32, i32* %sv_flags191, align 4
  %and192 = and i32 %109, 262144
  %cmp193 = icmp eq i32 %and192, 262144
  br i1 %cmp193, label %cond.true.195, label %cond.false.198

cond.true.195:                                    ; preds = %if.end.188
  %110 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any196 = getelementptr inbounds %struct.sv, %struct.sv* %110, i32 0, i32 0
  %111 = load i8*, i8** %sv_any196, align 8
  %112 = bitcast i8* %111 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %112, i32 0, i32 1
  %113 = load i64, i64* %xpv_cur, align 8
  store i64 %113, i64* %len189, align 8
  %114 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any197 = getelementptr inbounds %struct.sv, %struct.sv* %114, i32 0, i32 0
  %115 = load i8*, i8** %sv_any197, align 8
  %116 = bitcast i8* %115 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %116, i32 0, i32 0
  %117 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.200

cond.false.198:                                   ; preds = %if.end.188
  %118 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call199 = call i8* @Perl_sv_2pv_flags(%struct.sv* %118, i64* %len189, i32 2)
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.198, %cond.true.195
  %cond201 = phi i8* [ %117, %cond.true.195 ], [ %call199, %cond.false.198 ]
  store i8* %cond201, i8** %ptr, align 8
  store i64 0, i64* %i190, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.200
  %119 = load i64, i64* %i190, align 8
  %120 = load i64, i64* %len189, align 8
  %cmp202 = icmp ult i64 %119, %120
  br i1 %cmp202, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %121 = load i64, i64* %i190, align 8
  %122 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %122, i64 %121
  %123 = load i8, i8* %arrayidx, align 1
  %conv204 = sext i8 %123 to i32
  %124 = load i32, i32* %accumulate, align 4
  %or205 = or i32 %124, %conv204
  store i32 %or205, i32* %accumulate, align 4
  %125 = load i64, i64* %i190, align 8
  %126 = load i8*, i8** %ptr, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %126, i64 %125
  %127 = load i8, i8* %arrayidx206, align 1
  %conv207 = sext i8 %127 to i32
  %and208 = and i32 %conv207, 170
  %128 = load i32, i32* %any_fatals, align 4
  %or209 = or i32 %128, %and208
  store i32 %or209, i32* %any_fatals, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %129 = load i64, i64* %i190, align 8
  %inc = add i64 %129, 1
  store i64 %inc, i64* %i190, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %130 = load i32, i32* %accumulate, align 4
  %tobool210 = icmp ne i32 %130, 0
  br i1 %tobool210, label %if.else.212, label %if.then.211

if.then.211:                                      ; preds = %for.end
  store %struct.sv* getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2), %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  br label %if.end.250

if.else.212:                                      ; preds = %for.end
  %131 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any213 = getelementptr inbounds %struct.sv, %struct.sv* %131, i32 0, i32 0
  %132 = load i8*, i8** %sv_any213, align 8
  %133 = bitcast i8* %132 to %struct.xpv*
  %xpv_pv214 = getelementptr inbounds %struct.xpv, %struct.xpv* %133, i32 0, i32 0
  %134 = load i8*, i8** %xpv_pv214, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %134, i64 0
  %135 = load i8, i8* %arrayidx215, align 1
  %conv216 = sext i8 %135 to i32
  %and217 = and i32 %conv216, 1
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %land.lhs.true.219, label %if.else.225

land.lhs.true.219:                                ; preds = %if.else.212
  %136 = load i32, i32* %any_fatals, align 4
  %tobool220 = icmp ne i32 %136, 0
  br i1 %tobool220, label %if.else.225, label %if.then.221

if.then.221:                                      ; preds = %land.lhs.true.219
  store %struct.sv* getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1), %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %137 = load i8, i8* @PL_dowarn, align 1
  %conv222 = zext i8 %137 to i32
  %or223 = or i32 %conv222, 8
  %conv224 = trunc i32 %or223 to i8
  store i8 %conv224, i8* @PL_dowarn, align 1
  br label %if.end.249

if.else.225:                                      ; preds = %land.lhs.true.219, %if.else.212
  %138 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp226 = icmp eq %struct.sv* %138, null
  br i1 %cmp226, label %if.then.234, label %lor.lhs.false.228

lor.lhs.false.228:                                ; preds = %if.else.225
  %139 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp229 = icmp eq %struct.sv* %139, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp229, label %if.then.234, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %lor.lhs.false.228
  %140 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp232 = icmp eq %struct.sv* %140, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp232, label %if.then.234, label %if.else.236

if.then.234:                                      ; preds = %lor.lhs.false.231, %lor.lhs.false.228, %if.else.225
  %141 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call235 = call %struct.sv* @Perl_newSVsv(%struct.sv* %141)
  store %struct.sv* %call235, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  br label %if.end.237

if.else.236:                                      ; preds = %lor.lhs.false.231
  %142 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %143 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %142, %struct.sv* %143, i32 2)
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.236, %if.then.234
  %144 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %sv_any238 = getelementptr inbounds %struct.sv, %struct.sv* %144, i32 0, i32 0
  %145 = load i8*, i8** %sv_any238, align 8
  %146 = bitcast i8* %145 to %struct.xpv*
  %xpv_pv239 = getelementptr inbounds %struct.xpv, %struct.xpv* %146, i32 0, i32 0
  %147 = load i8*, i8** %xpv_pv239, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %147, i64 3
  %148 = load i8, i8* %arrayidx240, align 1
  %conv241 = sext i8 %148 to i32
  %and242 = and i32 %conv241, 16
  %tobool243 = icmp ne i32 %and242, 0
  br i1 %tobool243, label %if.then.244, label %if.end.248

if.then.244:                                      ; preds = %if.end.237
  %149 = load i8, i8* @PL_dowarn, align 1
  %conv245 = zext i8 %149 to i32
  %or246 = or i32 %conv245, 8
  %conv247 = trunc i32 %or246 to i8
  store i8 %conv247, i8* @PL_dowarn, align 1
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.244, %if.end.237
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.221
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then.211
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.then.177
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.else.172
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.end.171
  br label %sw.epilog

sw.bb.254:                                        ; preds = %entry
  %150 = load i32, i32* @PL_localizing, align 4
  %tobool255 = icmp ne i32 %150, 0
  br i1 %tobool255, label %if.then.256, label %if.else.261

if.then.256:                                      ; preds = %sw.bb.254
  %151 = load i32, i32* @PL_localizing, align 4
  %cmp257 = icmp eq i32 %151, 1
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %if.then.256
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.gv** @PL_last_in_gv to %struct.sv**))
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.259, %if.then.256
  br label %if.end.296

if.else.261:                                      ; preds = %sw.bb.254
  %152 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags262 = getelementptr inbounds %struct.sv, %struct.sv* %152, i32 0, i32 2
  %153 = load i32, i32* %sv_flags262, align 4
  %and263 = and i32 %153, 118423552
  %tobool264 = icmp ne i32 %and263, 0
  br i1 %tobool264, label %land.lhs.true.265, label %if.end.295

land.lhs.true.265:                                ; preds = %if.else.261
  %154 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %tobool266 = icmp ne %struct.gv* %154, null
  br i1 %tobool266, label %land.lhs.true.267, label %cond.false.279

land.lhs.true.267:                                ; preds = %land.lhs.true.265
  %155 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %156 = bitcast %struct.gv* %155 to %struct.sv*
  %sv_flags268 = getelementptr inbounds %struct.sv, %struct.sv* %156, i32 0, i32 2
  %157 = load i32, i32* %sv_flags268, align 4
  %and269 = and i32 %157, 255
  %cmp270 = icmp eq i32 %and269, 13
  br i1 %cmp270, label %land.lhs.true.272, label %cond.false.279

land.lhs.true.272:                                ; preds = %land.lhs.true.267
  %158 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any273 = getelementptr inbounds %struct.gv, %struct.gv* %158, i32 0, i32 0
  %159 = load %struct.xpvgv*, %struct.xpvgv** %sv_any273, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %159, i32 0, i32 7
  %160 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool274 = icmp ne %struct.gp* %160, null
  br i1 %tobool274, label %cond.true.275, label %cond.false.279

cond.true.275:                                    ; preds = %land.lhs.true.272
  %161 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any276 = getelementptr inbounds %struct.gv, %struct.gv* %161, i32 0, i32 0
  %162 = load %struct.xpvgv*, %struct.xpvgv** %sv_any276, align 8
  %xgv_gp277 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %162, i32 0, i32 7
  %163 = load %struct.gp*, %struct.gp** %xgv_gp277, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %163, i32 0, i32 2
  %164 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool278 = icmp ne %struct.io* %164, null
  br i1 %tobool278, label %if.then.280, label %if.end.295

cond.false.279:                                   ; preds = %land.lhs.true.272, %land.lhs.true.267, %land.lhs.true.265
  br i1 false, label %if.then.280, label %if.end.295

if.then.280:                                      ; preds = %cond.false.279, %cond.true.275
  %165 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags281 = getelementptr inbounds %struct.sv, %struct.sv* %165, i32 0, i32 2
  %166 = load i32, i32* %sv_flags281, align 4
  %and282 = and i32 %166, 65536
  %tobool283 = icmp ne i32 %and282, 0
  br i1 %tobool283, label %cond.true.284, label %cond.false.287

cond.true.284:                                    ; preds = %if.then.280
  %167 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any285 = getelementptr inbounds %struct.sv, %struct.sv* %167, i32 0, i32 0
  %168 = load i8*, i8** %sv_any285, align 8
  %169 = bitcast i8* %168 to %struct.xpviv*
  %xiv_iv286 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %169, i32 0, i32 3
  %170 = load i64, i64* %xiv_iv286, align 8
  br label %cond.end.289

cond.false.287:                                   ; preds = %if.then.280
  %171 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call288 = call i64 @Perl_sv_2iv(%struct.sv* %171)
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.287, %cond.true.284
  %cond290 = phi i64 [ %170, %cond.true.284 ], [ %call288, %cond.false.287 ]
  %172 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any291 = getelementptr inbounds %struct.gv, %struct.gv* %172, i32 0, i32 0
  %173 = load %struct.xpvgv*, %struct.xpvgv** %sv_any291, align 8
  %xgv_gp292 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %173, i32 0, i32 7
  %174 = load %struct.gp*, %struct.gp** %xgv_gp292, align 8
  %gp_io293 = getelementptr inbounds %struct.gp, %struct.gp* %174, i32 0, i32 2
  %175 = load %struct.io*, %struct.io** %gp_io293, align 8
  %sv_any294 = getelementptr inbounds %struct.io, %struct.io* %175, i32 0, i32 0
  %176 = load %struct.xpvio*, %struct.xpvio** %sv_any294, align 8
  %xio_lines = getelementptr inbounds %struct.xpvio, %struct.xpvio* %176, i32 0, i32 10
  store i64 %cond290, i64* %xio_lines, align 8
  br label %if.end.295

if.end.295:                                       ; preds = %cond.end.289, %cond.false.279, %cond.true.275, %if.else.261
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.end.260
  br label %sw.epilog

sw.bb.297:                                        ; preds = %entry
  %177 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any298 = getelementptr inbounds %struct.gv, %struct.gv* %177, i32 0, i32 0
  %178 = load %struct.xpvgv*, %struct.xpvgv** %sv_any298, align 8
  %xgv_gp299 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %178, i32 0, i32 7
  %179 = load %struct.gp*, %struct.gp** %xgv_gp299, align 8
  %gp_io300 = getelementptr inbounds %struct.gp, %struct.gp* %179, i32 0, i32 2
  %180 = load %struct.io*, %struct.io** %gp_io300, align 8
  %sv_any301 = getelementptr inbounds %struct.io, %struct.io* %180, i32 0, i32 0
  %181 = load %struct.xpvio*, %struct.xpvio** %sv_any301, align 8
  %xio_top_name = getelementptr inbounds %struct.xpvio, %struct.xpvio* %181, i32 0, i32 14
  %182 = load i8*, i8** %xio_top_name, align 8
  call void @Perl_safesysfree(i8* %182)
  %183 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call302 = call i8* @Perl_savesvpv(%struct.sv* %183)
  store i8* %call302, i8** %s, align 8
  %184 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any303 = getelementptr inbounds %struct.gv, %struct.gv* %184, i32 0, i32 0
  %185 = load %struct.xpvgv*, %struct.xpvgv** %sv_any303, align 8
  %xgv_gp304 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %185, i32 0, i32 7
  %186 = load %struct.gp*, %struct.gp** %xgv_gp304, align 8
  %gp_io305 = getelementptr inbounds %struct.gp, %struct.gp* %186, i32 0, i32 2
  %187 = load %struct.io*, %struct.io** %gp_io305, align 8
  %sv_any306 = getelementptr inbounds %struct.io, %struct.io* %187, i32 0, i32 0
  %188 = load %struct.xpvio*, %struct.xpvio** %sv_any306, align 8
  %xio_top_name307 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %188, i32 0, i32 14
  store i8* %call302, i8** %xio_top_name307, align 8
  %189 = load i8*, i8** %s, align 8
  %call308 = call %struct.gv* @Perl_gv_fetchpv(i8* %189, i32 1, i32 15)
  %190 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any309 = getelementptr inbounds %struct.gv, %struct.gv* %190, i32 0, i32 0
  %191 = load %struct.xpvgv*, %struct.xpvgv** %sv_any309, align 8
  %xgv_gp310 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %191, i32 0, i32 7
  %192 = load %struct.gp*, %struct.gp** %xgv_gp310, align 8
  %gp_io311 = getelementptr inbounds %struct.gp, %struct.gp* %192, i32 0, i32 2
  %193 = load %struct.io*, %struct.io** %gp_io311, align 8
  %sv_any312 = getelementptr inbounds %struct.io, %struct.io* %193, i32 0, i32 0
  %194 = load %struct.xpvio*, %struct.xpvio** %sv_any312, align 8
  %xio_top_gv = getelementptr inbounds %struct.xpvio, %struct.xpvio* %194, i32 0, i32 15
  store %struct.gv* %call308, %struct.gv** %xio_top_gv, align 8
  br label %sw.epilog

sw.bb.313:                                        ; preds = %entry
  %195 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any314 = getelementptr inbounds %struct.gv, %struct.gv* %195, i32 0, i32 0
  %196 = load %struct.xpvgv*, %struct.xpvgv** %sv_any314, align 8
  %xgv_gp315 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %196, i32 0, i32 7
  %197 = load %struct.gp*, %struct.gp** %xgv_gp315, align 8
  %gp_io316 = getelementptr inbounds %struct.gp, %struct.gp* %197, i32 0, i32 2
  %198 = load %struct.io*, %struct.io** %gp_io316, align 8
  %sv_any317 = getelementptr inbounds %struct.io, %struct.io* %198, i32 0, i32 0
  %199 = load %struct.xpvio*, %struct.xpvio** %sv_any317, align 8
  %xio_fmt_name = getelementptr inbounds %struct.xpvio, %struct.xpvio* %199, i32 0, i32 16
  %200 = load i8*, i8** %xio_fmt_name, align 8
  call void @Perl_safesysfree(i8* %200)
  %201 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call318 = call i8* @Perl_savesvpv(%struct.sv* %201)
  store i8* %call318, i8** %s, align 8
  %202 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any319 = getelementptr inbounds %struct.gv, %struct.gv* %202, i32 0, i32 0
  %203 = load %struct.xpvgv*, %struct.xpvgv** %sv_any319, align 8
  %xgv_gp320 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %203, i32 0, i32 7
  %204 = load %struct.gp*, %struct.gp** %xgv_gp320, align 8
  %gp_io321 = getelementptr inbounds %struct.gp, %struct.gp* %204, i32 0, i32 2
  %205 = load %struct.io*, %struct.io** %gp_io321, align 8
  %sv_any322 = getelementptr inbounds %struct.io, %struct.io* %205, i32 0, i32 0
  %206 = load %struct.xpvio*, %struct.xpvio** %sv_any322, align 8
  %xio_fmt_name323 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %206, i32 0, i32 16
  store i8* %call318, i8** %xio_fmt_name323, align 8
  %207 = load i8*, i8** %s, align 8
  %call324 = call %struct.gv* @Perl_gv_fetchpv(i8* %207, i32 1, i32 15)
  %208 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any325 = getelementptr inbounds %struct.gv, %struct.gv* %208, i32 0, i32 0
  %209 = load %struct.xpvgv*, %struct.xpvgv** %sv_any325, align 8
  %xgv_gp326 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %209, i32 0, i32 7
  %210 = load %struct.gp*, %struct.gp** %xgv_gp326, align 8
  %gp_io327 = getelementptr inbounds %struct.gp, %struct.gp* %210, i32 0, i32 2
  %211 = load %struct.io*, %struct.io** %gp_io327, align 8
  %sv_any328 = getelementptr inbounds %struct.io, %struct.io* %211, i32 0, i32 0
  %212 = load %struct.xpvio*, %struct.xpvio** %sv_any328, align 8
  %xio_fmt_gv = getelementptr inbounds %struct.xpvio, %struct.xpvio* %212, i32 0, i32 17
  store %struct.gv* %call324, %struct.gv** %xio_fmt_gv, align 8
  br label %sw.epilog

sw.bb.329:                                        ; preds = %entry
  %213 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags330 = getelementptr inbounds %struct.sv, %struct.sv* %213, i32 0, i32 2
  %214 = load i32, i32* %sv_flags330, align 4
  %and331 = and i32 %214, 65536
  %tobool332 = icmp ne i32 %and331, 0
  br i1 %tobool332, label %cond.true.333, label %cond.false.336

cond.true.333:                                    ; preds = %sw.bb.329
  %215 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any334 = getelementptr inbounds %struct.sv, %struct.sv* %215, i32 0, i32 0
  %216 = load i8*, i8** %sv_any334, align 8
  %217 = bitcast i8* %216 to %struct.xpviv*
  %xiv_iv335 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %217, i32 0, i32 3
  %218 = load i64, i64* %xiv_iv335, align 8
  br label %cond.end.338

cond.false.336:                                   ; preds = %sw.bb.329
  %219 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call337 = call i64 @Perl_sv_2iv(%struct.sv* %219)
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.336, %cond.true.333
  %cond339 = phi i64 [ %218, %cond.true.333 ], [ %call337, %cond.false.336 ]
  %220 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any340 = getelementptr inbounds %struct.gv, %struct.gv* %220, i32 0, i32 0
  %221 = load %struct.xpvgv*, %struct.xpvgv** %sv_any340, align 8
  %xgv_gp341 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %221, i32 0, i32 7
  %222 = load %struct.gp*, %struct.gp** %xgv_gp341, align 8
  %gp_io342 = getelementptr inbounds %struct.gp, %struct.gp* %222, i32 0, i32 2
  %223 = load %struct.io*, %struct.io** %gp_io342, align 8
  %sv_any343 = getelementptr inbounds %struct.io, %struct.io* %223, i32 0, i32 0
  %224 = load %struct.xpvio*, %struct.xpvio** %sv_any343, align 8
  %xio_page_len = getelementptr inbounds %struct.xpvio, %struct.xpvio* %224, i32 0, i32 12
  store i64 %cond339, i64* %xio_page_len, align 8
  br label %sw.epilog

sw.bb.344:                                        ; preds = %entry
  %225 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags345 = getelementptr inbounds %struct.sv, %struct.sv* %225, i32 0, i32 2
  %226 = load i32, i32* %sv_flags345, align 4
  %and346 = and i32 %226, 65536
  %tobool347 = icmp ne i32 %and346, 0
  br i1 %tobool347, label %cond.true.348, label %cond.false.351

cond.true.348:                                    ; preds = %sw.bb.344
  %227 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any349 = getelementptr inbounds %struct.sv, %struct.sv* %227, i32 0, i32 0
  %228 = load i8*, i8** %sv_any349, align 8
  %229 = bitcast i8* %228 to %struct.xpviv*
  %xiv_iv350 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %229, i32 0, i32 3
  %230 = load i64, i64* %xiv_iv350, align 8
  br label %cond.end.353

cond.false.351:                                   ; preds = %sw.bb.344
  %231 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call352 = call i64 @Perl_sv_2iv(%struct.sv* %231)
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.351, %cond.true.348
  %cond354 = phi i64 [ %230, %cond.true.348 ], [ %call352, %cond.false.351 ]
  %232 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any355 = getelementptr inbounds %struct.gv, %struct.gv* %232, i32 0, i32 0
  %233 = load %struct.xpvgv*, %struct.xpvgv** %sv_any355, align 8
  %xgv_gp356 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %233, i32 0, i32 7
  %234 = load %struct.gp*, %struct.gp** %xgv_gp356, align 8
  %gp_io357 = getelementptr inbounds %struct.gp, %struct.gp* %234, i32 0, i32 2
  %235 = load %struct.io*, %struct.io** %gp_io357, align 8
  %sv_any358 = getelementptr inbounds %struct.io, %struct.io* %235, i32 0, i32 0
  %236 = load %struct.xpvio*, %struct.xpvio** %sv_any358, align 8
  %xio_lines_left = getelementptr inbounds %struct.xpvio, %struct.xpvio* %236, i32 0, i32 13
  store i64 %cond354, i64* %xio_lines_left, align 8
  %237 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any359 = getelementptr inbounds %struct.gv, %struct.gv* %237, i32 0, i32 0
  %238 = load %struct.xpvgv*, %struct.xpvgv** %sv_any359, align 8
  %xgv_gp360 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %238, i32 0, i32 7
  %239 = load %struct.gp*, %struct.gp** %xgv_gp360, align 8
  %gp_io361 = getelementptr inbounds %struct.gp, %struct.gp* %239, i32 0, i32 2
  %240 = load %struct.io*, %struct.io** %gp_io361, align 8
  %sv_any362 = getelementptr inbounds %struct.io, %struct.io* %240, i32 0, i32 0
  %241 = load %struct.xpvio*, %struct.xpvio** %sv_any362, align 8
  %xio_lines_left363 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %241, i32 0, i32 13
  %242 = load i64, i64* %xio_lines_left363, align 8
  %cmp364 = icmp slt i64 %242, 0
  br i1 %cmp364, label %if.then.366, label %if.end.372

if.then.366:                                      ; preds = %cond.end.353
  %243 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any367 = getelementptr inbounds %struct.gv, %struct.gv* %243, i32 0, i32 0
  %244 = load %struct.xpvgv*, %struct.xpvgv** %sv_any367, align 8
  %xgv_gp368 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %244, i32 0, i32 7
  %245 = load %struct.gp*, %struct.gp** %xgv_gp368, align 8
  %gp_io369 = getelementptr inbounds %struct.gp, %struct.gp* %245, i32 0, i32 2
  %246 = load %struct.io*, %struct.io** %gp_io369, align 8
  %sv_any370 = getelementptr inbounds %struct.io, %struct.io* %246, i32 0, i32 0
  %247 = load %struct.xpvio*, %struct.xpvio** %sv_any370, align 8
  %xio_lines_left371 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %247, i32 0, i32 13
  store i64 0, i64* %xio_lines_left371, align 8
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.366, %cond.end.353
  br label %sw.epilog

sw.bb.373:                                        ; preds = %entry
  %248 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags374 = getelementptr inbounds %struct.sv, %struct.sv* %248, i32 0, i32 2
  %249 = load i32, i32* %sv_flags374, align 4
  %and375 = and i32 %249, 65536
  %tobool376 = icmp ne i32 %and375, 0
  br i1 %tobool376, label %cond.true.377, label %cond.false.380

cond.true.377:                                    ; preds = %sw.bb.373
  %250 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any378 = getelementptr inbounds %struct.sv, %struct.sv* %250, i32 0, i32 0
  %251 = load i8*, i8** %sv_any378, align 8
  %252 = bitcast i8* %251 to %struct.xpviv*
  %xiv_iv379 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %252, i32 0, i32 3
  %253 = load i64, i64* %xiv_iv379, align 8
  br label %cond.end.382

cond.false.380:                                   ; preds = %sw.bb.373
  %254 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call381 = call i64 @Perl_sv_2iv(%struct.sv* %254)
  br label %cond.end.382

cond.end.382:                                     ; preds = %cond.false.380, %cond.true.377
  %cond383 = phi i64 [ %253, %cond.true.377 ], [ %call381, %cond.false.380 ]
  %255 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any384 = getelementptr inbounds %struct.gv, %struct.gv* %255, i32 0, i32 0
  %256 = load %struct.xpvgv*, %struct.xpvgv** %sv_any384, align 8
  %xgv_gp385 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %256, i32 0, i32 7
  %257 = load %struct.gp*, %struct.gp** %xgv_gp385, align 8
  %gp_io386 = getelementptr inbounds %struct.gp, %struct.gp* %257, i32 0, i32 2
  %258 = load %struct.io*, %struct.io** %gp_io386, align 8
  %sv_any387 = getelementptr inbounds %struct.io, %struct.io* %258, i32 0, i32 0
  %259 = load %struct.xpvio*, %struct.xpvio** %sv_any387, align 8
  %xio_page = getelementptr inbounds %struct.xpvio, %struct.xpvio* %259, i32 0, i32 11
  store i64 %cond383, i64* %xio_page, align 8
  br label %sw.epilog

sw.bb.388:                                        ; preds = %entry
  %260 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any389 = getelementptr inbounds %struct.gv, %struct.gv* %260, i32 0, i32 0
  %261 = load %struct.xpvgv*, %struct.xpvgv** %sv_any389, align 8
  %xgv_gp390 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %261, i32 0, i32 7
  %262 = load %struct.gp*, %struct.gp** %xgv_gp390, align 8
  %gp_io391 = getelementptr inbounds %struct.gp, %struct.gp* %262, i32 0, i32 2
  %263 = load %struct.io*, %struct.io** %gp_io391, align 8
  store %struct.io* %263, %struct.io** %io, align 8
  %264 = load %struct.io*, %struct.io** %io, align 8
  %tobool392 = icmp ne %struct.io* %264, null
  br i1 %tobool392, label %if.end.394, label %if.then.393

if.then.393:                                      ; preds = %sw.bb.388
  br label %sw.epilog

if.end.394:                                       ; preds = %sw.bb.388
  %265 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags395 = getelementptr inbounds %struct.sv, %struct.sv* %265, i32 0, i32 2
  %266 = load i32, i32* %sv_flags395, align 4
  %and396 = and i32 %266, 65536
  %tobool397 = icmp ne i32 %and396, 0
  br i1 %tobool397, label %cond.true.398, label %cond.false.401

cond.true.398:                                    ; preds = %if.end.394
  %267 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any399 = getelementptr inbounds %struct.sv, %struct.sv* %267, i32 0, i32 0
  %268 = load i8*, i8** %sv_any399, align 8
  %269 = bitcast i8* %268 to %struct.xpviv*
  %xiv_iv400 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %269, i32 0, i32 3
  %270 = load i64, i64* %xiv_iv400, align 8
  br label %cond.end.403

cond.false.401:                                   ; preds = %if.end.394
  %271 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call402 = call i64 @Perl_sv_2iv(%struct.sv* %271)
  br label %cond.end.403

cond.end.403:                                     ; preds = %cond.false.401, %cond.true.398
  %cond404 = phi i64 [ %270, %cond.true.398 ], [ %call402, %cond.false.401 ]
  %cmp405 = icmp eq i64 %cond404, 0
  br i1 %cmp405, label %if.then.407, label %if.else.412

if.then.407:                                      ; preds = %cond.end.403
  %272 = load %struct.io*, %struct.io** %io, align 8
  %sv_any408 = getelementptr inbounds %struct.io, %struct.io* %272, i32 0, i32 0
  %273 = load %struct.xpvio*, %struct.xpvio** %sv_any408, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %273, i32 0, i32 22
  %274 = load i8, i8* %xio_flags, align 1
  %conv409 = sext i8 %274 to i32
  %and410 = and i32 %conv409, -5
  %conv411 = trunc i32 %and410 to i8
  store i8 %conv411, i8* %xio_flags, align 1
  br label %if.end.430

if.else.412:                                      ; preds = %cond.end.403
  %275 = load %struct.io*, %struct.io** %io, align 8
  %sv_any413 = getelementptr inbounds %struct.io, %struct.io* %275, i32 0, i32 0
  %276 = load %struct.xpvio*, %struct.xpvio** %sv_any413, align 8
  %xio_flags414 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %276, i32 0, i32 22
  %277 = load i8, i8* %xio_flags414, align 1
  %conv415 = sext i8 %277 to i32
  %and416 = and i32 %conv415, 4
  %tobool417 = icmp ne i32 %and416, 0
  br i1 %tobool417, label %if.end.429, label %if.then.418

if.then.418:                                      ; preds = %if.else.412
  %278 = load %struct.io*, %struct.io** %io, align 8
  %sv_any419 = getelementptr inbounds %struct.io, %struct.io* %278, i32 0, i32 0
  %279 = load %struct.xpvio*, %struct.xpvio** %sv_any419, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %279, i32 0, i32 8
  %280 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  store %struct._PerlIO** %280, %struct._PerlIO*** %ofp, align 8
  %281 = load %struct._PerlIO**, %struct._PerlIO*** %ofp, align 8
  %tobool420 = icmp ne %struct._PerlIO** %281, null
  br i1 %tobool420, label %if.then.421, label %if.end.423

if.then.421:                                      ; preds = %if.then.418
  %282 = load %struct._PerlIO**, %struct._PerlIO*** %ofp, align 8
  %call422 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %282)
  br label %if.end.423

if.end.423:                                       ; preds = %if.then.421, %if.then.418
  %283 = load %struct.io*, %struct.io** %io, align 8
  %sv_any424 = getelementptr inbounds %struct.io, %struct.io* %283, i32 0, i32 0
  %284 = load %struct.xpvio*, %struct.xpvio** %sv_any424, align 8
  %xio_flags425 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %284, i32 0, i32 22
  %285 = load i8, i8* %xio_flags425, align 1
  %conv426 = sext i8 %285 to i32
  %or427 = or i32 %conv426, 4
  %conv428 = trunc i32 %or427 to i8
  store i8 %conv428, i8* %xio_flags425, align 1
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.423, %if.else.412
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %if.then.407
  br label %sw.epilog

sw.bb.431:                                        ; preds = %entry
  %286 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags432 = getelementptr inbounds %struct.sv, %struct.sv* %286, i32 0, i32 2
  %287 = load i32, i32* %sv_flags432, align 4
  %and433 = and i32 %287, 65536
  %tobool434 = icmp ne i32 %and433, 0
  br i1 %tobool434, label %cond.true.435, label %cond.false.438

cond.true.435:                                    ; preds = %sw.bb.431
  %288 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any436 = getelementptr inbounds %struct.sv, %struct.sv* %288, i32 0, i32 0
  %289 = load i8*, i8** %sv_any436, align 8
  %290 = bitcast i8* %289 to %struct.xpviv*
  %xiv_iv437 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %290, i32 0, i32 3
  %291 = load i64, i64* %xiv_iv437, align 8
  br label %cond.end.440

cond.false.438:                                   ; preds = %sw.bb.431
  %292 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call439 = call i64 @Perl_sv_2iv(%struct.sv* %292)
  br label %cond.end.440

cond.end.440:                                     ; preds = %cond.false.438, %cond.true.435
  %cond441 = phi i64 [ %291, %cond.true.435 ], [ %call439, %cond.false.438 ]
  %conv442 = trunc i64 %cond441 to i32
  store i32 %conv442, i32* %i, align 4
  %293 = load i32, i32* %i, align 4
  %cmp443 = icmp ne i32 %293, 0
  %conv444 = zext i1 %cmp443 to i32
  store i32 %conv444, i32* @PL_multiline, align 4
  br label %sw.epilog

sw.bb.445:                                        ; preds = %entry
  %294 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  call void @Perl_sv_free(%struct.sv* %294)
  %295 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call446 = call %struct.sv* @Perl_newSVsv(%struct.sv* %295)
  store %struct.sv* %call446, %struct.sv** @PL_rs, align 8
  br label %sw.epilog

sw.bb.447:                                        ; preds = %entry
  %296 = load %struct.sv*, %struct.sv** @PL_ors_sv, align 8
  %tobool448 = icmp ne %struct.sv* %296, null
  br i1 %tobool448, label %if.then.449, label %if.end.450

if.then.449:                                      ; preds = %sw.bb.447
  %297 = load %struct.sv*, %struct.sv** @PL_ors_sv, align 8
  call void @Perl_sv_free(%struct.sv* %297)
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.449, %sw.bb.447
  %298 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags451 = getelementptr inbounds %struct.sv, %struct.sv* %298, i32 0, i32 2
  %299 = load i32, i32* %sv_flags451, align 4
  %and452 = and i32 %299, 118423552
  %tobool453 = icmp ne i32 %and452, 0
  br i1 %tobool453, label %if.then.458, label %lor.lhs.false.454

lor.lhs.false.454:                                ; preds = %if.end.450
  %300 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags455 = getelementptr inbounds %struct.sv, %struct.sv* %300, i32 0, i32 2
  %301 = load i32, i32* %sv_flags455, align 4
  %and456 = and i32 %301, 8192
  %tobool457 = icmp ne i32 %and456, 0
  br i1 %tobool457, label %if.then.458, label %if.else.460

if.then.458:                                      ; preds = %lor.lhs.false.454, %if.end.450
  %302 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call459 = call %struct.sv* @Perl_newSVsv(%struct.sv* %302)
  store %struct.sv* %call459, %struct.sv** @PL_ors_sv, align 8
  br label %if.end.461

if.else.460:                                      ; preds = %lor.lhs.false.454
  store %struct.sv* null, %struct.sv** @PL_ors_sv, align 8
  br label %if.end.461

if.end.461:                                       ; preds = %if.else.460, %if.then.458
  br label %sw.epilog

sw.bb.462:                                        ; preds = %entry
  %303 = load %struct.sv*, %struct.sv** @PL_ofs_sv, align 8
  %tobool463 = icmp ne %struct.sv* %303, null
  br i1 %tobool463, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %sw.bb.462
  %304 = load %struct.sv*, %struct.sv** @PL_ofs_sv, align 8
  call void @Perl_sv_free(%struct.sv* %304)
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.464, %sw.bb.462
  %305 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags466 = getelementptr inbounds %struct.sv, %struct.sv* %305, i32 0, i32 2
  %306 = load i32, i32* %sv_flags466, align 4
  %and467 = and i32 %306, 118423552
  %tobool468 = icmp ne i32 %and467, 0
  br i1 %tobool468, label %if.then.473, label %lor.lhs.false.469

lor.lhs.false.469:                                ; preds = %if.end.465
  %307 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags470 = getelementptr inbounds %struct.sv, %struct.sv* %307, i32 0, i32 2
  %308 = load i32, i32* %sv_flags470, align 4
  %and471 = and i32 %308, 8192
  %tobool472 = icmp ne i32 %and471, 0
  br i1 %tobool472, label %if.then.473, label %if.else.475

if.then.473:                                      ; preds = %lor.lhs.false.469, %if.end.465
  %309 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call474 = call %struct.sv* @Perl_newSVsv(%struct.sv* %309)
  store %struct.sv* %call474, %struct.sv** @PL_ofs_sv, align 8
  br label %if.end.476

if.else.475:                                      ; preds = %lor.lhs.false.469
  store %struct.sv* null, %struct.sv** @PL_ofs_sv, align 8
  br label %if.end.476

if.end.476:                                       ; preds = %if.else.475, %if.then.473
  br label %sw.epilog

sw.bb.477:                                        ; preds = %entry
  %310 = load i8*, i8** @PL_ofmt, align 8
  %tobool478 = icmp ne i8* %310, null
  br i1 %tobool478, label %if.then.479, label %if.end.480

if.then.479:                                      ; preds = %sw.bb.477
  %311 = load i8*, i8** @PL_ofmt, align 8
  call void @Perl_safesysfree(i8* %311)
  br label %if.end.480

if.end.480:                                       ; preds = %if.then.479, %sw.bb.477
  %312 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call481 = call i8* @Perl_savesvpv(%struct.sv* %312)
  store i8* %call481, i8** @PL_ofmt, align 8
  br label %sw.epilog

sw.bb.482:                                        ; preds = %entry
  %313 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags483 = getelementptr inbounds %struct.sv, %struct.sv* %313, i32 0, i32 2
  %314 = load i32, i32* %sv_flags483, align 4
  %and484 = and i32 %314, 65536
  %tobool485 = icmp ne i32 %and484, 0
  br i1 %tobool485, label %cond.true.486, label %cond.false.489

cond.true.486:                                    ; preds = %sw.bb.482
  %315 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any487 = getelementptr inbounds %struct.sv, %struct.sv* %315, i32 0, i32 0
  %316 = load i8*, i8** %sv_any487, align 8
  %317 = bitcast i8* %316 to %struct.xpviv*
  %xiv_iv488 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %317, i32 0, i32 3
  %318 = load i64, i64* %xiv_iv488, align 8
  br label %cond.end.491

cond.false.489:                                   ; preds = %sw.bb.482
  %319 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call490 = call i64 @Perl_sv_2iv(%struct.sv* %319)
  br label %cond.end.491

cond.end.491:                                     ; preds = %cond.false.489, %cond.true.486
  %cond492 = phi i64 [ %318, %cond.true.486 ], [ %call490, %cond.false.489 ]
  %conv493 = trunc i64 %cond492 to i32
  store i32 %conv493, i32* getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 12), align 4
  br label %sw.epilog

sw.bb.494:                                        ; preds = %entry
  %320 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags495 = getelementptr inbounds %struct.sv, %struct.sv* %320, i32 0, i32 2
  %321 = load i32, i32* %sv_flags495, align 4
  %and496 = and i32 %321, 65536
  %tobool497 = icmp ne i32 %and496, 0
  br i1 %tobool497, label %cond.true.498, label %cond.false.501

cond.true.498:                                    ; preds = %sw.bb.494
  %322 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any499 = getelementptr inbounds %struct.sv, %struct.sv* %322, i32 0, i32 0
  %323 = load i8*, i8** %sv_any499, align 8
  %324 = bitcast i8* %323 to %struct.xpviv*
  %xiv_iv500 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %324, i32 0, i32 3
  %325 = load i64, i64* %xiv_iv500, align 8
  br label %cond.end.503

cond.false.501:                                   ; preds = %sw.bb.494
  %326 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call502 = call i64 @Perl_sv_2iv(%struct.sv* %326)
  br label %cond.end.503

cond.end.503:                                     ; preds = %cond.false.501, %cond.true.498
  %cond504 = phi i64 [ %325, %cond.true.498 ], [ %call502, %cond.false.501 ]
  %conv505 = trunc i64 %cond504 to i32
  store i32 %conv505, i32* @PL_statusvalue, align 4
  %327 = load i32, i32* @PL_statusvalue, align 4
  %cmp506 = icmp ne i32 %327, -1
  br i1 %cmp506, label %if.then.508, label %if.end.510

if.then.508:                                      ; preds = %cond.end.503
  %328 = load i32, i32* @PL_statusvalue, align 4
  %and509 = and i32 %328, 65535
  store i32 %and509, i32* @PL_statusvalue, align 4
  br label %if.end.510

if.end.510:                                       ; preds = %if.then.508, %cond.end.503
  br label %sw.epilog

sw.bb.511:                                        ; preds = %entry
  %329 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags512 = getelementptr inbounds %struct.sv, %struct.sv* %329, i32 0, i32 2
  %330 = load i32, i32* %sv_flags512, align 4
  %and513 = and i32 %330, 65536
  %tobool514 = icmp ne i32 %and513, 0
  br i1 %tobool514, label %cond.true.515, label %cond.false.518

cond.true.515:                                    ; preds = %sw.bb.511
  %331 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any516 = getelementptr inbounds %struct.sv, %struct.sv* %331, i32 0, i32 0
  %332 = load i8*, i8** %sv_any516, align 8
  %333 = bitcast i8* %332 to %struct.xpviv*
  %xiv_iv517 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %333, i32 0, i32 3
  %334 = load i64, i64* %xiv_iv517, align 8
  br label %cond.end.527

cond.false.518:                                   ; preds = %sw.bb.511
  %335 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags519 = getelementptr inbounds %struct.sv, %struct.sv* %335, i32 0, i32 2
  %336 = load i32, i32* %sv_flags519, align 4
  %and520 = and i32 %336, 118423552
  %tobool521 = icmp ne i32 %and520, 0
  br i1 %tobool521, label %cond.true.522, label %cond.false.524

cond.true.522:                                    ; preds = %cond.false.518
  %337 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call523 = call i64 @Perl_sv_2iv(%struct.sv* %337)
  br label %cond.end.525

cond.false.524:                                   ; preds = %cond.false.518
  br label %cond.end.525

cond.end.525:                                     ; preds = %cond.false.524, %cond.true.522
  %cond526 = phi i64 [ %call523, %cond.true.522 ], [ 0, %cond.false.524 ]
  br label %cond.end.527

cond.end.527:                                     ; preds = %cond.end.525, %cond.true.515
  %cond528 = phi i64 [ %334, %cond.true.515 ], [ %cond526, %cond.end.525 ]
  %conv529 = trunc i64 %cond528 to i32
  %call530 = call i32* @__errno_location()
  store i32 %conv529, i32* %call530, align 4
  br label %sw.epilog

sw.bb.531:                                        ; preds = %entry
  %338 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags532 = getelementptr inbounds %struct.sv, %struct.sv* %338, i32 0, i32 2
  %339 = load i32, i32* %sv_flags532, align 4
  %and533 = and i32 %339, 65536
  %tobool534 = icmp ne i32 %and533, 0
  br i1 %tobool534, label %cond.true.535, label %cond.false.538

cond.true.535:                                    ; preds = %sw.bb.531
  %340 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any536 = getelementptr inbounds %struct.sv, %struct.sv* %340, i32 0, i32 0
  %341 = load i8*, i8** %sv_any536, align 8
  %342 = bitcast i8* %341 to %struct.xpviv*
  %xiv_iv537 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %342, i32 0, i32 3
  %343 = load i64, i64* %xiv_iv537, align 8
  br label %cond.end.540

cond.false.538:                                   ; preds = %sw.bb.531
  %344 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call539 = call i64 @Perl_sv_2iv(%struct.sv* %344)
  br label %cond.end.540

cond.end.540:                                     ; preds = %cond.false.538, %cond.true.535
  %cond541 = phi i64 [ %343, %cond.true.535 ], [ %call539, %cond.false.538 ]
  %conv542 = trunc i64 %cond541 to i32
  store i32 %conv542, i32* @PL_uid, align 4
  %345 = load i32, i32* @PL_delaymagic, align 4
  %tobool543 = icmp ne i32 %345, 0
  br i1 %tobool543, label %if.then.544, label %if.end.546

if.then.544:                                      ; preds = %cond.end.540
  %346 = load i32, i32* @PL_delaymagic, align 4
  %or545 = or i32 %346, 1
  store i32 %or545, i32* @PL_delaymagic, align 4
  br label %sw.epilog

if.end.546:                                       ; preds = %cond.end.540
  %347 = load i32, i32* @PL_uid, align 4
  %348 = load i32, i32* @PL_euid, align 4
  %cmp547 = icmp eq i32 %347, %348
  br i1 %cmp547, label %if.then.549, label %if.else.551

if.then.549:                                      ; preds = %if.end.546
  %349 = load i32, i32* @PL_uid, align 4
  %call550 = call i32 @setuid(i32 %349)
  br label %if.end.553

if.else.551:                                      ; preds = %if.end.546
  %call552 = call i32 @getuid()
  store i32 %call552, i32* @PL_uid, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.553

if.end.553:                                       ; preds = %if.else.551, %if.then.549
  %call554 = call i32 @getuid()
  store i32 %call554, i32* @PL_uid, align 4
  %350 = load i32, i32* @PL_uid, align 4
  %tobool555 = icmp ne i32 %350, 0
  br i1 %tobool555, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.553
  %351 = load i32, i32* @PL_euid, align 4
  %352 = load i32, i32* @PL_uid, align 4
  %cmp556 = icmp ne i32 %351, %352
  br i1 %cmp556, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %353 = load i32, i32* @PL_egid, align 4
  %354 = load i32, i32* @PL_gid, align 4
  %cmp558 = icmp ne i32 %353, %354
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %355 = phi i1 [ true, %land.rhs ], [ %cmp558, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.end.553
  %356 = phi i1 [ false, %if.end.553 ], [ %355, %lor.end ]
  %land.ext = zext i1 %356 to i32
  %357 = load i8, i8* @PL_tainting, align 1
  %conv560 = sext i8 %357 to i32
  %or561 = or i32 %conv560, %land.ext
  %conv562 = trunc i32 %or561 to i8
  store i8 %conv562, i8* @PL_tainting, align 1
  br label %sw.epilog

sw.bb.563:                                        ; preds = %entry
  %358 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags564 = getelementptr inbounds %struct.sv, %struct.sv* %358, i32 0, i32 2
  %359 = load i32, i32* %sv_flags564, align 4
  %and565 = and i32 %359, 65536
  %tobool566 = icmp ne i32 %and565, 0
  br i1 %tobool566, label %cond.true.567, label %cond.false.570

cond.true.567:                                    ; preds = %sw.bb.563
  %360 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any568 = getelementptr inbounds %struct.sv, %struct.sv* %360, i32 0, i32 0
  %361 = load i8*, i8** %sv_any568, align 8
  %362 = bitcast i8* %361 to %struct.xpviv*
  %xiv_iv569 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %362, i32 0, i32 3
  %363 = load i64, i64* %xiv_iv569, align 8
  br label %cond.end.572

cond.false.570:                                   ; preds = %sw.bb.563
  %364 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call571 = call i64 @Perl_sv_2iv(%struct.sv* %364)
  br label %cond.end.572

cond.end.572:                                     ; preds = %cond.false.570, %cond.true.567
  %cond573 = phi i64 [ %363, %cond.true.567 ], [ %call571, %cond.false.570 ]
  %conv574 = trunc i64 %cond573 to i32
  store i32 %conv574, i32* @PL_euid, align 4
  %365 = load i32, i32* @PL_delaymagic, align 4
  %tobool575 = icmp ne i32 %365, 0
  br i1 %tobool575, label %if.then.576, label %if.end.578

if.then.576:                                      ; preds = %cond.end.572
  %366 = load i32, i32* @PL_delaymagic, align 4
  %or577 = or i32 %366, 2
  store i32 %or577, i32* @PL_delaymagic, align 4
  br label %sw.epilog

if.end.578:                                       ; preds = %cond.end.572
  %367 = load i32, i32* @PL_euid, align 4
  %368 = load i32, i32* @PL_uid, align 4
  %cmp579 = icmp eq i32 %367, %368
  br i1 %cmp579, label %if.then.581, label %if.else.583

if.then.581:                                      ; preds = %if.end.578
  %369 = load i32, i32* @PL_euid, align 4
  %call582 = call i32 @setuid(i32 %369)
  br label %if.end.585

if.else.583:                                      ; preds = %if.end.578
  %call584 = call i32 @geteuid()
  store i32 %call584, i32* @PL_euid, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.585

if.end.585:                                       ; preds = %if.else.583, %if.then.581
  %call586 = call i32 @geteuid()
  store i32 %call586, i32* @PL_euid, align 4
  %370 = load i32, i32* @PL_uid, align 4
  %tobool587 = icmp ne i32 %370, 0
  br i1 %tobool587, label %land.rhs.588, label %land.end.595

land.rhs.588:                                     ; preds = %if.end.585
  %371 = load i32, i32* @PL_euid, align 4
  %372 = load i32, i32* @PL_uid, align 4
  %cmp589 = icmp ne i32 %371, %372
  br i1 %cmp589, label %lor.end.594, label %lor.rhs.591

lor.rhs.591:                                      ; preds = %land.rhs.588
  %373 = load i32, i32* @PL_egid, align 4
  %374 = load i32, i32* @PL_gid, align 4
  %cmp592 = icmp ne i32 %373, %374
  br label %lor.end.594

lor.end.594:                                      ; preds = %lor.rhs.591, %land.rhs.588
  %375 = phi i1 [ true, %land.rhs.588 ], [ %cmp592, %lor.rhs.591 ]
  br label %land.end.595

land.end.595:                                     ; preds = %lor.end.594, %if.end.585
  %376 = phi i1 [ false, %if.end.585 ], [ %375, %lor.end.594 ]
  %land.ext596 = zext i1 %376 to i32
  %377 = load i8, i8* @PL_tainting, align 1
  %conv597 = sext i8 %377 to i32
  %or598 = or i32 %conv597, %land.ext596
  %conv599 = trunc i32 %or598 to i8
  store i8 %conv599, i8* @PL_tainting, align 1
  br label %sw.epilog

sw.bb.600:                                        ; preds = %entry
  %378 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags601 = getelementptr inbounds %struct.sv, %struct.sv* %378, i32 0, i32 2
  %379 = load i32, i32* %sv_flags601, align 4
  %and602 = and i32 %379, 65536
  %tobool603 = icmp ne i32 %and602, 0
  br i1 %tobool603, label %cond.true.604, label %cond.false.607

cond.true.604:                                    ; preds = %sw.bb.600
  %380 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any605 = getelementptr inbounds %struct.sv, %struct.sv* %380, i32 0, i32 0
  %381 = load i8*, i8** %sv_any605, align 8
  %382 = bitcast i8* %381 to %struct.xpviv*
  %xiv_iv606 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %382, i32 0, i32 3
  %383 = load i64, i64* %xiv_iv606, align 8
  br label %cond.end.609

cond.false.607:                                   ; preds = %sw.bb.600
  %384 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call608 = call i64 @Perl_sv_2iv(%struct.sv* %384)
  br label %cond.end.609

cond.end.609:                                     ; preds = %cond.false.607, %cond.true.604
  %cond610 = phi i64 [ %383, %cond.true.604 ], [ %call608, %cond.false.607 ]
  %conv611 = trunc i64 %cond610 to i32
  store i32 %conv611, i32* @PL_gid, align 4
  %385 = load i32, i32* @PL_delaymagic, align 4
  %tobool612 = icmp ne i32 %385, 0
  br i1 %tobool612, label %if.then.613, label %if.end.615

if.then.613:                                      ; preds = %cond.end.609
  %386 = load i32, i32* @PL_delaymagic, align 4
  %or614 = or i32 %386, 16
  store i32 %or614, i32* @PL_delaymagic, align 4
  br label %sw.epilog

if.end.615:                                       ; preds = %cond.end.609
  %387 = load i32, i32* @PL_gid, align 4
  %388 = load i32, i32* @PL_egid, align 4
  %cmp616 = icmp eq i32 %387, %388
  br i1 %cmp616, label %if.then.618, label %if.else.620

if.then.618:                                      ; preds = %if.end.615
  %389 = load i32, i32* @PL_gid, align 4
  %call619 = call i32 @setgid(i32 %389)
  br label %if.end.622

if.else.620:                                      ; preds = %if.end.615
  %call621 = call i32 @getgid()
  store i32 %call621, i32* @PL_gid, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.622

if.end.622:                                       ; preds = %if.else.620, %if.then.618
  %call623 = call i32 @getgid()
  store i32 %call623, i32* @PL_gid, align 4
  %390 = load i32, i32* @PL_uid, align 4
  %tobool624 = icmp ne i32 %390, 0
  br i1 %tobool624, label %land.rhs.625, label %land.end.632

land.rhs.625:                                     ; preds = %if.end.622
  %391 = load i32, i32* @PL_euid, align 4
  %392 = load i32, i32* @PL_uid, align 4
  %cmp626 = icmp ne i32 %391, %392
  br i1 %cmp626, label %lor.end.631, label %lor.rhs.628

lor.rhs.628:                                      ; preds = %land.rhs.625
  %393 = load i32, i32* @PL_egid, align 4
  %394 = load i32, i32* @PL_gid, align 4
  %cmp629 = icmp ne i32 %393, %394
  br label %lor.end.631

lor.end.631:                                      ; preds = %lor.rhs.628, %land.rhs.625
  %395 = phi i1 [ true, %land.rhs.625 ], [ %cmp629, %lor.rhs.628 ]
  br label %land.end.632

land.end.632:                                     ; preds = %lor.end.631, %if.end.622
  %396 = phi i1 [ false, %if.end.622 ], [ %395, %lor.end.631 ]
  %land.ext633 = zext i1 %396 to i32
  %397 = load i8, i8* @PL_tainting, align 1
  %conv634 = sext i8 %397 to i32
  %or635 = or i32 %conv634, %land.ext633
  %conv636 = trunc i32 %or635 to i8
  store i8 %conv636, i8* @PL_tainting, align 1
  br label %sw.epilog

sw.bb.637:                                        ; preds = %entry
  %398 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags638 = getelementptr inbounds %struct.sv, %struct.sv* %398, i32 0, i32 2
  %399 = load i32, i32* %sv_flags638, align 4
  %and639 = and i32 %399, 65536
  %tobool640 = icmp ne i32 %and639, 0
  br i1 %tobool640, label %cond.true.641, label %cond.false.644

cond.true.641:                                    ; preds = %sw.bb.637
  %400 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any642 = getelementptr inbounds %struct.sv, %struct.sv* %400, i32 0, i32 0
  %401 = load i8*, i8** %sv_any642, align 8
  %402 = bitcast i8* %401 to %struct.xpviv*
  %xiv_iv643 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %402, i32 0, i32 3
  %403 = load i64, i64* %xiv_iv643, align 8
  br label %cond.end.646

cond.false.644:                                   ; preds = %sw.bb.637
  %404 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call645 = call i64 @Perl_sv_2iv(%struct.sv* %404)
  br label %cond.end.646

cond.end.646:                                     ; preds = %cond.false.644, %cond.true.641
  %cond647 = phi i64 [ %403, %cond.true.641 ], [ %call645, %cond.false.644 ]
  %conv648 = trunc i64 %cond647 to i32
  store i32 %conv648, i32* @PL_egid, align 4
  %405 = load i32, i32* @PL_delaymagic, align 4
  %tobool649 = icmp ne i32 %405, 0
  br i1 %tobool649, label %if.then.650, label %if.end.652

if.then.650:                                      ; preds = %cond.end.646
  %406 = load i32, i32* @PL_delaymagic, align 4
  %or651 = or i32 %406, 32
  store i32 %or651, i32* @PL_delaymagic, align 4
  br label %sw.epilog

if.end.652:                                       ; preds = %cond.end.646
  %407 = load i32, i32* @PL_egid, align 4
  %408 = load i32, i32* @PL_gid, align 4
  %cmp653 = icmp eq i32 %407, %408
  br i1 %cmp653, label %if.then.655, label %if.else.657

if.then.655:                                      ; preds = %if.end.652
  %409 = load i32, i32* @PL_egid, align 4
  %call656 = call i32 @setgid(i32 %409)
  br label %if.end.659

if.else.657:                                      ; preds = %if.end.652
  %call658 = call i32 @getegid()
  store i32 %call658, i32* @PL_egid, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.659

if.end.659:                                       ; preds = %if.else.657, %if.then.655
  %call660 = call i32 @getegid()
  store i32 %call660, i32* @PL_egid, align 4
  %410 = load i32, i32* @PL_uid, align 4
  %tobool661 = icmp ne i32 %410, 0
  br i1 %tobool661, label %land.rhs.662, label %land.end.669

land.rhs.662:                                     ; preds = %if.end.659
  %411 = load i32, i32* @PL_euid, align 4
  %412 = load i32, i32* @PL_uid, align 4
  %cmp663 = icmp ne i32 %411, %412
  br i1 %cmp663, label %lor.end.668, label %lor.rhs.665

lor.rhs.665:                                      ; preds = %land.rhs.662
  %413 = load i32, i32* @PL_egid, align 4
  %414 = load i32, i32* @PL_gid, align 4
  %cmp666 = icmp ne i32 %413, %414
  br label %lor.end.668

lor.end.668:                                      ; preds = %lor.rhs.665, %land.rhs.662
  %415 = phi i1 [ true, %land.rhs.662 ], [ %cmp666, %lor.rhs.665 ]
  br label %land.end.669

land.end.669:                                     ; preds = %lor.end.668, %if.end.659
  %416 = phi i1 [ false, %if.end.659 ], [ %415, %lor.end.668 ]
  %land.ext670 = zext i1 %416 to i32
  %417 = load i8, i8* @PL_tainting, align 1
  %conv671 = sext i8 %417 to i32
  %or672 = or i32 %conv671, %land.ext670
  %conv673 = trunc i32 %or672 to i8
  store i8 %conv673, i8* @PL_tainting, align 1
  br label %sw.epilog

sw.bb.674:                                        ; preds = %entry
  %418 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags675 = getelementptr inbounds %struct.sv, %struct.sv* %418, i32 0, i32 2
  %419 = load i32, i32* %sv_flags675, align 4
  %and676 = and i32 %419, 10223616
  %cmp677 = icmp eq i32 %and676, 262144
  br i1 %cmp677, label %cond.true.679, label %cond.false.684

cond.true.679:                                    ; preds = %sw.bb.674
  %420 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any680 = getelementptr inbounds %struct.sv, %struct.sv* %420, i32 0, i32 0
  %421 = load i8*, i8** %sv_any680, align 8
  %422 = bitcast i8* %421 to %struct.xpv*
  %xpv_cur681 = getelementptr inbounds %struct.xpv, %struct.xpv* %422, i32 0, i32 1
  %423 = load i64, i64* %xpv_cur681, align 8
  store i64 %423, i64* %len, align 8
  %424 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any682 = getelementptr inbounds %struct.sv, %struct.sv* %424, i32 0, i32 0
  %425 = load i8*, i8** %sv_any682, align 8
  %426 = bitcast i8* %425 to %struct.xpv*
  %xpv_pv683 = getelementptr inbounds %struct.xpv, %struct.xpv* %426, i32 0, i32 0
  %427 = load i8*, i8** %xpv_pv683, align 8
  br label %cond.end.686

cond.false.684:                                   ; preds = %sw.bb.674
  %428 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call685 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %428, i64* %len, i32 2)
  br label %cond.end.686

cond.end.686:                                     ; preds = %cond.false.684, %cond.true.679
  %cond687 = phi i8* [ %427, %cond.true.679 ], [ %call685, %cond.false.684 ]
  store i8* %cond687, i8** @PL_chopset, align 8
  br label %sw.epilog

sw.bb.688:                                        ; preds = %entry
  %429 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags689 = getelementptr inbounds %struct.sv, %struct.sv* %429, i32 0, i32 2
  %430 = load i32, i32* %sv_flags689, align 4
  %and690 = and i32 %430, 10223616
  %cmp691 = icmp eq i32 %and690, 262144
  br i1 %cmp691, label %cond.true.693, label %cond.false.698

cond.true.693:                                    ; preds = %sw.bb.688
  %431 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any694 = getelementptr inbounds %struct.sv, %struct.sv* %431, i32 0, i32 0
  %432 = load i8*, i8** %sv_any694, align 8
  %433 = bitcast i8* %432 to %struct.xpv*
  %xpv_cur695 = getelementptr inbounds %struct.xpv, %struct.xpv* %433, i32 0, i32 1
  %434 = load i64, i64* %xpv_cur695, align 8
  store i64 %434, i64* %len, align 8
  %435 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any696 = getelementptr inbounds %struct.sv, %struct.sv* %435, i32 0, i32 0
  %436 = load i8*, i8** %sv_any696, align 8
  %437 = bitcast i8* %436 to %struct.xpv*
  %xpv_pv697 = getelementptr inbounds %struct.xpv, %struct.xpv* %437, i32 0, i32 0
  %438 = load i8*, i8** %xpv_pv697, align 8
  br label %cond.end.700

cond.false.698:                                   ; preds = %sw.bb.688
  %439 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call699 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %439, i64* %len, i32 2)
  br label %cond.end.700

cond.end.700:                                     ; preds = %cond.false.698, %cond.true.693
  %cond701 = phi i8* [ %438, %cond.true.693 ], [ %call699, %cond.false.698 ]
  store i8* %cond701, i8** %s, align 8
  %440 = load i64, i64* %len, align 8
  %441 = load i32, i32* @PL_origalen, align 4
  %conv702 = zext i32 %441 to i64
  %cmp703 = icmp uge i64 %440, %conv702
  br i1 %cmp703, label %if.then.705, label %if.else.710

if.then.705:                                      ; preds = %cond.end.700
  %442 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx706 = getelementptr inbounds i8*, i8** %442, i64 0
  %443 = load i8*, i8** %arrayidx706, align 8
  %444 = load i8*, i8** %s, align 8
  %445 = load i32, i32* @PL_origalen, align 4
  %conv707 = zext i32 %445 to i64
  %mul = mul i64 %conv707, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %443, i8* %444, i64 %mul, i32 1, i1 false)
  %446 = load i32, i32* @PL_origalen, align 4
  %sub = sub i32 %446, 1
  %idxprom = zext i32 %sub to i64
  %447 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx708 = getelementptr inbounds i8*, i8** %447, i64 0
  %448 = load i8*, i8** %arrayidx708, align 8
  %arrayidx709 = getelementptr inbounds i8, i8* %448, i64 %idxprom
  store i8 0, i8* %arrayidx709, align 1
  br label %if.end.730

if.else.710:                                      ; preds = %cond.end.700
  %449 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx711 = getelementptr inbounds i8*, i8** %449, i64 0
  %450 = load i8*, i8** %arrayidx711, align 8
  %451 = load i8*, i8** %s, align 8
  %452 = load i64, i64* %len, align 8
  %mul712 = mul i64 %452, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %450, i8* %451, i64 %mul712, i32 1, i1 false)
  %453 = load i64, i64* %len, align 8
  %454 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx713 = getelementptr inbounds i8*, i8** %454, i64 0
  %455 = load i8*, i8** %arrayidx713, align 8
  %arrayidx714 = getelementptr inbounds i8, i8* %455, i64 %453
  store i8 0, i8* %arrayidx714, align 1
  %456 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx715 = getelementptr inbounds i8*, i8** %456, i64 0
  %457 = load i8*, i8** %arrayidx715, align 8
  %458 = load i64, i64* %len, align 8
  %add.ptr716 = getelementptr inbounds i8, i8* %457, i64 %458
  %add.ptr717 = getelementptr inbounds i8, i8* %add.ptr716, i64 1
  %459 = load i32, i32* @PL_origalen, align 4
  %conv718 = zext i32 %459 to i64
  %460 = load i64, i64* %len, align 8
  %sub719 = sub i64 %conv718, %460
  %sub720 = sub i64 %sub719, 1
  call void @llvm.memset.p0i8.i64(i8* %add.ptr717, i8 32, i64 %sub720, i32 1, i1 false)
  store i32 1, i32* %i, align 4
  br label %for.cond.721

for.cond.721:                                     ; preds = %for.inc.727, %if.else.710
  %461 = load i32, i32* %i, align 4
  %462 = load i32, i32* @PL_origargc, align 4
  %cmp722 = icmp slt i32 %461, %462
  br i1 %cmp722, label %for.body.724, label %for.end.729

for.body.724:                                     ; preds = %for.cond.721
  %463 = load i32, i32* %i, align 4
  %idxprom725 = sext i32 %463 to i64
  %464 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx726 = getelementptr inbounds i8*, i8** %464, i64 %idxprom725
  store i8* null, i8** %arrayidx726, align 8
  br label %for.inc.727

for.inc.727:                                      ; preds = %for.body.724
  %465 = load i32, i32* %i, align 4
  %inc728 = add nsw i32 %465, 1
  store i32 %inc728, i32* %i, align 4
  br label %for.cond.721

for.end.729:                                      ; preds = %for.cond.721
  br label %if.end.730

if.end.730:                                       ; preds = %for.end.729, %if.then.705
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.730, %cond.end.686, %land.end.669, %if.then.650, %land.end.632, %if.then.613, %land.end.595, %if.then.576, %land.end, %if.then.544, %cond.end.527, %if.end.510, %cond.end.491, %if.end.480, %if.end.476, %if.end.461, %sw.bb.445, %cond.end.440, %if.end.430, %if.then.393, %cond.end.382, %if.end.372, %cond.end.338, %sw.bb.313, %sw.bb.297, %if.end.296, %if.end.253, %if.then.187, %cond.end.141, %if.end.131, %if.end.115, %if.end.84, %cond.end.71, %cond.end.59, %if.end.49, %cond.end.12, %cond.end, %sw.bb
  ret i32 0
}

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

declare i8* @Perl_savesvpv(%struct.sv*) #1

declare void @Perl_taint_proper(i8*, i8*) #1

declare void @Perl_init_debugger() #1

declare void @Perl_save_sptr(%struct.sv**) #1

declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #1

declare i32 @setuid(i32) #1

declare i32 @getuid() #1

declare i32 @geteuid() #1

declare i32 @setgid(i32) #1

declare i32 @getgid() #1

declare i32 @getegid() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @Perl_sighandler(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %gv = alloca %struct.gv*, align 8
  %st = alloca %struct.hv*, align 8
  %sv = alloca %struct.sv*, align 8
  %tSv = alloca %struct.sv*, align 8
  %cv = alloca %struct.cv*, align 8
  %myop = alloca %struct.op*, align 8
  %flags = alloca i32, align 4
  %tXpv = alloca %struct.xpv*, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp183 = alloca i32, align 4
  %sp192 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp244 = alloca %struct.av*, align 8
  %tmp246 = alloca %struct.stackinfo*, align 8
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  store %struct.gv* null, %struct.gv** %gv, align 8
  store %struct.sv* null, %struct.sv** %sv, align 8
  %1 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  store %struct.sv* %1, %struct.sv** %tSv, align 8
  store %struct.cv* null, %struct.cv** %cv, align 8
  %2 = load %struct.op*, %struct.op** @PL_op, align 8
  store %struct.op* %2, %struct.op** %myop, align 8
  store i32 0, i32* %flags, align 4
  %3 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  store %struct.xpv* %3, %struct.xpv** %tXpv, align 8
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %4, 15
  %5 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sle i32 %add, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %flags, align 4
  %or = or i32 %6, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32*, i32** @PL_markstack_ptr, align 8
  %8 = load i32*, i32** @PL_markstack_max, align 8
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 -2
  %cmp1 = icmp ult i32* %7, %add.ptr
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %9 = load i32, i32* %flags, align 4
  %or3 = or i32 %9, 4
  store i32 %or3, i32* %flags, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %10 = load i32, i32* @PL_retstack_ix, align 4
  %11 = load i32, i32* @PL_retstack_max, align 4
  %sub = sub nsw i32 %11, 2
  %cmp5 = icmp slt i32 %10, %sub
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %12 = load i32, i32* %flags, align 4
  %or7 = or i32 %12, 8
  store i32 %or7, i32* %flags, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %13 = load i32, i32* @PL_scopestack_ix, align 4
  %14 = load i32, i32* @PL_scopestack_max, align 4
  %sub9 = sub nsw i32 %14, 3
  %cmp10 = icmp slt i32 %13, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %15 = load i32, i32* %flags, align 4
  %or12 = or i32 %15, 16
  store i32 %or12, i32* %flags, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  %16 = load i32, i32* %sig.addr, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idxprom
  %18 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %tobool = icmp ne %struct.sv* %18, null
  br i1 %tobool, label %if.end.33, label %if.then.14

if.then.14:                                       ; preds = %if.end.13
  %19 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool15 = icmp ne %struct.gv* %19, null
  br i1 %tobool15, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.14
  %20 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags, align 4
  %and = and i32 %21, 255
  %cmp16 = icmp eq i32 %and, 13
  br i1 %cmp16, label %land.lhs.true.17, label %cond.false

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %22 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %22, i32 0, i32 0
  %23 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %23, i32 0, i32 7
  %24 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %24, i32 0, i32 2
  %25 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool18 = icmp ne %struct.io* %25, null
  br i1 %tobool18, label %land.lhs.true.19, label %cond.false

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %26 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any20 = getelementptr inbounds %struct.gv, %struct.gv* %26, i32 0, i32 0
  %27 = load %struct.xpvgv*, %struct.xpvgv** %sv_any20, align 8
  %xgv_gp21 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %27, i32 0, i32 7
  %28 = load %struct.gp*, %struct.gp** %xgv_gp21, align 8
  %gp_io22 = getelementptr inbounds %struct.gp, %struct.gp* %28, i32 0, i32 2
  %29 = load %struct.io*, %struct.io** %gp_io22, align 8
  %sv_any23 = getelementptr inbounds %struct.io, %struct.io* %29, i32 0, i32 0
  %30 = load %struct.xpvio*, %struct.xpvio** %sv_any23, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %30, i32 0, i32 8
  %31 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool24 = icmp ne %struct._PerlIO** %31, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.19
  %32 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any25 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any25, align 8
  %xgv_gp26 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  %34 = load %struct.gp*, %struct.gp** %xgv_gp26, align 8
  %gp_io27 = getelementptr inbounds %struct.gp, %struct.gp* %34, i32 0, i32 2
  %35 = load %struct.io*, %struct.io** %gp_io27, align 8
  %sv_any28 = getelementptr inbounds %struct.io, %struct.io* %35, i32 0, i32 0
  %36 = load %struct.xpvio*, %struct.xpvio** %sv_any28, align 8
  %xio_ofp29 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %36, i32 0, i32 8
  %37 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp29, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.19, %land.lhs.true.17, %land.lhs.true, %if.then.14
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %37, %cond.true ], [ %call, %cond.false ]
  %38 = load i32, i32* %sig.addr, align 4
  %idxprom30 = sext i32 %38 to i64
  %arrayidx31 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_sig_name, i32 0, i64 %idxprom30
  %39 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i32 0, i32 0), i8* %39)
  %40 = load i32, i32* %sig.addr, align 4
  call void @exit(i32 %40) #4
  unreachable

if.end.33:                                        ; preds = %if.end.13
  %41 = load i32, i32* %flags, align 4
  %and34 = and i32 %41, 1
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.33
  %42 = load i32, i32* @PL_savestack_ix, align 4
  %add37 = add nsw i32 %42, 5
  store i32 %add37, i32* @PL_savestack_ix, align 4
  %43 = bitcast i32* %flags to i8*
  call void @Perl_save_destructor_x(void (i8*)* @unwind_handler_stack, i8* %43)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.33
  %44 = load i32, i32* %flags, align 4
  %and39 = and i32 %44, 4
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %45 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  %46 = load i32, i32* %flags, align 4
  %and43 = and i32 %46, 8
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.42
  %47 = load i32, i32* @PL_retstack_ix, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* @PL_retstack_ix, align 4
  %48 = load i32, i32* @PL_retstack_ix, align 4
  %idxprom46 = sext i32 %48 to i64
  %49 = load %struct.op**, %struct.op*** @PL_retstack, align 8
  %arrayidx47 = getelementptr inbounds %struct.op*, %struct.op** %49, i64 %idxprom46
  store %struct.op* null, %struct.op** %arrayidx47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.42
  %50 = load i32, i32* %flags, align 4
  %and49 = and i32 %50, 16
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.48
  %51 = load i32, i32* @PL_scopestack_ix, align 4
  %add52 = add nsw i32 %51, 1
  store i32 %add52, i32* @PL_scopestack_ix, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.48
  %52 = load i32, i32* %sig.addr, align 4
  %idxprom54 = sext i32 %52 to i64
  %53 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx55 = getelementptr inbounds %struct.sv*, %struct.sv** %53, i64 %idxprom54
  %54 = load %struct.sv*, %struct.sv** %arrayidx55, align 8
  %sv_flags56 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 2
  %55 = load i32, i32* %sv_flags56, align 4
  %and57 = and i32 %55, 524288
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %lor.lhs.false, label %if.then.67

lor.lhs.false:                                    ; preds = %if.end.53
  %56 = load i32, i32* %sig.addr, align 4
  %idxprom59 = sext i32 %56 to i64
  %57 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx60 = getelementptr inbounds %struct.sv*, %struct.sv** %57, i64 %idxprom59
  %58 = load %struct.sv*, %struct.sv** %arrayidx60, align 8
  %sv_any61 = getelementptr inbounds %struct.sv, %struct.sv* %58, i32 0, i32 0
  %59 = load i8*, i8** %sv_any61, align 8
  %60 = bitcast i8* %59 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %60, i32 0, i32 0
  %61 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %62 = bitcast %struct.sv* %61 to %struct.cv*
  store %struct.cv* %62, %struct.cv** %cv, align 8
  %tobool62 = icmp ne %struct.cv* %62, null
  br i1 %tobool62, label %lor.lhs.false.63, label %if.then.67

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %63 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_flags64 = getelementptr inbounds %struct.cv, %struct.cv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags64, align 4
  %and65 = and i32 %64, 255
  %cmp66 = icmp ne i32 %and65, 12
  br i1 %cmp66, label %if.then.67, label %if.end.71

if.then.67:                                       ; preds = %lor.lhs.false.63, %lor.lhs.false, %if.end.53
  %65 = load i32, i32* %sig.addr, align 4
  %idxprom68 = sext i32 %65 to i64
  %66 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx69 = getelementptr inbounds %struct.sv*, %struct.sv** %66, i64 %idxprom68
  %67 = load %struct.sv*, %struct.sv** %arrayidx69, align 8
  %call70 = call %struct.cv* @Perl_sv_2cv(%struct.sv* %67, %struct.hv** %st, %struct.gv** %gv, i32 1)
  store %struct.cv* %call70, %struct.cv** %cv, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.67, %lor.lhs.false.63
  %68 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool72 = icmp ne %struct.cv* %68, null
  br i1 %tobool72, label %lor.lhs.false.73, label %if.then.76

lor.lhs.false.73:                                 ; preds = %if.end.71
  %69 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any74 = getelementptr inbounds %struct.cv, %struct.cv* %69, i32 0, i32 0
  %70 = load %struct.xpvcv*, %struct.xpvcv** %sv_any74, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %70, i32 0, i32 9
  %71 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool75 = icmp ne %struct.op* %71, null
  br i1 %tobool75, label %if.end.145, label %if.then.76

if.then.76:                                       ; preds = %lor.lhs.false.73, %if.end.71
  %72 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %72, i32 0, i32 14
  %73 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp77 = icmp ne %struct.sv* %73, null
  br i1 %cmp77, label %land.lhs.true.78, label %lor.lhs.false.90

land.lhs.true.78:                                 ; preds = %if.then.76
  %74 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings79 = getelementptr inbounds %struct.cop, %struct.cop* %74, i32 0, i32 14
  %75 = load %struct.sv*, %struct.sv** %cop_warnings79, align 8
  %cmp80 = icmp ne %struct.sv* %75, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp80, label %land.lhs.true.81, label %lor.lhs.false.90

land.lhs.true.81:                                 ; preds = %land.lhs.true.78
  %76 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings82 = getelementptr inbounds %struct.cop, %struct.cop* %76, i32 0, i32 14
  %77 = load %struct.sv*, %struct.sv** %cop_warnings82, align 8
  %cmp83 = icmp eq %struct.sv* %77, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp83, label %if.then.98, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %land.lhs.true.81
  %78 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings85 = getelementptr inbounds %struct.cop, %struct.cop* %78, i32 0, i32 14
  %79 = load %struct.sv*, %struct.sv** %cop_warnings85, align 8
  %sv_any86 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 0
  %80 = load i8*, i8** %sv_any86, align 8
  %81 = bitcast i8* %80 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %81, i32 0, i32 0
  %82 = load i8*, i8** %xpv_pv, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %82, i64 6
  %83 = load i8, i8* %arrayidx87, align 1
  %conv = sext i8 %83 to i32
  %and88 = and i32 %conv, 16
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then.98, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.84, %land.lhs.true.78, %if.then.76
  %84 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings91 = getelementptr inbounds %struct.cop, %struct.cop* %84, i32 0, i32 14
  %85 = load %struct.sv*, %struct.sv** %cop_warnings91, align 8
  %cmp92 = icmp eq %struct.sv* %85, null
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.144

land.lhs.true.94:                                 ; preds = %lor.lhs.false.90
  %86 = load i8, i8* @PL_dowarn, align 1
  %conv95 = zext i8 %86 to i32
  %and96 = and i32 %conv95, 1
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.144

if.then.98:                                       ; preds = %land.lhs.true.94, %lor.lhs.false.84, %land.lhs.true.81
  %87 = load i32, i32* %sig.addr, align 4
  %idxprom99 = sext i32 %87 to i64
  %arrayidx100 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_sig_name, i32 0, i64 %idxprom99
  %88 = load i8*, i8** %arrayidx100, align 8
  %89 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool101 = icmp ne %struct.gv* %89, null
  br i1 %tobool101, label %cond.true.102, label %cond.false.114

cond.true.102:                                    ; preds = %if.then.98
  %90 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any103 = getelementptr inbounds %struct.gv, %struct.gv* %90, i32 0, i32 0
  %91 = load %struct.xpvgv*, %struct.xpvgv** %sv_any103, align 8
  %xgv_gp104 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %91, i32 0, i32 7
  %92 = load %struct.gp*, %struct.gp** %xgv_gp104, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %92, i32 0, i32 6
  %93 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  %tobool105 = icmp ne %struct.gv* %93, null
  br i1 %tobool105, label %cond.true.106, label %cond.false.110

cond.true.106:                                    ; preds = %cond.true.102
  %94 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any107 = getelementptr inbounds %struct.gv, %struct.gv* %94, i32 0, i32 0
  %95 = load %struct.xpvgv*, %struct.xpvgv** %sv_any107, align 8
  %xgv_gp108 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %95, i32 0, i32 7
  %96 = load %struct.gp*, %struct.gp** %xgv_gp108, align 8
  %gp_egv109 = getelementptr inbounds %struct.gp, %struct.gp* %96, i32 0, i32 6
  %97 = load %struct.gv*, %struct.gv** %gp_egv109, align 8
  br label %cond.end.111

cond.false.110:                                   ; preds = %cond.true.102
  %98 = load %struct.gv*, %struct.gv** %gv, align 8
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.106
  %cond112 = phi %struct.gv* [ %97, %cond.true.106 ], [ %98, %cond.false.110 ]
  %sv_any113 = getelementptr inbounds %struct.gv, %struct.gv* %cond112, i32 0, i32 0
  %99 = load %struct.xpvgv*, %struct.xpvgv** %sv_any113, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %99, i32 0, i32 8
  %100 = load i8*, i8** %xgv_name, align 8
  br label %cond.end.142

cond.false.114:                                   ; preds = %if.then.98
  %101 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool115 = icmp ne %struct.cv* %101, null
  br i1 %tobool115, label %land.lhs.true.116, label %cond.false.139

land.lhs.true.116:                                ; preds = %cond.false.114
  %102 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any117 = getelementptr inbounds %struct.cv, %struct.cv* %102, i32 0, i32 0
  %103 = load %struct.xpvcv*, %struct.xpvcv** %sv_any117, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %103, i32 0, i32 12
  %104 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %tobool118 = icmp ne %struct.gv* %104, null
  br i1 %tobool118, label %cond.true.119, label %cond.false.139

cond.true.119:                                    ; preds = %land.lhs.true.116
  %105 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any120 = getelementptr inbounds %struct.cv, %struct.cv* %105, i32 0, i32 0
  %106 = load %struct.xpvcv*, %struct.xpvcv** %sv_any120, align 8
  %xcv_gv121 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %106, i32 0, i32 12
  %107 = load %struct.gv*, %struct.gv** %xcv_gv121, align 8
  %sv_any122 = getelementptr inbounds %struct.gv, %struct.gv* %107, i32 0, i32 0
  %108 = load %struct.xpvgv*, %struct.xpvgv** %sv_any122, align 8
  %xgv_gp123 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %108, i32 0, i32 7
  %109 = load %struct.gp*, %struct.gp** %xgv_gp123, align 8
  %gp_egv124 = getelementptr inbounds %struct.gp, %struct.gp* %109, i32 0, i32 6
  %110 = load %struct.gv*, %struct.gv** %gp_egv124, align 8
  %tobool125 = icmp ne %struct.gv* %110, null
  br i1 %tobool125, label %cond.true.126, label %cond.false.132

cond.true.126:                                    ; preds = %cond.true.119
  %111 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any127 = getelementptr inbounds %struct.cv, %struct.cv* %111, i32 0, i32 0
  %112 = load %struct.xpvcv*, %struct.xpvcv** %sv_any127, align 8
  %xcv_gv128 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %112, i32 0, i32 12
  %113 = load %struct.gv*, %struct.gv** %xcv_gv128, align 8
  %sv_any129 = getelementptr inbounds %struct.gv, %struct.gv* %113, i32 0, i32 0
  %114 = load %struct.xpvgv*, %struct.xpvgv** %sv_any129, align 8
  %xgv_gp130 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %114, i32 0, i32 7
  %115 = load %struct.gp*, %struct.gp** %xgv_gp130, align 8
  %gp_egv131 = getelementptr inbounds %struct.gp, %struct.gp* %115, i32 0, i32 6
  %116 = load %struct.gv*, %struct.gv** %gp_egv131, align 8
  br label %cond.end.135

cond.false.132:                                   ; preds = %cond.true.119
  %117 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any133 = getelementptr inbounds %struct.cv, %struct.cv* %117, i32 0, i32 0
  %118 = load %struct.xpvcv*, %struct.xpvcv** %sv_any133, align 8
  %xcv_gv134 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %118, i32 0, i32 12
  %119 = load %struct.gv*, %struct.gv** %xcv_gv134, align 8
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.132, %cond.true.126
  %cond136 = phi %struct.gv* [ %116, %cond.true.126 ], [ %119, %cond.false.132 ]
  %sv_any137 = getelementptr inbounds %struct.gv, %struct.gv* %cond136, i32 0, i32 0
  %120 = load %struct.xpvgv*, %struct.xpvgv** %sv_any137, align 8
  %xgv_name138 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %120, i32 0, i32 8
  %121 = load i8*, i8** %xgv_name138, align 8
  br label %cond.end.140

cond.false.139:                                   ; preds = %land.lhs.true.116, %cond.false.114
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.end.135
  %cond141 = phi i8* [ %121, %cond.end.135 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), %cond.false.139 ]
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.end.140, %cond.end.111
  %cond143 = phi i8* [ %100, %cond.end.111 ], [ %cond141, %cond.end.140 ]
  call void (i32, i8*, ...) @Perl_warner(i32 26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0), i8* %88, i8* %cond143)
  br label %if.end.144

if.end.144:                                       ; preds = %cond.end.142, %land.lhs.true.94, %lor.lhs.false.90
  br label %cleanup

if.end.145:                                       ; preds = %lor.lhs.false.73
  %122 = load i32, i32* %sig.addr, align 4
  %idxprom146 = sext i32 %122 to i64
  %123 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %arrayidx147 = getelementptr inbounds %struct.sv*, %struct.sv** %123, i64 %idxprom146
  %124 = load %struct.sv*, %struct.sv** %arrayidx147, align 8
  %tobool148 = icmp ne %struct.sv* %124, null
  br i1 %tobool148, label %if.then.149, label %if.else

if.then.149:                                      ; preds = %if.end.145
  %125 = load i32, i32* %sig.addr, align 4
  %idxprom150 = sext i32 %125 to i64
  %126 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %arrayidx151 = getelementptr inbounds %struct.sv*, %struct.sv** %126, i64 %idxprom150
  %127 = load %struct.sv*, %struct.sv** %arrayidx151, align 8
  store %struct.sv* %127, %struct.sv** @PL_Sv, align 8
  %128 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool152 = icmp ne %struct.sv* %128, null
  br i1 %tobool152, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.149
  %129 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %129, i32 0, i32 1
  %130 = load i32, i32* %sv_refcnt, align 4
  %inc153 = add i32 %130, 1
  store i32 %inc153, i32* %sv_refcnt, align 4
  %tobool154 = icmp ne i32 %inc153, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.149
  %131 = phi i1 [ false, %if.then.149 ], [ %tobool154, %land.rhs ]
  %land.ext = zext i1 %131 to i32
  %132 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  store %struct.sv* %132, %struct.sv** %sv, align 8
  %133 = load i32, i32* %flags, align 4
  %or155 = or i32 %133, 64
  store i32 %or155, i32* %flags, align 4
  %134 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %134, %struct.sv** @sig_sv, align 8
  br label %if.end.159

if.else:                                          ; preds = %if.end.145
  %call156 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call156, %struct.sv** %sv, align 8
  %135 = load %struct.sv*, %struct.sv** %sv, align 8
  %136 = load i32, i32* %sig.addr, align 4
  %idxprom157 = sext i32 %136 to i64
  %arrayidx158 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_sig_name, i32 0, i64 %idxprom157
  %137 = load i8*, i8** %arrayidx158, align 8
  call void @Perl_sv_setpv(%struct.sv* %135, i8* %137)
  br label %if.end.159

if.end.159:                                       ; preds = %if.else, %land.end
  %138 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %138, i32 0, i32 6
  %139 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %139, %struct.stackinfo** %next, align 8
  %140 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool160 = icmp ne %struct.stackinfo* %140, null
  br i1 %tobool160, label %if.end.164, label %if.then.161

if.then.161:                                      ; preds = %if.end.159
  %call162 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call162, %struct.stackinfo** %next, align 8
  %141 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %142 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %142, i32 0, i32 5
  store %struct.stackinfo* %141, %struct.stackinfo** %si_prev, align 8
  %143 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %144 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next163 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %144, i32 0, i32 6
  store %struct.stackinfo* %143, %struct.stackinfo** %si_next163, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.161, %if.end.159
  %145 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %145, i32 0, i32 4
  store i32 4, i32* %si_type, align 4
  %146 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %146, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %147 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %147, i32 0, i32 0
  %148 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any165 = getelementptr inbounds %struct.av, %struct.av* %148, i32 0, i32 0
  %149 = load %struct.xpvav*, %struct.xpvav** %sv_any165, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %149, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %150 = load %struct.sv**, %struct.sv*** %sp, align 8
  %151 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %150 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %151 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %152 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any166 = getelementptr inbounds %struct.av, %struct.av* %152, i32 0, i32 0
  %153 = load %struct.xpvav*, %struct.xpvav** %sv_any166, align 8
  %xav_fill167 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %153, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill167, align 8
  %154 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack168 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %154, i32 0, i32 0
  %155 = load %struct.av*, %struct.av** %si_stack168, align 8
  %sv_any169 = getelementptr inbounds %struct.av, %struct.av* %155, i32 0, i32 0
  %156 = load %struct.xpvav*, %struct.xpvav** %sv_any169, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %156, i32 0, i32 0
  %157 = load i8*, i8** %xav_array, align 8
  %158 = bitcast i8* %157 to %struct.sv**
  store %struct.sv** %158, %struct.sv*** @PL_stack_base, align 8
  %159 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %160 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack170 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %160, i32 0, i32 0
  %161 = load %struct.av*, %struct.av** %si_stack170, align 8
  %sv_any171 = getelementptr inbounds %struct.av, %struct.av* %161, i32 0, i32 0
  %162 = load %struct.xpvav*, %struct.xpvav** %sv_any171, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %162, i32 0, i32 2
  %163 = load i64, i64* %xav_max, align 8
  %add.ptr172 = getelementptr inbounds %struct.sv*, %struct.sv** %159, i64 %163
  store %struct.sv** %add.ptr172, %struct.sv*** @PL_stack_max, align 8
  %164 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %165 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack173 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %165, i32 0, i32 0
  %166 = load %struct.av*, %struct.av** %si_stack173, align 8
  %sv_any174 = getelementptr inbounds %struct.av, %struct.av* %166, i32 0, i32 0
  %167 = load %struct.xpvav*, %struct.xpvav** %sv_any174, align 8
  %xav_fill175 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %167, i32 0, i32 1
  %168 = load i64, i64* %xav_fill175, align 8
  %add.ptr176 = getelementptr inbounds %struct.sv*, %struct.sv** %164, i64 %168
  store %struct.sv** %add.ptr176, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr176, %struct.sv*** %sp, align 8
  %169 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack177 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %169, i32 0, i32 0
  %170 = load %struct.av*, %struct.av** %si_stack177, align 8
  store %struct.av* %170, %struct.av** @PL_curstack, align 8
  store %struct.av* %170, %struct.av** %tmp
  %171 = load %struct.av*, %struct.av** %tmp
  %172 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %172, %struct.stackinfo** @PL_curstackinfo, align 8
  %173 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr178 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %incdec.ptr178, i32** @PL_markstack_ptr, align 8
  %174 = load i32*, i32** @PL_markstack_max, align 8
  %cmp179 = icmp eq i32* %incdec.ptr178, %174
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.164
  call void @Perl_markstack_grow()
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %if.end.164
  %175 = load %struct.sv**, %struct.sv*** %sp, align 8
  %176 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast184 = ptrtoint %struct.sv** %175 to i64
  %sub.ptr.rhs.cast185 = ptrtoint %struct.sv** %176 to i64
  %sub.ptr.sub186 = sub i64 %sub.ptr.lhs.cast184, %sub.ptr.rhs.cast185
  %sub.ptr.div187 = sdiv exact i64 %sub.ptr.sub186, 8
  %conv188 = trunc i64 %sub.ptr.div187 to i32
  %177 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv188, i32* %177, align 4
  store i32 %conv188, i32* %tmp183
  %178 = load i32, i32* %tmp183
  %179 = load %struct.sv*, %struct.sv** %sv, align 8
  %180 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr189 = getelementptr inbounds %struct.sv*, %struct.sv** %180, i32 1
  store %struct.sv** %incdec.ptr189, %struct.sv*** %sp, align 8
  store %struct.sv* %179, %struct.sv** %incdec.ptr189, align 8
  %181 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %181, %struct.sv*** @PL_stack_sp, align 8
  %182 = load %struct.cv*, %struct.cv** %cv, align 8
  %183 = bitcast %struct.cv* %182 to %struct.sv*
  %call190 = call i32 @Perl_call_sv(%struct.sv* %183, i32 6)
  %184 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %184, %struct.sv*** %sp192, align 8
  %185 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev194 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %185, i32 0, i32 5
  %186 = load %struct.stackinfo*, %struct.stackinfo** %si_prev194, align 8
  store %struct.stackinfo* %186, %struct.stackinfo** %prev, align 8
  %187 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool195 = icmp ne %struct.stackinfo* %187, null
  br i1 %tobool195, label %if.end.226, label %if.then.196

if.then.196:                                      ; preds = %if.end.182
  %188 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool197 = icmp ne %struct.gv* %188, null
  br i1 %tobool197, label %land.lhs.true.198, label %cond.false.221

land.lhs.true.198:                                ; preds = %if.then.196
  %189 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags199 = getelementptr inbounds %struct.gv, %struct.gv* %189, i32 0, i32 2
  %190 = load i32, i32* %sv_flags199, align 4
  %and200 = and i32 %190, 255
  %cmp201 = icmp eq i32 %and200, 13
  br i1 %cmp201, label %land.lhs.true.203, label %cond.false.221

land.lhs.true.203:                                ; preds = %land.lhs.true.198
  %191 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any204 = getelementptr inbounds %struct.gv, %struct.gv* %191, i32 0, i32 0
  %192 = load %struct.xpvgv*, %struct.xpvgv** %sv_any204, align 8
  %xgv_gp205 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %192, i32 0, i32 7
  %193 = load %struct.gp*, %struct.gp** %xgv_gp205, align 8
  %gp_io206 = getelementptr inbounds %struct.gp, %struct.gp* %193, i32 0, i32 2
  %194 = load %struct.io*, %struct.io** %gp_io206, align 8
  %tobool207 = icmp ne %struct.io* %194, null
  br i1 %tobool207, label %land.lhs.true.208, label %cond.false.221

land.lhs.true.208:                                ; preds = %land.lhs.true.203
  %195 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any209 = getelementptr inbounds %struct.gv, %struct.gv* %195, i32 0, i32 0
  %196 = load %struct.xpvgv*, %struct.xpvgv** %sv_any209, align 8
  %xgv_gp210 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %196, i32 0, i32 7
  %197 = load %struct.gp*, %struct.gp** %xgv_gp210, align 8
  %gp_io211 = getelementptr inbounds %struct.gp, %struct.gp* %197, i32 0, i32 2
  %198 = load %struct.io*, %struct.io** %gp_io211, align 8
  %sv_any212 = getelementptr inbounds %struct.io, %struct.io* %198, i32 0, i32 0
  %199 = load %struct.xpvio*, %struct.xpvio** %sv_any212, align 8
  %xio_ofp213 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %199, i32 0, i32 8
  %200 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp213, align 8
  %tobool214 = icmp ne %struct._PerlIO** %200, null
  br i1 %tobool214, label %cond.true.215, label %cond.false.221

cond.true.215:                                    ; preds = %land.lhs.true.208
  %201 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any216 = getelementptr inbounds %struct.gv, %struct.gv* %201, i32 0, i32 0
  %202 = load %struct.xpvgv*, %struct.xpvgv** %sv_any216, align 8
  %xgv_gp217 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %202, i32 0, i32 7
  %203 = load %struct.gp*, %struct.gp** %xgv_gp217, align 8
  %gp_io218 = getelementptr inbounds %struct.gp, %struct.gp* %203, i32 0, i32 2
  %204 = load %struct.io*, %struct.io** %gp_io218, align 8
  %sv_any219 = getelementptr inbounds %struct.io, %struct.io* %204, i32 0, i32 0
  %205 = load %struct.xpvio*, %struct.xpvio** %sv_any219, align 8
  %xio_ofp220 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %205, i32 0, i32 8
  %206 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp220, align 8
  br label %cond.end.223

cond.false.221:                                   ; preds = %land.lhs.true.208, %land.lhs.true.203, %land.lhs.true.198, %if.then.196
  %call222 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.221, %cond.true.215
  %cond224 = phi %struct._PerlIO** [ %206, %cond.true.215 ], [ %call222, %cond.false.221 ]
  %call225 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond224, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.226

if.end.226:                                       ; preds = %cond.end.223, %if.end.182
  %207 = load %struct.sv**, %struct.sv*** %sp192, align 8
  %208 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast227 = ptrtoint %struct.sv** %207 to i64
  %sub.ptr.rhs.cast228 = ptrtoint %struct.sv** %208 to i64
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast227, %sub.ptr.rhs.cast228
  %sub.ptr.div230 = sdiv exact i64 %sub.ptr.sub229, 8
  %209 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any231 = getelementptr inbounds %struct.av, %struct.av* %209, i32 0, i32 0
  %210 = load %struct.xpvav*, %struct.xpvav** %sv_any231, align 8
  %xav_fill232 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %210, i32 0, i32 1
  store i64 %sub.ptr.div230, i64* %xav_fill232, align 8
  %211 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack233 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %211, i32 0, i32 0
  %212 = load %struct.av*, %struct.av** %si_stack233, align 8
  %sv_any234 = getelementptr inbounds %struct.av, %struct.av* %212, i32 0, i32 0
  %213 = load %struct.xpvav*, %struct.xpvav** %sv_any234, align 8
  %xav_array235 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %213, i32 0, i32 0
  %214 = load i8*, i8** %xav_array235, align 8
  %215 = bitcast i8* %214 to %struct.sv**
  store %struct.sv** %215, %struct.sv*** @PL_stack_base, align 8
  %216 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %217 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack236 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %217, i32 0, i32 0
  %218 = load %struct.av*, %struct.av** %si_stack236, align 8
  %sv_any237 = getelementptr inbounds %struct.av, %struct.av* %218, i32 0, i32 0
  %219 = load %struct.xpvav*, %struct.xpvav** %sv_any237, align 8
  %xav_max238 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %219, i32 0, i32 2
  %220 = load i64, i64* %xav_max238, align 8
  %add.ptr239 = getelementptr inbounds %struct.sv*, %struct.sv** %216, i64 %220
  store %struct.sv** %add.ptr239, %struct.sv*** @PL_stack_max, align 8
  %221 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %222 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack240 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %222, i32 0, i32 0
  %223 = load %struct.av*, %struct.av** %si_stack240, align 8
  %sv_any241 = getelementptr inbounds %struct.av, %struct.av* %223, i32 0, i32 0
  %224 = load %struct.xpvav*, %struct.xpvav** %sv_any241, align 8
  %xav_fill242 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %224, i32 0, i32 1
  %225 = load i64, i64* %xav_fill242, align 8
  %add.ptr243 = getelementptr inbounds %struct.sv*, %struct.sv** %221, i64 %225
  store %struct.sv** %add.ptr243, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr243, %struct.sv*** %sp192, align 8
  %226 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack245 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %226, i32 0, i32 0
  %227 = load %struct.av*, %struct.av** %si_stack245, align 8
  store %struct.av* %227, %struct.av** @PL_curstack, align 8
  store %struct.av* %227, %struct.av** %tmp244
  %228 = load %struct.av*, %struct.av** %tmp244
  %229 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %229, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %229, %struct.stackinfo** %tmp246
  %230 = load %struct.stackinfo*, %struct.stackinfo** %tmp246
  %231 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any247 = getelementptr inbounds %struct.gv, %struct.gv* %231, i32 0, i32 0
  %232 = load %struct.xpvgv*, %struct.xpvgv** %sv_any247, align 8
  %xgv_gp248 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %232, i32 0, i32 7
  %233 = load %struct.gp*, %struct.gp** %xgv_gp248, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %233, i32 0, i32 0
  %234 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool249 = icmp ne %struct.sv* %234, null
  br i1 %tobool249, label %cond.false.251, label %cond.true.250

cond.true.250:                                    ; preds = %if.end.226
  br i1 false, label %if.then.312, label %if.end.316

cond.false.251:                                   ; preds = %if.end.226
  %235 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any252 = getelementptr inbounds %struct.gv, %struct.gv* %235, i32 0, i32 0
  %236 = load %struct.xpvgv*, %struct.xpvgv** %sv_any252, align 8
  %xgv_gp253 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %236, i32 0, i32 7
  %237 = load %struct.gp*, %struct.gp** %xgv_gp253, align 8
  %gp_sv254 = getelementptr inbounds %struct.gp, %struct.gp* %237, i32 0, i32 0
  %238 = load %struct.sv*, %struct.sv** %gp_sv254, align 8
  %sv_flags255 = getelementptr inbounds %struct.sv, %struct.sv* %238, i32 0, i32 2
  %239 = load i32, i32* %sv_flags255, align 4
  %and256 = and i32 %239, 262144
  %tobool257 = icmp ne i32 %and256, 0
  br i1 %tobool257, label %cond.true.258, label %cond.false.277

cond.true.258:                                    ; preds = %cond.false.251
  %240 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any259 = getelementptr inbounds %struct.gv, %struct.gv* %240, i32 0, i32 0
  %241 = load %struct.xpvgv*, %struct.xpvgv** %sv_any259, align 8
  %xgv_gp260 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %241, i32 0, i32 7
  %242 = load %struct.gp*, %struct.gp** %xgv_gp260, align 8
  %gp_sv261 = getelementptr inbounds %struct.gp, %struct.gp* %242, i32 0, i32 0
  %243 = load %struct.sv*, %struct.sv** %gp_sv261, align 8
  %sv_any262 = getelementptr inbounds %struct.sv, %struct.sv* %243, i32 0, i32 0
  %244 = load i8*, i8** %sv_any262, align 8
  %245 = bitcast i8* %244 to %struct.xpv*
  store %struct.xpv* %245, %struct.xpv** @PL_Xpv, align 8
  %tobool263 = icmp ne %struct.xpv* %245, null
  br i1 %tobool263, label %land.lhs.true.264, label %cond.false.276

land.lhs.true.264:                                ; preds = %cond.true.258
  %246 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %246, i32 0, i32 1
  %247 = load i64, i64* %xpv_cur, align 8
  %cmp265 = icmp ugt i64 %247, 1
  br i1 %cmp265, label %cond.true.275, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %land.lhs.true.264
  %248 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur268 = getelementptr inbounds %struct.xpv, %struct.xpv* %248, i32 0, i32 1
  %249 = load i64, i64* %xpv_cur268, align 8
  %tobool269 = icmp ne i64 %249, 0
  br i1 %tobool269, label %land.lhs.true.270, label %cond.false.276

land.lhs.true.270:                                ; preds = %lor.lhs.false.267
  %250 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv271 = getelementptr inbounds %struct.xpv, %struct.xpv* %250, i32 0, i32 0
  %251 = load i8*, i8** %xpv_pv271, align 8
  %252 = load i8, i8* %251, align 1
  %conv272 = sext i8 %252 to i32
  %cmp273 = icmp ne i32 %conv272, 48
  br i1 %cmp273, label %cond.true.275, label %cond.false.276

cond.true.275:                                    ; preds = %land.lhs.true.270, %land.lhs.true.264
  br i1 true, label %if.then.312, label %if.end.316

cond.false.276:                                   ; preds = %land.lhs.true.270, %lor.lhs.false.267, %cond.true.258
  br i1 false, label %if.then.312, label %if.end.316

cond.false.277:                                   ; preds = %cond.false.251
  %253 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any278 = getelementptr inbounds %struct.gv, %struct.gv* %253, i32 0, i32 0
  %254 = load %struct.xpvgv*, %struct.xpvgv** %sv_any278, align 8
  %xgv_gp279 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %254, i32 0, i32 7
  %255 = load %struct.gp*, %struct.gp** %xgv_gp279, align 8
  %gp_sv280 = getelementptr inbounds %struct.gp, %struct.gp* %255, i32 0, i32 0
  %256 = load %struct.sv*, %struct.sv** %gp_sv280, align 8
  %sv_flags281 = getelementptr inbounds %struct.sv, %struct.sv* %256, i32 0, i32 2
  %257 = load i32, i32* %sv_flags281, align 4
  %and282 = and i32 %257, 65536
  %tobool283 = icmp ne i32 %and282, 0
  br i1 %tobool283, label %cond.true.284, label %cond.false.291

cond.true.284:                                    ; preds = %cond.false.277
  %258 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any285 = getelementptr inbounds %struct.gv, %struct.gv* %258, i32 0, i32 0
  %259 = load %struct.xpvgv*, %struct.xpvgv** %sv_any285, align 8
  %xgv_gp286 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %259, i32 0, i32 7
  %260 = load %struct.gp*, %struct.gp** %xgv_gp286, align 8
  %gp_sv287 = getelementptr inbounds %struct.gp, %struct.gp* %260, i32 0, i32 0
  %261 = load %struct.sv*, %struct.sv** %gp_sv287, align 8
  %sv_any288 = getelementptr inbounds %struct.sv, %struct.sv* %261, i32 0, i32 0
  %262 = load i8*, i8** %sv_any288, align 8
  %263 = bitcast i8* %262 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %263, i32 0, i32 3
  %264 = load i64, i64* %xiv_iv, align 8
  %cmp289 = icmp ne i64 %264, 0
  br i1 %cmp289, label %if.then.312, label %if.end.316

cond.false.291:                                   ; preds = %cond.false.277
  %265 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any292 = getelementptr inbounds %struct.gv, %struct.gv* %265, i32 0, i32 0
  %266 = load %struct.xpvgv*, %struct.xpvgv** %sv_any292, align 8
  %xgv_gp293 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %266, i32 0, i32 7
  %267 = load %struct.gp*, %struct.gp** %xgv_gp293, align 8
  %gp_sv294 = getelementptr inbounds %struct.gp, %struct.gp* %267, i32 0, i32 0
  %268 = load %struct.sv*, %struct.sv** %gp_sv294, align 8
  %sv_flags295 = getelementptr inbounds %struct.sv, %struct.sv* %268, i32 0, i32 2
  %269 = load i32, i32* %sv_flags295, align 4
  %and296 = and i32 %269, 131072
  %tobool297 = icmp ne i32 %and296, 0
  br i1 %tobool297, label %cond.true.298, label %cond.false.305

cond.true.298:                                    ; preds = %cond.false.291
  %270 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any299 = getelementptr inbounds %struct.gv, %struct.gv* %270, i32 0, i32 0
  %271 = load %struct.xpvgv*, %struct.xpvgv** %sv_any299, align 8
  %xgv_gp300 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %271, i32 0, i32 7
  %272 = load %struct.gp*, %struct.gp** %xgv_gp300, align 8
  %gp_sv301 = getelementptr inbounds %struct.gp, %struct.gp* %272, i32 0, i32 0
  %273 = load %struct.sv*, %struct.sv** %gp_sv301, align 8
  %sv_any302 = getelementptr inbounds %struct.sv, %struct.sv* %273, i32 0, i32 0
  %274 = load i8*, i8** %sv_any302, align 8
  %275 = bitcast i8* %274 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %275, i32 0, i32 4
  %276 = load double, double* %xnv_nv, align 8
  %cmp303 = fcmp une double %276, 0.000000e+00
  br i1 %cmp303, label %if.then.312, label %if.end.316

cond.false.305:                                   ; preds = %cond.false.291
  %277 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any306 = getelementptr inbounds %struct.gv, %struct.gv* %277, i32 0, i32 0
  %278 = load %struct.xpvgv*, %struct.xpvgv** %sv_any306, align 8
  %xgv_gp307 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %278, i32 0, i32 7
  %279 = load %struct.gp*, %struct.gp** %xgv_gp307, align 8
  %gp_sv308 = getelementptr inbounds %struct.gp, %struct.gp* %279, i32 0, i32 0
  %280 = load %struct.sv*, %struct.sv** %gp_sv308, align 8
  %call309 = call signext i8 @Perl_sv_2bool(%struct.sv* %280)
  %conv310 = sext i8 %call309 to i32
  %tobool311 = icmp ne i32 %conv310, 0
  br i1 %tobool311, label %if.then.312, label %if.end.316

if.then.312:                                      ; preds = %cond.false.305, %cond.true.298, %cond.true.284, %cond.false.276, %cond.true.275, %cond.true.250
  %281 = load i32, i32* %sig.addr, align 4
  %call313 = call void (i32)* @Perl_rsignal(i32 %281, void (i32)* inttoptr (i64 1 to void (i32)*))
  %282 = load i32, i32* %sig.addr, align 4
  %283 = load void (i32)*, void (i32)** @PL_csighandlerp, align 8
  %call314 = call void (i32)* @Perl_rsignal(i32 %282, void (i32)* %283)
  %call315 = call %struct.op* (i8*, ...) @Perl_die(i8* null)
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.312, %cond.false.305, %cond.true.298, %cond.true.284, %cond.false.276, %cond.true.275, %cond.true.250
  br label %cleanup

cleanup:                                          ; preds = %if.end.316, %if.end.144
  %284 = load i32, i32* %flags, align 4
  %and317 = and i32 %284, 1
  %tobool318 = icmp ne i32 %and317, 0
  br i1 %tobool318, label %if.then.319, label %if.end.321

if.then.319:                                      ; preds = %cleanup
  %285 = load i32, i32* @PL_savestack_ix, align 4
  %sub320 = sub nsw i32 %285, 8
  store i32 %sub320, i32* @PL_savestack_ix, align 4
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.319, %cleanup
  %286 = load i32, i32* %flags, align 4
  %and322 = and i32 %286, 4
  %tobool323 = icmp ne i32 %and322, 0
  br i1 %tobool323, label %if.then.324, label %if.end.326

if.then.324:                                      ; preds = %if.end.321
  %287 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr325 = getelementptr inbounds i32, i32* %287, i32 -1
  store i32* %incdec.ptr325, i32** @PL_markstack_ptr, align 8
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.324, %if.end.321
  %288 = load i32, i32* %flags, align 4
  %and327 = and i32 %288, 8
  %tobool328 = icmp ne i32 %and327, 0
  br i1 %tobool328, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %if.end.326
  %289 = load i32, i32* @PL_retstack_ix, align 4
  %dec = add nsw i32 %289, -1
  store i32 %dec, i32* @PL_retstack_ix, align 4
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.329, %if.end.326
  %290 = load i32, i32* %flags, align 4
  %and331 = and i32 %290, 16
  %tobool332 = icmp ne i32 %and331, 0
  br i1 %tobool332, label %if.then.333, label %if.end.335

if.then.333:                                      ; preds = %if.end.330
  %291 = load i32, i32* @PL_scopestack_ix, align 4
  %sub334 = sub nsw i32 %291, 1
  store i32 %sub334, i32* @PL_scopestack_ix, align 4
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.333, %if.end.330
  %292 = load i32, i32* %flags, align 4
  %and336 = and i32 %292, 64
  %tobool337 = icmp ne i32 %and336, 0
  br i1 %tobool337, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %if.end.335
  %293 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %293)
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.338, %if.end.335
  %294 = load %struct.op*, %struct.op** %myop, align 8
  store %struct.op* %294, %struct.op** @PL_op, align 8
  %295 = load %struct.sv*, %struct.sv** %tSv, align 8
  store %struct.sv* %295, %struct.sv** @PL_Sv, align 8
  %296 = load %struct.xpv*, %struct.xpv** %tXpv, align 8
  store %struct.xpv* %296, %struct.xpv** @PL_Xpv, align 8
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32) #3

declare void @Perl_save_destructor_x(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @unwind_handler_stack(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %flags = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %flags, align 4
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %sub = sub nsw i32 %4, 5
  store i32 %sub, i32* @PL_savestack_ix, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %flags, align 4
  %and1 = and i32 %5, 64
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.sv*, %struct.sv** @sig_sv, align 8
  call void @Perl_sv_free(%struct.sv* %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  ret void
}

declare %struct.cv* @Perl_sv_2cv(%struct.sv*, %struct.hv**, %struct.gv**, i32) #1

declare i32 @Perl_call_sv(%struct.sv*, i32) #1

declare %struct.op* @Perl_die(i8*, ...) #1

declare %struct.sv* @Perl_newSViv(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
