; ModuleID = 'util.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.sv = type { i8*, i32, i32 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%union.any = type { i8* }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], %struct.jmpenv*, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.xpv = type { i8*, i64, i64 }
%struct.xpvbm = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, i16, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.unop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op* }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i16 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i16 }
%union.anon.7 = type { i64 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@PL_nomemok = external global i8, align 1
@PL_stderrgv = external global %struct.gv*, align 8
@PL_no_mem = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PL_freq = external constant [0 x i8], align 1
@PL_screamfirst = external global i32*, align 8
@PL_screamnext = external global i32*, align 8
@PL_fold = external constant [0 x i8], align 1
@PL_fold_locale = external global [0 x i8], align 1
@Perl_vmess.dgd = internal global [29 x i8] c" during global destruction.\0A\00", align 16
@PL_curcop = external global %struct.cop*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c" at %s line %ld\00", align 1
@PL_last_in_gv = external global %struct.gv*, align 8
@PL_rs = external global %struct.sv*, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c", <%s> %s %ld\00", align 1
@PL_argvgv = external global %struct.gv*, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"chunk\00", align 1
@PL_dirty = external global i8, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_tmps_floor = external global i32, align 4
@PL_tmps_ix = external global i32, align 4
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_curstack = external global %struct.av*, align 8
@PL_stack_max = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@PL_markstack_max = external global i32*, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"PRINT\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@PL_errors = external global %struct.sv*, align 8
@PL_diehook = external global %struct.sv*, align 8
@PL_errgv = external global %struct.gv*, align 8
@PL_in_eval = external global i32, align 4
@PL_restartop = external global %struct.op*, align 8
@PL_top_env = external global %struct.jmpenv*, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"panic: top_env\0A\00", align 1
@PL_Sv = external global %struct.sv*, align 8
@PL_warnhook = external global %struct.sv*, align 8
@PL_use_safe_putenv = external global i32, align 4
@environ = external global i8**, align 8
@PL_origenviron = external global i8**, align 8
@PL_tainting = external global i8, align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Insecure %s%s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@PL_fdpid = external global %struct.av*, align 8
@PL_forkprocess = external global i32, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"panic: kid popen errno read\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Can't fork\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@PL_pidstatus = external global %struct.hv*, align 8
@sig_trapped = internal global i32 0, align 4
@PL_sv_undef = external global %struct.sv, align 8
@PL_sig_pending = external global i32, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@PL_bufend = external global i8*, align 8
@PL_statbuf = external global %struct.stat, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"Can't %s %s%s%s\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c" on PATH\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c", '.' not in PATH\00", align 1
@PL_op_name = external global [0 x i8*], align 8
@PL_op_desc = external global [0 x i8*], align 8
@PL_no_modify = external constant [0 x i8], align 1
@PL_opargs = external global [0 x i32], align 4
@PL_ppaddr = external global [0 x %struct.op* ()*], align 8
@PL_vtbl_sv = external global %struct.mgvtbl, align 8
@PL_vtbl_env = external global %struct.mgvtbl, align 8
@PL_vtbl_envelem = external global %struct.mgvtbl, align 8
@PL_vtbl_sig = external global %struct.mgvtbl, align 8
@PL_vtbl_sigelem = external global %struct.mgvtbl, align 8
@PL_vtbl_pack = external global %struct.mgvtbl, align 8
@PL_vtbl_packelem = external global %struct.mgvtbl, align 8
@PL_vtbl_dbline = external global %struct.mgvtbl, align 8
@PL_vtbl_isa = external global %struct.mgvtbl, align 8
@PL_vtbl_isaelem = external global %struct.mgvtbl, align 8
@PL_vtbl_arylen = external global %struct.mgvtbl, align 8
@PL_vtbl_glob = external global %struct.mgvtbl, align 8
@PL_vtbl_mglob = external global %struct.mgvtbl, align 8
@PL_vtbl_nkeys = external global %struct.mgvtbl, align 8
@PL_vtbl_taint = external global %struct.mgvtbl, align 8
@PL_vtbl_substr = external global %struct.mgvtbl, align 8
@PL_vtbl_vec = external global %struct.mgvtbl, align 8
@PL_vtbl_pos = external global %struct.mgvtbl, align 8
@PL_vtbl_bm = external global %struct.mgvtbl, align 8
@PL_vtbl_fm = external global %struct.mgvtbl, align 8
@PL_vtbl_uvar = external global %struct.mgvtbl, align 8
@PL_vtbl_defelem = external global %struct.mgvtbl, align 8
@PL_vtbl_regexp = external global %struct.mgvtbl, align 8
@PL_vtbl_regdata = external global %struct.mgvtbl, align 8
@PL_vtbl_regdatum = external global %struct.mgvtbl, align 8
@PL_vtbl_amagic = external global %struct.mgvtbl, align 8
@PL_vtbl_amagicelem = external global %struct.mgvtbl, align 8
@PL_vtbl_backref = external global %struct.mgvtbl, align 8
@PL_vtbl_utf8 = external global %struct.mgvtbl, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"filehandle\00", align 1
@PL_dowarn = external global i8, align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Filehandle %s opened only for %sput\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"Filehandle opened only for %sput\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"unopened\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"%s%s on %s %s %s\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"\09(Are you trying to call %s%s on dirhandle %s?)\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"%s%s on %s %s\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"\09(Are you trying to call %s%s on dirhandle?)\0A\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"panic: no strftime\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.40 = private unnamed_addr constant [64 x i8] c"Unstable directory path, current directory changed unexpectedly\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Unknown Unicode option letter '%c'\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"Unknown Unicode option value %lu\00", align 1
@PL_mess_sv = external global %struct.sv*, align 8
@PL_op = external global %struct.op*, align 8

; Function Attrs: nounwind uwtable
define i8* @Perl_safesysmalloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 1, %cond.false ]
  %call = call i8* @malloc(i64 %cond)
  store i8* %call, i8** %ptr, align 8
  %2 = load i8*, i8** %ptr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load i8*, i8** %ptr, align 8
  store i8* %3, i8** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %4 = load i8, i8* @PL_nomemok, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i8* null, i8** %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %5 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool4 = icmp ne %struct.gv* %5, null
  br i1 %tobool4, label %land.lhs.true, label %cond.false.20

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags, align 4
  %and = and i32 %7, 255
  %cmp5 = icmp eq i32 %and, 13
  br i1 %cmp5, label %land.lhs.true.6, label %cond.false.20

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 2
  %11 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool7 = icmp ne %struct.io* %11, null
  br i1 %tobool7, label %land.lhs.true.8, label %cond.false.20

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %12 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any9 = getelementptr inbounds %struct.gv, %struct.gv* %12, i32 0, i32 0
  %13 = load %struct.xpvgv*, %struct.xpvgv** %sv_any9, align 8
  %xgv_gp10 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 7
  %14 = load %struct.gp*, %struct.gp** %xgv_gp10, align 8
  %gp_io11 = getelementptr inbounds %struct.gp, %struct.gp* %14, i32 0, i32 2
  %15 = load %struct.io*, %struct.io** %gp_io11, align 8
  %sv_any12 = getelementptr inbounds %struct.io, %struct.io* %15, i32 0, i32 0
  %16 = load %struct.xpvio*, %struct.xpvio** %sv_any12, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %16, i32 0, i32 8
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool13 = icmp ne %struct._PerlIO** %17, null
  br i1 %tobool13, label %cond.true.14, label %cond.false.20

cond.true.14:                                     ; preds = %land.lhs.true.8
  %18 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any15 = getelementptr inbounds %struct.gv, %struct.gv* %18, i32 0, i32 0
  %19 = load %struct.xpvgv*, %struct.xpvgv** %sv_any15, align 8
  %xgv_gp16 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %19, i32 0, i32 7
  %20 = load %struct.gp*, %struct.gp** %xgv_gp16, align 8
  %gp_io17 = getelementptr inbounds %struct.gp, %struct.gp* %20, i32 0, i32 2
  %21 = load %struct.io*, %struct.io** %gp_io17, align 8
  %sv_any18 = getelementptr inbounds %struct.io, %struct.io* %21, i32 0, i32 0
  %22 = load %struct.xpvio*, %struct.xpvio** %sv_any18, align 8
  %xio_ofp19 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %22, i32 0, i32 8
  %23 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp19, align 8
  br label %cond.end.22

cond.false.20:                                    ; preds = %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %if.else.3
  %call21 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.14
  %cond23 = phi %struct._PerlIO** [ %23, %cond.true.14 ], [ %call21, %cond.false.20 ]
  %call24 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %cond23)
  %call25 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_mem, i32 0, i32 0))
  %call26 = call i64 @write(i32 %call24, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_mem, i32 0, i32 0), i64 %call25)
  call void @Perl_my_exit(i32 1)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %cond.end.22, %if.then.2, %if.then
  %24 = load i8*, i8** %retval
  ret i8* %24
}

declare i8* @malloc(i64) #1

declare i64 @write(i32, i8*, i64) #1

declare i32 @Perl_PerlIO_fileno(%struct._PerlIO**) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

declare i64 @strlen(i8*) #1

declare void @Perl_my_exit(i32) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_safesysrealloc(i8* %where, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %where.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i8* %where, i8** %where.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %where.addr, align 8
  call void @Perl_safesysfree(i8* %1)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %where.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load i64, i64* %size.addr, align 8
  %call = call i8* @Perl_safesysmalloc(i64 %3)
  store i8* %call, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i8*, i8** %where.addr, align 8
  %5 = load i64, i64* %size.addr, align 8
  %call4 = call i8* @realloc(i8* %4, i64 %5)
  store i8* %call4, i8** %ptr, align 8
  %6 = load i8*, i8** %ptr, align 8
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %7 = load i8*, i8** %ptr, align 8
  store i8* %7, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end.3
  %8 = load i8, i8* @PL_nomemok, align 1
  %tobool6 = icmp ne i8 %8, 0
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  store i8* null, i8** %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %9 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool9 = icmp ne %struct.gv* %9, null
  br i1 %tobool9, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else.8
  %10 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, 255
  %cmp10 = icmp eq i32 %and, 13
  br i1 %cmp10, label %land.lhs.true.11, label %cond.false

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %12 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %12, i32 0, i32 0
  %13 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 7
  %14 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %14, i32 0, i32 2
  %15 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool12 = icmp ne %struct.io* %15, null
  br i1 %tobool12, label %land.lhs.true.13, label %cond.false

land.lhs.true.13:                                 ; preds = %land.lhs.true.11
  %16 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any14 = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any14, align 8
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp15, align 8
  %gp_io16 = getelementptr inbounds %struct.gp, %struct.gp* %18, i32 0, i32 2
  %19 = load %struct.io*, %struct.io** %gp_io16, align 8
  %sv_any17 = getelementptr inbounds %struct.io, %struct.io* %19, i32 0, i32 0
  %20 = load %struct.xpvio*, %struct.xpvio** %sv_any17, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %20, i32 0, i32 8
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool18 = icmp ne %struct._PerlIO** %21, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.13
  %22 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any19 = getelementptr inbounds %struct.gv, %struct.gv* %22, i32 0, i32 0
  %23 = load %struct.xpvgv*, %struct.xpvgv** %sv_any19, align 8
  %xgv_gp20 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %23, i32 0, i32 7
  %24 = load %struct.gp*, %struct.gp** %xgv_gp20, align 8
  %gp_io21 = getelementptr inbounds %struct.gp, %struct.gp* %24, i32 0, i32 2
  %25 = load %struct.io*, %struct.io** %gp_io21, align 8
  %sv_any22 = getelementptr inbounds %struct.io, %struct.io* %25, i32 0, i32 0
  %26 = load %struct.xpvio*, %struct.xpvio** %sv_any22, align 8
  %xio_ofp23 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %26, i32 0, i32 8
  %27 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp23, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.13, %land.lhs.true.11, %land.lhs.true, %if.else.8
  %call24 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %27, %cond.true ], [ %call24, %cond.false ]
  %call25 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %cond)
  %call26 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_mem, i32 0, i32 0))
  %call27 = call i64 @write(i32 %call25, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_mem, i32 0, i32 0), i64 %call26)
  call void @Perl_my_exit(i32 1)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.7, %if.then.5, %if.then.2, %if.then
  %28 = load i8*, i8** %retval
  ret i8* %28
}

; Function Attrs: nounwind uwtable
define void @Perl_safesysfree(i8* %where) #0 {
entry:
  %where.addr = alloca i8*, align 8
  store i8* %where, i8** %where.addr, align 8
  %0 = load i8*, i8** %where.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %where.addr, align 8
  call void @free(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @realloc(i8*, i64) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_safesyscalloc(i64 %count, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %count.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %mul = mul i64 %1, %0
  store i64 %mul, i64* %size.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 1, %cond.false ]
  %call = call i8* @malloc(i64 %cond)
  store i8* %call, i8** %ptr, align 8
  %4 = load i8*, i8** %ptr, align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %5 = load i8*, i8** %ptr, align 8
  %6 = load i64, i64* %size.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %6, i32 1, i1 false)
  %7 = load i8*, i8** %ptr, align 8
  store i8* %7, i8** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %8 = load i8, i8* @PL_nomemok, align 1
  %tobool1 = icmp ne i8 %8, 0
  br i1 %tobool1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i8* null, i8** %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %9 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool4 = icmp ne %struct.gv* %9, null
  br i1 %tobool4, label %land.lhs.true, label %cond.false.20

land.lhs.true:                                    ; preds = %if.else.3
  %10 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, 255
  %cmp5 = icmp eq i32 %and, 13
  br i1 %cmp5, label %land.lhs.true.6, label %cond.false.20

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %12 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %12, i32 0, i32 0
  %13 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 7
  %14 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %14, i32 0, i32 2
  %15 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool7 = icmp ne %struct.io* %15, null
  br i1 %tobool7, label %land.lhs.true.8, label %cond.false.20

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %16 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any9 = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any9, align 8
  %xgv_gp10 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp10, align 8
  %gp_io11 = getelementptr inbounds %struct.gp, %struct.gp* %18, i32 0, i32 2
  %19 = load %struct.io*, %struct.io** %gp_io11, align 8
  %sv_any12 = getelementptr inbounds %struct.io, %struct.io* %19, i32 0, i32 0
  %20 = load %struct.xpvio*, %struct.xpvio** %sv_any12, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %20, i32 0, i32 8
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool13 = icmp ne %struct._PerlIO** %21, null
  br i1 %tobool13, label %cond.true.14, label %cond.false.20

cond.true.14:                                     ; preds = %land.lhs.true.8
  %22 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any15 = getelementptr inbounds %struct.gv, %struct.gv* %22, i32 0, i32 0
  %23 = load %struct.xpvgv*, %struct.xpvgv** %sv_any15, align 8
  %xgv_gp16 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %23, i32 0, i32 7
  %24 = load %struct.gp*, %struct.gp** %xgv_gp16, align 8
  %gp_io17 = getelementptr inbounds %struct.gp, %struct.gp* %24, i32 0, i32 2
  %25 = load %struct.io*, %struct.io** %gp_io17, align 8
  %sv_any18 = getelementptr inbounds %struct.io, %struct.io* %25, i32 0, i32 0
  %26 = load %struct.xpvio*, %struct.xpvio** %sv_any18, align 8
  %xio_ofp19 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %26, i32 0, i32 8
  %27 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp19, align 8
  br label %cond.end.22

cond.false.20:                                    ; preds = %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %if.else.3
  %call21 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.14
  %cond23 = phi %struct._PerlIO** [ %27, %cond.true.14 ], [ %call21, %cond.false.20 ]
  %call24 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %cond23)
  %call25 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_mem, i32 0, i32 0))
  %call26 = call i64 @write(i32 %call24, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_mem, i32 0, i32 0), i64 %call25)
  call void @Perl_my_exit(i32 1)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %cond.end.22, %if.then.2, %if.then
  %28 = load i8*, i8** %retval
  ret i8* %28
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i8* @Perl_malloc(i64 %nbytes) #0 {
entry:
  %nbytes.addr = alloca i64, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i64, i64* %nbytes.addr, align 8
  %call = call i8* @malloc(i64 %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @Perl_calloc(i64 %elements, i64 %size) #0 {
entry:
  %elements.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %elements, i64* %elements.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %elements.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @calloc(i64 %0, i64 %1)
  ret i8* %call
}

declare i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_realloc(i8* %where, i64 %nbytes) #0 {
entry:
  %where.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  store i8* %where, i8** %where.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i8*, i8** %where.addr, align 8
  %1 = load i64, i64* %nbytes.addr, align 8
  %call = call i8* @realloc(i8* %0, i64 %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @Perl_mfree(i8* %where) #0 {
entry:
  %where.addr = alloca i8*, align 8
  store i8* %where, i8** %where.addr, align 8
  %0 = load i8*, i8** %where.addr, align 8
  call void @free(i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @Perl_delimcpy(i8* %to, i8* %toend, i8* %from, i8* %fromend, i32 %delim, i32* %retlen) #0 {
entry:
  %to.addr = alloca i8*, align 8
  %toend.addr = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  %fromend.addr = alloca i8*, align 8
  %delim.addr = alloca i32, align 4
  %retlen.addr = alloca i32*, align 8
  %tolen = alloca i32, align 4
  store i8* %to, i8** %to.addr, align 8
  store i8* %toend, i8** %toend.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  store i8* %fromend, i8** %fromend.addr, align 8
  store i32 %delim, i32* %delim.addr, align 4
  store i32* %retlen, i32** %retlen.addr, align 8
  store i32 0, i32* %tolen, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %from.addr, align 8
  %1 = load i8*, i8** %fromend.addr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %from.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 92
  br i1 %cmp1, label %if.then, label %if.else.13

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %from.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load i32, i32* %delim.addr, align 4
  %cmp4 = icmp eq i32 %conv3, %6
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %7 = load i8*, i8** %from.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %from.addr, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %8 = load i8*, i8** %to.addr, align 8
  %9 = load i8*, i8** %toend.addr, align 8
  %cmp7 = icmp ult i8* %8, %9
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %10 = load i8*, i8** %from.addr, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %to.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %to.addr, align 8
  store i8 %11, i8* %12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  %13 = load i32, i32* %tolen, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %tolen, align 4
  %14 = load i8*, i8** %from.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr11, i8** %from.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  br label %if.end.19

if.else.13:                                       ; preds = %for.body
  %15 = load i8*, i8** %from.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv14 = sext i8 %16 to i32
  %17 = load i32, i32* %delim.addr, align 4
  %cmp15 = icmp eq i32 %conv14, %17
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.13
  br label %for.end

if.end.18:                                        ; preds = %if.else.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.12
  %18 = load i8*, i8** %to.addr, align 8
  %19 = load i8*, i8** %toend.addr, align 8
  %cmp20 = icmp ult i8* %18, %19
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %20 = load i8*, i8** %from.addr, align 8
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %to.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr23, i8** %to.addr, align 8
  store i8 %21, i8* %22, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %23 = load i8*, i8** %from.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr25, i8** %from.addr, align 8
  %24 = load i32, i32* %tolen, align 4
  %inc26 = add nsw i32 %24, 1
  store i32 %inc26, i32* %tolen, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.17, %for.cond
  %25 = load i8*, i8** %to.addr, align 8
  %26 = load i8*, i8** %toend.addr, align 8
  %cmp27 = icmp ult i8* %25, %26
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.end
  %27 = load i8*, i8** %to.addr, align 8
  store i8 0, i8* %27, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %for.end
  %28 = load i32, i32* %tolen, align 4
  %29 = load i32*, i32** %retlen.addr, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %from.addr, align 8
  ret i8* %30
}

; Function Attrs: nounwind uwtable
define i8* @Perl_instr(i8* %big, i8* %little) #0 {
entry:
  %retval = alloca i8*, align 8
  %big.addr = alloca i8*, align 8
  %little.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %x = alloca i8*, align 8
  %first = alloca i32, align 4
  store i8* %big, i8** %big.addr, align 8
  store i8* %little, i8** %little.addr, align 8
  %0 = load i8*, i8** %little.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %big.addr, align 8
  store i8* %1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %little.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %little.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %first, align 4
  %4 = load i32, i32* %first, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %5 = load i8*, i8** %big.addr, align 8
  store i8* %5, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %if.then.8, %if.end.3
  %6 = load i8*, i8** %big.addr, align 8
  %7 = load i8, i8* %6, align 1
  %tobool4 = icmp ne i8 %7, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %big.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr5, i8** %big.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  %10 = load i32, i32* %first, align 4
  %cmp = icmp ne i32 %conv6, %10
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  br label %while.cond

if.end.9:                                         ; preds = %while.body
  %11 = load i8*, i8** %big.addr, align 8
  store i8* %11, i8** %x, align 8
  %12 = load i8*, i8** %little.addr, align 8
  store i8* %12, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.22, %if.end.9
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %tobool10 = icmp ne i8 %14, 0
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %x, align 8
  %16 = load i8, i8* %15, align 1
  %tobool11 = icmp ne i8 %16, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %for.body
  store i8* null, i8** %retval
  br label %return

if.end.13:                                        ; preds = %for.body
  %17 = load i8*, i8** %s, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr14, i8** %s, align 8
  %18 = load i8, i8* %17, align 1
  %conv15 = sext i8 %18 to i32
  %19 = load i8*, i8** %x, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr16, i8** %x, align 8
  %20 = load i8, i8* %19, align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp ne i32 %conv15, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.13
  %21 = load i8*, i8** %s, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr21, i8** %s, align 8
  br label %for.end

if.end.22:                                        ; preds = %if.end.13
  br label %for.cond

for.end:                                          ; preds = %if.then.20, %for.cond
  %22 = load i8*, i8** %s, align 8
  %23 = load i8, i8* %22, align 1
  %tobool23 = icmp ne i8 %23, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %for.end
  %24 = load i8*, i8** %big.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 -1
  store i8* %add.ptr, i8** %retval
  br label %return

if.end.25:                                        ; preds = %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.24, %if.then.12, %if.then.2, %if.then
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind uwtable
define i8* @Perl_ninstr(i8* %big, i8* %bigend, i8* %little, i8* %lend) #0 {
entry:
  %retval = alloca i8*, align 8
  %big.addr = alloca i8*, align 8
  %bigend.addr = alloca i8*, align 8
  %little.addr = alloca i8*, align 8
  %lend.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %x = alloca i8*, align 8
  %first = alloca i32, align 4
  %littleend = alloca i8*, align 8
  store i8* %big, i8** %big.addr, align 8
  store i8* %bigend, i8** %bigend.addr, align 8
  store i8* %little, i8** %little.addr, align 8
  store i8* %lend, i8** %lend.addr, align 8
  %0 = load i8*, i8** %little.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %first, align 4
  %2 = load i8*, i8** %lend.addr, align 8
  store i8* %2, i8** %littleend, align 8
  %3 = load i32, i32* %first, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %little.addr, align 8
  %5 = load i8*, i8** %littleend, align 8
  %cmp = icmp uge i8* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %big.addr, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i8*, i8** %bigend.addr, align 8
  %8 = load i8*, i8** %big.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = load i8*, i8** %littleend, align 8
  %10 = load i8*, i8** %little.addr, align 8
  %sub.ptr.lhs.cast2 = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i8* %10 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %cmp5 = icmp slt i64 %sub.ptr.sub, %sub.ptr.sub4
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %11 = load i8*, i8** %littleend, align 8
  %12 = load i8*, i8** %little.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %little.addr, align 8
  %sub.ptr.lhs.cast9 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %12 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %13 = load i8*, i8** %bigend.addr, align 8
  %idx.neg = sub i64 0, %sub.ptr.sub11
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.neg
  store i8* %add.ptr, i8** %bigend.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.then.18, %if.end.8
  %14 = load i8*, i8** %big.addr, align 8
  %15 = load i8*, i8** %bigend.addr, align 8
  %cmp12 = icmp ule i8* %14, %15
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %big.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr14, i8** %big.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv15 = sext i8 %17 to i32
  %18 = load i32, i32* %first, align 4
  %cmp16 = icmp ne i32 %conv15, %18
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.body
  br label %while.cond

if.end.19:                                        ; preds = %while.body
  %19 = load i8*, i8** %big.addr, align 8
  store i8* %19, i8** %x, align 8
  %20 = load i8*, i8** %little.addr, align 8
  store i8* %20, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.30, %if.end.19
  %21 = load i8*, i8** %s, align 8
  %22 = load i8*, i8** %littleend, align 8
  %cmp20 = icmp ult i8* %21, %22
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %s, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr22, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = sext i8 %24 to i32
  %25 = load i8*, i8** %x, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr24, i8** %x, align 8
  %26 = load i8, i8* %25, align 1
  %conv25 = sext i8 %26 to i32
  %cmp26 = icmp ne i32 %conv23, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %for.body
  %27 = load i8*, i8** %s, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr29, i8** %s, align 8
  br label %for.end

if.end.30:                                        ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %for.cond
  %28 = load i8*, i8** %s, align 8
  %29 = load i8*, i8** %littleend, align 8
  %cmp31 = icmp uge i8* %28, %29
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %for.end
  %30 = load i8*, i8** %big.addr, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %30, i64 -1
  store i8* %add.ptr34, i8** %retval
  br label %return

if.end.35:                                        ; preds = %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.33, %if.then.7, %if.then
  %31 = load i8*, i8** %retval
  ret i8* %31
}

; Function Attrs: nounwind uwtable
define i8* @Perl_rninstr(i8* %big, i8* %bigend, i8* %little, i8* %lend) #0 {
entry:
  %retval = alloca i8*, align 8
  %big.addr = alloca i8*, align 8
  %bigend.addr = alloca i8*, align 8
  %little.addr = alloca i8*, align 8
  %lend.addr = alloca i8*, align 8
  %bigbeg = alloca i8*, align 8
  %s = alloca i8*, align 8
  %x = alloca i8*, align 8
  %first = alloca i32, align 4
  %littleend = alloca i8*, align 8
  store i8* %big, i8** %big.addr, align 8
  store i8* %bigend, i8** %bigend.addr, align 8
  store i8* %little, i8** %little.addr, align 8
  store i8* %lend, i8** %lend.addr, align 8
  %0 = load i8*, i8** %little.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %first, align 4
  %2 = load i8*, i8** %lend.addr, align 8
  store i8* %2, i8** %littleend, align 8
  %3 = load i32, i32* %first, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %little.addr, align 8
  %5 = load i8*, i8** %littleend, align 8
  %cmp = icmp uge i8* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %bigend.addr, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i8*, i8** %big.addr, align 8
  store i8* %7, i8** %bigbeg, align 8
  %8 = load i8*, i8** %bigend.addr, align 8
  %9 = load i8*, i8** %littleend, align 8
  %10 = load i8*, i8** %little.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %little.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %idx.neg = sub i64 0, %sub.ptr.sub
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.neg
  store i8* %add.ptr, i8** %big.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %if.then.8, %if.end
  %11 = load i8*, i8** %big.addr, align 8
  %12 = load i8*, i8** %bigbeg, align 8
  %cmp2 = icmp uge i8* %11, %12
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %big.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr4, i8** %big.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv5 = sext i8 %14 to i32
  %15 = load i32, i32* %first, align 4
  %cmp6 = icmp ne i32 %conv5, %15
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  br label %while.cond

if.end.9:                                         ; preds = %while.body
  %16 = load i8*, i8** %big.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 2
  store i8* %add.ptr10, i8** %x, align 8
  %17 = load i8*, i8** %little.addr, align 8
  store i8* %17, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.21, %if.end.9
  %18 = load i8*, i8** %s, align 8
  %19 = load i8*, i8** %littleend, align 8
  %cmp11 = icmp ult i8* %18, %19
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %s, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr13, i8** %s, align 8
  %21 = load i8, i8* %20, align 1
  %conv14 = sext i8 %21 to i32
  %22 = load i8*, i8** %x, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr15, i8** %x, align 8
  %23 = load i8, i8* %22, align 1
  %conv16 = sext i8 %23 to i32
  %cmp17 = icmp ne i32 %conv14, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.body
  %24 = load i8*, i8** %s, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %incdec.ptr20, i8** %s, align 8
  br label %for.end

if.end.21:                                        ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %if.then.19, %for.cond
  %25 = load i8*, i8** %s, align 8
  %26 = load i8*, i8** %littleend, align 8
  %cmp22 = icmp uge i8* %25, %26
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.end
  %27 = load i8*, i8** %big.addr, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %add.ptr25, i8** %retval
  br label %return

if.end.26:                                        ; preds = %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.24, %if.then
  %28 = load i8*, i8** %retval
  ret i8* %28
}

; Function Attrs: nounwind uwtable
define void @Perl_fbm_compile(%struct.sv* %sv, i32 %flags) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %flags.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %table = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  %rarest = alloca i32, align 4
  %frequency = alloca i32, align 4
  %mg = alloca %struct.magic*, align 8
  %mlen = alloca i8, align 1
  %sb = alloca i8*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %rarest, align 4
  store i32 256, i32* %frequency, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 15
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and1 = and i32 %2, 536870912
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags3 = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags3, align 4
  %and4 = and i32 %4, 57344
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %5, i32 119)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.magic* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond, %struct.magic** %mg, align 8
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 1, i32 2)
  %7 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool6 = icmp ne %struct.magic* %7, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %cond.end
  %8 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %8, i32 0, i32 7
  %9 = load i32, i32* %mg_len, align 4
  %cmp = icmp sge i32 %9, 0
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.7
  %10 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_len9 = getelementptr inbounds %struct.magic, %struct.magic* %10, i32 0, i32 7
  %11 = load i32, i32* %mg_len9, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %mg_len9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true.7, %cond.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags11, align 4
  %and12 = and i32 %13, 10223616
  %cmp13 = icmp eq i32 %and12, 262144
  br i1 %cmp13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %if.end.10
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 1
  %17 = load i64, i64* %xpv_cur, align 8
  store i64 %17, i64* %len, align 8
  %18 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any15, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 0
  %21 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.18

cond.false.16:                                    ; preds = %if.end.10
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call17 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %22, i64* %len, i32 2)
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.true.14
  %cond19 = phi i8* [ %21, %cond.true.14 ], [ %call17, %cond.false.16 ]
  store i8* %cond19, i8** %s, align 8
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags20 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags20, align 4
  %and21 = and i32 %24, 255
  %cmp22 = icmp uge i32 %and21, 8
  br i1 %cmp22, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.18
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call23 = call signext i8 @Perl_sv_upgrade(%struct.sv* %25, i32 8)
  %conv = sext i8 %call23 to i32
  %tobool24 = icmp ne i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.18
  %26 = phi i1 [ true, %cond.end.18 ], [ %tobool24, %lor.rhs ]
  %lor.ext = zext i1 %26 to i32
  %27 = load i64, i64* %len, align 8
  %cmp25 = icmp eq i64 %27, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.end
  br label %if.end.95

if.end.28:                                        ; preds = %lor.end
  %28 = load i64, i64* %len, align 8
  %cmp29 = icmp ugt i64 %28, 2
  br i1 %cmp29, label %if.then.31, label %if.end.62

if.then.31:                                       ; preds = %if.end.28
  %29 = load i64, i64* %len, align 8
  %cmp32 = icmp ugt i64 %29, 255
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.31
  store i8 -1, i8* %mlen, align 1
  br label %if.end.36

if.else:                                          ; preds = %if.then.31
  %30 = load i64, i64* %len, align 8
  %conv35 = trunc i64 %30 to i8
  store i8 %conv35, i8* %mlen, align 1
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.34
  %31 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %32 = load i64, i64* %len, align 8
  %add = add i64 %32, 256
  %add37 = add i64 %add, 2
  %call38 = call i8* @Perl_sv_grow(%struct.sv* %31, i64 %add37)
  %33 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any39 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 0
  %34 = load i8*, i8** %sv_any39, align 8
  %35 = bitcast i8* %34 to %struct.xpv*
  %xpv_pv40 = getelementptr inbounds %struct.xpv, %struct.xpv* %35, i32 0, i32 0
  %36 = load i8*, i8** %xpv_pv40, align 8
  %37 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %37
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr, i64 2
  store i8* %add.ptr41, i8** %table, align 8
  %38 = load i8*, i8** %table, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %38, i64 -1
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr42, i64 -2
  store i8* %add.ptr43, i8** %s, align 8
  %39 = load i8*, i8** %table, align 8
  %40 = load i8, i8* %mlen, align 1
  %conv44 = zext i8 %40 to i32
  %41 = trunc i32 %conv44 to i8
  call void @llvm.memset.p0i8.i64(i8* %39, i8 %41, i64 256, i32 1, i1 false)
  %42 = load i32, i32* %flags.addr, align 4
  %conv45 = trunc i32 %42 to i8
  %43 = load i8*, i8** %table, align 8
  %arrayidx = getelementptr inbounds i8, i8* %43, i64 -1
  store i8 %conv45, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  %44 = load i8*, i8** %s, align 8
  %45 = load i8, i8* %mlen, align 1
  %conv46 = zext i8 %45 to i32
  %idx.ext = sext i32 %conv46 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr47 = getelementptr inbounds i8, i8* %44, i64 %idx.neg
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr47, i64 1
  store i8* %add.ptr48, i8** %sb, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.60, %if.end.36
  %46 = load i8*, i8** %s, align 8
  %47 = load i8*, i8** %sb, align 8
  %cmp49 = icmp uge i8* %46, %47
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load i8*, i8** %s, align 8
  %49 = load i8, i8* %48, align 1
  %idxprom = zext i8 %49 to i64
  %50 = load i8*, i8** %table, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %50, i64 %idxprom
  %51 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %51 to i32
  %52 = load i8, i8* %mlen, align 1
  %conv53 = zext i8 %52 to i32
  %cmp54 = icmp eq i32 %conv52, %conv53
  br i1 %cmp54, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %while.body
  %53 = load i32, i32* %i, align 4
  %conv57 = trunc i32 %53 to i8
  %54 = load i8*, i8** %s, align 8
  %55 = load i8, i8* %54, align 1
  %idxprom58 = zext i8 %55 to i64
  %56 = load i8*, i8** %table, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %56, i64 %idxprom58
  store i8 %conv57, i8* %arrayidx59, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %while.body
  %57 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %incdec.ptr, i8** %s, align 8
  %58 = load i32, i32* %i, align 4
  %inc61 = add i32 %58, 1
  store i32 %inc61, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.62

if.end.62:                                        ; preds = %while.end, %if.end.28
  %59 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_magic(%struct.sv* %59, %struct.sv* null, i32 66, i8* null, i32 0)
  %60 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags63 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 2
  %61 = load i32, i32* %sv_flags63, align 4
  %or = or i32 %61, -2147483648
  store i32 %or, i32* %sv_flags63, align 4
  %62 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any64 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 0
  %63 = load i8*, i8** %sv_any64, align 8
  %64 = bitcast i8* %63 to %struct.xpv*
  %xpv_pv65 = getelementptr inbounds %struct.xpv, %struct.xpv* %64, i32 0, i32 0
  %65 = load i8*, i8** %xpv_pv65, align 8
  store i8* %65, i8** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.62
  %66 = load i32, i32* %i, align 4
  %conv66 = zext i32 %66 to i64
  %67 = load i64, i64* %len, align 8
  %cmp67 = icmp ult i64 %conv66, %67
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i32, i32* %i, align 4
  %idxprom69 = zext i32 %68 to i64
  %69 = load i8*, i8** %s, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %69, i64 %idxprom69
  %70 = load i8, i8* %arrayidx70, align 1
  %idxprom71 = zext i8 %70 to i64
  %arrayidx72 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_freq, i32 0, i64 %idxprom71
  %71 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %71 to i32
  %72 = load i32, i32* %frequency, align 4
  %cmp74 = icmp ult i32 %conv73, %72
  br i1 %cmp74, label %if.then.76, label %if.end.82

if.then.76:                                       ; preds = %for.body
  %73 = load i32, i32* %i, align 4
  store i32 %73, i32* %rarest, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom77 = zext i32 %74 to i64
  %75 = load i8*, i8** %s, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %75, i64 %idxprom77
  %76 = load i8, i8* %arrayidx78, align 1
  %idxprom79 = zext i8 %76 to i64
  %arrayidx80 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_freq, i32 0, i64 %idxprom79
  %77 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %77 to i32
  store i32 %conv81, i32* %frequency, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.76, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.82
  %78 = load i32, i32* %i, align 4
  %inc83 = add i32 %78, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i32, i32* %rarest, align 4
  %idxprom84 = sext i32 %79 to i64
  %80 = load i8*, i8** %s, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %80, i64 %idxprom84
  %81 = load i8, i8* %arrayidx85, align 1
  %82 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any86 = getelementptr inbounds %struct.sv, %struct.sv* %82, i32 0, i32 0
  %83 = load i8*, i8** %sv_any86, align 8
  %84 = bitcast i8* %83 to %struct.xpvbm*
  %xbm_rare = getelementptr inbounds %struct.xpvbm, %struct.xpvbm* %84, i32 0, i32 9
  store i8 %81, i8* %xbm_rare, align 1
  %85 = load i32, i32* %rarest, align 4
  %conv87 = trunc i32 %85 to i16
  %86 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any88 = getelementptr inbounds %struct.sv, %struct.sv* %86, i32 0, i32 0
  %87 = load i8*, i8** %sv_any88, align 8
  %88 = bitcast i8* %87 to %struct.xpvbm*
  %xbm_previous = getelementptr inbounds %struct.xpvbm, %struct.xpvbm* %88, i32 0, i32 8
  store i16 %conv87, i16* %xbm_previous, align 2
  %89 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any89 = getelementptr inbounds %struct.sv, %struct.sv* %89, i32 0, i32 0
  %90 = load i8*, i8** %sv_any89, align 8
  %91 = bitcast i8* %90 to %struct.xpvbm*
  %xbm_useful = getelementptr inbounds %struct.xpvbm, %struct.xpvbm* %91, i32 0, i32 7
  store i32 100, i32* %xbm_useful, align 4
  %92 = load i32, i32* %flags.addr, align 4
  %and90 = and i32 %92, 15
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %for.end
  %93 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags93 = getelementptr inbounds %struct.sv, %struct.sv* %93, i32 0, i32 2
  %94 = load i32, i32* %sv_flags93, align 4
  %or94 = or i32 %94, 1073741824
  store i32 %or94, i32* %sv_flags93, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.27, %if.then.92, %for.end
  ret void
}

declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_fbm_instr(i8* %big, i8* %bigend, %struct.sv* %littlestr, i32 %flags) #0 {
entry:
  %retval = alloca i8*, align 8
  %big.addr = alloca i8*, align 8
  %bigend.addr = alloca i8*, align 8
  %littlestr.addr = alloca %struct.sv*, align 8
  %flags.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %l = alloca i64, align 8
  %little = alloca i8*, align 8
  %littlelen = alloca i64, align 8
  %multiline = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %b = alloca i8*, align 8
  %table = alloca i8*, align 8
  %oldlittle = alloca i8*, align 8
  %tmp = alloca i32, align 4
  %olds = alloca i8*, align 8
  store i8* %big, i8** %big.addr, align 8
  store i8* %bigend, i8** %bigend.addr, align 8
  store %struct.sv* %littlestr, %struct.sv** %littlestr.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 1
  %5 = load i64, i64* %xpv_cur, align 8
  store i64 %5, i64* %l, align 8
  %6 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 0
  %9 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %10, i64* %l, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %little, align 8
  %11 = load i64, i64* %l, align 8
  store i64 %11, i64* %littlelen, align 8
  %12 = load i32, i32* %flags.addr, align 4
  %and2 = and i32 %12, 1
  store i32 %and2, i32* %multiline, align 4
  %13 = load i8*, i8** %bigend.addr, align 8
  %14 = load i8*, i8** %big.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %15 = load i64, i64* %littlelen, align 8
  %cmp3 = icmp ult i64 %sub.ptr.sub, %15
  br i1 %cmp3, label %if.then, label %if.end.20

if.then:                                          ; preds = %cond.end
  %16 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %17, 1073741824
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %18 = load i8*, i8** %bigend.addr, align 8
  %19 = load i8*, i8** %big.addr, align 8
  %sub.ptr.lhs.cast6 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %19 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %20 = load i64, i64* %littlelen, align 8
  %sub = sub i64 %20, 1
  %cmp9 = icmp eq i64 %sub.ptr.sub8, %sub
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %21 = load i64, i64* %littlelen, align 8
  %cmp11 = icmp eq i64 %21, 1
  br i1 %cmp11, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10
  %22 = load i8*, i8** %big.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv = zext i8 %23 to i32
  %24 = load i8*, i8** %little, align 8
  %25 = load i8, i8* %24, align 1
  %conv12 = zext i8 %25 to i32
  %cmp13 = icmp eq i32 %conv, %conv12
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %lor.lhs.false
  %26 = load i8*, i8** %big.addr, align 8
  %27 = load i8*, i8** %little, align 8
  %28 = load i64, i64* %littlelen, align 8
  %sub16 = sub i64 %28, 1
  %call17 = call i32 @memcmp(i8* %26, i8* %27, i64 %sub16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.15, %land.lhs.true.10
  %29 = load i8*, i8** %big.addr, align 8
  store i8* %29, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.15, %lor.lhs.false, %land.lhs.true, %if.then
  store i8* null, i8** %retval
  br label %return

if.end.20:                                        ; preds = %cond.end
  %30 = load i64, i64* %littlelen, align 8
  %cmp21 = icmp ule i64 %30, 2
  br i1 %cmp21, label %if.then.23, label %if.end.179

if.then.23:                                       ; preds = %if.end.20
  %31 = load i64, i64* %littlelen, align 8
  %cmp24 = icmp eq i64 %31, 1
  br i1 %cmp24, label %if.then.26, label %if.end.52

if.then.26:                                       ; preds = %if.then.23
  %32 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags27 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags27, align 4
  %and28 = and i32 %33, 1073741824
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.38

land.lhs.true.30:                                 ; preds = %if.then.26
  %34 = load i32, i32* %multiline, align 4
  %tobool31 = icmp ne i32 %34, 0
  br i1 %tobool31, label %if.end.38, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.30
  %35 = load i8*, i8** %bigend.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 -1
  %36 = load i8, i8* %arrayidx, align 1
  %conv33 = zext i8 %36 to i32
  %cmp34 = icmp eq i32 %conv33, 10
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  %37 = load i8*, i8** %bigend.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 -1
  store i8* %add.ptr, i8** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.32
  %38 = load i8*, i8** %bigend.addr, align 8
  store i8* %38, i8** %retval
  br label %return

if.end.38:                                        ; preds = %land.lhs.true.30, %if.then.26
  %39 = load i8*, i8** %big.addr, align 8
  store i8* %39, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %if.end.38
  %40 = load i8*, i8** %s, align 8
  %41 = load i8*, i8** %bigend.addr, align 8
  %cmp39 = icmp ult i8* %40, %41
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i8*, i8** %s, align 8
  %43 = load i8, i8* %42, align 1
  %conv41 = zext i8 %43 to i32
  %44 = load i8*, i8** %little, align 8
  %45 = load i8, i8* %44, align 1
  %conv42 = zext i8 %45 to i32
  %cmp43 = icmp eq i32 %conv41, %conv42
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %while.body
  %46 = load i8*, i8** %s, align 8
  store i8* %46, i8** %retval
  br label %return

if.end.46:                                        ; preds = %while.body
  %47 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags47 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 2
  %49 = load i32, i32* %sv_flags47, align 4
  %and48 = and i32 %49, 1073741824
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %while.end
  %50 = load i8*, i8** %bigend.addr, align 8
  store i8* %50, i8** %retval
  br label %return

if.end.51:                                        ; preds = %while.end
  store i8* null, i8** %retval
  br label %return

if.end.52:                                        ; preds = %if.then.23
  %51 = load i64, i64* %littlelen, align 8
  %tobool53 = icmp ne i64 %51, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.52
  %52 = load i8*, i8** %big.addr, align 8
  store i8* %52, i8** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.52
  %53 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags56 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 2
  %54 = load i32, i32* %sv_flags56, align 4
  %and57 = and i32 %54, 1073741824
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.83

land.lhs.true.59:                                 ; preds = %if.end.55
  %55 = load i32, i32* %multiline, align 4
  %tobool60 = icmp ne i32 %55, 0
  br i1 %tobool60, label %if.end.83, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true.59
  %56 = load i8*, i8** %bigend.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %56, i64 -1
  %57 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %57 to i32
  %cmp64 = icmp eq i32 %conv63, 10
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.74

land.lhs.true.66:                                 ; preds = %if.then.61
  %58 = load i8*, i8** %bigend.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %58, i64 -2
  %59 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %59 to i32
  %60 = load i8*, i8** %little, align 8
  %61 = load i8, i8* %60, align 1
  %conv69 = zext i8 %61 to i32
  %cmp70 = icmp eq i32 %conv68, %conv69
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %land.lhs.true.66
  %62 = load i8*, i8** %bigend.addr, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %62, i64 -2
  store i8* %add.ptr73, i8** %retval
  br label %return

if.end.74:                                        ; preds = %land.lhs.true.66, %if.then.61
  %63 = load i8*, i8** %bigend.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %63, i64 -1
  %64 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %64 to i32
  %65 = load i8*, i8** %little, align 8
  %66 = load i8, i8* %65, align 1
  %conv77 = zext i8 %66 to i32
  %cmp78 = icmp eq i32 %conv76, %conv77
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.74
  %67 = load i8*, i8** %bigend.addr, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %67, i64 -1
  store i8* %add.ptr81, i8** %retval
  br label %return

if.end.82:                                        ; preds = %if.end.74
  store i8* null, i8** %retval
  br label %return

if.end.83:                                        ; preds = %land.lhs.true.59, %if.end.55
  %68 = load i8*, i8** %little, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx84, align 1
  store i8 %69, i8* %c1, align 1
  %70 = load i8*, i8** %little, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx85, align 1
  store i8 %71, i8* %c2, align 1
  %72 = load i8*, i8** %big.addr, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %add.ptr86, i8** %s, align 8
  %73 = load i8*, i8** %bigend.addr, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %incdec.ptr87, i8** %bigend.addr, align 8
  %74 = load i8, i8* %c1, align 1
  %conv88 = zext i8 %74 to i32
  %75 = load i8, i8* %c2, align 1
  %conv89 = zext i8 %75 to i32
  %cmp90 = icmp ne i32 %conv88, %conv89
  br i1 %cmp90, label %if.then.92, label %if.end.134

if.then.92:                                       ; preds = %if.end.83
  br label %while.cond.93

while.cond.93:                                    ; preds = %if.end.132, %if.end.110, %if.then.92
  %76 = load i8*, i8** %s, align 8
  %77 = load i8*, i8** %bigend.addr, align 8
  %cmp94 = icmp ule i8* %76, %77
  br i1 %cmp94, label %while.body.96, label %while.end.133

while.body.96:                                    ; preds = %while.cond.93
  %78 = load i8*, i8** %s, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %79 to i32
  %80 = load i8, i8* %c2, align 1
  %conv99 = zext i8 %80 to i32
  %cmp100 = icmp eq i32 %conv98, %conv99
  br i1 %cmp100, label %if.then.102, label %if.end.112

if.then.102:                                      ; preds = %while.body.96
  %81 = load i8*, i8** %s, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %81, i64 -1
  %82 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %82 to i32
  %83 = load i8, i8* %c1, align 1
  %conv105 = zext i8 %83 to i32
  %cmp106 = icmp eq i32 %conv104, %conv105
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.then.102
  %84 = load i8*, i8** %s, align 8
  %add.ptr109 = getelementptr inbounds i8, i8* %84, i64 -1
  store i8* %add.ptr109, i8** %retval
  br label %return

if.end.110:                                       ; preds = %if.then.102
  %85 = load i8*, i8** %s, align 8
  %add.ptr111 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %add.ptr111, i8** %s, align 8
  br label %while.cond.93

if.end.112:                                       ; preds = %while.body.96
  br label %next_chars

next_chars:                                       ; preds = %if.else, %if.end.112
  %86 = load i8*, i8** %s, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %86, i64 0
  %87 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %87 to i32
  %88 = load i8, i8* %c1, align 1
  %conv115 = zext i8 %88 to i32
  %cmp116 = icmp eq i32 %conv114, %conv115
  br i1 %cmp116, label %if.then.118, label %if.else.130

if.then.118:                                      ; preds = %next_chars
  %89 = load i8*, i8** %s, align 8
  %90 = load i8*, i8** %bigend.addr, align 8
  %cmp119 = icmp eq i8* %89, %90
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.then.118
  br label %check_1char_anchor

if.end.122:                                       ; preds = %if.then.118
  %91 = load i8*, i8** %s, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %91, i64 1
  %92 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %92 to i32
  %93 = load i8, i8* %c2, align 1
  %conv125 = zext i8 %93 to i32
  %cmp126 = icmp eq i32 %conv124, %conv125
  br i1 %cmp126, label %if.then.128, label %if.else

if.then.128:                                      ; preds = %if.end.122
  %94 = load i8*, i8** %s, align 8
  store i8* %94, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end.122
  %95 = load i8*, i8** %s, align 8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr129, i8** %s, align 8
  br label %next_chars

if.else.130:                                      ; preds = %next_chars
  %96 = load i8*, i8** %s, align 8
  %add.ptr131 = getelementptr inbounds i8, i8* %96, i64 2
  store i8* %add.ptr131, i8** %s, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.130
  br label %while.cond.93

while.end.133:                                    ; preds = %while.cond.93
  br label %check_1char_anchor

if.end.134:                                       ; preds = %if.end.83
  br label %while.cond.135

while.cond.135:                                   ; preds = %if.end.167, %if.end.134
  %97 = load i8*, i8** %s, align 8
  %98 = load i8*, i8** %bigend.addr, align 8
  %cmp136 = icmp ule i8* %97, %98
  br i1 %cmp136, label %while.body.138, label %while.end.168

while.body.138:                                   ; preds = %while.cond.135
  %99 = load i8*, i8** %s, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %99, i64 0
  %100 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %100 to i32
  %101 = load i8, i8* %c1, align 1
  %conv141 = zext i8 %101 to i32
  %cmp142 = icmp eq i32 %conv140, %conv141
  br i1 %cmp142, label %if.then.144, label %if.else.165

if.then.144:                                      ; preds = %while.body.138
  %102 = load i8*, i8** %s, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %102, i64 -1
  %103 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %103 to i32
  %104 = load i8, i8* %c1, align 1
  %conv147 = zext i8 %104 to i32
  %cmp148 = icmp eq i32 %conv146, %conv147
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.then.144
  %105 = load i8*, i8** %s, align 8
  %add.ptr151 = getelementptr inbounds i8, i8* %105, i64 -1
  store i8* %add.ptr151, i8** %retval
  br label %return

if.end.152:                                       ; preds = %if.then.144
  %106 = load i8*, i8** %s, align 8
  %107 = load i8*, i8** %bigend.addr, align 8
  %cmp153 = icmp eq i8* %106, %107
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.152
  br label %check_1char_anchor

if.end.156:                                       ; preds = %if.end.152
  %108 = load i8*, i8** %s, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %108, i64 1
  %109 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %109 to i32
  %110 = load i8, i8* %c1, align 1
  %conv159 = zext i8 %110 to i32
  %cmp160 = icmp eq i32 %conv158, %conv159
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.end.156
  %111 = load i8*, i8** %s, align 8
  store i8* %111, i8** %retval
  br label %return

if.end.163:                                       ; preds = %if.end.156
  %112 = load i8*, i8** %s, align 8
  %add.ptr164 = getelementptr inbounds i8, i8* %112, i64 3
  store i8* %add.ptr164, i8** %s, align 8
  br label %if.end.167

if.else.165:                                      ; preds = %while.body.138
  %113 = load i8*, i8** %s, align 8
  %add.ptr166 = getelementptr inbounds i8, i8* %113, i64 2
  store i8* %add.ptr166, i8** %s, align 8
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.165, %if.end.163
  br label %while.cond.135

while.end.168:                                    ; preds = %while.cond.135
  br label %check_1char_anchor

check_1char_anchor:                               ; preds = %while.end.168, %if.then.155, %while.end.133, %if.then.121
  %114 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags169 = getelementptr inbounds %struct.sv, %struct.sv* %114, i32 0, i32 2
  %115 = load i32, i32* %sv_flags169, align 4
  %and170 = and i32 %115, 1073741824
  %tobool171 = icmp ne i32 %and170, 0
  br i1 %tobool171, label %land.lhs.true.172, label %if.end.178

land.lhs.true.172:                                ; preds = %check_1char_anchor
  %116 = load i8*, i8** %bigend.addr, align 8
  %117 = load i8, i8* %116, align 1
  %conv173 = zext i8 %117 to i32
  %118 = load i8*, i8** %little, align 8
  %119 = load i8, i8* %118, align 1
  %conv174 = zext i8 %119 to i32
  %cmp175 = icmp eq i32 %conv173, %conv174
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %land.lhs.true.172
  %120 = load i8*, i8** %bigend.addr, align 8
  store i8* %120, i8** %retval
  br label %return

if.end.178:                                       ; preds = %land.lhs.true.172, %check_1char_anchor
  store i8* null, i8** %retval
  br label %return

if.end.179:                                       ; preds = %if.end.20
  %121 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags180 = getelementptr inbounds %struct.sv, %struct.sv* %121, i32 0, i32 2
  %122 = load i32, i32* %sv_flags180, align 4
  %and181 = and i32 %122, 1073741824
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %land.lhs.true.183, label %if.end.221

land.lhs.true.183:                                ; preds = %if.end.179
  %123 = load i32, i32* %multiline, align 4
  %tobool184 = icmp ne i32 %123, 0
  br i1 %tobool184, label %if.end.221, label %if.then.185

if.then.185:                                      ; preds = %land.lhs.true.183
  %124 = load i8*, i8** %bigend.addr, align 8
  %125 = load i64, i64* %littlelen, align 8
  %idx.neg = sub i64 0, %125
  %add.ptr186 = getelementptr inbounds i8, i8* %124, i64 %idx.neg
  store i8* %add.ptr186, i8** %s, align 8
  %126 = load i8*, i8** %s, align 8
  %127 = load i8*, i8** %big.addr, align 8
  %cmp187 = icmp uge i8* %126, %127
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.206

land.lhs.true.189:                                ; preds = %if.then.185
  %128 = load i8*, i8** %bigend.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %128, i64 -1
  %129 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %129 to i32
  %cmp192 = icmp eq i32 %conv191, 10
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.206

land.lhs.true.194:                                ; preds = %land.lhs.true.189
  %130 = load i8*, i8** %s, align 8
  %131 = load i8, i8* %130, align 1
  %conv195 = zext i8 %131 to i32
  %132 = load i8*, i8** %little, align 8
  %133 = load i8, i8* %132, align 1
  %conv196 = zext i8 %133 to i32
  %cmp197 = icmp eq i32 %conv195, %conv196
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.206

land.lhs.true.199:                                ; preds = %land.lhs.true.194
  %134 = load i8*, i8** %s, align 8
  %add.ptr200 = getelementptr inbounds i8, i8* %134, i64 1
  %135 = load i8*, i8** %little, align 8
  %add.ptr201 = getelementptr inbounds i8, i8* %135, i64 1
  %136 = load i64, i64* %littlelen, align 8
  %sub202 = sub i64 %136, 2
  %call203 = call i32 @memcmp(i8* %add.ptr200, i8* %add.ptr201, i64 %sub202)
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.end.206, label %if.then.205

if.then.205:                                      ; preds = %land.lhs.true.199
  %137 = load i8*, i8** %s, align 8
  store i8* %137, i8** %retval
  br label %return

if.end.206:                                       ; preds = %land.lhs.true.199, %land.lhs.true.194, %land.lhs.true.189, %if.then.185
  %138 = load i8*, i8** %s, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %138, i64 1
  %139 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %139 to i32
  %140 = load i8*, i8** %little, align 8
  %141 = load i8, i8* %140, align 1
  %conv209 = zext i8 %141 to i32
  %cmp210 = icmp eq i32 %conv208, %conv209
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.220

land.lhs.true.212:                                ; preds = %if.end.206
  %142 = load i8*, i8** %s, align 8
  %add.ptr213 = getelementptr inbounds i8, i8* %142, i64 2
  %143 = load i8*, i8** %little, align 8
  %add.ptr214 = getelementptr inbounds i8, i8* %143, i64 1
  %144 = load i64, i64* %littlelen, align 8
  %sub215 = sub i64 %144, 2
  %call216 = call i32 @memcmp(i8* %add.ptr213, i8* %add.ptr214, i64 %sub215)
  %tobool217 = icmp ne i32 %call216, 0
  br i1 %tobool217, label %if.end.220, label %if.then.218

if.then.218:                                      ; preds = %land.lhs.true.212
  %145 = load i8*, i8** %s, align 8
  %add.ptr219 = getelementptr inbounds i8, i8* %145, i64 1
  store i8* %add.ptr219, i8** %retval
  br label %return

if.end.220:                                       ; preds = %land.lhs.true.212, %if.end.206
  store i8* null, i8** %retval
  br label %return

if.end.221:                                       ; preds = %land.lhs.true.183, %if.end.179
  %146 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags222 = getelementptr inbounds %struct.sv, %struct.sv* %146, i32 0, i32 2
  %147 = load i32, i32* %sv_flags222, align 4
  %and223 = and i32 %147, 255
  %cmp224 = icmp ne i32 %and223, 8
  br i1 %cmp224, label %if.then.230, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %if.end.221
  %148 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags227 = getelementptr inbounds %struct.sv, %struct.sv* %148, i32 0, i32 2
  %149 = load i32, i32* %sv_flags227, align 4
  %and228 = and i32 %149, -2147483648
  %tobool229 = icmp ne i32 %and228, 0
  br i1 %tobool229, label %if.end.255, label %if.then.230

if.then.230:                                      ; preds = %lor.lhs.false.226, %if.end.221
  %150 = load i8*, i8** %big.addr, align 8
  %151 = load i8*, i8** %bigend.addr, align 8
  %152 = load i8*, i8** %little, align 8
  %153 = load i8*, i8** %little, align 8
  %154 = load i64, i64* %littlelen, align 8
  %add.ptr231 = getelementptr inbounds i8, i8* %153, i64 %154
  %call232 = call i8* @Perl_ninstr(i8* %150, i8* %151, i8* %152, i8* %add.ptr231)
  store i8* %call232, i8** %b, align 8
  %155 = load i8*, i8** %b, align 8
  %tobool233 = icmp ne i8* %155, null
  br i1 %tobool233, label %if.end.254, label %land.lhs.true.234

land.lhs.true.234:                                ; preds = %if.then.230
  %156 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags235 = getelementptr inbounds %struct.sv, %struct.sv* %156, i32 0, i32 2
  %157 = load i32, i32* %sv_flags235, align 4
  %and236 = and i32 %157, 1073741824
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %if.then.238, label %if.end.254

if.then.238:                                      ; preds = %land.lhs.true.234
  %158 = load i8*, i8** %bigend.addr, align 8
  %159 = load i64, i64* %littlelen, align 8
  %idx.neg239 = sub i64 0, %159
  %add.ptr240 = getelementptr inbounds i8, i8* %158, i64 %idx.neg239
  %add.ptr241 = getelementptr inbounds i8, i8* %add.ptr240, i64 1
  store i8* %add.ptr241, i8** %s, align 8
  %160 = load i8*, i8** %s, align 8
  %161 = load i8, i8* %160, align 1
  %conv242 = zext i8 %161 to i32
  %162 = load i8*, i8** %little, align 8
  %163 = load i8, i8* %162, align 1
  %conv243 = zext i8 %163 to i32
  %cmp244 = icmp eq i32 %conv242, %conv243
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.253

land.lhs.true.246:                                ; preds = %if.then.238
  %164 = load i8*, i8** %s, align 8
  %add.ptr247 = getelementptr inbounds i8, i8* %164, i64 1
  %165 = load i8*, i8** %little, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %165, i64 1
  %166 = load i64, i64* %littlelen, align 8
  %sub249 = sub i64 %166, 2
  %call250 = call i32 @memcmp(i8* %add.ptr247, i8* %add.ptr248, i64 %sub249)
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %if.end.253, label %if.then.252

if.then.252:                                      ; preds = %land.lhs.true.246
  %167 = load i8*, i8** %s, align 8
  store i8* %167, i8** %retval
  br label %return

if.end.253:                                       ; preds = %land.lhs.true.246, %if.then.238
  store i8* null, i8** %retval
  br label %return

if.end.254:                                       ; preds = %land.lhs.true.234, %if.then.230
  %168 = load i8*, i8** %b, align 8
  store i8* %168, i8** %retval
  br label %return

if.end.255:                                       ; preds = %lor.lhs.false.226
  %169 = load i8*, i8** %little, align 8
  %170 = load i64, i64* %littlelen, align 8
  %add.ptr256 = getelementptr inbounds i8, i8* %169, i64 %170
  %add.ptr257 = getelementptr inbounds i8, i8* %add.ptr256, i64 2
  store i8* %add.ptr257, i8** %table, align 8
  %171 = load i64, i64* %littlelen, align 8
  %172 = load i8*, i8** %bigend.addr, align 8
  %173 = load i8*, i8** %big.addr, align 8
  %sub.ptr.lhs.cast258 = ptrtoint i8* %172 to i64
  %sub.ptr.rhs.cast259 = ptrtoint i8* %173 to i64
  %sub.ptr.sub260 = sub i64 %sub.ptr.lhs.cast258, %sub.ptr.rhs.cast259
  %cmp261 = icmp ugt i64 %171, %sub.ptr.sub260
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %if.end.255
  store i8* null, i8** %retval
  br label %return

if.end.264:                                       ; preds = %if.end.255
  %174 = load i64, i64* %littlelen, align 8
  %dec = add i64 %174, -1
  store i64 %dec, i64* %littlelen, align 8
  %175 = load i8*, i8** %big.addr, align 8
  %176 = load i64, i64* %littlelen, align 8
  %add.ptr265 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %add.ptr265, i8** %s, align 8
  %177 = load i64, i64* %littlelen, align 8
  %178 = load i8*, i8** %little, align 8
  %add.ptr266 = getelementptr inbounds i8, i8* %178, i64 %177
  store i8* %add.ptr266, i8** %little, align 8
  %179 = load i8*, i8** %little, align 8
  store i8* %179, i8** %oldlittle, align 8
  %180 = load i8*, i8** %s, align 8
  %181 = load i8*, i8** %bigend.addr, align 8
  %cmp267 = icmp ult i8* %180, %181
  br i1 %cmp267, label %if.then.269, label %if.end.300

if.then.269:                                      ; preds = %if.end.264
  br label %top2

top2:                                             ; preds = %if.then.297, %if.then.277, %if.then.269
  %182 = load i8*, i8** %s, align 8
  %183 = load i8, i8* %182, align 1
  %idxprom = zext i8 %183 to i64
  %184 = load i8*, i8** %table, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %184, i64 %idxprom
  %185 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %185 to i32
  store i32 %conv271, i32* %tmp, align 4
  %tobool272 = icmp ne i32 %conv271, 0
  br i1 %tobool272, label %if.then.273, label %if.else.279

if.then.273:                                      ; preds = %top2
  %186 = load i32, i32* %tmp, align 4
  %187 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %186 to i64
  %add.ptr274 = getelementptr inbounds i8, i8* %187, i64 %idx.ext
  store i8* %add.ptr274, i8** %s, align 8
  %188 = load i8*, i8** %bigend.addr, align 8
  %cmp275 = icmp ult i8* %add.ptr274, %188
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.then.273
  br label %top2

if.end.278:                                       ; preds = %if.then.273
  br label %check_end

if.else.279:                                      ; preds = %top2
  %189 = load i8*, i8** %s, align 8
  store i8* %189, i8** %olds, align 8
  %190 = load i64, i64* %littlelen, align 8
  %conv281 = trunc i64 %190 to i32
  store i32 %conv281, i32* %tmp, align 4
  br label %while.cond.282

while.cond.282:                                   ; preds = %if.then.292, %if.else.279
  %191 = load i32, i32* %tmp, align 4
  %dec283 = add nsw i32 %191, -1
  store i32 %dec283, i32* %tmp, align 4
  %tobool284 = icmp ne i32 %191, 0
  br i1 %tobool284, label %while.body.285, label %while.end.299

while.body.285:                                   ; preds = %while.cond.282
  %192 = load i8*, i8** %s, align 8
  %incdec.ptr286 = getelementptr inbounds i8, i8* %192, i32 -1
  store i8* %incdec.ptr286, i8** %s, align 8
  %193 = load i8, i8* %incdec.ptr286, align 1
  %conv287 = zext i8 %193 to i32
  %194 = load i8*, i8** %little, align 8
  %incdec.ptr288 = getelementptr inbounds i8, i8* %194, i32 -1
  store i8* %incdec.ptr288, i8** %little, align 8
  %195 = load i8, i8* %incdec.ptr288, align 1
  %conv289 = zext i8 %195 to i32
  %cmp290 = icmp eq i32 %conv287, %conv289
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %while.body.285
  br label %while.cond.282

if.end.293:                                       ; preds = %while.body.285
  %196 = load i8*, i8** %olds, align 8
  %add.ptr294 = getelementptr inbounds i8, i8* %196, i64 1
  store i8* %add.ptr294, i8** %s, align 8
  %197 = load i8*, i8** %oldlittle, align 8
  store i8* %197, i8** %little, align 8
  %198 = load i8*, i8** %s, align 8
  %199 = load i8*, i8** %bigend.addr, align 8
  %cmp295 = icmp ult i8* %198, %199
  br i1 %cmp295, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %if.end.293
  br label %top2

if.end.298:                                       ; preds = %if.end.293
  br label %check_end

while.end.299:                                    ; preds = %while.cond.282
  %200 = load i8*, i8** %s, align 8
  store i8* %200, i8** %retval
  br label %return

if.end.300:                                       ; preds = %if.end.264
  br label %check_end

check_end:                                        ; preds = %if.end.300, %if.end.298, %if.end.278
  %201 = load i8*, i8** %s, align 8
  %202 = load i8*, i8** %bigend.addr, align 8
  %cmp301 = icmp eq i8* %201, %202
  br i1 %cmp301, label %land.lhs.true.303, label %if.end.318

land.lhs.true.303:                                ; preds = %check_end
  %203 = load i8*, i8** %table, align 8
  %arrayidx304 = getelementptr inbounds i8, i8* %203, i64 -1
  %204 = load i8, i8* %arrayidx304, align 1
  %conv305 = zext i8 %204 to i32
  %and306 = and i32 %conv305, 15
  %tobool307 = icmp ne i32 %and306, 0
  br i1 %tobool307, label %land.lhs.true.308, label %if.end.318

land.lhs.true.308:                                ; preds = %land.lhs.true.303
  %205 = load i8*, i8** %bigend.addr, align 8
  %206 = load i64, i64* %littlelen, align 8
  %idx.neg309 = sub i64 0, %206
  %add.ptr310 = getelementptr inbounds i8, i8* %205, i64 %idx.neg309
  %207 = load i8*, i8** %oldlittle, align 8
  %208 = load i64, i64* %littlelen, align 8
  %idx.neg311 = sub i64 0, %208
  %add.ptr312 = getelementptr inbounds i8, i8* %207, i64 %idx.neg311
  %209 = load i64, i64* %littlelen, align 8
  %call313 = call i32 @memcmp(i8* %add.ptr310, i8* %add.ptr312, i64 %209)
  %tobool314 = icmp ne i32 %call313, 0
  br i1 %tobool314, label %if.end.318, label %if.then.315

if.then.315:                                      ; preds = %land.lhs.true.308
  %210 = load i8*, i8** %bigend.addr, align 8
  %211 = load i64, i64* %littlelen, align 8
  %idx.neg316 = sub i64 0, %211
  %add.ptr317 = getelementptr inbounds i8, i8* %210, i64 %idx.neg316
  store i8* %add.ptr317, i8** %retval
  br label %return

if.end.318:                                       ; preds = %land.lhs.true.308, %land.lhs.true.303, %check_end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.318, %if.then.315, %while.end.299, %if.then.263, %if.end.254, %if.end.253, %if.then.252, %if.end.220, %if.then.218, %if.then.205, %if.end.178, %if.then.177, %if.then.162, %if.then.150, %if.then.128, %if.then.108, %if.end.82, %if.then.80, %if.then.72, %if.then.54, %if.end.51, %if.then.50, %if.then.45, %if.end.37, %if.then.36, %if.end, %if.then.19
  %212 = load i8*, i8** %retval
  ret i8* %212
}

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_screaminstr(%struct.sv* %bigstr, %struct.sv* %littlestr, i32 %start_shift, i32 %end_shift, i32* %old_posp, i32 %last) #0 {
entry:
  %retval = alloca i8*, align 8
  %bigstr.addr = alloca %struct.sv*, align 8
  %littlestr.addr = alloca %struct.sv*, align 8
  %start_shift.addr = alloca i32, align 4
  %end_shift.addr = alloca i32, align 4
  %old_posp.addr = alloca i32*, align 8
  %last.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %x = alloca i8*, align 8
  %big = alloca i8*, align 8
  %pos = alloca i32, align 4
  %previous = alloca i32, align 4
  %first = alloca i32, align 4
  %little = alloca i8*, align 8
  %stop_pos = alloca i32, align 4
  %littleend = alloca i8*, align 8
  %found = alloca i32, align 4
  store %struct.sv* %bigstr, %struct.sv** %bigstr.addr, align 8
  store %struct.sv* %littlestr, %struct.sv** %littlestr.addr, align 8
  store i32 %start_shift, i32* %start_shift.addr, align 4
  store i32 %end_shift, i32* %end_shift.addr, align 4
  store i32* %old_posp, i32** %old_posp.addr, align 8
  store i32 %last, i32* %last.addr, align 4
  store i32 0, i32* %found, align 4
  %0 = load i32*, i32** %old_posp.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpvbm*
  %xbm_rare = getelementptr inbounds %struct.xpvbm, %struct.xpvbm* %4, i32 0, i32 9
  %5 = load i8, i8* %xbm_rare, align 1
  %idxprom = zext i8 %5 to i64
  %6 = load i32*, i32** @PL_screamfirst, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %pos, align 4
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end.19

cond.false:                                       ; preds = %entry
  %8 = load i32*, i32** %old_posp.addr, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %pos, align 4
  %10 = load i32, i32* %pos, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load i32*, i32** @PL_screamnext, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 %idxprom2
  %12 = load i32, i32* %arrayidx3, align 4
  %13 = load i32, i32* %pos, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %pos, align 4
  %cmp4 = icmp eq i32 %add, 0
  br i1 %cmp4, label %if.then, label %if.end.19

if.then:                                          ; preds = %cond.false, %cond.true
  br label %cant_find

cant_find:                                        ; preds = %if.then.54, %if.then
  %14 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any5, align 8
  %16 = bitcast i8* %15 to %struct.xpvbm*
  %xbm_rare6 = getelementptr inbounds %struct.xpvbm, %struct.xpvbm* %16, i32 0, i32 9
  %17 = load i8, i8* %xbm_rare6, align 1
  %conv = zext i8 %17 to i32
  %cmp7 = icmp eq i32 %conv, 10
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cant_find
  %18 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any9, align 8
  %20 = bitcast i8* %19 to %struct.xpvbm*
  %xbm_previous = getelementptr inbounds %struct.xpvbm, %struct.xpvbm* %20, i32 0, i32 8
  %21 = load i16, i16* %xbm_previous, align 2
  %conv10 = zext i16 %21 to i64
  %22 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any11 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any11, align 8
  %24 = bitcast i8* %23 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %24, i32 0, i32 1
  %25 = load i64, i64* %xpv_cur, align 8
  %sub = sub i64 %25, 1
  %cmp12 = icmp eq i64 %conv10, %sub
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true
  %26 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any15, align 8
  %28 = bitcast i8* %27 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 0
  %29 = load i8*, i8** %xpv_pv, align 8
  store i8* %29, i8** %little, align 8
  %30 = load i8*, i8** %little, align 8
  %31 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any16, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_cur17 = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 1
  %34 = load i64, i64* %xpv_cur17, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %34
  store i8* %add.ptr, i8** %littleend, align 8
  %35 = load i8*, i8** %little, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %little, align 8
  %36 = load i8, i8* %35, align 1
  %conv18 = zext i8 %36 to i32
  store i32 %conv18, i32* %first, align 4
  br label %check_tail

if.end:                                           ; preds = %land.lhs.true, %cant_find
  store i8* null, i8** %retval
  br label %return

if.end.19:                                        ; preds = %cond.false, %cond.true
  %37 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any20 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 0
  %38 = load i8*, i8** %sv_any20, align 8
  %39 = bitcast i8* %38 to %struct.xpv*
  %xpv_pv21 = getelementptr inbounds %struct.xpv, %struct.xpv* %39, i32 0, i32 0
  %40 = load i8*, i8** %xpv_pv21, align 8
  store i8* %40, i8** %little, align 8
  %41 = load i8*, i8** %little, align 8
  %42 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any22 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 0
  %43 = load i8*, i8** %sv_any22, align 8
  %44 = bitcast i8* %43 to %struct.xpv*
  %xpv_cur23 = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 1
  %45 = load i64, i64* %xpv_cur23, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %41, i64 %45
  store i8* %add.ptr24, i8** %littleend, align 8
  %46 = load i8*, i8** %little, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr25, i8** %little, align 8
  %47 = load i8, i8* %46, align 1
  %conv26 = zext i8 %47 to i32
  store i32 %conv26, i32* %first, align 4
  %48 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any27 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 0
  %49 = load i8*, i8** %sv_any27, align 8
  %50 = bitcast i8* %49 to %struct.xpvbm*
  %xbm_previous28 = getelementptr inbounds %struct.xpvbm, %struct.xpvbm* %50, i32 0, i32 8
  %51 = load i16, i16* %xbm_previous28, align 2
  %conv29 = zext i16 %51 to i32
  store i32 %conv29, i32* %previous, align 4
  %52 = load %struct.sv*, %struct.sv** %bigstr.addr, align 8
  %sv_any30 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 0
  %53 = load i8*, i8** %sv_any30, align 8
  %54 = bitcast i8* %53 to %struct.xpv*
  %xpv_pv31 = getelementptr inbounds %struct.xpv, %struct.xpv* %54, i32 0, i32 0
  %55 = load i8*, i8** %xpv_pv31, align 8
  store i8* %55, i8** %big, align 8
  %56 = load %struct.sv*, %struct.sv** %bigstr.addr, align 8
  %sv_any32 = getelementptr inbounds %struct.sv, %struct.sv* %56, i32 0, i32 0
  %57 = load i8*, i8** %sv_any32, align 8
  %58 = bitcast i8* %57 to %struct.xpv*
  %xpv_cur33 = getelementptr inbounds %struct.xpv, %struct.xpv* %58, i32 0, i32 1
  %59 = load i64, i64* %xpv_cur33, align 8
  %60 = load i32, i32* %end_shift.addr, align 4
  %conv34 = sext i32 %60 to i64
  %sub35 = sub i64 %59, %conv34
  %61 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_any36 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 0
  %62 = load i8*, i8** %sv_any36, align 8
  %63 = bitcast i8* %62 to %struct.xpv*
  %xpv_cur37 = getelementptr inbounds %struct.xpv, %struct.xpv* %63, i32 0, i32 1
  %64 = load i64, i64* %xpv_cur37, align 8
  %sub38 = sub i64 %64, 1
  %65 = load i32, i32* %previous, align 4
  %conv39 = sext i32 %65 to i64
  %sub40 = sub i64 %sub38, %conv39
  %sub41 = sub i64 %sub35, %sub40
  %conv42 = trunc i64 %sub41 to i32
  store i32 %conv42, i32* %stop_pos, align 4
  %66 = load i32, i32* %previous, align 4
  %67 = load i32, i32* %start_shift.addr, align 4
  %add43 = add nsw i32 %66, %67
  %68 = load i32, i32* %stop_pos, align 4
  %cmp44 = icmp sgt i32 %add43, %68
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.19
  store i8* null, i8** %retval
  br label %return

if.end.47:                                        ; preds = %if.end.19
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %if.end.47
  %69 = load i32, i32* %pos, align 4
  %70 = load i32, i32* %previous, align 4
  %71 = load i32, i32* %start_shift.addr, align 4
  %add48 = add nsw i32 %70, %71
  %cmp49 = icmp slt i32 %69, %add48
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %72 = load i32, i32* %pos, align 4
  %idxprom51 = sext i32 %72 to i64
  %73 = load i32*, i32** @PL_screamnext, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %73, i64 %idxprom51
  %74 = load i32, i32* %arrayidx52, align 4
  %75 = load i32, i32* %pos, align 4
  %add53 = add nsw i32 %75, %74
  store i32 %add53, i32* %pos, align 4
  %tobool = icmp ne i32 %add53, 0
  br i1 %tobool, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %while.body
  br label %cant_find

if.end.55:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = load i32, i32* %previous, align 4
  %77 = load i8*, i8** %big, align 8
  %idx.ext = sext i32 %76 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr56 = getelementptr inbounds i8, i8* %77, i64 %idx.neg
  store i8* %add.ptr56, i8** %big, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %78 = load i32, i32* %pos, align 4
  %79 = load i32, i32* %stop_pos, align 4
  %cmp57 = icmp sge i32 %78, %79
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %do.body
  br label %do.end

if.end.60:                                        ; preds = %do.body
  %80 = load i32, i32* %pos, align 4
  %idxprom61 = sext i32 %80 to i64
  %81 = load i8*, i8** %big, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %81, i64 %idxprom61
  %82 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %82 to i32
  %83 = load i32, i32* %first, align 4
  %cmp64 = icmp ne i32 %conv63, %83
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.60
  br label %do.cond

if.end.67:                                        ; preds = %if.end.60
  %84 = load i8*, i8** %big, align 8
  %85 = load i32, i32* %pos, align 4
  %idx.ext68 = sext i32 %85 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %84, i64 %idx.ext68
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr69, i64 1
  store i8* %add.ptr70, i8** %x, align 8
  %86 = load i8*, i8** %little, align 8
  store i8* %86, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.81, %if.end.67
  %87 = load i8*, i8** %s, align 8
  %88 = load i8*, i8** %littleend, align 8
  %cmp71 = icmp ult i8* %87, %88
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i8*, i8** %s, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr73, i8** %s, align 8
  %90 = load i8, i8* %89, align 1
  %conv74 = zext i8 %90 to i32
  %91 = load i8*, i8** %x, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr75, i8** %x, align 8
  %92 = load i8, i8* %91, align 1
  %conv76 = zext i8 %92 to i32
  %cmp77 = icmp ne i32 %conv74, %conv76
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %for.body
  %93 = load i8*, i8** %s, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %incdec.ptr80, i8** %s, align 8
  br label %for.end

if.end.81:                                        ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %if.then.79, %for.cond
  %94 = load i8*, i8** %s, align 8
  %95 = load i8*, i8** %littleend, align 8
  %cmp82 = icmp eq i8* %94, %95
  br i1 %cmp82, label %if.then.84, label %if.end.90

if.then.84:                                       ; preds = %for.end
  %96 = load i32, i32* %pos, align 4
  %97 = load i32*, i32** %old_posp.addr, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %last.addr, align 4
  %tobool85 = icmp ne i32 %98, 0
  br i1 %tobool85, label %if.end.89, label %if.then.86

if.then.86:                                       ; preds = %if.then.84
  %99 = load i8*, i8** %big, align 8
  %100 = load i32, i32* %pos, align 4
  %idx.ext87 = sext i32 %100 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %99, i64 %idx.ext87
  store i8* %add.ptr88, i8** %retval
  br label %return

if.end.89:                                        ; preds = %if.then.84
  store i32 1, i32* %found, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %for.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.90, %if.then.66
  %101 = load i32, i32* %pos, align 4
  %idxprom91 = sext i32 %101 to i64
  %102 = load i32*, i32** @PL_screamnext, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %102, i64 %idxprom91
  %103 = load i32, i32* %arrayidx92, align 4
  %104 = load i32, i32* %pos, align 4
  %add93 = add nsw i32 %104, %103
  store i32 %add93, i32* %pos, align 4
  %tobool94 = icmp ne i32 %add93, 0
  br i1 %tobool94, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.59
  %105 = load i32, i32* %last.addr, align 4
  %tobool95 = icmp ne i32 %105, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.101

land.lhs.true.96:                                 ; preds = %do.end
  %106 = load i32, i32* %found, align 4
  %tobool97 = icmp ne i32 %106, 0
  br i1 %tobool97, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %land.lhs.true.96
  %107 = load i8*, i8** %big, align 8
  %108 = load i32*, i32** %old_posp.addr, align 8
  %109 = load i32, i32* %108, align 4
  %idx.ext99 = sext i32 %109 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %107, i64 %idx.ext99
  store i8* %add.ptr100, i8** %retval
  br label %return

if.end.101:                                       ; preds = %land.lhs.true.96, %do.end
  br label %check_tail

check_tail:                                       ; preds = %if.end.101, %if.then.14
  %110 = load %struct.sv*, %struct.sv** %littlestr.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %110, i32 0, i32 2
  %111 = load i32, i32* %sv_flags, align 4
  %and = and i32 %111, 1073741824
  %tobool102 = icmp ne i32 %and, 0
  br i1 %tobool102, label %lor.lhs.false, label %if.then.105

lor.lhs.false:                                    ; preds = %check_tail
  %112 = load i32, i32* %end_shift.addr, align 4
  %cmp103 = icmp sgt i32 %112, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %lor.lhs.false, %check_tail
  store i8* null, i8** %retval
  br label %return

if.end.106:                                       ; preds = %lor.lhs.false
  %113 = load %struct.sv*, %struct.sv** %bigstr.addr, align 8
  %sv_any107 = getelementptr inbounds %struct.sv, %struct.sv* %113, i32 0, i32 0
  %114 = load i8*, i8** %sv_any107, align 8
  %115 = bitcast i8* %114 to %struct.xpv*
  %xpv_pv108 = getelementptr inbounds %struct.xpv, %struct.xpv* %115, i32 0, i32 0
  %116 = load i8*, i8** %xpv_pv108, align 8
  %117 = load %struct.sv*, %struct.sv** %bigstr.addr, align 8
  %sv_any109 = getelementptr inbounds %struct.sv, %struct.sv* %117, i32 0, i32 0
  %118 = load i8*, i8** %sv_any109, align 8
  %119 = bitcast i8* %118 to %struct.xpv*
  %xpv_cur110 = getelementptr inbounds %struct.xpv, %struct.xpv* %119, i32 0, i32 1
  %120 = load i64, i64* %xpv_cur110, align 8
  %add.ptr111 = getelementptr inbounds i8, i8* %116, i64 %120
  store i8* %add.ptr111, i8** %big, align 8
  %121 = load i8*, i8** %littleend, align 8
  %122 = load i8*, i8** %little, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %121 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %122 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv112 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv112, i32* %stop_pos, align 4
  %123 = load i32, i32* %stop_pos, align 4
  %cmp113 = icmp eq i32 %123, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.106
  %124 = load i8*, i8** %big, align 8
  store i8* %124, i8** %retval
  br label %return

if.end.116:                                       ; preds = %if.end.106
  %125 = load i32, i32* %stop_pos, align 4
  %126 = load i8*, i8** %big, align 8
  %idx.ext117 = sext i32 %125 to i64
  %idx.neg118 = sub i64 0, %idx.ext117
  %add.ptr119 = getelementptr inbounds i8, i8* %126, i64 %idx.neg118
  store i8* %add.ptr119, i8** %big, align 8
  %127 = load i8*, i8** %big, align 8
  %128 = load i8, i8* %127, align 1
  %conv120 = zext i8 %128 to i32
  %129 = load i32, i32* %first, align 4
  %cmp121 = icmp eq i32 %conv120, %129
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.132

land.lhs.true.123:                                ; preds = %if.end.116
  %130 = load i32, i32* %stop_pos, align 4
  %cmp124 = icmp eq i32 %130, 1
  br i1 %cmp124, label %if.then.131, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %land.lhs.true.123
  %131 = load i8*, i8** %big, align 8
  %add.ptr127 = getelementptr inbounds i8, i8* %131, i64 1
  %132 = load i8*, i8** %little, align 8
  %133 = load i32, i32* %stop_pos, align 4
  %sub128 = sub nsw i32 %133, 1
  %conv129 = sext i32 %sub128 to i64
  %call = call i32 @memcmp(i8* %add.ptr127, i8* %132, i64 %conv129)
  %tobool130 = icmp ne i32 %call, 0
  br i1 %tobool130, label %if.end.132, label %if.then.131

if.then.131:                                      ; preds = %lor.lhs.false.126, %land.lhs.true.123
  %134 = load i8*, i8** %big, align 8
  store i8* %134, i8** %retval
  br label %return

if.end.132:                                       ; preds = %lor.lhs.false.126, %if.end.116
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.132, %if.then.131, %if.then.115, %if.then.105, %if.then.98, %if.then.86, %if.then.46, %if.end
  %135 = load i8*, i8** %retval
  ret i8* %135
}

; Function Attrs: nounwind uwtable
define i32 @Perl_ibcmp(i8* %s1, i8* %s2, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %a, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %b, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %len.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %a, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b, align 8
  %6 = load i8, i8* %5, align 1
  %conv1 = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, %conv1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %7 = load i8*, i8** %a, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = zext i8 %8 to i32
  %9 = load i8*, i8** %b, align 8
  %10 = load i8, i8* %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_fold, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv3, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %12 = load i8*, i8** %a, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %a, align 8
  %13 = load i8*, i8** %b, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr7, i8** %b, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @Perl_ibcmp_locale(i8* %s1, i8* %s2, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %a, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %b, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %len.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %a, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b, align 8
  %6 = load i8, i8* %5, align 1
  %conv1 = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, %conv1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %7 = load i8*, i8** %a, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = zext i8 %8 to i32
  %9 = load i8*, i8** %b, align 8
  %10 = load i8, i8* %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_fold_locale, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv3, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %12 = load i8*, i8** %a, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %a, align 8
  %13 = load i8*, i8** %b, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr7, i8** %b, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i8* @Perl_savepv(i8* %pv) #0 {
entry:
  %retval = alloca i8*, align 8
  %pv.addr = alloca i8*, align 8
  %newaddr = alloca i8*, align 8
  store i8* %pv, i8** %pv.addr, align 8
  %0 = load i8*, i8** %pv.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %pv.addr, align 8
  %call = call i64 @strlen(i8* %1)
  %add = add i64 %call, 1
  %mul = mul i64 %add, 1
  %call1 = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call1, i8** %newaddr, align 8
  %2 = load i8*, i8** %newaddr, align 8
  %3 = load i8*, i8** %pv.addr, align 8
  %call2 = call i8* @strcpy(i8* %2, i8* %3)
  store i8* %call2, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_savepvn(i8* %pv, i32 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %pv.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %newaddr = alloca i8*, align 8
  store i8* %pv, i8** %pv.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call, i8** %newaddr, align 8
  %1 = load i8*, i8** %pv.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %len.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %newaddr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %4 = load i8*, i8** %newaddr, align 8
  %5 = load i8*, i8** %pv.addr, align 8
  %6 = load i32, i32* %len.addr, align 4
  %conv1 = sext i32 %6 to i64
  %mul2 = mul i64 %conv1, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %mul2, i32 1, i1 false)
  store i8* %4, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %newaddr, align 8
  %8 = load i32, i32* %len.addr, align 4
  %add3 = add nsw i32 %8, 1
  %conv4 = sext i32 %add3 to i64
  %mul5 = mul i64 %conv4, 1
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %mul5, i32 1, i1 false)
  store i8* %7, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i8* @Perl_savesharedpv(i8* %pv) #0 {
entry:
  %retval = alloca i8*, align 8
  %pv.addr = alloca i8*, align 8
  %newaddr = alloca i8*, align 8
  store i8* %pv, i8** %pv.addr, align 8
  %0 = load i8*, i8** %pv.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %pv.addr, align 8
  %call = call i64 @strlen(i8* %1)
  %add = add i64 %call, 1
  %call1 = call i8* @malloc(i64 %add)
  store i8* %call1, i8** %newaddr, align 8
  %2 = load i8*, i8** %newaddr, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %if.end.22, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool4 = icmp ne %struct.gv* %3, null
  br i1 %tobool4, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.3
  %4 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.5, label %cond.false

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %6, i32 0, i32 0
  %7 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %7, i32 0, i32 7
  %8 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %8, i32 0, i32 2
  %9 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool6 = icmp ne %struct.io* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %10 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %10, i32 0, i32 0
  %11 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_gp9 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %11, i32 0, i32 7
  %12 = load %struct.gp*, %struct.gp** %xgv_gp9, align 8
  %gp_io10 = getelementptr inbounds %struct.gp, %struct.gp* %12, i32 0, i32 2
  %13 = load %struct.io*, %struct.io** %gp_io10, align 8
  %sv_any11 = getelementptr inbounds %struct.io, %struct.io* %13, i32 0, i32 0
  %14 = load %struct.xpvio*, %struct.xpvio** %sv_any11, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %14, i32 0, i32 8
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool12 = icmp ne %struct._PerlIO** %15, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.7
  %16 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any13 = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any13, align 8
  %xgv_gp14 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp14, align 8
  %gp_io15 = getelementptr inbounds %struct.gp, %struct.gp* %18, i32 0, i32 2
  %19 = load %struct.io*, %struct.io** %gp_io15, align 8
  %sv_any16 = getelementptr inbounds %struct.io, %struct.io* %19, i32 0, i32 0
  %20 = load %struct.xpvio*, %struct.xpvio** %sv_any16, align 8
  %xio_ofp17 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %20, i32 0, i32 8
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp17, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.7, %land.lhs.true.5, %land.lhs.true, %if.then.3
  %call18 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %21, %cond.true ], [ %call18, %cond.false ]
  %call19 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %cond)
  %call20 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_mem, i32 0, i32 0))
  %call21 = call i64 @write(i32 %call19, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_mem, i32 0, i32 0), i64 %call20)
  call void @Perl_my_exit(i32 1)
  br label %if.end.22

if.end.22:                                        ; preds = %cond.end, %if.end
  %22 = load i8*, i8** %newaddr, align 8
  %23 = load i8*, i8** %pv.addr, align 8
  %call23 = call i8* @strcpy(i8* %22, i8* %23)
  store i8* %call23, i8** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  %24 = load i8*, i8** %retval
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define i8* @Perl_savesvpv(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %pv = alloca i8*, align 8
  %newaddr = alloca i8*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
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
  store i8* %cond, i8** %pv, align 8
  %11 = load i64, i64* %len, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %len, align 8
  %12 = load i64, i64* %len, align 8
  %mul = mul i64 %12, 1
  %call2 = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call2, i8** %newaddr, align 8
  %13 = load i8*, i8** %newaddr, align 8
  %14 = load i8*, i8** %pv, align 8
  %15 = load i64, i64* %len, align 8
  %mul3 = mul i64 %15, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %mul3, i32 1, i1 false)
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define i8* @Perl_form(i8* %pat, ...) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %retval1 = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %pat, i8** %pat.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %0 = load i8*, i8** %pat.addr, align 8
  %call = call i8* @Perl_vform(i8* %0, [1 x %struct.__va_list_tag]* %args)
  store i8* %call, i8** %retval1, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load i8*, i8** %retval1, align 8
  ret i8* %1
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @Perl_vform(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %args.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %sv = alloca %struct.sv*, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %call = call %struct.sv* @S_mess_alloc()
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %0 = load %struct.sv*, %struct.sv** %sv, align 8
  %1 = load i8*, i8** %pat.addr, align 8
  %2 = load i8*, i8** %pat.addr, align 8
  %call1 = call i64 @strlen(i8* %2)
  %3 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args.addr, align 8
  call void @Perl_sv_vsetpvfn(%struct.sv* %0, i8* %1, i64 %call1, [1 x %struct.__va_list_tag]* %3, %struct.sv** null, i32 0, i8* null)
  %4 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %6, i32 0, i32 0
  %7 = load i8*, i8** %xpv_pv, align 8
  ret i8* %7
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.sv* @S_mess_alloc() #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  %any = alloca %struct.xpvmg*, align 8
  %0 = load i8, i8* @PL_dirty, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 0)
  %call1 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  store %struct.sv* %call1, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_mess_sv, align 8
  %tobool2 = icmp ne %struct.sv* %1, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_mess_sv, align 8
  store %struct.sv* %2, %struct.sv** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i8* @Perl_safesysmalloc(i64 16)
  %3 = bitcast i8* %call5 to %struct.sv*
  store %struct.sv* %3, %struct.sv** %sv, align 8
  %call6 = call i8* @Perl_safesysmalloc(i64 56)
  %4 = bitcast i8* %call6 to %struct.xpvmg*
  store %struct.xpvmg* %4, %struct.xpvmg** %any, align 8
  %5 = load %struct.xpvmg*, %struct.xpvmg** %any, align 8
  %6 = bitcast %struct.xpvmg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 56, i32 1, i1 false)
  %7 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  store i32 7, i32* %sv_flags, align 4
  %8 = load %struct.xpvmg*, %struct.xpvmg** %any, align 8
  %9 = bitcast %struct.xpvmg* %8 to i8*
  %10 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  store i8* %9, i8** %sv_any, align 8
  %11 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 1
  store i32 1073741824, i32* %sv_refcnt, align 4
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %12, %struct.sv** @PL_mess_sv, align 8
  %13 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %13, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %14 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %14
}

declare void @Perl_sv_vsetpvfn(%struct.sv*, i8*, i64, [1 x %struct.__va_list_tag]*, %struct.sv**, i32, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_mess(i8* %pat, ...) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %retval1 = alloca %struct.sv*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %pat, i8** %pat.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %0 = load i8*, i8** %pat.addr, align 8
  %call = call %struct.sv* @Perl_vmess(i8* %0, [1 x %struct.__va_list_tag]* %args)
  store %struct.sv* %call, %struct.sv** %retval1, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load %struct.sv*, %struct.sv** %retval1, align 8
  ret %struct.sv* %1
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_vmess(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %args.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %sv = alloca %struct.sv*, align 8
  %cop = alloca %struct.cop*, align 8
  %line_mode = alloca i8, align 1
  store i8* %pat, i8** %pat.addr, align 8
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %call = call %struct.sv* @S_mess_alloc()
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %0 = load %struct.sv*, %struct.sv** %sv, align 8
  %1 = load i8*, i8** %pat.addr, align 8
  %2 = load i8*, i8** %pat.addr, align 8
  %call1 = call i64 @strlen(i8* %2)
  %3 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args.addr, align 8
  call void @Perl_sv_vsetpvfn(%struct.sv* %0, i8* %1, i64 %call1, [1 x %struct.__va_list_tag]* %3, %struct.sv** null, i32 0, i8* null)
  %4 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %6, i32 0, i32 1
  %7 = load i64, i64* %xpv_cur, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any2 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any2, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 0
  %11 = load i8*, i8** %xpv_pv, align 8
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 0
  %13 = load i8*, i8** %sv_any3, align 8
  %14 = bitcast i8* %13 to %struct.xpv*
  %xpv_cur4 = getelementptr inbounds %struct.xpv, %struct.xpv* %14, i32 0, i32 1
  %15 = load i64, i64* %xpv_cur4, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %15
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %16 = load i8, i8* %add.ptr5, align 1
  %conv = sext i8 %16 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.end.93

if.then:                                          ; preds = %lor.lhs.false, %entry
  %17 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %18 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_sibling = getelementptr inbounds %struct.cop, %struct.cop* %18, i32 0, i32 1
  %19 = load %struct.op*, %struct.op** %op_sibling, align 8
  %call7 = call %struct.cop* @S_closest_cop(%struct.cop* %17, %struct.op* %19)
  store %struct.cop* %call7, %struct.cop** %cop, align 8
  %20 = load %struct.cop*, %struct.cop** %cop, align 8
  %tobool8 = icmp ne %struct.cop* %20, null
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %21 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  store %struct.cop* %21, %struct.cop** %cop, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %22 = load %struct.cop*, %struct.cop** %cop, align 8
  %cop_line = getelementptr inbounds %struct.cop, %struct.cop* %22, i32 0, i32 13
  %23 = load i32, i32* %cop_line, align 4
  %tobool10 = icmp ne i32 %23, 0
  br i1 %tobool10, label %if.then.11, label %if.end.32

if.then.11:                                       ; preds = %if.end
  %24 = load %struct.sv*, %struct.sv** %sv, align 8
  %25 = load %struct.cop*, %struct.cop** %cop, align 8
  %cop_filegv = getelementptr inbounds %struct.cop, %struct.cop* %25, i32 0, i32 10
  %26 = load %struct.gv*, %struct.gv** %cop_filegv, align 8
  %tobool12 = icmp ne %struct.gv* %26, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %27 = load %struct.cop*, %struct.cop** %cop, align 8
  %cop_filegv13 = getelementptr inbounds %struct.cop, %struct.cop* %27, i32 0, i32 10
  %28 = load %struct.gv*, %struct.gv** %cop_filegv13, align 8
  %sv_any14 = getelementptr inbounds %struct.gv, %struct.gv* %28, i32 0, i32 0
  %29 = load %struct.xpvgv*, %struct.xpvgv** %sv_any14, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %29, i32 0, i32 7
  %30 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %30, i32 0, i32 0
  %31 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool15 = icmp ne %struct.sv* %31, null
  br i1 %tobool15, label %cond.true.16, label %cond.false.27

cond.false:                                       ; preds = %if.then.11
  br i1 false, label %cond.true.16, label %cond.false.27

cond.true.16:                                     ; preds = %cond.false, %cond.true
  %32 = load %struct.cop*, %struct.cop** %cop, align 8
  %cop_filegv17 = getelementptr inbounds %struct.cop, %struct.cop* %32, i32 0, i32 10
  %33 = load %struct.gv*, %struct.gv** %cop_filegv17, align 8
  %tobool18 = icmp ne %struct.gv* %33, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.24

cond.true.19:                                     ; preds = %cond.true.16
  %34 = load %struct.cop*, %struct.cop** %cop, align 8
  %cop_filegv20 = getelementptr inbounds %struct.cop, %struct.cop* %34, i32 0, i32 10
  %35 = load %struct.gv*, %struct.gv** %cop_filegv20, align 8
  %sv_any21 = getelementptr inbounds %struct.gv, %struct.gv* %35, i32 0, i32 0
  %36 = load %struct.xpvgv*, %struct.xpvgv** %sv_any21, align 8
  %xgv_gp22 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %36, i32 0, i32 7
  %37 = load %struct.gp*, %struct.gp** %xgv_gp22, align 8
  %gp_sv23 = getelementptr inbounds %struct.gp, %struct.gp* %37, i32 0, i32 0
  %38 = load %struct.sv*, %struct.sv** %gp_sv23, align 8
  br label %cond.end

cond.false.24:                                    ; preds = %cond.true.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false.24, %cond.true.19
  %cond = phi %struct.sv* [ %38, %cond.true.19 ], [ null, %cond.false.24 ]
  %sv_any25 = getelementptr inbounds %struct.sv, %struct.sv* %cond, i32 0, i32 0
  %39 = load i8*, i8** %sv_any25, align 8
  %40 = bitcast i8* %39 to %struct.xpv*
  %xpv_pv26 = getelementptr inbounds %struct.xpv, %struct.xpv* %40, i32 0, i32 0
  %41 = load i8*, i8** %xpv_pv26, align 8
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.false, %cond.true
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.end
  %cond29 = phi i8* [ %41, %cond.end ], [ null, %cond.false.27 ]
  %42 = load %struct.cop*, %struct.cop** %cop, align 8
  %cop_line30 = getelementptr inbounds %struct.cop, %struct.cop* %42, i32 0, i32 13
  %43 = load i32, i32* %cop_line30, align 4
  %conv31 = zext i32 %43 to i64
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %cond29, i64 %conv31)
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end.28, %if.end
  %44 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %tobool33 = icmp ne %struct.gv* %44, null
  br i1 %tobool33, label %land.lhs.true, label %cond.false.44

land.lhs.true:                                    ; preds = %if.end.32
  %45 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %46 = bitcast %struct.gv* %45 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 2
  %47 = load i32, i32* %sv_flags, align 4
  %and = and i32 %47, 255
  %cmp34 = icmp eq i32 %and, 13
  br i1 %cmp34, label %land.lhs.true.36, label %cond.false.44

land.lhs.true.36:                                 ; preds = %land.lhs.true
  %48 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any37 = getelementptr inbounds %struct.gv, %struct.gv* %48, i32 0, i32 0
  %49 = load %struct.xpvgv*, %struct.xpvgv** %sv_any37, align 8
  %xgv_gp38 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %49, i32 0, i32 7
  %50 = load %struct.gp*, %struct.gp** %xgv_gp38, align 8
  %tobool39 = icmp ne %struct.gp* %50, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.44

cond.true.40:                                     ; preds = %land.lhs.true.36
  %51 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any41 = getelementptr inbounds %struct.gv, %struct.gv* %51, i32 0, i32 0
  %52 = load %struct.xpvgv*, %struct.xpvgv** %sv_any41, align 8
  %xgv_gp42 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %52, i32 0, i32 7
  %53 = load %struct.gp*, %struct.gp** %xgv_gp42, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %53, i32 0, i32 2
  %54 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool43 = icmp ne %struct.io* %54, null
  br i1 %tobool43, label %land.lhs.true.45, label %if.end.89

cond.false.44:                                    ; preds = %land.lhs.true.36, %land.lhs.true, %if.end.32
  br i1 false, label %land.lhs.true.45, label %if.end.89

land.lhs.true.45:                                 ; preds = %cond.false.44, %cond.true.40
  %55 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any46 = getelementptr inbounds %struct.gv, %struct.gv* %55, i32 0, i32 0
  %56 = load %struct.xpvgv*, %struct.xpvgv** %sv_any46, align 8
  %xgv_gp47 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %56, i32 0, i32 7
  %57 = load %struct.gp*, %struct.gp** %xgv_gp47, align 8
  %gp_io48 = getelementptr inbounds %struct.gp, %struct.gp* %57, i32 0, i32 2
  %58 = load %struct.io*, %struct.io** %gp_io48, align 8
  %sv_any49 = getelementptr inbounds %struct.io, %struct.io* %58, i32 0, i32 0
  %59 = load %struct.xpvio*, %struct.xpvio** %sv_any49, align 8
  %xio_lines = getelementptr inbounds %struct.xpvio, %struct.xpvio* %59, i32 0, i32 10
  %60 = load i64, i64* %xio_lines, align 8
  %tobool50 = icmp ne i64 %60, 0
  br i1 %tobool50, label %if.then.51, label %if.end.89

if.then.51:                                       ; preds = %land.lhs.true.45
  %61 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags52 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 2
  %62 = load i32, i32* %sv_flags52, align 4
  %and53 = and i32 %62, 118423552
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %land.lhs.true.55, label %land.end

land.lhs.true.55:                                 ; preds = %if.then.51
  %63 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags56 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags56, align 4
  %and57 = and i32 %64, 262144
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %lor.lhs.false.59, label %land.lhs.true.63

lor.lhs.false.59:                                 ; preds = %land.lhs.true.55
  %65 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any60 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any60, align 8
  %67 = bitcast i8* %66 to %struct.xpv*
  %xpv_cur61 = getelementptr inbounds %struct.xpv, %struct.xpv* %67, i32 0, i32 1
  %68 = load i64, i64* %xpv_cur61, align 8
  %tobool62 = icmp ne i64 %68, 0
  br i1 %tobool62, label %land.lhs.true.63, label %land.end

land.lhs.true.63:                                 ; preds = %lor.lhs.false.59, %land.lhs.true.55
  %69 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any64 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 0
  %70 = load i8*, i8** %sv_any64, align 8
  %71 = bitcast i8* %70 to %struct.xpv*
  %xpv_cur65 = getelementptr inbounds %struct.xpv, %struct.xpv* %71, i32 0, i32 1
  %72 = load i64, i64* %xpv_cur65, align 8
  %cmp66 = icmp eq i64 %72, 1
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.63
  %73 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any68 = getelementptr inbounds %struct.sv, %struct.sv* %73, i32 0, i32 0
  %74 = load i8*, i8** %sv_any68, align 8
  %75 = bitcast i8* %74 to %struct.xpv*
  %xpv_pv69 = getelementptr inbounds %struct.xpv, %struct.xpv* %75, i32 0, i32 0
  %76 = load i8*, i8** %xpv_pv69, align 8
  %77 = load i8, i8* %76, align 1
  %conv70 = sext i8 %77 to i32
  %cmp71 = icmp eq i32 %conv70, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.63, %lor.lhs.false.59, %if.then.51
  %78 = phi i1 [ false, %land.lhs.true.63 ], [ false, %lor.lhs.false.59 ], [ false, %if.then.51 ], [ %cmp71, %land.rhs ]
  %land.ext = zext i1 %78 to i32
  %conv73 = trunc i32 %land.ext to i8
  store i8 %conv73, i8* %line_mode, align 1
  %79 = load %struct.sv*, %struct.sv** %sv, align 8
  %80 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %81 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %cmp74 = icmp eq %struct.gv* %80, %81
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %land.end
  br label %cond.end.79

cond.false.77:                                    ; preds = %land.end
  %82 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any78 = getelementptr inbounds %struct.gv, %struct.gv* %82, i32 0, i32 0
  %83 = load %struct.xpvgv*, %struct.xpvgv** %sv_any78, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %83, i32 0, i32 8
  %84 = load i8*, i8** %xgv_name, align 8
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.76
  %cond80 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %cond.true.76 ], [ %84, %cond.false.77 ]
  %85 = load i8, i8* %line_mode, align 1
  %conv81 = sext i8 %85 to i32
  %tobool82 = icmp ne i32 %conv81, 0
  %cond83 = select i1 %tobool82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)
  %86 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %sv_any84 = getelementptr inbounds %struct.gv, %struct.gv* %86, i32 0, i32 0
  %87 = load %struct.xpvgv*, %struct.xpvgv** %sv_any84, align 8
  %xgv_gp85 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %87, i32 0, i32 7
  %88 = load %struct.gp*, %struct.gp** %xgv_gp85, align 8
  %gp_io86 = getelementptr inbounds %struct.gp, %struct.gp* %88, i32 0, i32 2
  %89 = load %struct.io*, %struct.io** %gp_io86, align 8
  %sv_any87 = getelementptr inbounds %struct.io, %struct.io* %89, i32 0, i32 0
  %90 = load %struct.xpvio*, %struct.xpvio** %sv_any87, align 8
  %xio_lines88 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %90, i32 0, i32 10
  %91 = load i64, i64* %xio_lines88, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %cond80, i8* %cond83, i64 %91)
  br label %if.end.89

if.end.89:                                        ; preds = %cond.end.79, %land.lhs.true.45, %cond.false.44, %cond.true.40
  %92 = load %struct.sv*, %struct.sv** %sv, align 8
  %93 = load i8, i8* @PL_dirty, align 1
  %conv90 = sext i8 %93 to i32
  %tobool91 = icmp ne i32 %conv90, 0
  %cond92 = select i1 %tobool91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @Perl_vmess.dgd, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)
  call void @Perl_sv_catpv(%struct.sv* %92, i8* %cond92)
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.89, %lor.lhs.false
  %94 = load %struct.sv*, %struct.sv** %sv, align 8
  ret %struct.sv* %94
}

; Function Attrs: nounwind uwtable
define internal %struct.cop* @S_closest_cop(%struct.cop* %cop, %struct.op* %o) #0 {
entry:
  %retval = alloca %struct.cop*, align 8
  %cop.addr = alloca %struct.cop*, align 8
  %o.addr = alloca %struct.op*, align 8
  %kid = alloca %struct.op*, align 8
  %new_cop = alloca %struct.cop*, align 8
  store %struct.cop* %cop, %struct.cop** %cop.addr, align 8
  store %struct.op* %o, %struct.op** %o.addr, align 8
  %0 = load %struct.op*, %struct.op** %o.addr, align 8
  %tobool = icmp ne %struct.op* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.op*, %struct.op** %o.addr, align 8
  %2 = load %struct.op*, %struct.op** @PL_op, align 8
  %cmp = icmp eq %struct.op* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.cop*, %struct.cop** %cop.addr, align 8
  store %struct.cop* %3, %struct.cop** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.op*, %struct.op** %o.addr, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 6
  %5 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 4
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.14

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.op*, %struct.op** %o.addr, align 8
  %7 = bitcast %struct.op* %6 to %struct.unop*
  %op_first = getelementptr inbounds %struct.unop, %struct.unop* %7, i32 0, i32 8
  %8 = load %struct.op*, %struct.op** %op_first, align 8
  store %struct.op* %8, %struct.op** %kid, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %9 = load %struct.op*, %struct.op** %kid, align 8
  %tobool3 = icmp ne %struct.op* %9, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.op*, %struct.op** %kid, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 4
  %11 = load i16, i16* %op_type, align 2
  %conv4 = zext i16 %11 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.op*, %struct.op** %kid, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %12, i32 0, i32 3
  %13 = load i64, i64* %op_targ, align 8
  %cmp7 = icmp eq i64 %13, 174
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  %14 = load %struct.op*, %struct.op** %kid, align 8
  %15 = bitcast %struct.op* %14 to %struct.cop*
  store %struct.cop* %15, %struct.cop** %cop.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true, %for.body
  %16 = load %struct.cop*, %struct.cop** %cop.addr, align 8
  %17 = load %struct.op*, %struct.op** %kid, align 8
  %call = call %struct.cop* @S_closest_cop(%struct.cop* %16, %struct.op* %17)
  store %struct.cop* %call, %struct.cop** %new_cop, align 8
  %18 = load %struct.cop*, %struct.cop** %new_cop, align 8
  %tobool11 = icmp ne %struct.cop* %18, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %19 = load %struct.cop*, %struct.cop** %new_cop, align 8
  store %struct.cop* %19, %struct.cop** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %20 = load %struct.op*, %struct.op** %kid, align 8
  %op_sibling = getelementptr inbounds %struct.op, %struct.op* %20, i32 0, i32 1
  %21 = load %struct.op*, %struct.op** %op_sibling, align 8
  store %struct.op* %21, %struct.op** %kid, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.end
  store %struct.cop* null, %struct.cop** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.then
  %22 = load %struct.cop*, %struct.cop** %retval
  ret %struct.cop* %22
}

declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #1

declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind uwtable
define void @Perl_write_to_stderr(i8* %message, i32 %msglen) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %msglen.addr = alloca i32, align 4
  %io = alloca %struct.io*, align 8
  %mg = alloca %struct.magic*, align 8
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp38 = alloca i32, align 4
  %sp67 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp118 = alloca %struct.av*, align 8
  %tmp120 = alloca %struct.stackinfo*, align 8
  %serr = alloca %struct._PerlIO**, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %msglen, i32* %msglen.addr, align 4
  %0 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_refcnt = getelementptr inbounds %struct.gv, %struct.gv* %1, i32 0, i32 1
  %2 = load i32, i32* %sv_refcnt, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool3 = icmp ne %struct.gv* %3, null
  br i1 %tobool3, label %land.lhs.true.4, label %cond.false

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %4 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %5 = bitcast %struct.gv* %4 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and = and i32 %6, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.5, label %cond.false

land.lhs.true.5:                                  ; preds = %land.lhs.true.4
  %7 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %7, i32 0, i32 0
  %8 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %8, i32 0, i32 7
  %9 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool6 = icmp ne %struct.gp* %9, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.5
  %10 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any7 = getelementptr inbounds %struct.gv, %struct.gv* %10, i32 0, i32 0
  %11 = load %struct.xpvgv*, %struct.xpvgv** %sv_any7, align 8
  %xgv_gp8 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %11, i32 0, i32 7
  %12 = load %struct.gp*, %struct.gp** %xgv_gp8, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %12, i32 0, i32 2
  %13 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.5, %land.lhs.true.4, %land.lhs.true.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool9 = icmp ne %struct.io* %cond, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %cond.end
  %14 = load %struct.io*, %struct.io** %io, align 8
  %15 = bitcast %struct.io* %14 to %struct.sv*
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags11, align 4
  %and12 = and i32 %16, 32768
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %land.lhs.true.10
  %17 = load %struct.io*, %struct.io** %io, align 8
  %18 = bitcast %struct.io* %17 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %18, i32 113)
  br label %cond.end.16

cond.false.15:                                    ; preds = %land.lhs.true.10
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi %struct.magic* [ %call, %cond.true.14 ], [ null, %cond.false.15 ]
  store %struct.magic* %cond17, %struct.magic** %mg, align 8
  %tobool18 = icmp ne %struct.magic* %cond17, null
  br i1 %tobool18, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.16
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %19, %struct.sv*** %sp, align 8
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %20 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %20, i32* @PL_tmps_floor, align 4
  call void @Perl_save_re_context()
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.gv** @PL_stderrgv to %struct.sv**))
  store %struct.gv* null, %struct.gv** @PL_stderrgv, align 8
  %21 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %21, i32 0, i32 6
  %22 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %22, %struct.stackinfo** %next, align 8
  %23 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool19 = icmp ne %struct.stackinfo* %23, null
  br i1 %tobool19, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %if.then
  %call21 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call21, %struct.stackinfo** %next, align 8
  %24 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %25 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %25, i32 0, i32 5
  store %struct.stackinfo* %24, %struct.stackinfo** %si_prev, align 8
  %26 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %27 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next22 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %27, i32 0, i32 6
  store %struct.stackinfo* %26, %struct.stackinfo** %si_next22, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then
  %28 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %28, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %29 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %29, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %30 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %30, i32 0, i32 0
  %31 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any23 = getelementptr inbounds %struct.av, %struct.av* %31, i32 0, i32 0
  %32 = load %struct.xpvav*, %struct.xpvav** %sv_any23, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %32, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %33 = load %struct.sv**, %struct.sv*** %sp, align 8
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %33 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %35 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any24 = getelementptr inbounds %struct.av, %struct.av* %35, i32 0, i32 0
  %36 = load %struct.xpvav*, %struct.xpvav** %sv_any24, align 8
  %xav_fill25 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %36, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill25, align 8
  %37 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack26 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %37, i32 0, i32 0
  %38 = load %struct.av*, %struct.av** %si_stack26, align 8
  %sv_any27 = getelementptr inbounds %struct.av, %struct.av* %38, i32 0, i32 0
  %39 = load %struct.xpvav*, %struct.xpvav** %sv_any27, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %39, i32 0, i32 0
  %40 = load i8*, i8** %xav_array, align 8
  %41 = bitcast i8* %40 to %struct.sv**
  store %struct.sv** %41, %struct.sv*** @PL_stack_base, align 8
  %42 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %43 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack28 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %43, i32 0, i32 0
  %44 = load %struct.av*, %struct.av** %si_stack28, align 8
  %sv_any29 = getelementptr inbounds %struct.av, %struct.av* %44, i32 0, i32 0
  %45 = load %struct.xpvav*, %struct.xpvav** %sv_any29, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %45, i32 0, i32 2
  %46 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %42, i64 %46
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %48 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack30 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %48, i32 0, i32 0
  %49 = load %struct.av*, %struct.av** %si_stack30, align 8
  %sv_any31 = getelementptr inbounds %struct.av, %struct.av* %49, i32 0, i32 0
  %50 = load %struct.xpvav*, %struct.xpvav** %sv_any31, align 8
  %xav_fill32 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %50, i32 0, i32 1
  %51 = load i64, i64* %xav_fill32, align 8
  %add.ptr33 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i64 %51
  store %struct.sv** %add.ptr33, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr33, %struct.sv*** %sp, align 8
  %52 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack34 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %52, i32 0, i32 0
  %53 = load %struct.av*, %struct.av** %si_stack34, align 8
  store %struct.av* %53, %struct.av** @PL_curstack, align 8
  store %struct.av* %53, %struct.av** %tmp
  %54 = load %struct.av*, %struct.av** %tmp
  %55 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %55, %struct.stackinfo** @PL_curstackinfo, align 8
  %56 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %57 = load i32*, i32** @PL_markstack_max, align 8
  %cmp35 = icmp eq i32* %incdec.ptr, %57
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end
  call void @Perl_markstack_grow()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end
  %58 = load %struct.sv**, %struct.sv*** %sp, align 8
  %59 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast39 = ptrtoint %struct.sv** %58 to i64
  %sub.ptr.rhs.cast40 = ptrtoint %struct.sv** %59 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %sub.ptr.div42 = sdiv exact i64 %sub.ptr.sub41, 8
  %conv = trunc i64 %sub.ptr.div42 to i32
  %60 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %60, align 4
  store i32 %conv, i32* %tmp38
  %61 = load i32, i32* %tmp38
  %62 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %63 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast43 = ptrtoint %struct.sv** %62 to i64
  %sub.ptr.rhs.cast44 = ptrtoint %struct.sv** %63 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %sub.ptr.div46 = sdiv exact i64 %sub.ptr.sub45, 8
  %cmp47 = icmp slt i64 %sub.ptr.div46, 2
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.37
  %64 = load %struct.sv**, %struct.sv*** %sp, align 8
  %65 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call50 = call %struct.sv** @Perl_stack_grow(%struct.sv** %64, %struct.sv** %65, i32 2)
  store %struct.sv** %call50, %struct.sv*** %sp, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.37
  %66 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %66, i32 0, i32 5
  %67 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool52 = icmp ne %struct.sv* %67, null
  br i1 %tobool52, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %if.end.51
  %68 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj54 = getelementptr inbounds %struct.magic, %struct.magic* %68, i32 0, i32 5
  %69 = load %struct.sv*, %struct.sv** %mg_obj54, align 8
  br label %cond.end.58

cond.false.55:                                    ; preds = %if.end.51
  %70 = load %struct.io*, %struct.io** %io, align 8
  %71 = bitcast %struct.io* %70 to %struct.sv*
  %call56 = call %struct.sv* @Perl_newRV(%struct.sv* %71)
  %call57 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call56)
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.55, %cond.true.53
  %cond59 = phi %struct.sv* [ %69, %cond.true.53 ], [ %call57, %cond.false.55 ]
  %72 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr60 = getelementptr inbounds %struct.sv*, %struct.sv** %72, i32 1
  store %struct.sv** %incdec.ptr60, %struct.sv*** %sp, align 8
  store %struct.sv* %cond59, %struct.sv** %incdec.ptr60, align 8
  %73 = load i8*, i8** %message.addr, align 8
  %74 = load i32, i32* %msglen.addr, align 4
  %conv61 = sext i32 %74 to i64
  %call62 = call %struct.sv* @Perl_newSVpvn(i8* %73, i64 %conv61)
  %call63 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call62)
  %75 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr64 = getelementptr inbounds %struct.sv*, %struct.sv** %75, i32 1
  store %struct.sv** %incdec.ptr64, %struct.sv*** %sp, align 8
  store %struct.sv* %call63, %struct.sv** %incdec.ptr64, align 8
  %76 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %76, %struct.sv*** @PL_stack_sp, align 8
  %call65 = call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 0)
  %77 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %77, %struct.sv*** %sp67, align 8
  %78 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev69 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %78, i32 0, i32 5
  %79 = load %struct.stackinfo*, %struct.stackinfo** %si_prev69, align 8
  store %struct.stackinfo* %79, %struct.stackinfo** %prev, align 8
  %80 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool70 = icmp ne %struct.stackinfo* %80, null
  br i1 %tobool70, label %if.end.100, label %if.then.71

if.then.71:                                       ; preds = %cond.end.58
  %81 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool72 = icmp ne %struct.gv* %81, null
  br i1 %tobool72, label %land.lhs.true.73, label %cond.false.95

land.lhs.true.73:                                 ; preds = %if.then.71
  %82 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags74 = getelementptr inbounds %struct.gv, %struct.gv* %82, i32 0, i32 2
  %83 = load i32, i32* %sv_flags74, align 4
  %and75 = and i32 %83, 255
  %cmp76 = icmp eq i32 %and75, 13
  br i1 %cmp76, label %land.lhs.true.78, label %cond.false.95

land.lhs.true.78:                                 ; preds = %land.lhs.true.73
  %84 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any79 = getelementptr inbounds %struct.gv, %struct.gv* %84, i32 0, i32 0
  %85 = load %struct.xpvgv*, %struct.xpvgv** %sv_any79, align 8
  %xgv_gp80 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %85, i32 0, i32 7
  %86 = load %struct.gp*, %struct.gp** %xgv_gp80, align 8
  %gp_io81 = getelementptr inbounds %struct.gp, %struct.gp* %86, i32 0, i32 2
  %87 = load %struct.io*, %struct.io** %gp_io81, align 8
  %tobool82 = icmp ne %struct.io* %87, null
  br i1 %tobool82, label %land.lhs.true.83, label %cond.false.95

land.lhs.true.83:                                 ; preds = %land.lhs.true.78
  %88 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any84 = getelementptr inbounds %struct.gv, %struct.gv* %88, i32 0, i32 0
  %89 = load %struct.xpvgv*, %struct.xpvgv** %sv_any84, align 8
  %xgv_gp85 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %89, i32 0, i32 7
  %90 = load %struct.gp*, %struct.gp** %xgv_gp85, align 8
  %gp_io86 = getelementptr inbounds %struct.gp, %struct.gp* %90, i32 0, i32 2
  %91 = load %struct.io*, %struct.io** %gp_io86, align 8
  %sv_any87 = getelementptr inbounds %struct.io, %struct.io* %91, i32 0, i32 0
  %92 = load %struct.xpvio*, %struct.xpvio** %sv_any87, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %92, i32 0, i32 8
  %93 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool88 = icmp ne %struct._PerlIO** %93, null
  br i1 %tobool88, label %cond.true.89, label %cond.false.95

cond.true.89:                                     ; preds = %land.lhs.true.83
  %94 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any90 = getelementptr inbounds %struct.gv, %struct.gv* %94, i32 0, i32 0
  %95 = load %struct.xpvgv*, %struct.xpvgv** %sv_any90, align 8
  %xgv_gp91 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %95, i32 0, i32 7
  %96 = load %struct.gp*, %struct.gp** %xgv_gp91, align 8
  %gp_io92 = getelementptr inbounds %struct.gp, %struct.gp* %96, i32 0, i32 2
  %97 = load %struct.io*, %struct.io** %gp_io92, align 8
  %sv_any93 = getelementptr inbounds %struct.io, %struct.io* %97, i32 0, i32 0
  %98 = load %struct.xpvio*, %struct.xpvio** %sv_any93, align 8
  %xio_ofp94 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %98, i32 0, i32 8
  %99 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp94, align 8
  br label %cond.end.97

cond.false.95:                                    ; preds = %land.lhs.true.83, %land.lhs.true.78, %land.lhs.true.73, %if.then.71
  %call96 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.89
  %cond98 = phi %struct._PerlIO** [ %99, %cond.true.89 ], [ %call96, %cond.false.95 ]
  %call99 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.100

if.end.100:                                       ; preds = %cond.end.97, %cond.end.58
  %100 = load %struct.sv**, %struct.sv*** %sp67, align 8
  %101 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast101 = ptrtoint %struct.sv** %100 to i64
  %sub.ptr.rhs.cast102 = ptrtoint %struct.sv** %101 to i64
  %sub.ptr.sub103 = sub i64 %sub.ptr.lhs.cast101, %sub.ptr.rhs.cast102
  %sub.ptr.div104 = sdiv exact i64 %sub.ptr.sub103, 8
  %102 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any105 = getelementptr inbounds %struct.av, %struct.av* %102, i32 0, i32 0
  %103 = load %struct.xpvav*, %struct.xpvav** %sv_any105, align 8
  %xav_fill106 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %103, i32 0, i32 1
  store i64 %sub.ptr.div104, i64* %xav_fill106, align 8
  %104 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack107 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %104, i32 0, i32 0
  %105 = load %struct.av*, %struct.av** %si_stack107, align 8
  %sv_any108 = getelementptr inbounds %struct.av, %struct.av* %105, i32 0, i32 0
  %106 = load %struct.xpvav*, %struct.xpvav** %sv_any108, align 8
  %xav_array109 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %106, i32 0, i32 0
  %107 = load i8*, i8** %xav_array109, align 8
  %108 = bitcast i8* %107 to %struct.sv**
  store %struct.sv** %108, %struct.sv*** @PL_stack_base, align 8
  %109 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %110 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack110 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %110, i32 0, i32 0
  %111 = load %struct.av*, %struct.av** %si_stack110, align 8
  %sv_any111 = getelementptr inbounds %struct.av, %struct.av* %111, i32 0, i32 0
  %112 = load %struct.xpvav*, %struct.xpvav** %sv_any111, align 8
  %xav_max112 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %112, i32 0, i32 2
  %113 = load i64, i64* %xav_max112, align 8
  %add.ptr113 = getelementptr inbounds %struct.sv*, %struct.sv** %109, i64 %113
  store %struct.sv** %add.ptr113, %struct.sv*** @PL_stack_max, align 8
  %114 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %115 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack114 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %115, i32 0, i32 0
  %116 = load %struct.av*, %struct.av** %si_stack114, align 8
  %sv_any115 = getelementptr inbounds %struct.av, %struct.av* %116, i32 0, i32 0
  %117 = load %struct.xpvav*, %struct.xpvav** %sv_any115, align 8
  %xav_fill116 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %117, i32 0, i32 1
  %118 = load i64, i64* %xav_fill116, align 8
  %add.ptr117 = getelementptr inbounds %struct.sv*, %struct.sv** %114, i64 %118
  store %struct.sv** %add.ptr117, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr117, %struct.sv*** %sp67, align 8
  %119 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack119 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %119, i32 0, i32 0
  %120 = load %struct.av*, %struct.av** %si_stack119, align 8
  store %struct.av* %120, %struct.av** @PL_curstack, align 8
  store %struct.av* %120, %struct.av** %tmp118
  %121 = load %struct.av*, %struct.av** %tmp118
  %122 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %122, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %122, %struct.stackinfo** %tmp120
  %123 = load %struct.stackinfo*, %struct.stackinfo** %tmp120
  %124 = load i32, i32* @PL_tmps_ix, align 4
  %125 = load i32, i32* @PL_tmps_floor, align 4
  %cmp121 = icmp sgt i32 %124, %125
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.100
  call void @Perl_free_tmps()
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %if.end.100
  call void @Perl_pop_scope()
  br label %if.end.157

if.else:                                          ; preds = %cond.end.16, %cond.end, %land.lhs.true, %entry
  %126 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool126 = icmp ne %struct.gv* %126, null
  br i1 %tobool126, label %land.lhs.true.127, label %cond.false.150

land.lhs.true.127:                                ; preds = %if.else
  %127 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags128 = getelementptr inbounds %struct.gv, %struct.gv* %127, i32 0, i32 2
  %128 = load i32, i32* %sv_flags128, align 4
  %and129 = and i32 %128, 255
  %cmp130 = icmp eq i32 %and129, 13
  br i1 %cmp130, label %land.lhs.true.132, label %cond.false.150

land.lhs.true.132:                                ; preds = %land.lhs.true.127
  %129 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any133 = getelementptr inbounds %struct.gv, %struct.gv* %129, i32 0, i32 0
  %130 = load %struct.xpvgv*, %struct.xpvgv** %sv_any133, align 8
  %xgv_gp134 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %130, i32 0, i32 7
  %131 = load %struct.gp*, %struct.gp** %xgv_gp134, align 8
  %gp_io135 = getelementptr inbounds %struct.gp, %struct.gp* %131, i32 0, i32 2
  %132 = load %struct.io*, %struct.io** %gp_io135, align 8
  %tobool136 = icmp ne %struct.io* %132, null
  br i1 %tobool136, label %land.lhs.true.137, label %cond.false.150

land.lhs.true.137:                                ; preds = %land.lhs.true.132
  %133 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any138 = getelementptr inbounds %struct.gv, %struct.gv* %133, i32 0, i32 0
  %134 = load %struct.xpvgv*, %struct.xpvgv** %sv_any138, align 8
  %xgv_gp139 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %134, i32 0, i32 7
  %135 = load %struct.gp*, %struct.gp** %xgv_gp139, align 8
  %gp_io140 = getelementptr inbounds %struct.gp, %struct.gp* %135, i32 0, i32 2
  %136 = load %struct.io*, %struct.io** %gp_io140, align 8
  %sv_any141 = getelementptr inbounds %struct.io, %struct.io* %136, i32 0, i32 0
  %137 = load %struct.xpvio*, %struct.xpvio** %sv_any141, align 8
  %xio_ofp142 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %137, i32 0, i32 8
  %138 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp142, align 8
  %tobool143 = icmp ne %struct._PerlIO** %138, null
  br i1 %tobool143, label %cond.true.144, label %cond.false.150

cond.true.144:                                    ; preds = %land.lhs.true.137
  %139 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any145 = getelementptr inbounds %struct.gv, %struct.gv* %139, i32 0, i32 0
  %140 = load %struct.xpvgv*, %struct.xpvgv** %sv_any145, align 8
  %xgv_gp146 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %140, i32 0, i32 7
  %141 = load %struct.gp*, %struct.gp** %xgv_gp146, align 8
  %gp_io147 = getelementptr inbounds %struct.gp, %struct.gp* %141, i32 0, i32 2
  %142 = load %struct.io*, %struct.io** %gp_io147, align 8
  %sv_any148 = getelementptr inbounds %struct.io, %struct.io* %142, i32 0, i32 0
  %143 = load %struct.xpvio*, %struct.xpvio** %sv_any148, align 8
  %xio_ofp149 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %143, i32 0, i32 8
  %144 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp149, align 8
  br label %cond.end.152

cond.false.150:                                   ; preds = %land.lhs.true.137, %land.lhs.true.132, %land.lhs.true.127, %if.else
  %call151 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.150, %cond.true.144
  %cond153 = phi %struct._PerlIO** [ %144, %cond.true.144 ], [ %call151, %cond.false.150 ]
  store %struct._PerlIO** %cond153, %struct._PerlIO*** %serr, align 8
  %145 = load %struct._PerlIO**, %struct._PerlIO*** %serr, align 8
  %146 = load i8*, i8** %message.addr, align 8
  %147 = load i32, i32* %msglen.addr, align 4
  %conv154 = sext i32 %147 to i64
  %call155 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %145, i8* %146, i64 %conv154)
  %148 = load %struct._PerlIO**, %struct._PerlIO*** %serr, align 8
  %call156 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %148)
  br label %if.end.157

if.end.157:                                       ; preds = %cond.end.152, %if.end.124
  ret void
}

declare void @Perl_push_scope() #1

declare void @Perl_save_int(i32*) #1

declare void @Perl_save_re_context() #1

declare void @Perl_save_sptr(%struct.sv**) #1

declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

declare void @Perl_markstack_grow() #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newRV(%struct.sv*) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare i32 @Perl_call_method(i8*, i32) #1

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare void @Perl_free_tmps() #1

declare void @Perl_pop_scope() #1

declare i64 @Perl_PerlIO_write(%struct._PerlIO**, i8*, i64) #1

declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define i8* @S_vdie_croak_common(i8* %pat, [1 x %struct.__va_list_tag]* %args, i64* %msglen, i32* %utf8) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %args.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %msglen.addr = alloca i64*, align 8
  %utf8.addr = alloca i32*, align 8
  %message = alloca i8*, align 8
  %msv = alloca %struct.sv*, align 8
  %tmp = alloca i64, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %args.addr, align 8
  store i64* %msglen, i64** %msglen.addr, align 8
  store i32* %utf8, i32** %utf8.addr, align 8
  %0 = load i8*, i8** %pat.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else.24

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %pat.addr, align 8
  %2 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %call = call %struct.sv* @Perl_vmess(i8* %1, [1 x %struct.__va_list_tag]* %2)
  store %struct.sv* %call, %struct.sv** %msv, align 8
  %3 = load %struct.sv*, %struct.sv** @PL_errors, align 8
  %tobool1 = icmp ne %struct.sv* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.sv*, %struct.sv** @PL_errors, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %6, i32 0, i32 1
  %7 = load i64, i64* %xpv_cur, align 8
  %tobool2 = icmp ne i64 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct.sv*, %struct.sv** @PL_errors, align 8
  %9 = load %struct.sv*, %struct.sv** %msv, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %8, %struct.sv* %9, i32 2)
  %10 = load %struct.sv*, %struct.sv** @PL_errors, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %12 = load %struct.sv*, %struct.sv** @PL_errors, align 8
  %sv_any4 = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 0
  %13 = load i8*, i8** %sv_any4, align 8
  %14 = bitcast i8* %13 to %struct.xpv*
  %xpv_cur5 = getelementptr inbounds %struct.xpv, %struct.xpv* %14, i32 0, i32 1
  %15 = load i64, i64* %xpv_cur5, align 8
  %16 = load i64*, i64** %msglen.addr, align 8
  store i64 %15, i64* %16, align 8
  %17 = load %struct.sv*, %struct.sv** @PL_errors, align 8
  %sv_any6 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any6, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %21 = load %struct.sv*, %struct.sv** @PL_errors, align 8
  %22 = load i64*, i64** %msglen.addr, align 8
  %call7 = call i8* @Perl_sv_2pv_flags(%struct.sv* %21, i64* %22, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ %call7, %cond.false ]
  store i8* %cond, i8** %message, align 8
  %23 = load %struct.sv*, %struct.sv** @PL_errors, align 8
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any8, align 8
  %25 = bitcast i8* %24 to %struct.xpv*
  %xpv_cur9 = getelementptr inbounds %struct.xpv, %struct.xpv* %25, i32 0, i32 1
  store i64 0, i64* %xpv_cur9, align 8
  store i64 0, i64* %tmp
  %26 = load i64, i64* %tmp
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %27 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %28, 262144
  %cmp12 = icmp eq i32 %and11, 262144
  br i1 %cmp12, label %cond.true.13, label %cond.false.18

cond.true.13:                                     ; preds = %if.else
  %29 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any14, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_cur15 = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 1
  %32 = load i64, i64* %xpv_cur15, align 8
  %33 = load i64*, i64** %msglen.addr, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 0
  %35 = load i8*, i8** %sv_any16, align 8
  %36 = bitcast i8* %35 to %struct.xpv*
  %xpv_pv17 = getelementptr inbounds %struct.xpv, %struct.xpv* %36, i32 0, i32 0
  %37 = load i8*, i8** %xpv_pv17, align 8
  br label %cond.end.20

cond.false.18:                                    ; preds = %if.else
  %38 = load %struct.sv*, %struct.sv** %msv, align 8
  %39 = load i64*, i64** %msglen.addr, align 8
  %call19 = call i8* @Perl_sv_2pv_flags(%struct.sv* %38, i64* %39, i32 2)
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.13
  %cond21 = phi i8* [ %37, %cond.true.13 ], [ %call19, %cond.false.18 ]
  store i8* %cond21, i8** %message, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.20, %cond.end
  %40 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_flags22 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags22, align 4
  %and23 = and i32 %41, 536870912
  %42 = load i32*, i32** %utf8.addr, align 8
  store i32 %and23, i32* %42, align 4
  br label %if.end.25

if.else.24:                                       ; preds = %entry
  store i8* null, i8** %message, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.end
  %43 = load %struct.sv*, %struct.sv** @PL_diehook, align 8
  %tobool26 = icmp ne %struct.sv* %43, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %44 = load i8*, i8** %message, align 8
  %45 = load i64*, i64** %msglen.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i32*, i32** %utf8.addr, align 8
  %48 = load i32, i32* %47, align 4
  call void @S_vdie_common(i8* %44, i64 %46, i32 %48)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %49 = load i8*, i8** %message, align 8
  ret i8* %49
}

declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define void @S_vdie_common(i8* %message, i64 %msglen, i32 %utf8) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %msglen.addr = alloca i64, align 8
  %utf8.addr = alloca i32, align 4
  %stash = alloca %struct.hv*, align 8
  %gv = alloca %struct.gv*, align 8
  %cv = alloca %struct.cv*, align 8
  %olddiehook = alloca %struct.sv*, align 8
  %sp = alloca %struct.sv**, align 8
  %msg = alloca %struct.sv*, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp32 = alloca i32, align 4
  %tmp46 = alloca %struct.sv*, align 8
  %sp50 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp95 = alloca %struct.av*, align 8
  %tmp97 = alloca %struct.stackinfo*, align 8
  store i8* %message, i8** %message.addr, align 8
  store i64 %msglen, i64* %msglen.addr, align 8
  store i32 %utf8, i32* %utf8.addr, align 4
  %0 = load %struct.sv*, %struct.sv** @PL_diehook, align 8
  store %struct.sv* %0, %struct.sv** %olddiehook, align 8
  call void @Perl_push_scope()
  call void @Perl_save_sptr(%struct.sv** @PL_diehook)
  store %struct.sv* null, %struct.sv** @PL_diehook, align 8
  %1 = load %struct.sv*, %struct.sv** %olddiehook, align 8
  %call = call %struct.cv* @Perl_sv_2cv(%struct.sv* %1, %struct.hv** %stash, %struct.gv** %gv, i32 0)
  store %struct.cv* %call, %struct.cv** %cv, align 8
  call void @Perl_pop_scope()
  %2 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool = icmp ne %struct.cv* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %3, i32 0, i32 0
  %4 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_depth = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %4, i32 0, i32 14
  %5 = load i64, i64* %xcv_depth, align 8
  %tobool1 = icmp ne i64 %5, 0
  br i1 %tobool1, label %if.end.98, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any3 = getelementptr inbounds %struct.cv, %struct.cv* %6, i32 0, i32 0
  %7 = load %struct.xpvcv*, %struct.xpvcv** %sv_any3, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %7, i32 0, i32 9
  %8 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool4 = icmp ne %struct.op* %8, null
  br i1 %tobool4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.2
  %9 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any5 = getelementptr inbounds %struct.cv, %struct.cv* %9, i32 0, i32 0
  %10 = load %struct.xpvcv*, %struct.xpvcv** %sv_any5, align 8
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %10, i32 0, i32 10
  %11 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %tobool6 = icmp ne void (%struct.cv*)* %11, null
  br i1 %tobool6, label %if.then, label %if.end.98

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.2
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %12, %struct.sv*** %sp, align 8
  call void @Perl_push_scope()
  call void @Perl_save_re_context()
  %13 = load i8*, i8** %message.addr, align 8
  %tobool7 = icmp ne i8* %13, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %14 = load i8*, i8** %message.addr, align 8
  %15 = load i64, i64* %msglen.addr, align 8
  %call9 = call %struct.sv* @Perl_newSVpvn(i8* %14, i64 %15)
  store %struct.sv* %call9, %struct.sv** %msg, align 8
  %16 = load i32, i32* %utf8.addr, align 4
  %17 = load %struct.sv*, %struct.sv** %msg, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %or = or i32 %18, %16
  store i32 %or, i32* %sv_flags, align 4
  %19 = load %struct.sv*, %struct.sv** %msg, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags10, align 4
  %or11 = or i32 %20, 8388608
  store i32 %or11, i32* %sv_flags10, align 4
  %21 = load %struct.sv*, %struct.sv** %msg, align 8
  call void @Perl_save_freesv(%struct.sv* %21)
  br label %if.end

if.else:                                          ; preds = %if.then
  %22 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any12 = getelementptr inbounds %struct.gv, %struct.gv* %22, i32 0, i32 0
  %23 = load %struct.xpvgv*, %struct.xpvgv** %sv_any12, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %23, i32 0, i32 7
  %24 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %24, i32 0, i32 0
  %25 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %25, %struct.sv** %msg, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  %26 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %26, i32 0, i32 6
  %27 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %27, %struct.stackinfo** %next, align 8
  %28 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool13 = icmp ne %struct.stackinfo* %28, null
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %call15 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call15, %struct.stackinfo** %next, align 8
  %29 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %30 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %30, i32 0, i32 5
  store %struct.stackinfo* %29, %struct.stackinfo** %si_prev, align 8
  %31 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %32 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next16 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %32, i32 0, i32 6
  store %struct.stackinfo* %31, %struct.stackinfo** %si_next16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end
  %33 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %33, i32 0, i32 4
  store i32 8, i32* %si_type, align 4
  %34 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %34, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %35 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %35, i32 0, i32 0
  %36 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any18 = getelementptr inbounds %struct.av, %struct.av* %36, i32 0, i32 0
  %37 = load %struct.xpvav*, %struct.xpvav** %sv_any18, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %37, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %38 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %40 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any19 = getelementptr inbounds %struct.av, %struct.av* %40, i32 0, i32 0
  %41 = load %struct.xpvav*, %struct.xpvav** %sv_any19, align 8
  %xav_fill20 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %41, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill20, align 8
  %42 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack21 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %42, i32 0, i32 0
  %43 = load %struct.av*, %struct.av** %si_stack21, align 8
  %sv_any22 = getelementptr inbounds %struct.av, %struct.av* %43, i32 0, i32 0
  %44 = load %struct.xpvav*, %struct.xpvav** %sv_any22, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %44, i32 0, i32 0
  %45 = load i8*, i8** %xav_array, align 8
  %46 = bitcast i8* %45 to %struct.sv**
  store %struct.sv** %46, %struct.sv*** @PL_stack_base, align 8
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %48 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack23 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %48, i32 0, i32 0
  %49 = load %struct.av*, %struct.av** %si_stack23, align 8
  %sv_any24 = getelementptr inbounds %struct.av, %struct.av* %49, i32 0, i32 0
  %50 = load %struct.xpvav*, %struct.xpvav** %sv_any24, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %50, i32 0, i32 2
  %51 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %47, i64 %51
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %52 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %53 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack25 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %53, i32 0, i32 0
  %54 = load %struct.av*, %struct.av** %si_stack25, align 8
  %sv_any26 = getelementptr inbounds %struct.av, %struct.av* %54, i32 0, i32 0
  %55 = load %struct.xpvav*, %struct.xpvav** %sv_any26, align 8
  %xav_fill27 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %55, i32 0, i32 1
  %56 = load i64, i64* %xav_fill27, align 8
  %add.ptr28 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i64 %56
  store %struct.sv** %add.ptr28, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr28, %struct.sv*** %sp, align 8
  %57 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack29 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %57, i32 0, i32 0
  %58 = load %struct.av*, %struct.av** %si_stack29, align 8
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
  br i1 %cmp, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.17
  call void @Perl_markstack_grow()
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.17
  %63 = load %struct.sv**, %struct.sv*** %sp, align 8
  %64 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast33 = ptrtoint %struct.sv** %63 to i64
  %sub.ptr.rhs.cast34 = ptrtoint %struct.sv** %64 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub.ptr.div36 = sdiv exact i64 %sub.ptr.sub35, 8
  %conv = trunc i64 %sub.ptr.div36 to i32
  %65 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %65, align 4
  store i32 %conv, i32* %tmp32
  %66 = load i32, i32* %tmp32
  %67 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %68 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast37 = ptrtoint %struct.sv** %67 to i64
  %sub.ptr.rhs.cast38 = ptrtoint %struct.sv** %68 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %sub.ptr.div40 = sdiv exact i64 %sub.ptr.sub39, 8
  %cmp41 = icmp slt i64 %sub.ptr.div40, 1
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.31
  %69 = load %struct.sv**, %struct.sv*** %sp, align 8
  %70 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call44 = call %struct.sv** @Perl_stack_grow(%struct.sv** %69, %struct.sv** %70, i32 1)
  store %struct.sv** %call44, %struct.sv*** %sp, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.31
  %71 = load %struct.sv*, %struct.sv** %msg, align 8
  %72 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr47 = getelementptr inbounds %struct.sv*, %struct.sv** %72, i32 1
  store %struct.sv** %incdec.ptr47, %struct.sv*** %sp, align 8
  store %struct.sv* %71, %struct.sv** %incdec.ptr47, align 8
  store %struct.sv* %71, %struct.sv** %tmp46
  %73 = load %struct.sv*, %struct.sv** %tmp46
  %74 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %74, %struct.sv*** @PL_stack_sp, align 8
  %75 = load %struct.cv*, %struct.cv** %cv, align 8
  %76 = bitcast %struct.cv* %75 to %struct.sv*
  %call48 = call i32 @Perl_call_sv(%struct.sv* %76, i32 2)
  %77 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %77, %struct.sv*** %sp50, align 8
  %78 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev52 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %78, i32 0, i32 5
  %79 = load %struct.stackinfo*, %struct.stackinfo** %si_prev52, align 8
  store %struct.stackinfo* %79, %struct.stackinfo** %prev, align 8
  %80 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool53 = icmp ne %struct.stackinfo* %80, null
  br i1 %tobool53, label %if.end.77, label %if.then.54

if.then.54:                                       ; preds = %if.end.45
  %81 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool55 = icmp ne %struct.gv* %81, null
  br i1 %tobool55, label %land.lhs.true.56, label %cond.false

land.lhs.true.56:                                 ; preds = %if.then.54
  %82 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags57 = getelementptr inbounds %struct.gv, %struct.gv* %82, i32 0, i32 2
  %83 = load i32, i32* %sv_flags57, align 4
  %and = and i32 %83, 255
  %cmp58 = icmp eq i32 %and, 13
  br i1 %cmp58, label %land.lhs.true.60, label %cond.false

land.lhs.true.60:                                 ; preds = %land.lhs.true.56
  %84 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any61 = getelementptr inbounds %struct.gv, %struct.gv* %84, i32 0, i32 0
  %85 = load %struct.xpvgv*, %struct.xpvgv** %sv_any61, align 8
  %xgv_gp62 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %85, i32 0, i32 7
  %86 = load %struct.gp*, %struct.gp** %xgv_gp62, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %86, i32 0, i32 2
  %87 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool63 = icmp ne %struct.io* %87, null
  br i1 %tobool63, label %land.lhs.true.64, label %cond.false

land.lhs.true.64:                                 ; preds = %land.lhs.true.60
  %88 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any65 = getelementptr inbounds %struct.gv, %struct.gv* %88, i32 0, i32 0
  %89 = load %struct.xpvgv*, %struct.xpvgv** %sv_any65, align 8
  %xgv_gp66 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %89, i32 0, i32 7
  %90 = load %struct.gp*, %struct.gp** %xgv_gp66, align 8
  %gp_io67 = getelementptr inbounds %struct.gp, %struct.gp* %90, i32 0, i32 2
  %91 = load %struct.io*, %struct.io** %gp_io67, align 8
  %sv_any68 = getelementptr inbounds %struct.io, %struct.io* %91, i32 0, i32 0
  %92 = load %struct.xpvio*, %struct.xpvio** %sv_any68, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %92, i32 0, i32 8
  %93 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool69 = icmp ne %struct._PerlIO** %93, null
  br i1 %tobool69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.64
  %94 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any70 = getelementptr inbounds %struct.gv, %struct.gv* %94, i32 0, i32 0
  %95 = load %struct.xpvgv*, %struct.xpvgv** %sv_any70, align 8
  %xgv_gp71 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %95, i32 0, i32 7
  %96 = load %struct.gp*, %struct.gp** %xgv_gp71, align 8
  %gp_io72 = getelementptr inbounds %struct.gp, %struct.gp* %96, i32 0, i32 2
  %97 = load %struct.io*, %struct.io** %gp_io72, align 8
  %sv_any73 = getelementptr inbounds %struct.io, %struct.io* %97, i32 0, i32 0
  %98 = load %struct.xpvio*, %struct.xpvio** %sv_any73, align 8
  %xio_ofp74 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %98, i32 0, i32 8
  %99 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp74, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.64, %land.lhs.true.60, %land.lhs.true.56, %if.then.54
  %call75 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %99, %cond.true ], [ %call75, %cond.false ]
  %call76 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.77

if.end.77:                                        ; preds = %cond.end, %if.end.45
  %100 = load %struct.sv**, %struct.sv*** %sp50, align 8
  %101 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast78 = ptrtoint %struct.sv** %100 to i64
  %sub.ptr.rhs.cast79 = ptrtoint %struct.sv** %101 to i64
  %sub.ptr.sub80 = sub i64 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79
  %sub.ptr.div81 = sdiv exact i64 %sub.ptr.sub80, 8
  %102 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any82 = getelementptr inbounds %struct.av, %struct.av* %102, i32 0, i32 0
  %103 = load %struct.xpvav*, %struct.xpvav** %sv_any82, align 8
  %xav_fill83 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %103, i32 0, i32 1
  store i64 %sub.ptr.div81, i64* %xav_fill83, align 8
  %104 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack84 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %104, i32 0, i32 0
  %105 = load %struct.av*, %struct.av** %si_stack84, align 8
  %sv_any85 = getelementptr inbounds %struct.av, %struct.av* %105, i32 0, i32 0
  %106 = load %struct.xpvav*, %struct.xpvav** %sv_any85, align 8
  %xav_array86 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %106, i32 0, i32 0
  %107 = load i8*, i8** %xav_array86, align 8
  %108 = bitcast i8* %107 to %struct.sv**
  store %struct.sv** %108, %struct.sv*** @PL_stack_base, align 8
  %109 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %110 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack87 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %110, i32 0, i32 0
  %111 = load %struct.av*, %struct.av** %si_stack87, align 8
  %sv_any88 = getelementptr inbounds %struct.av, %struct.av* %111, i32 0, i32 0
  %112 = load %struct.xpvav*, %struct.xpvav** %sv_any88, align 8
  %xav_max89 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %112, i32 0, i32 2
  %113 = load i64, i64* %xav_max89, align 8
  %add.ptr90 = getelementptr inbounds %struct.sv*, %struct.sv** %109, i64 %113
  store %struct.sv** %add.ptr90, %struct.sv*** @PL_stack_max, align 8
  %114 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %115 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack91 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %115, i32 0, i32 0
  %116 = load %struct.av*, %struct.av** %si_stack91, align 8
  %sv_any92 = getelementptr inbounds %struct.av, %struct.av* %116, i32 0, i32 0
  %117 = load %struct.xpvav*, %struct.xpvav** %sv_any92, align 8
  %xav_fill93 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %117, i32 0, i32 1
  %118 = load i64, i64* %xav_fill93, align 8
  %add.ptr94 = getelementptr inbounds %struct.sv*, %struct.sv** %114, i64 %118
  store %struct.sv** %add.ptr94, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr94, %struct.sv*** %sp50, align 8
  %119 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack96 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %119, i32 0, i32 0
  %120 = load %struct.av*, %struct.av** %si_stack96, align 8
  store %struct.av* %120, %struct.av** @PL_curstack, align 8
  store %struct.av* %120, %struct.av** %tmp95
  %121 = load %struct.av*, %struct.av** %tmp95
  %122 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %122, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %122, %struct.stackinfo** %tmp97
  %123 = load %struct.stackinfo*, %struct.stackinfo** %tmp97
  call void @Perl_pop_scope()
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.77, %lor.lhs.false, %land.lhs.true, %entry
  ret void
}

declare %struct.cv* @Perl_sv_2cv(%struct.sv*, %struct.hv**, %struct.gv**, i32) #1

declare void @Perl_save_freesv(%struct.sv*) #1

declare i32 @Perl_call_sv(%struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_vdie(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %args.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %message = alloca i8*, align 8
  %was_in_eval = alloca i32, align 4
  %msglen = alloca i64, align 8
  %utf8 = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %0 = load volatile i32, i32* @PL_in_eval, align 4
  store i32 %0, i32* %was_in_eval, align 4
  store i32 0, i32* %utf8, align 4
  %1 = load i8*, i8** %pat.addr, align 8
  %2 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %call = call i8* @S_vdie_croak_common(i8* %1, [1 x %struct.__va_list_tag]* %2, i64* %msglen, i32* %utf8)
  store i8* %call, i8** %message, align 8
  %3 = load i8*, i8** %message, align 8
  %4 = load i64, i64* %msglen, align 8
  %call1 = call %struct.op* @Perl_die_where(i8* %3, i64 %4)
  store %struct.op* %call1, %struct.op** @PL_restartop, align 8
  %5 = load i32, i32* %utf8, align 4
  %6 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %6, i32 0, i32 0
  %7 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %7, i32 0, i32 7
  %8 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %8, i32 0, i32 0
  %9 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %or = or i32 %10, %5
  store i32 %or, i32* %sv_flags, align 4
  %11 = load %struct.op*, %struct.op** @PL_restartop, align 8
  %tobool = icmp ne %struct.op* %11, null
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* %was_in_eval, align 4
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %13 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %13, i32 0, i32 1
  %14 = load %struct.jmpenv*, %struct.jmpenv** %je_prev, align 8
  %tobool3 = icmp ne %struct.jmpenv* %14, null
  br i1 %tobool3, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %15 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev4 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %15, i32 0, i32 1
  %16 = load %struct.jmpenv*, %struct.jmpenv** %je_prev4, align 8
  %tobool5 = icmp ne %struct.jmpenv* %16, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %17 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_buf = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %17, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf, i32 0, i32 0
  call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay, i32 3) #4
  unreachable

if.end:                                           ; preds = %if.then
  %call7 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call8 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.9:                                         ; preds = %lor.lhs.false
  %18 = load %struct.op*, %struct.op** @PL_restartop, align 8
  ret %struct.op* %18
}

declare %struct.op* @Perl_die_where(i8*, i64) #1

; Function Attrs: noreturn
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #3

; Function Attrs: noreturn
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_die(i8* %pat, ...) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %o = alloca %struct.op*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %pat, i8** %pat.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %pat.addr, align 8
  %call = call %struct.op* @Perl_vdie(i8* %0, [1 x %struct.__va_list_tag]* %args)
  store %struct.op* %call, %struct.op** %o, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  %1 = load %struct.op*, %struct.op** %o, align 8
  ret %struct.op* %1
}

; Function Attrs: nounwind uwtable
define void @Perl_vcroak(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %args.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %message = alloca i8*, align 8
  %msglen = alloca i64, align 8
  %utf8 = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %args.addr, align 8
  store i32 0, i32* %utf8, align 4
  %0 = load i8*, i8** %pat.addr, align 8
  %1 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %call = call i8* @S_vdie_croak_common(i8* %0, [1 x %struct.__va_list_tag]* %1, i64* %msglen, i32* %utf8)
  store i8* %call, i8** %message, align 8
  %2 = load volatile i32, i32* @PL_in_eval, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %message, align 8
  %4 = load i64, i64* %msglen, align 8
  %call1 = call %struct.op* @Perl_die_where(i8* %3, i64 %4)
  store %struct.op* %call1, %struct.op** @PL_restartop, align 8
  %5 = load i32, i32* %utf8, align 4
  %6 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %6, i32 0, i32 0
  %7 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %7, i32 0, i32 7
  %8 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %8, i32 0, i32 0
  %9 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %or = or i32 %10, %5
  store i32 %or, i32* %sv_flags, align 4
  %11 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %11, i32 0, i32 1
  %12 = load %struct.jmpenv*, %struct.jmpenv** %je_prev, align 8
  %tobool2 = icmp ne %struct.jmpenv* %12, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %13 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_buf = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %13, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf, i32 0, i32 0
  call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay, i32 3) #4
  unreachable

if.end:                                           ; preds = %if.then
  %call4 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call5 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.else:                                          ; preds = %entry
  %14 = load i8*, i8** %message, align 8
  %tobool6 = icmp ne i8* %14, null
  br i1 %tobool6, label %if.end.15, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %15 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %15, i32 0, i32 0
  %16 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_gp9 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %16, i32 0, i32 7
  %17 = load %struct.gp*, %struct.gp** %xgv_gp9, align 8
  %gp_sv10 = getelementptr inbounds %struct.gp, %struct.gp* %17, i32 0, i32 0
  %18 = load %struct.sv*, %struct.sv** %gp_sv10, align 8
  store %struct.sv* %18, %struct.sv** @PL_Sv, align 8
  %19 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags11, align 4
  %and = and i32 %20, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %21 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any12 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 0
  %22 = load i8*, i8** %sv_any12, align 8
  %23 = bitcast i8* %22 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %23, i32 0, i32 1
  %24 = load i64, i64* %xpv_cur, align 8
  store i64 %24, i64* %msglen, align 8
  %25 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any13 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any13, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %27, i32 0, i32 0
  %28 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %29 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call14 = call i8* @Perl_sv_2pv_flags(%struct.sv* %29, i64* %msglen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %28, %cond.true ], [ %call14, %cond.false ]
  store i8* %cond, i8** %message, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %cond.end, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  %30 = load i8*, i8** %message, align 8
  %31 = load i64, i64* %msglen, align 8
  %conv = trunc i64 %31 to i32
  call void @Perl_write_to_stderr(i8* %30, i32 %conv)
  call void @Perl_my_failure_exit()
  ret void
}

declare void @Perl_my_failure_exit() #1

; Function Attrs: nounwind uwtable
define void @Perl_croak(i8* %pat, ...) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %pat, i8** %pat.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %pat.addr, align 8
  call void @Perl_vcroak(i8* %0, [1 x %struct.__va_list_tag]* %args)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_vwarn(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %args.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %message = alloca i8*, align 8
  %stash = alloca %struct.hv*, align 8
  %gv = alloca %struct.gv*, align 8
  %cv = alloca %struct.cv*, align 8
  %msv = alloca %struct.sv*, align 8
  %msglen = alloca i64, align 8
  %utf8 = alloca i32, align 4
  %oldwarnhook = alloca %struct.sv*, align 8
  %sp = alloca %struct.sv**, align 8
  %msg = alloca %struct.sv*, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp38 = alloca i32, align 4
  %tmp52 = alloca %struct.sv*, align 8
  %sp56 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp105 = alloca %struct.av*, align 8
  %tmp107 = alloca %struct.stackinfo*, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %args.addr, align 8
  store i32 0, i32* %utf8, align 4
  %0 = load i8*, i8** %pat.addr, align 8
  %1 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %call = call %struct.sv* @Perl_vmess(i8* %0, [1 x %struct.__va_list_tag]* %1)
  store %struct.sv* %call, %struct.sv** %msv, align 8
  %2 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 536870912
  store i32 %and, i32* %utf8, align 4
  %4 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %5, 262144
  %cmp = icmp eq i32 %and2, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 1
  %9 = load i64, i64* %xpv_cur, align 8
  store i64 %9, i64* %msglen, align 8
  %10 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any3, align 8
  %12 = bitcast i8* %11 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %12, i32 0, i32 0
  %13 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load %struct.sv*, %struct.sv** %msv, align 8
  %call4 = call i8* @Perl_sv_2pv_flags(%struct.sv* %14, i64* %msglen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %call4, %cond.false ]
  store i8* %cond, i8** %message, align 8
  %15 = load %struct.sv*, %struct.sv** @PL_warnhook, align 8
  %tobool = icmp ne %struct.sv* %15, null
  br i1 %tobool, label %if.then, label %if.end.109

if.then:                                          ; preds = %cond.end
  %16 = load %struct.sv*, %struct.sv** @PL_warnhook, align 8
  store %struct.sv* %16, %struct.sv** %oldwarnhook, align 8
  call void @Perl_push_scope()
  call void @Perl_save_sptr(%struct.sv** @PL_warnhook)
  store %struct.sv* null, %struct.sv** @PL_warnhook, align 8
  %17 = load %struct.sv*, %struct.sv** %oldwarnhook, align 8
  %call5 = call %struct.cv* @Perl_sv_2cv(%struct.sv* %17, %struct.hv** %stash, %struct.gv** %gv, i32 0)
  store %struct.cv* %call5, %struct.cv** %cv, align 8
  call void @Perl_pop_scope()
  %18 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool6 = icmp ne %struct.cv* %18, null
  br i1 %tobool6, label %land.lhs.true, label %if.end.108

land.lhs.true:                                    ; preds = %if.then
  %19 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any7 = getelementptr inbounds %struct.cv, %struct.cv* %19, i32 0, i32 0
  %20 = load %struct.xpvcv*, %struct.xpvcv** %sv_any7, align 8
  %xcv_depth = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %20, i32 0, i32 14
  %21 = load i64, i64* %xcv_depth, align 8
  %tobool8 = icmp ne i64 %21, 0
  br i1 %tobool8, label %if.end.108, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %22 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any10 = getelementptr inbounds %struct.cv, %struct.cv* %22, i32 0, i32 0
  %23 = load %struct.xpvcv*, %struct.xpvcv** %sv_any10, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %23, i32 0, i32 9
  %24 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool11 = icmp ne %struct.op* %24, null
  br i1 %tobool11, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.9
  %25 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any12 = getelementptr inbounds %struct.cv, %struct.cv* %25, i32 0, i32 0
  %26 = load %struct.xpvcv*, %struct.xpvcv** %sv_any12, align 8
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %26, i32 0, i32 10
  %27 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %tobool13 = icmp ne void (%struct.cv*)* %27, null
  br i1 %tobool13, label %if.then.14, label %if.end.108

if.then.14:                                       ; preds = %lor.lhs.false, %land.lhs.true.9
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %28, %struct.sv*** %sp, align 8
  call void @Perl_push_scope()
  call void @Perl_save_re_context()
  %29 = load i8*, i8** %message, align 8
  %30 = load i64, i64* %msglen, align 8
  %call15 = call %struct.sv* @Perl_newSVpvn(i8* %29, i64 %30)
  store %struct.sv* %call15, %struct.sv** %msg, align 8
  %31 = load i32, i32* %utf8, align 4
  %32 = load %struct.sv*, %struct.sv** %msg, align 8
  %sv_flags16 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags16, align 4
  %or = or i32 %33, %31
  store i32 %or, i32* %sv_flags16, align 4
  %34 = load %struct.sv*, %struct.sv** %msg, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags17, align 4
  %or18 = or i32 %35, 8388608
  store i32 %or18, i32* %sv_flags17, align 4
  %36 = load %struct.sv*, %struct.sv** %msg, align 8
  call void @Perl_save_freesv(%struct.sv* %36)
  %37 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %37, i32 0, i32 6
  %38 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %38, %struct.stackinfo** %next, align 8
  %39 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool19 = icmp ne %struct.stackinfo* %39, null
  br i1 %tobool19, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %if.then.14
  %call21 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call21, %struct.stackinfo** %next, align 8
  %40 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %41 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %41, i32 0, i32 5
  store %struct.stackinfo* %40, %struct.stackinfo** %si_prev, align 8
  %42 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %43 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next22 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %43, i32 0, i32 6
  store %struct.stackinfo* %42, %struct.stackinfo** %si_next22, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then.14
  %44 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %44, i32 0, i32 4
  store i32 7, i32* %si_type, align 4
  %45 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %45, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %46 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %46, i32 0, i32 0
  %47 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any23 = getelementptr inbounds %struct.av, %struct.av* %47, i32 0, i32 0
  %48 = load %struct.xpvav*, %struct.xpvav** %sv_any23, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %48, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %49 = load %struct.sv**, %struct.sv*** %sp, align 8
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %51 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any24 = getelementptr inbounds %struct.av, %struct.av* %51, i32 0, i32 0
  %52 = load %struct.xpvav*, %struct.xpvav** %sv_any24, align 8
  %xav_fill25 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %52, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill25, align 8
  %53 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack26 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %53, i32 0, i32 0
  %54 = load %struct.av*, %struct.av** %si_stack26, align 8
  %sv_any27 = getelementptr inbounds %struct.av, %struct.av* %54, i32 0, i32 0
  %55 = load %struct.xpvav*, %struct.xpvav** %sv_any27, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %55, i32 0, i32 0
  %56 = load i8*, i8** %xav_array, align 8
  %57 = bitcast i8* %56 to %struct.sv**
  store %struct.sv** %57, %struct.sv*** @PL_stack_base, align 8
  %58 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %59 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack28 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %59, i32 0, i32 0
  %60 = load %struct.av*, %struct.av** %si_stack28, align 8
  %sv_any29 = getelementptr inbounds %struct.av, %struct.av* %60, i32 0, i32 0
  %61 = load %struct.xpvav*, %struct.xpvav** %sv_any29, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %61, i32 0, i32 2
  %62 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %58, i64 %62
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %63 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %64 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack30 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %64, i32 0, i32 0
  %65 = load %struct.av*, %struct.av** %si_stack30, align 8
  %sv_any31 = getelementptr inbounds %struct.av, %struct.av* %65, i32 0, i32 0
  %66 = load %struct.xpvav*, %struct.xpvav** %sv_any31, align 8
  %xav_fill32 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %66, i32 0, i32 1
  %67 = load i64, i64* %xav_fill32, align 8
  %add.ptr33 = getelementptr inbounds %struct.sv*, %struct.sv** %63, i64 %67
  store %struct.sv** %add.ptr33, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr33, %struct.sv*** %sp, align 8
  %68 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack34 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %68, i32 0, i32 0
  %69 = load %struct.av*, %struct.av** %si_stack34, align 8
  store %struct.av* %69, %struct.av** @PL_curstack, align 8
  store %struct.av* %69, %struct.av** %tmp
  %70 = load %struct.av*, %struct.av** %tmp
  %71 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %71, %struct.stackinfo** @PL_curstackinfo, align 8
  %72 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %73 = load i32*, i32** @PL_markstack_max, align 8
  %cmp35 = icmp eq i32* %incdec.ptr, %73
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end
  call void @Perl_markstack_grow()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end
  %74 = load %struct.sv**, %struct.sv*** %sp, align 8
  %75 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast39 = ptrtoint %struct.sv** %74 to i64
  %sub.ptr.rhs.cast40 = ptrtoint %struct.sv** %75 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %sub.ptr.div42 = sdiv exact i64 %sub.ptr.sub41, 8
  %conv = trunc i64 %sub.ptr.div42 to i32
  %76 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %76, align 4
  store i32 %conv, i32* %tmp38
  %77 = load i32, i32* %tmp38
  %78 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %79 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast43 = ptrtoint %struct.sv** %78 to i64
  %sub.ptr.rhs.cast44 = ptrtoint %struct.sv** %79 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %sub.ptr.div46 = sdiv exact i64 %sub.ptr.sub45, 8
  %cmp47 = icmp slt i64 %sub.ptr.div46, 1
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.37
  %80 = load %struct.sv**, %struct.sv*** %sp, align 8
  %81 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call50 = call %struct.sv** @Perl_stack_grow(%struct.sv** %80, %struct.sv** %81, i32 1)
  store %struct.sv** %call50, %struct.sv*** %sp, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.37
  %82 = load %struct.sv*, %struct.sv** %msg, align 8
  %83 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr53 = getelementptr inbounds %struct.sv*, %struct.sv** %83, i32 1
  store %struct.sv** %incdec.ptr53, %struct.sv*** %sp, align 8
  store %struct.sv* %82, %struct.sv** %incdec.ptr53, align 8
  store %struct.sv* %82, %struct.sv** %tmp52
  %84 = load %struct.sv*, %struct.sv** %tmp52
  %85 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %85, %struct.sv*** @PL_stack_sp, align 8
  %86 = load %struct.cv*, %struct.cv** %cv, align 8
  %87 = bitcast %struct.cv* %86 to %struct.sv*
  %call54 = call i32 @Perl_call_sv(%struct.sv* %87, i32 2)
  %88 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %88, %struct.sv*** %sp56, align 8
  %89 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev58 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %89, i32 0, i32 5
  %90 = load %struct.stackinfo*, %struct.stackinfo** %si_prev58, align 8
  store %struct.stackinfo* %90, %struct.stackinfo** %prev, align 8
  %91 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool59 = icmp ne %struct.stackinfo* %91, null
  br i1 %tobool59, label %if.end.87, label %if.then.60

if.then.60:                                       ; preds = %if.end.51
  %92 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool61 = icmp ne %struct.gv* %92, null
  br i1 %tobool61, label %land.lhs.true.62, label %cond.false.82

land.lhs.true.62:                                 ; preds = %if.then.60
  %93 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags63 = getelementptr inbounds %struct.gv, %struct.gv* %93, i32 0, i32 2
  %94 = load i32, i32* %sv_flags63, align 4
  %and64 = and i32 %94, 255
  %cmp65 = icmp eq i32 %and64, 13
  br i1 %cmp65, label %land.lhs.true.67, label %cond.false.82

land.lhs.true.67:                                 ; preds = %land.lhs.true.62
  %95 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any68 = getelementptr inbounds %struct.gv, %struct.gv* %95, i32 0, i32 0
  %96 = load %struct.xpvgv*, %struct.xpvgv** %sv_any68, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %96, i32 0, i32 7
  %97 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %97, i32 0, i32 2
  %98 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool69 = icmp ne %struct.io* %98, null
  br i1 %tobool69, label %land.lhs.true.70, label %cond.false.82

land.lhs.true.70:                                 ; preds = %land.lhs.true.67
  %99 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any71 = getelementptr inbounds %struct.gv, %struct.gv* %99, i32 0, i32 0
  %100 = load %struct.xpvgv*, %struct.xpvgv** %sv_any71, align 8
  %xgv_gp72 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %100, i32 0, i32 7
  %101 = load %struct.gp*, %struct.gp** %xgv_gp72, align 8
  %gp_io73 = getelementptr inbounds %struct.gp, %struct.gp* %101, i32 0, i32 2
  %102 = load %struct.io*, %struct.io** %gp_io73, align 8
  %sv_any74 = getelementptr inbounds %struct.io, %struct.io* %102, i32 0, i32 0
  %103 = load %struct.xpvio*, %struct.xpvio** %sv_any74, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %103, i32 0, i32 8
  %104 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool75 = icmp ne %struct._PerlIO** %104, null
  br i1 %tobool75, label %cond.true.76, label %cond.false.82

cond.true.76:                                     ; preds = %land.lhs.true.70
  %105 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any77 = getelementptr inbounds %struct.gv, %struct.gv* %105, i32 0, i32 0
  %106 = load %struct.xpvgv*, %struct.xpvgv** %sv_any77, align 8
  %xgv_gp78 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %106, i32 0, i32 7
  %107 = load %struct.gp*, %struct.gp** %xgv_gp78, align 8
  %gp_io79 = getelementptr inbounds %struct.gp, %struct.gp* %107, i32 0, i32 2
  %108 = load %struct.io*, %struct.io** %gp_io79, align 8
  %sv_any80 = getelementptr inbounds %struct.io, %struct.io* %108, i32 0, i32 0
  %109 = load %struct.xpvio*, %struct.xpvio** %sv_any80, align 8
  %xio_ofp81 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %109, i32 0, i32 8
  %110 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp81, align 8
  br label %cond.end.84

cond.false.82:                                    ; preds = %land.lhs.true.70, %land.lhs.true.67, %land.lhs.true.62, %if.then.60
  %call83 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.76
  %cond85 = phi %struct._PerlIO** [ %110, %cond.true.76 ], [ %call83, %cond.false.82 ]
  %call86 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.87

if.end.87:                                        ; preds = %cond.end.84, %if.end.51
  %111 = load %struct.sv**, %struct.sv*** %sp56, align 8
  %112 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast88 = ptrtoint %struct.sv** %111 to i64
  %sub.ptr.rhs.cast89 = ptrtoint %struct.sv** %112 to i64
  %sub.ptr.sub90 = sub i64 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast89
  %sub.ptr.div91 = sdiv exact i64 %sub.ptr.sub90, 8
  %113 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any92 = getelementptr inbounds %struct.av, %struct.av* %113, i32 0, i32 0
  %114 = load %struct.xpvav*, %struct.xpvav** %sv_any92, align 8
  %xav_fill93 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %114, i32 0, i32 1
  store i64 %sub.ptr.div91, i64* %xav_fill93, align 8
  %115 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack94 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %115, i32 0, i32 0
  %116 = load %struct.av*, %struct.av** %si_stack94, align 8
  %sv_any95 = getelementptr inbounds %struct.av, %struct.av* %116, i32 0, i32 0
  %117 = load %struct.xpvav*, %struct.xpvav** %sv_any95, align 8
  %xav_array96 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %117, i32 0, i32 0
  %118 = load i8*, i8** %xav_array96, align 8
  %119 = bitcast i8* %118 to %struct.sv**
  store %struct.sv** %119, %struct.sv*** @PL_stack_base, align 8
  %120 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %121 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack97 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %121, i32 0, i32 0
  %122 = load %struct.av*, %struct.av** %si_stack97, align 8
  %sv_any98 = getelementptr inbounds %struct.av, %struct.av* %122, i32 0, i32 0
  %123 = load %struct.xpvav*, %struct.xpvav** %sv_any98, align 8
  %xav_max99 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %123, i32 0, i32 2
  %124 = load i64, i64* %xav_max99, align 8
  %add.ptr100 = getelementptr inbounds %struct.sv*, %struct.sv** %120, i64 %124
  store %struct.sv** %add.ptr100, %struct.sv*** @PL_stack_max, align 8
  %125 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %126 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack101 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %126, i32 0, i32 0
  %127 = load %struct.av*, %struct.av** %si_stack101, align 8
  %sv_any102 = getelementptr inbounds %struct.av, %struct.av* %127, i32 0, i32 0
  %128 = load %struct.xpvav*, %struct.xpvav** %sv_any102, align 8
  %xav_fill103 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %128, i32 0, i32 1
  %129 = load i64, i64* %xav_fill103, align 8
  %add.ptr104 = getelementptr inbounds %struct.sv*, %struct.sv** %125, i64 %129
  store %struct.sv** %add.ptr104, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr104, %struct.sv*** %sp56, align 8
  %130 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack106 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %130, i32 0, i32 0
  %131 = load %struct.av*, %struct.av** %si_stack106, align 8
  store %struct.av* %131, %struct.av** @PL_curstack, align 8
  store %struct.av* %131, %struct.av** %tmp105
  %132 = load %struct.av*, %struct.av** %tmp105
  %133 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %133, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %133, %struct.stackinfo** %tmp107
  %134 = load %struct.stackinfo*, %struct.stackinfo** %tmp107
  call void @Perl_pop_scope()
  br label %return

if.end.108:                                       ; preds = %lor.lhs.false, %land.lhs.true, %if.then
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %cond.end
  %135 = load i8*, i8** %message, align 8
  %136 = load i64, i64* %msglen, align 8
  %conv110 = trunc i64 %136 to i32
  call void @Perl_write_to_stderr(i8* %135, i32 %conv110)
  br label %return

return:                                           ; preds = %if.end.109, %if.end.87
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_warn(i8* %pat, ...) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %pat, i8** %pat.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %pat.addr, align 8
  call void @Perl_vwarn(i8* %0, [1 x %struct.__va_list_tag]* %args)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_warner(i32 %err, i8* %pat, ...) #0 {
entry:
  %err.addr = alloca i32, align 4
  %pat.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %err, i32* %err.addr, align 4
  store i8* %pat, i8** %pat.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %err.addr, align 4
  %1 = load i8*, i8** %pat.addr, align 8
  call void @Perl_vwarner(i32 %0, i8* %1, [1 x %struct.__va_list_tag]* %args)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_vwarner(i32 %err, i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %err.addr = alloca i32, align 4
  %pat.addr = alloca i8*, align 8
  %args.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %msv = alloca %struct.sv*, align 8
  %msglen = alloca i64, align 8
  %message = alloca i8*, align 8
  %utf8 = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %0 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %0, i32 0, i32 14
  %1 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp = icmp eq %struct.sv* %1, null
  br i1 %cmp, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1 = getelementptr inbounds %struct.cop, %struct.cop* %2, i32 0, i32 14
  %3 = load %struct.sv*, %struct.sv** %cop_warnings1, align 8
  %cmp2 = icmp eq %struct.sv* %3, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp2, label %if.else, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings4 = getelementptr inbounds %struct.cop, %struct.cop* %4, i32 0, i32 14
  %5 = load %struct.sv*, %struct.sv** %cop_warnings4, align 8
  %cmp5 = icmp eq %struct.sv* %5, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp5, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %6 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings6 = getelementptr inbounds %struct.cop, %struct.cop* %6, i32 0, i32 14
  %7 = load %struct.sv*, %struct.sv** %cop_warnings6, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 0
  %10 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true
  %12 = load i32, i32* %err.addr, align 4
  %and8 = and i32 %12, 255
  %mul = mul i32 2, %and8
  %add = add i32 %mul, 1
  %div = udiv i32 %add, 8
  %idxprom = zext i32 %div to i64
  %13 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings9 = getelementptr inbounds %struct.cop, %struct.cop* %13, i32 0, i32 14
  %14 = load %struct.sv*, %struct.sv** %cop_warnings9, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any10, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_pv11 = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 0
  %17 = load i8*, i8** %xpv_pv11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %18 to i32
  %19 = load i32, i32* %err.addr, align 4
  %and14 = and i32 %19, 255
  %mul15 = mul i32 2, %and14
  %add16 = add i32 %mul15, 1
  %rem = urem i32 %add16, 8
  %shl = shl i32 1, %rem
  %and17 = and i32 %conv13, %shl
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.7
  %20 = load i32, i32* %err.addr, align 4
  %shr = lshr i32 %20, 8
  %and20 = and i32 %shr, 255
  %mul21 = mul i32 2, %and20
  %add22 = add i32 %mul21, 1
  %div23 = udiv i32 %add22, 8
  %idxprom24 = zext i32 %div23 to i64
  %21 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings25 = getelementptr inbounds %struct.cop, %struct.cop* %21, i32 0, i32 14
  %22 = load %struct.sv*, %struct.sv** %cop_warnings25, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any26, align 8
  %24 = bitcast i8* %23 to %struct.xpv*
  %xpv_pv27 = getelementptr inbounds %struct.xpv, %struct.xpv* %24, i32 0, i32 0
  %25 = load i8*, i8** %xpv_pv27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 %idxprom24
  %26 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %26 to i32
  %27 = load i32, i32* %err.addr, align 4
  %shr30 = lshr i32 %27, 8
  %and31 = and i32 %shr30, 255
  %mul32 = mul i32 2, %and31
  %add33 = add i32 %mul32, 1
  %rem34 = urem i32 %add33, 8
  %shl35 = shl i32 1, %rem34
  %and36 = and i32 %conv29, %shl35
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.19
  %28 = load i32, i32* %err.addr, align 4
  %shr39 = lshr i32 %28, 16
  %and40 = and i32 %shr39, 255
  %mul41 = mul i32 2, %and40
  %add42 = add i32 %mul41, 1
  %div43 = udiv i32 %add42, 8
  %idxprom44 = zext i32 %div43 to i64
  %29 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings45 = getelementptr inbounds %struct.cop, %struct.cop* %29, i32 0, i32 14
  %30 = load %struct.sv*, %struct.sv** %cop_warnings45, align 8
  %sv_any46 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any46, align 8
  %32 = bitcast i8* %31 to %struct.xpv*
  %xpv_pv47 = getelementptr inbounds %struct.xpv, %struct.xpv* %32, i32 0, i32 0
  %33 = load i8*, i8** %xpv_pv47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %33, i64 %idxprom44
  %34 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %34 to i32
  %35 = load i32, i32* %err.addr, align 4
  %shr50 = lshr i32 %35, 16
  %and51 = and i32 %shr50, 255
  %mul52 = mul i32 2, %and51
  %add53 = add i32 %mul52, 1
  %rem54 = urem i32 %add53, 8
  %shl55 = shl i32 1, %rem54
  %and56 = and i32 %conv49, %shl55
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.38
  %36 = load i32, i32* %err.addr, align 4
  %shr59 = lshr i32 %36, 24
  %and60 = and i32 %shr59, 255
  %mul61 = mul i32 2, %and60
  %add62 = add i32 %mul61, 1
  %div63 = udiv i32 %add62, 8
  %idxprom64 = zext i32 %div63 to i64
  %37 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings65 = getelementptr inbounds %struct.cop, %struct.cop* %37, i32 0, i32 14
  %38 = load %struct.sv*, %struct.sv** %cop_warnings65, align 8
  %sv_any66 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any66, align 8
  %40 = bitcast i8* %39 to %struct.xpv*
  %xpv_pv67 = getelementptr inbounds %struct.xpv, %struct.xpv* %40, i32 0, i32 0
  %41 = load i8*, i8** %xpv_pv67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %41, i64 %idxprom64
  %42 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %42 to i32
  %43 = load i32, i32* %err.addr, align 4
  %shr70 = lshr i32 %43, 24
  %and71 = and i32 %shr70, 255
  %mul72 = mul i32 2, %and71
  %add73 = add i32 %mul72, 1
  %rem74 = urem i32 %add73, 8
  %shl75 = shl i32 1, %rem74
  %and76 = and i32 %conv69, %shl75
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.58, %lor.lhs.false.38, %lor.lhs.false.19, %lor.lhs.false.7, %land.lhs.true
  %44 = load i8*, i8** %pat.addr, align 8
  %45 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args.addr, align 8
  %call = call %struct.sv* @Perl_vmess(i8* %44, [1 x %struct.__va_list_tag]* %45)
  store %struct.sv* %call, %struct.sv** %msv, align 8
  %46 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 2
  %47 = load i32, i32* %sv_flags, align 4
  %and78 = and i32 %47, 262144
  %cmp79 = icmp eq i32 %and78, 262144
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %48 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_any81 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 0
  %49 = load i8*, i8** %sv_any81, align 8
  %50 = bitcast i8* %49 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %50, i32 0, i32 1
  %51 = load i64, i64* %xpv_cur, align 8
  store i64 %51, i64* %msglen, align 8
  %52 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_any82 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 0
  %53 = load i8*, i8** %sv_any82, align 8
  %54 = bitcast i8* %53 to %struct.xpv*
  %xpv_pv83 = getelementptr inbounds %struct.xpv, %struct.xpv* %54, i32 0, i32 0
  %55 = load i8*, i8** %xpv_pv83, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %56 = load %struct.sv*, %struct.sv** %msv, align 8
  %call84 = call i8* @Perl_sv_2pv_flags(%struct.sv* %56, i64* %msglen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %55, %cond.true ], [ %call84, %cond.false ]
  store i8* %cond, i8** %message, align 8
  %57 = load %struct.sv*, %struct.sv** %msv, align 8
  %sv_flags85 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags85, align 4
  %and86 = and i32 %58, 536870912
  store i32 %and86, i32* %utf8, align 4
  %59 = load %struct.sv*, %struct.sv** @PL_diehook, align 8
  %tobool87 = icmp ne %struct.sv* %59, null
  br i1 %tobool87, label %if.then.88, label %if.end

if.then.88:                                       ; preds = %cond.end
  %60 = load i8*, i8** %message, align 8
  %61 = load i64, i64* %msglen, align 8
  %62 = load i32, i32* %utf8, align 4
  call void @S_vdie_common(i8* %60, i64 %61, i32 %62)
  br label %if.end

if.end:                                           ; preds = %if.then.88, %cond.end
  %63 = load volatile i32, i32* @PL_in_eval, align 4
  %tobool89 = icmp ne i32 %63, 0
  br i1 %tobool89, label %if.then.90, label %if.end.99

if.then.90:                                       ; preds = %if.end
  %64 = load i8*, i8** %message, align 8
  %65 = load i64, i64* %msglen, align 8
  %call91 = call %struct.op* @Perl_die_where(i8* %64, i64 %65)
  store %struct.op* %call91, %struct.op** @PL_restartop, align 8
  %66 = load i32, i32* %utf8, align 4
  %67 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any92 = getelementptr inbounds %struct.gv, %struct.gv* %67, i32 0, i32 0
  %68 = load %struct.xpvgv*, %struct.xpvgv** %sv_any92, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %68, i32 0, i32 7
  %69 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %69, i32 0, i32 0
  %70 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %sv_flags93 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags93, align 4
  %or = or i32 %71, %66
  store i32 %or, i32* %sv_flags93, align 4
  %72 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %72, i32 0, i32 1
  %73 = load %struct.jmpenv*, %struct.jmpenv** %je_prev, align 8
  %tobool94 = icmp ne %struct.jmpenv* %73, null
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.then.90
  %74 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_buf = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %74, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf, i32 0, i32 0
  call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay, i32 3) #4
  unreachable

if.end.96:                                        ; preds = %if.then.90
  %call97 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call98 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.99:                                        ; preds = %if.end
  %75 = load i8*, i8** %message, align 8
  %76 = load i64, i64* %msglen, align 8
  %conv100 = trunc i64 %76 to i32
  call void @Perl_write_to_stderr(i8* %75, i32 %conv100)
  call void @Perl_my_failure_exit()
  br label %if.end.101

if.else:                                          ; preds = %lor.lhs.false.58, %lor.lhs.false.3, %lor.lhs.false, %entry
  %77 = load i8*, i8** %pat.addr, align 8
  %78 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args.addr, align 8
  call void @Perl_vwarn(i8* %77, [1 x %struct.__va_list_tag]* %78)
  br label %if.end.101

if.end.101:                                       ; preds = %if.else, %if.end.99
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_my_setenv(i8* %nam, i8* %val) #0 {
entry:
  %nam.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %nlen = alloca i32, align 4
  %vlen = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  %tmpenv = alloca i8**, align 8
  %len = alloca i32, align 4
  %new_env = alloca i8*, align 8
  %nlen89 = alloca i32, align 4
  %vlen92 = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %0 = load i32, i32* @PL_use_safe_putenv, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else.88, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %nam.addr, align 8
  %call = call i32 @Perl_setenv_getix(i8* %1)
  store i32 %call, i32* %i, align 4
  %2 = load i8**, i8*** @environ, align 8
  %3 = load i8**, i8*** @PL_origenviron, align 8
  %cmp = icmp eq i8** %2, %3
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %max, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %5 = load i32, i32* %max, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8**, i8*** @environ, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %max, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %max, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %max, align 4
  %add = add nsw i32 %9, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call3 = call i8* @Perl_safesysmalloc(i64 %mul)
  %10 = bitcast i8* %call3 to i8**
  store i8** %10, i8*** %tmpenv, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.25, %for.end
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %max, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body.7, label %for.end.27

for.body.7:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i8**, i8*** @environ, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %14, i64 %idxprom8
  %15 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i64 @strlen(i8* %15)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, i32* %len, align 4
  %16 = load i32, i32* %len, align 4
  %add12 = add nsw i32 %16, 1
  %conv13 = sext i32 %add12 to i64
  %mul14 = mul i64 %conv13, 1
  %call15 = call i8* @Perl_safesysmalloc(i64 %mul14)
  %17 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load i8**, i8*** %tmpenv, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %18, i64 %idxprom16
  store i8* %call15, i8** %arrayidx17, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load i8**, i8*** %tmpenv, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %20, i64 %idxprom18
  %21 = load i8*, i8** %arrayidx19, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load i8**, i8*** @environ, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %23, i64 %idxprom20
  %24 = load i8*, i8** %arrayidx21, align 8
  %25 = load i32, i32* %len, align 4
  %add22 = add nsw i32 %25, 1
  %conv23 = sext i32 %add22 to i64
  %mul24 = mul i64 %conv23, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %24, i64 %mul24, i32 1, i1 false)
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.7
  %26 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond.4

for.end.27:                                       ; preds = %for.cond.4
  %27 = load i32, i32* %max, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load i8**, i8*** %tmpenv, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %28, i64 %idxprom28
  store i8* null, i8** %arrayidx29, align 8
  %29 = load i8**, i8*** %tmpenv, align 8
  store i8** %29, i8*** @environ, align 8
  br label %if.end

if.end:                                           ; preds = %for.end.27, %if.then
  %30 = load i8*, i8** %val.addr, align 8
  %tobool30 = icmp ne i8* %30, null
  br i1 %tobool30, label %if.end.43, label %if.then.31

if.then.31:                                       ; preds = %if.end
  %31 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %31 to i64
  %32 = load i8**, i8*** @environ, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %32, i64 %idxprom32
  %33 = load i8*, i8** %arrayidx33, align 8
  call void @Perl_safesysfree(i8* %33)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.31
  %34 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %34 to i64
  %35 = load i8**, i8*** @environ, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %35, i64 %idxprom34
  %36 = load i8*, i8** %arrayidx35, align 8
  %tobool36 = icmp ne i8* %36, null
  br i1 %tobool36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %37, 1
  %idxprom38 = sext i32 %add37 to i64
  %38 = load i8**, i8*** @environ, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %38, i64 %idxprom38
  %39 = load i8*, i8** %arrayidx39, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %40 to i64
  %41 = load i8**, i8*** @environ, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %41, i64 %idxprom40
  store i8* %39, i8** %arrayidx41, align 8
  %42 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %42, 1
  store i32 %inc42, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.117

if.end.43:                                        ; preds = %if.end
  %43 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %43 to i64
  %44 = load i8**, i8*** @environ, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %44, i64 %idxprom44
  %45 = load i8*, i8** %arrayidx45, align 8
  %tobool46 = icmp ne i8* %45, null
  br i1 %tobool46, label %if.else, label %if.then.47

if.then.47:                                       ; preds = %if.end.43
  %46 = load i8**, i8*** @environ, align 8
  %47 = bitcast i8** %46 to i8*
  %48 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %48, 2
  %conv49 = sext i32 %add48 to i64
  %mul50 = mul i64 %conv49, 8
  %call51 = call i8* @Perl_safesysrealloc(i8* %47, i64 %mul50)
  %49 = bitcast i8* %call51 to i8**
  store i8** %49, i8*** @environ, align 8
  %50 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %50, 1
  %idxprom53 = sext i32 %add52 to i64
  %51 = load i8**, i8*** @environ, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %51, i64 %idxprom53
  store i8* null, i8** %arrayidx54, align 8
  br label %if.end.57

if.else:                                          ; preds = %if.end.43
  %52 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %52 to i64
  %53 = load i8**, i8*** @environ, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %53, i64 %idxprom55
  %54 = load i8*, i8** %arrayidx56, align 8
  call void @Perl_safesysfree(i8* %54)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.47
  %55 = load i8*, i8** %nam.addr, align 8
  %call58 = call i64 @strlen(i8* %55)
  %conv59 = trunc i64 %call58 to i32
  store i32 %conv59, i32* %nlen, align 4
  %56 = load i8*, i8** %val.addr, align 8
  %call60 = call i64 @strlen(i8* %56)
  %conv61 = trunc i64 %call60 to i32
  store i32 %conv61, i32* %vlen, align 4
  %57 = load i32, i32* %nlen, align 4
  %58 = load i32, i32* %vlen, align 4
  %add62 = add nsw i32 %57, %58
  %add63 = add nsw i32 %add62, 2
  %conv64 = sext i32 %add63 to i64
  %mul65 = mul i64 %conv64, 1
  %call66 = call i8* @Perl_safesysmalloc(i64 %mul65)
  %59 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %59 to i64
  %60 = load i8**, i8*** @environ, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %60, i64 %idxprom67
  store i8* %call66, i8** %arrayidx68, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %61 to i64
  %62 = load i8**, i8*** @environ, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %62, i64 %idxprom69
  %63 = load i8*, i8** %arrayidx70, align 8
  %64 = load i8*, i8** %nam.addr, align 8
  %65 = load i32, i32* %nlen, align 4
  %conv71 = sext i32 %65 to i64
  %mul72 = mul i64 %conv71, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 %mul72, i32 1, i1 false)
  %66 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %66 to i64
  %67 = load i8**, i8*** @environ, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %67, i64 %idxprom73
  %68 = load i8*, i8** %arrayidx74, align 8
  %69 = load i32, i32* %nlen, align 4
  %idx.ext = sext i32 %69 to i64
  %add.ptr = getelementptr inbounds i8, i8* %68, i64 %idx.ext
  store i8 61, i8* %add.ptr, align 1
  %70 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %70 to i64
  %71 = load i8**, i8*** @environ, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %71, i64 %idxprom75
  %72 = load i8*, i8** %arrayidx76, align 8
  %73 = load i32, i32* %nlen, align 4
  %add77 = add nsw i32 %73, 1
  %idx.ext78 = sext i32 %add77 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %72, i64 %idx.ext78
  %74 = load i8*, i8** %val.addr, align 8
  %75 = load i32, i32* %vlen, align 4
  %conv80 = sext i32 %75 to i64
  %mul81 = mul i64 %conv80, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr79, i8* %74, i64 %mul81, i32 1, i1 false)
  %76 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %76 to i64
  %77 = load i8**, i8*** @environ, align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %77, i64 %idxprom82
  %78 = load i8*, i8** %arrayidx83, align 8
  %79 = load i32, i32* %nlen, align 4
  %add84 = add nsw i32 %79, 1
  %80 = load i32, i32* %vlen, align 4
  %add85 = add nsw i32 %add84, %80
  %idx.ext86 = sext i32 %add85 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %78, i64 %idx.ext86
  store i8 0, i8* %add.ptr87, align 1
  br label %if.end.117

if.else.88:                                       ; preds = %entry
  %81 = load i8*, i8** %nam.addr, align 8
  %call90 = call i64 @strlen(i8* %81)
  %conv91 = trunc i64 %call90 to i32
  store i32 %conv91, i32* %nlen89, align 4
  %82 = load i8*, i8** %val.addr, align 8
  %tobool93 = icmp ne i8* %82, null
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.else.88
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %val.addr, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.else.88
  %83 = load i8*, i8** %val.addr, align 8
  %call96 = call i64 @strlen(i8* %83)
  %conv97 = trunc i64 %call96 to i32
  store i32 %conv97, i32* %vlen92, align 4
  %84 = load i32, i32* %nlen89, align 4
  %85 = load i32, i32* %vlen92, align 4
  %add98 = add nsw i32 %84, %85
  %add99 = add nsw i32 %add98, 2
  %conv100 = sext i32 %add99 to i64
  %mul101 = mul i64 %conv100, 1
  %call102 = call i8* @Perl_safesysmalloc(i64 %mul101)
  store i8* %call102, i8** %new_env, align 8
  %86 = load i8*, i8** %new_env, align 8
  %87 = load i8*, i8** %nam.addr, align 8
  %88 = load i32, i32* %nlen89, align 4
  %conv103 = sext i32 %88 to i64
  %mul104 = mul i64 %conv103, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 %mul104, i32 1, i1 false)
  %89 = load i8*, i8** %new_env, align 8
  %90 = load i32, i32* %nlen89, align 4
  %idx.ext105 = sext i32 %90 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %89, i64 %idx.ext105
  store i8 61, i8* %add.ptr106, align 1
  %91 = load i8*, i8** %new_env, align 8
  %92 = load i32, i32* %nlen89, align 4
  %add107 = add nsw i32 %92, 1
  %idx.ext108 = sext i32 %add107 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %91, i64 %idx.ext108
  %93 = load i8*, i8** %val.addr, align 8
  %94 = load i32, i32* %vlen92, align 4
  %conv110 = sext i32 %94 to i64
  %mul111 = mul i64 %conv110, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr109, i8* %93, i64 %mul111, i32 1, i1 false)
  %95 = load i8*, i8** %new_env, align 8
  %96 = load i32, i32* %nlen89, align 4
  %add112 = add nsw i32 %96, 1
  %97 = load i32, i32* %vlen92, align 4
  %add113 = add nsw i32 %add112, %97
  %idx.ext114 = sext i32 %add113 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %95, i64 %idx.ext114
  store i8 0, i8* %add.ptr115, align 1
  %98 = load i8*, i8** %new_env, align 8
  %call116 = call i32 @putenv(i8* %98)
  br label %if.end.117

if.end.117:                                       ; preds = %while.end, %if.end.95, %if.end.57
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_setenv_getix(i8* %nam) #0 {
entry:
  %nam.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 8
  %0 = load i8*, i8** %nam.addr, align 8
  %call = call i64 @strlen(i8* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** @environ, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i8**, i8*** @environ, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx2, align 8
  %7 = load i8*, i8** %nam.addr, align 8
  %8 = load i32, i32* %len, align 4
  %conv3 = sext i32 %8 to i64
  %call4 = call i32 @strncmp(i8* %6, i8* %7, i64 %conv3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %len, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i8**, i8*** @environ, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %11, i64 %idxprom7
  %12 = load i8*, i8** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %13 to i32
  %cmp = icmp eq i32 %conv10, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %15 = load i32, i32* %i, align 4
  ret i32 %15
}

declare i32 @putenv(i8*) #1

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define signext i16 @Perl_my_swap(i16 signext %s) #0 {
entry:
  %s.addr = alloca i16, align 2
  %result = alloca i16, align 2
  store i16 %s, i16* %s.addr, align 2
  %0 = load i16, i16* %s.addr, align 2
  %conv = sext i16 %0 to i32
  %and = and i32 %conv, 255
  %shl = shl i32 %and, 8
  %1 = load i16, i16* %s.addr, align 2
  %conv1 = sext i16 %1 to i32
  %shr = ashr i32 %conv1, 8
  %and2 = and i32 %shr, 255
  %add = add nsw i32 %shl, %and2
  %conv3 = trunc i32 %add to i16
  store i16 %conv3, i16* %result, align 2
  %2 = load i16, i16* %result, align 2
  ret i16 %2
}

; Function Attrs: nounwind uwtable
define i64 @Perl_my_htonl(i64 %l) #0 {
entry:
  %l.addr = alloca i64, align 8
  %u = alloca %union.anon.2, align 8
  store i64 %l, i64* %l.addr, align 8
  %0 = load i64, i64* %l.addr, align 8
  %shr = ashr i64 %0, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %c = bitcast %union.anon.2* %u to [8 x i8]*
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %c, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %1 = load i64, i64* %l.addr, align 8
  %shr1 = ashr i64 %1, 16
  %and2 = and i64 %shr1, 255
  %conv3 = trunc i64 %and2 to i8
  %c4 = bitcast %union.anon.2* %u to [8 x i8]*
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %c4, i32 0, i64 1
  store i8 %conv3, i8* %arrayidx5, align 1
  %2 = load i64, i64* %l.addr, align 8
  %shr6 = ashr i64 %2, 8
  %and7 = and i64 %shr6, 255
  %conv8 = trunc i64 %and7 to i8
  %c9 = bitcast %union.anon.2* %u to [8 x i8]*
  %arrayidx10 = getelementptr inbounds [8 x i8], [8 x i8]* %c9, i32 0, i64 2
  store i8 %conv8, i8* %arrayidx10, align 1
  %3 = load i64, i64* %l.addr, align 8
  %and11 = and i64 %3, 255
  %conv12 = trunc i64 %and11 to i8
  %c13 = bitcast %union.anon.2* %u to [8 x i8]*
  %arrayidx14 = getelementptr inbounds [8 x i8], [8 x i8]* %c13, i32 0, i64 3
  store i8 %conv12, i8* %arrayidx14, align 1
  %result = bitcast %union.anon.2* %u to i64*
  %4 = load i64, i64* %result, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @Perl_my_ntohl(i64 %l) #0 {
entry:
  %l.addr = alloca i64, align 8
  %u = alloca %union.anon.3, align 8
  store i64 %l, i64* %l.addr, align 8
  %0 = load i64, i64* %l.addr, align 8
  %shr = ashr i64 %0, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %c = bitcast %union.anon.3* %u to [8 x i8]*
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %c, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %1 = load i64, i64* %l.addr, align 8
  %shr1 = ashr i64 %1, 16
  %and2 = and i64 %shr1, 255
  %conv3 = trunc i64 %and2 to i8
  %c4 = bitcast %union.anon.3* %u to [8 x i8]*
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %c4, i32 0, i64 1
  store i8 %conv3, i8* %arrayidx5, align 1
  %2 = load i64, i64* %l.addr, align 8
  %shr6 = ashr i64 %2, 8
  %and7 = and i64 %shr6, 255
  %conv8 = trunc i64 %and7 to i8
  %c9 = bitcast %union.anon.3* %u to [8 x i8]*
  %arrayidx10 = getelementptr inbounds [8 x i8], [8 x i8]* %c9, i32 0, i64 2
  store i8 %conv8, i8* %arrayidx10, align 1
  %3 = load i64, i64* %l.addr, align 8
  %and11 = and i64 %3, 255
  %conv12 = trunc i64 %and11 to i8
  %c13 = bitcast %union.anon.3* %u to [8 x i8]*
  %arrayidx14 = getelementptr inbounds [8 x i8], [8 x i8]* %c13, i32 0, i64 3
  store i8 %conv12, i8* %arrayidx14, align 1
  %l15 = bitcast %union.anon.3* %u to i64*
  %4 = load i64, i64* %l15, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define signext i16 @htovs(i16 signext %n) #0 {
entry:
  %n.addr = alloca i16, align 2
  %u = alloca %union.anon.4, align 2
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  store i16 %n, i16* %n.addr, align 2
  store i32 0, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %n.addr, align 2
  %conv2 = sext i16 %1 to i32
  %2 = load i32, i32* %s, align 4
  %shr = ashr i32 %conv2, %2
  %and = and i32 %shr, 255
  %conv3 = trunc i32 %and to i8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %c = bitcast %union.anon.4* %u to [2 x i8]*
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %c, i32 0, i64 %idxprom
  store i8 %conv3, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  %5 = load i32, i32* %s, align 4
  %add = add nsw i32 %5, 8
  store i32 %add, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %value = bitcast %union.anon.4* %u to i16*
  %6 = load i16, i16* %value, align 2
  ret i16 %6
}

; Function Attrs: nounwind uwtable
define i64 @htovl(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %u = alloca %union.anon.5, align 8
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  store i32 0, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %n.addr, align 8
  %2 = load i32, i32* %s, align 4
  %sh_prom = zext i32 %2 to i64
  %shr = ashr i64 %1, %sh_prom
  %and = and i64 %shr, 255
  %conv2 = trunc i64 %and to i8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %c = bitcast %union.anon.5* %u to [8 x i8]*
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %c, i32 0, i64 %idxprom
  store i8 %conv2, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  %5 = load i32, i32* %s, align 4
  %add = add nsw i32 %5, 8
  store i32 %add, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %value = bitcast %union.anon.5* %u to i64*
  %6 = load i64, i64* %value, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define signext i16 @vtohs(i16 signext %n) #0 {
entry:
  %n.addr = alloca i16, align 2
  %u = alloca %union.anon.6, align 2
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  store i16 %n, i16* %n.addr, align 2
  store i32 0, i32* %s, align 4
  %0 = load i16, i16* %n.addr, align 2
  %value = bitcast %union.anon.6* %u to i16*
  store i16 %0, i16* %value, align 2
  store i16 0, i16* %n.addr, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %c = bitcast %union.anon.6* %u to [2 x i8]*
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %c, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %3 to i32
  %and = and i32 %conv2, 255
  %conv3 = trunc i32 %and to i16
  %conv4 = sext i16 %conv3 to i32
  %4 = load i32, i32* %s, align 4
  %shl = shl i32 %conv4, %4
  %5 = load i16, i16* %n.addr, align 2
  %conv5 = sext i16 %5 to i32
  %or = or i32 %conv5, %shl
  %conv6 = trunc i32 %or to i16
  store i16 %conv6, i16* %n.addr, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  %7 = load i32, i32* %s, align 4
  %add = add nsw i32 %7, 8
  store i32 %add, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16, i16* %n.addr, align 2
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define i64 @vtohl(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %u = alloca %union.anon.7, align 8
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  store i32 0, i32* %s, align 4
  %0 = load i64, i64* %n.addr, align 8
  %value = bitcast %union.anon.7* %u to i64*
  store i64 %0, i64* %value, align 8
  store i64 0, i64* %n.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %c = bitcast %union.anon.7* %u to [8 x i8]*
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %c, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %3 to i32
  %and = and i32 %conv2, 255
  %conv3 = sext i32 %and to i64
  %4 = load i32, i32* %s, align 4
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 %conv3, %sh_prom
  %5 = load i64, i64* %n.addr, align 8
  %or = or i64 %5, %shl
  store i64 %or, i64* %n.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  %7 = load i32, i32* %s, align 4
  %add = add nsw i32 %7, 8
  store i32 %add, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %n.addr, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define void @Perl_my_swabn(i8* %ptr, i32 %n) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %e = alloca i8*, align 8
  %tc = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %e, align 8
  %3 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %3, 2
  store i32 %div, i32* %n.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %s, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %tc, align 1
  %7 = load i8*, i8** %e, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8*, i8** %s, align 8
  store i8 %8, i8* %9, align 1
  %10 = load i8, i8* %tc, align 1
  %11 = load i8*, i8** %e, align 8
  store i8 %10, i8* %11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %13 = load i8*, i8** %e, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr1, i8** %e, align 8
  %14 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @Perl_my_popen_list(i8* %mode, i32 %n, %struct.sv** %args) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %args.addr = alloca %struct.sv**, align 8
  %p = alloca [2 x i32], align 4
  %This = alloca i32, align 4
  %that = alloca i32, align 4
  %pid = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %did_pipes = alloca i32, align 4
  %pp = alloca [2 x i32], align 4
  %errkid = alloca i32, align 4
  %n124 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %pid2 = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %mode, i8** %mode.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.sv** %args, %struct.sv*** %args.addr, align 8
  store i32 0, i32* %did_pipes, align 4
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** null)
  %0 = load i8*, i8** %mode.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 119
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %This, align 4
  %2 = load i32, i32* %This, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %that, align 4
  %3 = load i8, i8* @PL_tainting, align 1
  %tobool2 = icmp ne i8 %3, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_taint_env()
  call void @Perl_taint_proper(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i32 0
  %call3 = call i32 @pipe(i32* %arraydecay)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i32 0
  %call9 = call i32 @pipe(i32* %arraydecay8)
  %cmp10 = icmp sge i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store i32 1, i32* %did_pipes, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.7
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.end.13
  %call14 = call i32 @Perl_my_fork()
  store i32 %call14, i32* %pid, align 4
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call17 = call i32* @__errno_location()
  %4 = load i32, i32* %call17, align 4
  %cmp18 = icmp ne i32 %4, 11
  br i1 %cmp18, label %if.then.20, label %if.end.32

if.then.20:                                       ; preds = %while.body
  %5 = load i32, i32* %This, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call21 = call i32 @close(i32 %6)
  %7 = load i32, i32* %that, align 4
  %idxprom22 = sext i32 %7 to i64
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom22
  %8 = load i32, i32* %arrayidx23, align 4
  %call24 = call i32 @close(i32 %8)
  %9 = load i32, i32* %did_pipes, align 4
  %tobool25 = icmp ne i32 %9, 0
  br i1 %tobool25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.then.20
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %10 = load i32, i32* %arrayidx27, align 4
  %call28 = call i32 @close(i32 %10)
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %11 = load i32, i32* %arrayidx29, align 4
  %call30 = call i32 @close(i32 %11)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %if.then.20
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.32:                                        ; preds = %while.body
  %call33 = call i32 @sleep(i32 5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %pid, align 4
  %cmp34 = icmp eq i32 %12, 0
  br i1 %cmp34, label %if.then.36, label %if.end.81

if.then.36:                                       ; preds = %while.end
  %13 = load i32, i32* %did_pipes, align 4
  %tobool37 = icmp ne i32 %13, 0
  br i1 %tobool37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.then.36
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %14 = load i32, i32* %arrayidx39, align 4
  %call40 = call i32 @close(i32 %14)
  %arrayidx41 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %15 = load i32, i32* %arrayidx41, align 4
  %call42 = call i32 (i32, i32, ...) @fcntl(i32 %15, i32 2, i32 1)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.38, %if.then.36
  %16 = load i32, i32* %that, align 4
  %idxprom44 = sext i32 %16 to i64
  %arrayidx45 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom44
  %17 = load i32, i32* %arrayidx45, align 4
  %18 = load i8*, i8** %mode.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv46 = sext i8 %19 to i32
  %cmp47 = icmp eq i32 %conv46, 114
  %conv48 = zext i1 %cmp47 to i32
  %cmp49 = icmp ne i32 %17, %conv48
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.43
  %20 = load i32, i32* %that, align 4
  %idxprom52 = sext i32 %20 to i64
  %arrayidx53 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom52
  %21 = load i32, i32* %arrayidx53, align 4
  %22 = load i8*, i8** %mode.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv54 = sext i8 %23 to i32
  %cmp55 = icmp eq i32 %conv54, 114
  %conv56 = zext i1 %cmp55 to i32
  %call57 = call i32 @dup2(i32 %21, i32 %conv56)
  %24 = load i32, i32* %that, align 4
  %idxprom58 = sext i32 %24 to i64
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom58
  %25 = load i32, i32* %arrayidx59, align 4
  %call60 = call i32 @close(i32 %25)
  %26 = load i32, i32* %This, align 4
  %idxprom61 = sext i32 %26 to i64
  %arrayidx62 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom61
  %27 = load i32, i32* %arrayidx62, align 4
  %28 = load i8*, i8** %mode.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv63 = sext i8 %29 to i32
  %cmp64 = icmp eq i32 %conv63, 114
  %conv65 = zext i1 %cmp64 to i32
  %cmp66 = icmp ne i32 %27, %conv65
  br i1 %cmp66, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %if.then.51
  %30 = load i32, i32* %This, align 4
  %idxprom69 = sext i32 %30 to i64
  %arrayidx70 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom69
  %31 = load i32, i32* %arrayidx70, align 4
  %call71 = call i32 @close(i32 %31)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %if.then.51
  br label %if.end.76

if.else:                                          ; preds = %if.end.43
  %32 = load i32, i32* %This, align 4
  %idxprom73 = sext i32 %32 to i64
  %arrayidx74 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom73
  %33 = load i32, i32* %arrayidx74, align 4
  %call75 = call i32 @close(i32 %33)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.end.72
  %34 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %34, i64 -1
  %35 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %add.ptr77 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 -1
  %36 = load i32, i32* %n.addr, align 4
  %idx.ext = sext i32 %36 to i64
  %add.ptr78 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr77, i64 %idx.ext
  %arrayidx79 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %37 = load i32, i32* %arrayidx79, align 4
  %38 = load i32, i32* %did_pipes, align 4
  %call80 = call signext i8 @Perl_do_aexec5(%struct.sv* null, %struct.sv** %add.ptr, %struct.sv** %add.ptr78, i32 %37, i32 %38)
  call void @_exit(i32 1) #4
  unreachable

if.end.81:                                        ; preds = %while.end
  call void @Perl_do_execfree()
  %39 = load i32, i32* %did_pipes, align 4
  %tobool82 = icmp ne i32 %39, 0
  br i1 %tobool82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.81
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %40 = load i32, i32* %arrayidx84, align 4
  %call85 = call i32 @close(i32 %40)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.81
  %41 = load i32, i32* %that, align 4
  %idxprom87 = sext i32 %41 to i64
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom87
  %42 = load i32, i32* %arrayidx88, align 4
  %43 = load i32, i32* %This, align 4
  %idxprom89 = sext i32 %43 to i64
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom89
  %44 = load i32, i32* %arrayidx90, align 4
  %cmp91 = icmp slt i32 %42, %44
  br i1 %cmp91, label %if.then.93, label %if.else.106

if.then.93:                                       ; preds = %if.end.86
  %45 = load i32, i32* %This, align 4
  %idxprom94 = sext i32 %45 to i64
  %arrayidx95 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom94
  %46 = load i32, i32* %arrayidx95, align 4
  %47 = load i32, i32* %that, align 4
  %idxprom96 = sext i32 %47 to i64
  %arrayidx97 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom96
  %48 = load i32, i32* %arrayidx97, align 4
  %call98 = call i32 @dup2(i32 %46, i32 %48)
  %49 = load i32, i32* %This, align 4
  %idxprom99 = sext i32 %49 to i64
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom99
  %50 = load i32, i32* %arrayidx100, align 4
  %call101 = call i32 @close(i32 %50)
  %51 = load i32, i32* %that, align 4
  %idxprom102 = sext i32 %51 to i64
  %arrayidx103 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom102
  %52 = load i32, i32* %arrayidx103, align 4
  %53 = load i32, i32* %This, align 4
  %idxprom104 = sext i32 %53 to i64
  %arrayidx105 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom104
  store i32 %52, i32* %arrayidx105, align 4
  br label %if.end.110

if.else.106:                                      ; preds = %if.end.86
  %54 = load i32, i32* %that, align 4
  %idxprom107 = sext i32 %54 to i64
  %arrayidx108 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom107
  %55 = load i32, i32* %arrayidx108, align 4
  %call109 = call i32 @close(i32 %55)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.106, %if.then.93
  %56 = load %struct.av*, %struct.av** @PL_fdpid, align 8
  %57 = load i32, i32* %This, align 4
  %idxprom111 = sext i32 %57 to i64
  %arrayidx112 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom111
  %58 = load i32, i32* %arrayidx112, align 4
  %call113 = call %struct.sv** @Perl_av_fetch(%struct.av* %56, i32 %58, i32 1)
  %59 = load %struct.sv*, %struct.sv** %call113, align 8
  store %struct.sv* %59, %struct.sv** %sv, align 8
  %60 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 2
  %61 = load i32, i32* %sv_flags, align 4
  %and = and i32 %61, 255
  %cmp114 = icmp uge i32 %and, 1
  br i1 %cmp114, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.110
  %62 = load %struct.sv*, %struct.sv** %sv, align 8
  %call116 = call signext i8 @Perl_sv_upgrade(%struct.sv* %62, i32 1)
  %conv117 = sext i8 %call116 to i32
  %tobool118 = icmp ne i32 %conv117, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.110
  %63 = phi i1 [ true, %if.end.110 ], [ %tobool118, %lor.rhs ]
  %lor.ext = zext i1 %63 to i32
  %64 = load i32, i32* %pid, align 4
  %conv119 = sext i32 %64 to i64
  %65 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any, align 8
  %67 = bitcast i8* %66 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %67, i32 0, i32 3
  store i64 %conv119, i64* %xiv_iv, align 8
  %68 = load i32, i32* %pid, align 4
  store i32 %68, i32* @PL_forkprocess, align 4
  %69 = load i32, i32* %did_pipes, align 4
  %tobool120 = icmp ne i32 %69, 0
  br i1 %tobool120, label %land.lhs.true, label %if.end.161

land.lhs.true:                                    ; preds = %lor.end
  %70 = load i32, i32* %pid, align 4
  %cmp121 = icmp sgt i32 %70, 0
  br i1 %cmp121, label %if.then.123, label %if.end.161

if.then.123:                                      ; preds = %land.lhs.true
  store i32 0, i32* %n124, align 4
  br label %while.cond.125

while.cond.125:                                   ; preds = %if.end.139, %if.then.123
  %71 = load i32, i32* %n124, align 4
  %conv126 = sext i32 %71 to i64
  %cmp127 = icmp ult i64 %conv126, 4
  br i1 %cmp127, label %while.body.129, label %while.end.140

while.body.129:                                   ; preds = %while.cond.125
  %arrayidx130 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %72 = load i32, i32* %arrayidx130, align 4
  %73 = bitcast i32* %errkid to i8*
  %74 = load i32, i32* %n124, align 4
  %idx.ext131 = sext i32 %74 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %73, i64 %idx.ext131
  %75 = load i32, i32* %n124, align 4
  %conv133 = sext i32 %75 to i64
  %sub = sub i64 4, %conv133
  %call134 = call i64 @read(i32 %72, i8* %add.ptr132, i64 %sub)
  %conv135 = trunc i64 %call134 to i32
  store i32 %conv135, i32* %n1, align 4
  %76 = load i32, i32* %n1, align 4
  %cmp136 = icmp sle i32 %76, 0
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %while.body.129
  br label %while.end.140

if.end.139:                                       ; preds = %while.body.129
  %77 = load i32, i32* %n1, align 4
  %78 = load i32, i32* %n124, align 4
  %add = add nsw i32 %78, %77
  store i32 %add, i32* %n124, align 4
  br label %while.cond.125

while.end.140:                                    ; preds = %if.then.138, %while.cond.125
  %arrayidx141 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %79 = load i32, i32* %arrayidx141, align 4
  %call142 = call i32 @close(i32 %79)
  store i32 0, i32* %did_pipes, align 4
  %80 = load i32, i32* %n124, align 4
  %tobool143 = icmp ne i32 %80, 0
  br i1 %tobool143, label %if.then.144, label %if.end.160

if.then.144:                                      ; preds = %while.end.140
  %81 = load i32, i32* %This, align 4
  %idxprom145 = sext i32 %81 to i64
  %arrayidx146 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom145
  %82 = load i32, i32* %arrayidx146, align 4
  %call147 = call i32 @close(i32 %82)
  %83 = load i32, i32* %n124, align 4
  %conv148 = sext i32 %83 to i64
  %cmp149 = icmp ne i64 %conv148, 4
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.then.144
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.then.144
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.152
  %84 = load i32, i32* %pid, align 4
  %call153 = call i32 @Perl_wait4pid(i32 %84, i32* %status, i32 0)
  store i32 %call153, i32* %pid2, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %85 = load i32, i32* %pid2, align 4
  %cmp154 = icmp eq i32 %85, -1
  br i1 %cmp154, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call156 = call i32* @__errno_location()
  %86 = load i32, i32* %call156, align 4
  %cmp157 = icmp eq i32 %86, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %87 = phi i1 [ false, %do.cond ], [ %cmp157, %land.rhs ]
  br i1 %87, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %88 = load i32, i32* %errkid, align 4
  %call159 = call i32* @__errno_location()
  store i32 %88, i32* %call159, align 4
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.160:                                       ; preds = %while.end.140
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %land.lhs.true, %lor.end
  %89 = load i32, i32* %did_pipes, align 4
  %tobool162 = icmp ne i32 %89, 0
  br i1 %tobool162, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %if.end.161
  %arrayidx164 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %90 = load i32, i32* %arrayidx164, align 4
  %call165 = call i32 @close(i32 %90)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %if.end.161
  %91 = load i32, i32* %This, align 4
  %idxprom167 = sext i32 %91 to i64
  %arrayidx168 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom167
  %92 = load i32, i32* %arrayidx168, align 4
  %93 = load i8*, i8** %mode.addr, align 8
  %call169 = call %struct._PerlIO** @PerlIO_fdopen(i32 %92, i8* %93)
  store %struct._PerlIO** %call169, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.166, %do.end, %if.end.31, %if.then.6
  %94 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %94
}

declare void @Perl_taint_env() #1

declare void @Perl_taint_proper(i8*, i8*) #1

declare i32 @pipe(i32*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_my_fork() #0 {
entry:
  %pid = alloca i32, align 4
  %call = call i32 @fork()
  store i32 %call, i32* %pid, align 4
  %0 = load i32, i32* %pid, align 4
  ret i32 %0
}

declare i32* @__errno_location() #1

declare i32 @close(i32) #1

declare i32 @sleep(i32) #1

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define i32 @dup2(i32 %oldfd, i32 %newfd) #0 {
entry:
  %retval = alloca i32, align 4
  %oldfd.addr = alloca i32, align 4
  %newfd.addr = alloca i32, align 4
  store i32 %oldfd, i32* %oldfd.addr, align 4
  store i32 %newfd, i32* %newfd.addr, align 4
  %0 = load i32, i32* %oldfd.addr, align 4
  %1 = load i32, i32* %newfd.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %oldfd.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %newfd.addr, align 4
  %call = call i32 @close(i32 %3)
  %4 = load i32, i32* %oldfd.addr, align 4
  %5 = load i32, i32* %newfd.addr, align 4
  %call1 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 0, i32 %5)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare signext i8 @Perl_do_aexec5(%struct.sv*, %struct.sv**, %struct.sv**, i32, i32) #1

; Function Attrs: noreturn
declare void @_exit(i32) #3

declare void @Perl_do_execfree() #1

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_wait4pid(i32 %pid, i32* %statusp, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pid.addr = alloca i32, align 4
  %statusp.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %pid, i32* %pid.addr, align 4
  store i32* %statusp, i32** %statusp.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %pid.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pid.addr, align 4
  %2 = load i32*, i32** %statusp.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call = call i32 @waitpid(i32 %1, i32* %2, i32 %3)
  store i32 %call, i32* %result, align 4
  br label %finish

finish:                                           ; preds = %if.end
  %4 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %finish
  %call1 = call i32* @__errno_location()
  %5 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %5, 4
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* @PL_sig_pending, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  call void @Perl_despatch_signals()
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %land.lhs.true, %finish
  %7 = load i32, i32* %result, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare %struct._PerlIO** @PerlIO_fdopen(i32, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @Perl_my_popen(i8* %cmd, i8* %mode) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %cmd.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %p = alloca [2 x i32], align 4
  %This = alloca i32, align 4
  %that = alloca i32, align 4
  %pid = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %doexec = alloca i32, align 4
  %did_pipes = alloca i32, align 4
  %pp = alloca [2 x i32], align 4
  %tmpgv = alloca %struct.gv*, align 8
  %errkid = alloca i32, align 4
  %n = alloca i32, align 4
  %n1 = alloca i32, align 4
  %pid2 = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %cmd, i8** %cmd.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %cmd.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i8*, i8** %cmd.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %lnot = xor i1 %4, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %doexec, align 4
  store i32 0, i32* %did_pipes, align 4
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** null)
  %5 = load i8*, i8** %mode.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 119
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %This, align 4
  %7 = load i32, i32* %This, align 4
  %tobool = icmp ne i32 %7, 0
  %lnot8 = xor i1 %tobool, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  store i32 %lnot.ext9, i32* %that, align 4
  %8 = load i32, i32* %doexec, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %land.end
  %9 = load i8, i8* @PL_tainting, align 1
  %conv11 = sext i8 %9 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @Perl_taint_env()
  call void @Perl_taint_proper(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i32 0
  %call13 = call i32 @pipe(i32* %arraydecay)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %10 = load i32, i32* %doexec, align 4
  %tobool18 = icmp ne i32 %10, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.25

land.lhs.true.19:                                 ; preds = %if.end.17
  %arraydecay20 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i32 0
  %call21 = call i32 @pipe(i32* %arraydecay20)
  %cmp22 = icmp sge i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.19
  store i32 1, i32* %did_pipes, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.19, %if.end.17
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %if.end.25
  %call26 = call i32 @Perl_my_fork()
  store i32 %call26, i32* %pid, align 4
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call29 = call i32* @__errno_location()
  %11 = load i32, i32* %call29, align 4
  %cmp30 = icmp ne i32 %11, 11
  br i1 %cmp30, label %if.then.32, label %if.end.48

if.then.32:                                       ; preds = %while.body
  %12 = load i32, i32* %This, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx33 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx33, align 4
  %call34 = call i32 @close(i32 %13)
  %14 = load i32, i32* %that, align 4
  %idxprom35 = sext i32 %14 to i64
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom35
  %15 = load i32, i32* %arrayidx36, align 4
  %call37 = call i32 @close(i32 %15)
  %16 = load i32, i32* %did_pipes, align 4
  %tobool38 = icmp ne i32 %16, 0
  br i1 %tobool38, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.then.32
  %arrayidx40 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %17 = load i32, i32* %arrayidx40, align 4
  %call41 = call i32 @close(i32 %17)
  %arrayidx42 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %18 = load i32, i32* %arrayidx42, align 4
  %call43 = call i32 @close(i32 %18)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %if.then.32
  %19 = load i32, i32* %doexec, align 4
  %tobool45 = icmp ne i32 %19, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.44
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.44
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.48:                                        ; preds = %while.body
  %call49 = call i32 @sleep(i32 5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i32, i32* %pid, align 4
  %cmp50 = icmp eq i32 %20, 0
  br i1 %cmp50, label %if.then.52, label %if.end.111

if.then.52:                                       ; preds = %while.end
  %21 = load i32, i32* %did_pipes, align 4
  %tobool53 = icmp ne i32 %21, 0
  br i1 %tobool53, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %if.then.52
  %arrayidx55 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %22 = load i32, i32* %arrayidx55, align 4
  %call56 = call i32 @close(i32 %22)
  %arrayidx57 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %23 = load i32, i32* %arrayidx57, align 4
  %call58 = call i32 (i32, i32, ...) @fcntl(i32 %23, i32 2, i32 1)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %if.then.52
  %24 = load i32, i32* %that, align 4
  %idxprom60 = sext i32 %24 to i64
  %arrayidx61 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom60
  %25 = load i32, i32* %arrayidx61, align 4
  %26 = load i8*, i8** %mode.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv62 = sext i8 %27 to i32
  %cmp63 = icmp eq i32 %conv62, 114
  %conv64 = zext i1 %cmp63 to i32
  %cmp65 = icmp ne i32 %25, %conv64
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %if.end.59
  %28 = load i32, i32* %that, align 4
  %idxprom68 = sext i32 %28 to i64
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom68
  %29 = load i32, i32* %arrayidx69, align 4
  %30 = load i8*, i8** %mode.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv70 = sext i8 %31 to i32
  %cmp71 = icmp eq i32 %conv70, 114
  %conv72 = zext i1 %cmp71 to i32
  %call73 = call i32 @dup2(i32 %29, i32 %conv72)
  %32 = load i32, i32* %that, align 4
  %idxprom74 = sext i32 %32 to i64
  %arrayidx75 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom74
  %33 = load i32, i32* %arrayidx75, align 4
  %call76 = call i32 @close(i32 %33)
  %34 = load i32, i32* %This, align 4
  %idxprom77 = sext i32 %34 to i64
  %arrayidx78 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom77
  %35 = load i32, i32* %arrayidx78, align 4
  %36 = load i8*, i8** %mode.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv79 = sext i8 %37 to i32
  %cmp80 = icmp eq i32 %conv79, 114
  %conv81 = zext i1 %cmp80 to i32
  %cmp82 = icmp ne i32 %35, %conv81
  br i1 %cmp82, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %if.then.67
  %38 = load i32, i32* %This, align 4
  %idxprom85 = sext i32 %38 to i64
  %arrayidx86 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom85
  %39 = load i32, i32* %arrayidx86, align 4
  %call87 = call i32 @close(i32 %39)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.then.67
  br label %if.end.92

if.else:                                          ; preds = %if.end.59
  %40 = load i32, i32* %This, align 4
  %idxprom89 = sext i32 %40 to i64
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom89
  %41 = load i32, i32* %arrayidx90, align 4
  %call91 = call i32 @close(i32 %41)
  br label %if.end.92

if.end.92:                                        ; preds = %if.else, %if.end.88
  %42 = load i32, i32* %doexec, align 4
  %tobool93 = icmp ne i32 %42, 0
  br i1 %tobool93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.end.92
  %43 = load i8*, i8** %cmd.addr, align 8
  %arrayidx95 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %44 = load i32, i32* %arrayidx95, align 4
  %45 = load i32, i32* %did_pipes, align 4
  %call96 = call signext i8 @Perl_do_exec3(i8* %43, i32 %44, i32 %45)
  call void @_exit(i32 1) #4
  unreachable

if.end.97:                                        ; preds = %if.end.92
  %call98 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call98, %struct.gv** %tmpgv, align 8
  %tobool99 = icmp ne %struct.gv* %call98, null
  br i1 %tobool99, label %if.then.100, label %if.end.110

if.then.100:                                      ; preds = %if.end.97
  %46 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %46, i32 0, i32 0
  %47 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %47, i32 0, i32 7
  %48 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %48, i32 0, i32 0
  %49 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 2
  %50 = load i32, i32* %sv_flags, align 4
  %and = and i32 %50, -8388609
  store i32 %and, i32* %sv_flags, align 4
  %51 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any101 = getelementptr inbounds %struct.gv, %struct.gv* %51, i32 0, i32 0
  %52 = load %struct.xpvgv*, %struct.xpvgv** %sv_any101, align 8
  %xgv_gp102 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %52, i32 0, i32 7
  %53 = load %struct.gp*, %struct.gp** %xgv_gp102, align 8
  %gp_sv103 = getelementptr inbounds %struct.gp, %struct.gp* %53, i32 0, i32 0
  %54 = load %struct.sv*, %struct.sv** %gp_sv103, align 8
  %call104 = call i32 @getpid()
  %conv105 = sext i32 %call104 to i64
  call void @Perl_sv_setiv(%struct.sv* %54, i64 %conv105)
  %55 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any106 = getelementptr inbounds %struct.gv, %struct.gv* %55, i32 0, i32 0
  %56 = load %struct.xpvgv*, %struct.xpvgv** %sv_any106, align 8
  %xgv_gp107 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %56, i32 0, i32 7
  %57 = load %struct.gp*, %struct.gp** %xgv_gp107, align 8
  %gp_sv108 = getelementptr inbounds %struct.gp, %struct.gp* %57, i32 0, i32 0
  %58 = load %struct.sv*, %struct.sv** %gp_sv108, align 8
  %sv_flags109 = getelementptr inbounds %struct.sv, %struct.sv* %58, i32 0, i32 2
  %59 = load i32, i32* %sv_flags109, align 4
  %or = or i32 %59, 8388608
  store i32 %or, i32* %sv_flags109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.100, %if.end.97
  store i32 0, i32* @PL_forkprocess, align 4
  %60 = load %struct.hv*, %struct.hv** @PL_pidstatus, align 8
  call void @Perl_hv_clear(%struct.hv* %60)
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.111:                                       ; preds = %while.end
  call void @Perl_do_execfree()
  %61 = load i32, i32* %did_pipes, align 4
  %tobool112 = icmp ne i32 %61, 0
  br i1 %tobool112, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %if.end.111
  %arrayidx114 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %62 = load i32, i32* %arrayidx114, align 4
  %call115 = call i32 @close(i32 %62)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %if.end.111
  %63 = load i32, i32* %that, align 4
  %idxprom117 = sext i32 %63 to i64
  %arrayidx118 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom117
  %64 = load i32, i32* %arrayidx118, align 4
  %65 = load i32, i32* %This, align 4
  %idxprom119 = sext i32 %65 to i64
  %arrayidx120 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom119
  %66 = load i32, i32* %arrayidx120, align 4
  %cmp121 = icmp slt i32 %64, %66
  br i1 %cmp121, label %if.then.123, label %if.else.136

if.then.123:                                      ; preds = %if.end.116
  %67 = load i32, i32* %This, align 4
  %idxprom124 = sext i32 %67 to i64
  %arrayidx125 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom124
  %68 = load i32, i32* %arrayidx125, align 4
  %69 = load i32, i32* %that, align 4
  %idxprom126 = sext i32 %69 to i64
  %arrayidx127 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom126
  %70 = load i32, i32* %arrayidx127, align 4
  %call128 = call i32 @dup2(i32 %68, i32 %70)
  %71 = load i32, i32* %This, align 4
  %idxprom129 = sext i32 %71 to i64
  %arrayidx130 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom129
  %72 = load i32, i32* %arrayidx130, align 4
  %call131 = call i32 @close(i32 %72)
  %73 = load i32, i32* %that, align 4
  %idxprom132 = sext i32 %73 to i64
  %arrayidx133 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom132
  %74 = load i32, i32* %arrayidx133, align 4
  %75 = load i32, i32* %This, align 4
  %idxprom134 = sext i32 %75 to i64
  %arrayidx135 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom134
  store i32 %74, i32* %arrayidx135, align 4
  br label %if.end.140

if.else.136:                                      ; preds = %if.end.116
  %76 = load i32, i32* %that, align 4
  %idxprom137 = sext i32 %76 to i64
  %arrayidx138 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom137
  %77 = load i32, i32* %arrayidx138, align 4
  %call139 = call i32 @close(i32 %77)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.136, %if.then.123
  %78 = load %struct.av*, %struct.av** @PL_fdpid, align 8
  %79 = load i32, i32* %This, align 4
  %idxprom141 = sext i32 %79 to i64
  %arrayidx142 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom141
  %80 = load i32, i32* %arrayidx142, align 4
  %call143 = call %struct.sv** @Perl_av_fetch(%struct.av* %78, i32 %80, i32 1)
  %81 = load %struct.sv*, %struct.sv** %call143, align 8
  store %struct.sv* %81, %struct.sv** %sv, align 8
  %82 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags144 = getelementptr inbounds %struct.sv, %struct.sv* %82, i32 0, i32 2
  %83 = load i32, i32* %sv_flags144, align 4
  %and145 = and i32 %83, 255
  %cmp146 = icmp uge i32 %and145, 1
  br i1 %cmp146, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.140
  %84 = load %struct.sv*, %struct.sv** %sv, align 8
  %call148 = call signext i8 @Perl_sv_upgrade(%struct.sv* %84, i32 1)
  %conv149 = sext i8 %call148 to i32
  %tobool150 = icmp ne i32 %conv149, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.140
  %85 = phi i1 [ true, %if.end.140 ], [ %tobool150, %lor.rhs ]
  %lor.ext = zext i1 %85 to i32
  %86 = load i32, i32* %pid, align 4
  %conv151 = sext i32 %86 to i64
  %87 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any152 = getelementptr inbounds %struct.sv, %struct.sv* %87, i32 0, i32 0
  %88 = load i8*, i8** %sv_any152, align 8
  %89 = bitcast i8* %88 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %89, i32 0, i32 3
  store i64 %conv151, i64* %xiv_iv, align 8
  %90 = load i32, i32* %pid, align 4
  store i32 %90, i32* @PL_forkprocess, align 4
  %91 = load i32, i32* %did_pipes, align 4
  %tobool153 = icmp ne i32 %91, 0
  br i1 %tobool153, label %land.lhs.true.154, label %if.end.194

land.lhs.true.154:                                ; preds = %lor.end
  %92 = load i32, i32* %pid, align 4
  %cmp155 = icmp sgt i32 %92, 0
  br i1 %cmp155, label %if.then.157, label %if.end.194

if.then.157:                                      ; preds = %land.lhs.true.154
  store i32 0, i32* %n, align 4
  br label %while.cond.158

while.cond.158:                                   ; preds = %if.end.170, %if.then.157
  %93 = load i32, i32* %n, align 4
  %conv159 = sext i32 %93 to i64
  %cmp160 = icmp ult i64 %conv159, 4
  br i1 %cmp160, label %while.body.162, label %while.end.171

while.body.162:                                   ; preds = %while.cond.158
  %arrayidx163 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %94 = load i32, i32* %arrayidx163, align 4
  %95 = bitcast i32* %errkid to i8*
  %96 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %96 to i64
  %add.ptr = getelementptr inbounds i8, i8* %95, i64 %idx.ext
  %97 = load i32, i32* %n, align 4
  %conv164 = sext i32 %97 to i64
  %sub = sub i64 4, %conv164
  %call165 = call i64 @read(i32 %94, i8* %add.ptr, i64 %sub)
  %conv166 = trunc i64 %call165 to i32
  store i32 %conv166, i32* %n1, align 4
  %98 = load i32, i32* %n1, align 4
  %cmp167 = icmp sle i32 %98, 0
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %while.body.162
  br label %while.end.171

if.end.170:                                       ; preds = %while.body.162
  %99 = load i32, i32* %n1, align 4
  %100 = load i32, i32* %n, align 4
  %add = add nsw i32 %100, %99
  store i32 %add, i32* %n, align 4
  br label %while.cond.158

while.end.171:                                    ; preds = %if.then.169, %while.cond.158
  %arrayidx172 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %101 = load i32, i32* %arrayidx172, align 4
  %call173 = call i32 @close(i32 %101)
  store i32 0, i32* %did_pipes, align 4
  %102 = load i32, i32* %n, align 4
  %tobool174 = icmp ne i32 %102, 0
  br i1 %tobool174, label %if.then.175, label %if.end.193

if.then.175:                                      ; preds = %while.end.171
  %103 = load i32, i32* %This, align 4
  %idxprom176 = sext i32 %103 to i64
  %arrayidx177 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom176
  %104 = load i32, i32* %arrayidx177, align 4
  %call178 = call i32 @close(i32 %104)
  %105 = load i32, i32* %n, align 4
  %conv179 = sext i32 %105 to i64
  %cmp180 = icmp ne i64 %conv179, 4
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.then.175
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %if.then.175
  br label %do.body

do.body:                                          ; preds = %land.end.191, %if.end.183
  %106 = load i32, i32* %pid, align 4
  %call184 = call i32 @Perl_wait4pid(i32 %106, i32* %status, i32 0)
  store i32 %call184, i32* %pid2, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %107 = load i32, i32* %pid2, align 4
  %cmp185 = icmp eq i32 %107, -1
  br i1 %cmp185, label %land.rhs.187, label %land.end.191

land.rhs.187:                                     ; preds = %do.cond
  %call188 = call i32* @__errno_location()
  %108 = load i32, i32* %call188, align 4
  %cmp189 = icmp eq i32 %108, 4
  br label %land.end.191

land.end.191:                                     ; preds = %land.rhs.187, %do.cond
  %109 = phi i1 [ false, %do.cond ], [ %cmp189, %land.rhs.187 ]
  br i1 %109, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.191
  %110 = load i32, i32* %errkid, align 4
  %call192 = call i32* @__errno_location()
  store i32 %110, i32* %call192, align 4
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.193:                                       ; preds = %while.end.171
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %land.lhs.true.154, %lor.end
  %111 = load i32, i32* %did_pipes, align 4
  %tobool195 = icmp ne i32 %111, 0
  br i1 %tobool195, label %if.then.196, label %if.end.199

if.then.196:                                      ; preds = %if.end.194
  %arrayidx197 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %112 = load i32, i32* %arrayidx197, align 4
  %call198 = call i32 @close(i32 %112)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.196, %if.end.194
  %113 = load i32, i32* %This, align 4
  %idxprom200 = sext i32 %113 to i64
  %arrayidx201 = getelementptr inbounds [2 x i32], [2 x i32]* %p, i32 0, i64 %idxprom200
  %114 = load i32, i32* %arrayidx201, align 4
  %115 = load i8*, i8** %mode.addr, align 8
  %call202 = call %struct._PerlIO** @PerlIO_fdopen(i32 %114, i8* %115)
  store %struct._PerlIO** %call202, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.199, %do.end, %if.end.110, %if.end.47, %if.then.16
  %116 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %116
}

declare signext i8 @Perl_do_exec3(i8*, i32, i32) #1

declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

declare i32 @getpid() #1

declare void @Perl_hv_clear(%struct.hv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_atfork_lock() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_atfork_unlock() #0 {
entry:
  ret void
}

declare i32 @fork() #1

; Function Attrs: nounwind uwtable
define void (i32)* @Perl_rsignal(i32 %signo, void (i32)* %handler) #0 {
entry:
  %signo.addr = alloca i32, align 4
  %handler.addr = alloca void (i32)*, align 8
  store i32 %signo, i32* %signo.addr, align 4
  store void (i32)* %handler, void (i32)** %handler.addr, align 8
  %0 = load i32, i32* %signo.addr, align 4
  %1 = load void (i32)*, void (i32)** %handler.addr, align 8
  %call = call void (i32)* @signal(i32 %0, void (i32)* %1)
  ret void (i32)* %call
}

declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind uwtable
define void (i32)* @Perl_rsignal_state(i32 %signo) #0 {
entry:
  %signo.addr = alloca i32, align 4
  %oldsig = alloca void (i32)*, align 8
  store i32 %signo, i32* %signo.addr, align 4
  store i32 0, i32* @sig_trapped, align 4
  %0 = load i32, i32* %signo.addr, align 4
  %call = call void (i32)* @signal(i32 %0, void (i32)* @sig_trap)
  store void (i32)* %call, void (i32)** %oldsig, align 8
  %1 = load i32, i32* %signo.addr, align 4
  %2 = load void (i32)*, void (i32)** %oldsig, align 8
  %call1 = call void (i32)* @signal(i32 %1, void (i32)* %2)
  %3 = load i32, i32* @sig_trapped, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @getpid()
  %4 = load i32, i32* %signo.addr, align 4
  %call3 = call i32 @kill(i32 %call2, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load void (i32)*, void (i32)** %oldsig, align 8
  ret void (i32)* %5
}

; Function Attrs: nounwind uwtable
define internal void @sig_trap(i32 %signo) #0 {
entry:
  %signo.addr = alloca i32, align 4
  store i32 %signo, i32* %signo.addr, align 4
  %0 = load i32, i32* @sig_trapped, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @sig_trapped, align 4
  ret void
}

declare i32 @kill(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_rsignal_save(i32 %signo, void (i32)* %handler, void (i32)** %save) #0 {
entry:
  %signo.addr = alloca i32, align 4
  %handler.addr = alloca void (i32)*, align 8
  %save.addr = alloca void (i32)**, align 8
  store i32 %signo, i32* %signo.addr, align 4
  store void (i32)* %handler, void (i32)** %handler.addr, align 8
  store void (i32)** %save, void (i32)*** %save.addr, align 8
  %0 = load i32, i32* %signo.addr, align 4
  %1 = load void (i32)*, void (i32)** %handler.addr, align 8
  %call = call void (i32)* @signal(i32 %0, void (i32)* %1)
  %2 = load void (i32)**, void (i32)*** %save.addr, align 8
  store void (i32)* %call, void (i32)** %2, align 8
  %3 = load void (i32)**, void (i32)*** %save.addr, align 8
  %4 = load void (i32)*, void (i32)** %3, align 8
  %cmp = icmp eq void (i32)* %4, inttoptr (i64 -1 to void (i32)*)
  %cond = select i1 %cmp, i32 -1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @Perl_rsignal_restore(i32 %signo, void (i32)** %save) #0 {
entry:
  %signo.addr = alloca i32, align 4
  %save.addr = alloca void (i32)**, align 8
  store i32 %signo, i32* %signo.addr, align 4
  store void (i32)** %save, void (i32)*** %save.addr, align 8
  %0 = load i32, i32* %signo.addr, align 4
  %1 = load void (i32)**, void (i32)*** %save.addr, align 8
  %2 = load void (i32)*, void (i32)** %1, align 8
  %call = call void (i32)* @signal(i32 %0, void (i32)* %2)
  %cmp = icmp eq void (i32)* %call, inttoptr (i64 -1 to void (i32)*)
  %cond = select i1 %cmp, i32 -1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @Perl_my_pclose(%struct._PerlIO** %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca %struct._PerlIO**, align 8
  %hstat = alloca void (i32)*, align 8
  %istat = alloca void (i32)*, align 8
  %qstat = alloca void (i32)*, align 8
  %status = alloca i32, align 4
  %svp = alloca %struct.sv**, align 8
  %pid = alloca i32, align 4
  %pid2 = alloca i32, align 4
  %close_failed = alloca i8, align 1
  %saved_errno = alloca i32, align 4
  store %struct._PerlIO** %ptr, %struct._PerlIO*** %ptr.addr, align 8
  store i32 0, i32* %saved_errno, align 4
  %0 = load %struct.av*, %struct.av** @PL_fdpid, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %ptr.addr, align 8
  %call = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %1)
  %call1 = call %struct.sv** @Perl_av_fetch(%struct.av* %0, i32 %call, i32 1)
  store %struct.sv** %call1, %struct.sv*** %svp, align 8
  %2 = load %struct.sv**, %struct.sv*** %svp, align 8
  %3 = load %struct.sv*, %struct.sv** %2, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.sv**, %struct.sv*** %svp, align 8
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any, align 8
  %8 = bitcast i8* %7 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %8, i32 0, i32 3
  %9 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ -1, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %pid, align 4
  %10 = load %struct.sv**, %struct.sv*** %svp, align 8
  %11 = load %struct.sv*, %struct.sv** %10, align 8
  call void @Perl_sv_free(%struct.sv* %11)
  %12 = load %struct.sv**, %struct.sv*** %svp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %12, align 8
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %ptr.addr, align 8
  %call2 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %13)
  %cmp3 = icmp eq i32 %call2, -1
  %conv4 = zext i1 %cmp3 to i32
  %conv5 = trunc i32 %conv4 to i8
  store i8 %conv5, i8* %close_failed, align 1
  %tobool = icmp ne i8 %conv5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call6 = call i32* @__errno_location()
  %14 = load i32, i32* %call6, align 4
  store i32 %14, i32* %saved_errno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %call7 = call i32 @Perl_rsignal_save(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %hstat)
  %call8 = call i32 @Perl_rsignal_save(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %istat)
  %call9 = call i32 @Perl_rsignal_save(i32 3, void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %qstat)
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %15 = load i32, i32* %pid, align 4
  %call10 = call i32 @Perl_wait4pid(i32 %15, i32* %status, i32 0)
  store i32 %call10, i32* %pid2, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load i32, i32* %pid2, align 4
  %cmp11 = icmp eq i32 %16, -1
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call13 = call i32* @__errno_location()
  %17 = load i32, i32* %call13, align 4
  %cmp14 = icmp eq i32 %17, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %18 = phi i1 [ false, %do.cond ], [ %cmp14, %land.rhs ]
  br i1 %18, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %call16 = call i32 @Perl_rsignal_restore(i32 1, void (i32)** %hstat)
  %call17 = call i32 @Perl_rsignal_restore(i32 2, void (i32)** %istat)
  %call18 = call i32 @Perl_rsignal_restore(i32 3, void (i32)** %qstat)
  %19 = load i8, i8* %close_failed, align 1
  %tobool19 = icmp ne i8 %19, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.end
  %20 = load i32, i32* %saved_errno, align 4
  %call21 = call i32* @__errno_location()
  store i32 %20, i32* %call21, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %do.end
  %21 = load i32, i32* %pid2, align 4
  %cmp23 = icmp slt i32 %21, 0
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.end.22
  %22 = load i32, i32* %pid2, align 4
  br label %cond.end.34

cond.false.26:                                    ; preds = %if.end.22
  %23 = load i32, i32* %status, align 4
  %cmp27 = icmp eq i32 %23, 0
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false.26
  br label %cond.end.32

cond.false.30:                                    ; preds = %cond.false.26
  %call31 = call i32* @__errno_location()
  store i32 0, i32* %call31, align 4
  %24 = load i32, i32* %status, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.29
  %cond33 = phi i32 [ 0, %cond.true.29 ], [ %24, %cond.false.30 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.true.25
  %cond35 = phi i32 [ %22, %cond.true.25 ], [ %cond33, %cond.end.32 ]
  store i32 %cond35, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.34, %if.then.20
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare void @Perl_sv_free(%struct.sv*) #1

declare i32 @Perl_PerlIO_close(%struct._PerlIO**) #1

declare i32 @waitpid(i32, i32*, i32) #1

declare void @Perl_despatch_signals() #1

; Function Attrs: nounwind uwtable
define void @Perl_pidgone(i32 %pid, i32 %status) #0 {
entry:
  %pid.addr = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %spid = alloca [22 x i8], align 16
  store i32 %pid, i32* %pid.addr, align 4
  store i32 %status, i32* %status.addr, align 4
  %arraydecay = getelementptr inbounds [22 x i8], [22 x i8]* %spid, i32 0, i32 0
  %0 = load i32, i32* %pid.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i64 %conv)
  %1 = load %struct.hv*, %struct.hv** @PL_pidstatus, align 8
  %arraydecay1 = getelementptr inbounds [22 x i8], [22 x i8]* %spid, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [22 x i8], [22 x i8]* %spid, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2)
  %conv4 = trunc i64 %call3 to i32
  %call5 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %1, i8* %arraydecay1, i32 %conv4, i32 1)
  %2 = load %struct.sv*, %struct.sv** %call5, align 8
  store %struct.sv* %2, %struct.sv** %sv, align 8
  %3 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp uge i32 %and, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %sv, align 8
  %call7 = call signext i8 @Perl_sv_upgrade(%struct.sv* %5, i32 1)
  %conv8 = sext i8 %call7 to i32
  %tobool = icmp ne i32 %conv8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  %7 = load i32, i32* %status.addr, align 4
  %conv9 = sext i32 %7 to i64
  %8 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any, align 8
  %10 = bitcast i8* %9 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %10, i32 0, i32 3
  store i64 %conv9, i64* %xiv_iv, align 8
  ret void
}

declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @Perl_repeatcpy(i8* %to, i8* %from, i32 %len, i32 %count) #0 {
entry:
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %todo = alloca i32, align 4
  %frombase = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %to, i8** %to.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i8*, i8** %from.addr, align 8
  store i8* %0, i8** %frombase, align 8
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %from.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i32, i32* %count.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %count.addr, align 4
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8, i8* %c, align 1
  %6 = load i8*, i8** %to.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %to.addr, align 8
  store i8 %5, i8* %6, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.end.10

if.end:                                           ; preds = %entry
  br label %while.cond.2

while.cond.2:                                     ; preds = %for.end, %if.end
  %7 = load i32, i32* %count.addr, align 4
  %dec3 = add nsw i32 %7, -1
  store i32 %dec3, i32* %count.addr, align 4
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %while.body.5, label %while.end.10

while.body.5:                                     ; preds = %while.cond.2
  %8 = load i32, i32* %len.addr, align 4
  store i32 %8, i32* %todo, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.5
  %9 = load i32, i32* %todo, align 4
  %cmp6 = icmp sgt i32 %9, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %from.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr7, i8** %from.addr, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %to.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %to.addr, align 8
  store i8 %11, i8* %12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %todo, align 4
  %dec9 = add nsw i32 %13, -1
  store i32 %dec9, i32* %todo, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %frombase, align 8
  store i8* %14, i8** %from.addr, align 8
  br label %while.cond.2

while.end.10:                                     ; preds = %while.end, %while.cond.2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_same_dirent(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %fa = alloca i8*, align 8
  %fb = alloca i8*, align 8
  %tmpstatbuf1 = alloca %struct.stat, align 8
  %tmpstatbuf2 = alloca %struct.stat, align 8
  %tmpsv = alloca %struct.sv*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47)
  store i8* %call, i8** %fa, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %call1 = call i8* @strrchr(i8* %1, i32 47)
  store i8* %call1, i8** %fb, align 8
  %call2 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call2, %struct.sv** %tmpsv, align 8
  %2 = load i8*, i8** %fa, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %fa, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %fa, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %a.addr, align 8
  store i8* %4, i8** %fa, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %fb, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.end
  %6 = load i8*, i8** %fb, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr5, i8** %fb, align 8
  br label %if.end.7

if.else.6:                                        ; preds = %if.end
  %7 = load i8*, i8** %b.addr, align 8
  store i8* %7, i8** %fb, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.6, %if.then.4
  %8 = load i8*, i8** %a.addr, align 8
  %9 = load i8*, i8** %b.addr, align 8
  %call8 = call i32 @strcmp(i8* %8, i8* %9)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %10 = load i8*, i8** %fa, align 8
  %11 = load i8*, i8** %a.addr, align 8
  %cmp = icmp eq i8* %10, %11
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.11
  %12 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_setpv(%struct.sv* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.14

if.else.13:                                       ; preds = %if.end.11
  %13 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %14 = load i8*, i8** %a.addr, align 8
  %15 = load i8*, i8** %fa, align 8
  %16 = load i8*, i8** %a.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @Perl_sv_setpvn(%struct.sv* %13, i8* %14, i64 %sub.ptr.sub)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  %17 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  %call15 = call i32 @stat(i8* %20, %struct.stat* %tmpstatbuf1)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %21 = load i8*, i8** %fb, align 8
  %22 = load i8*, i8** %b.addr, align 8
  %cmp19 = icmp eq i8* %21, %22
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.18
  %23 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_setpv(%struct.sv* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.25

if.else.21:                                       ; preds = %if.end.18
  %24 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %25 = load i8*, i8** %b.addr, align 8
  %26 = load i8*, i8** %fb, align 8
  %27 = load i8*, i8** %b.addr, align 8
  %sub.ptr.lhs.cast22 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %27 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  call void @Perl_sv_setpvn(%struct.sv* %24, i8* %25, i64 %sub.ptr.sub24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.21, %if.then.20
  %28 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 0
  %29 = load i8*, i8** %sv_any26, align 8
  %30 = bitcast i8* %29 to %struct.xpv*
  %xpv_pv27 = getelementptr inbounds %struct.xpv, %struct.xpv* %30, i32 0, i32 0
  %31 = load i8*, i8** %xpv_pv27, align 8
  %call28 = call i32 @stat(i8* %31, %struct.stat* %tmpstatbuf2)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.25
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %tmpstatbuf1, i32 0, i32 0
  %32 = load i64, i64* %st_dev, align 8
  %st_dev32 = getelementptr inbounds %struct.stat, %struct.stat* %tmpstatbuf2, i32 0, i32 0
  %33 = load i64, i64* %st_dev32, align 8
  %cmp33 = icmp eq i64 %32, %33
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.31
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %tmpstatbuf1, i32 0, i32 1
  %34 = load i64, i64* %st_ino, align 8
  %st_ino34 = getelementptr inbounds %struct.stat, %struct.stat* %tmpstatbuf2, i32 0, i32 1
  %35 = load i64, i64* %st_ino34, align 8
  %cmp35 = icmp eq i64 %34, %35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.31
  %36 = phi i1 [ false, %if.end.31 ], [ %cmp35, %land.rhs ]
  %land.ext = zext i1 %36 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.30, %if.then.17, %if.then.10
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i8* @strrchr(i8*, i32) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare i32 @strcmp(i8*, i8*) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_find_script(i8* %scriptname, i8 signext %dosearch, i8** %search_ext, i32 %flags) #0 {
entry:
  %scriptname.addr = alloca i8*, align 8
  %dosearch.addr = alloca i8, align 1
  %search_ext.addr = alloca i8**, align 8
  %flags.addr = alloca i32, align 4
  %xfound = alloca i8*, align 8
  %xfailed = alloca i8*, align 8
  %tmpbuf = alloca [4096 x i8], align 16
  %s = alloca i8*, align 8
  %len = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %seen_dot = alloca i8, align 1
  store i8* %scriptname, i8** %scriptname.addr, align 8
  store i8 %dosearch, i8* %dosearch.addr, align 1
  store i8** %search_ext, i8*** %search_ext.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* null, i8** %xfound, align 8
  store i8* null, i8** %xfailed, align 8
  store i32 0, i32* %len, align 4
  store i8 0, i8* %dosearch.addr, align 1
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmpbuf, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %0 = load i8, i8* %dosearch.addr, align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.100

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %scriptname.addr, align 8
  %call = call i8* @strchr(i8* %1, i32 47)
  %tobool2 = icmp ne i8* %call, null
  br i1 %tobool2, label %if.end.100, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %call4 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0))
  store i8* %call4, i8** %s, align 8
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.then, label %if.end.100

if.then:                                          ; preds = %land.lhs.true.3
  store i8 0, i8* %seen_dot, align 1
  %2 = load i8*, i8** %s, align 8
  %3 = load i8*, i8** %s, align 8
  %call6 = call i64 @strlen(i8* %3)
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call6
  store i8* %add.ptr, i8** @PL_bufend, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.66, %if.then.46, %if.then.20, %if.then
  %4 = load i8*, i8** %s, align 8
  %5 = load i8*, i8** @PL_bufend, align 8
  %cmp = icmp ult i8* %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmpbuf, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmpbuf, i32 0, i32 0
  %add.ptr9 = getelementptr inbounds i8, i8* %arraydecay8, i64 4096
  %6 = load i8*, i8** %s, align 8
  %7 = load i8*, i8** @PL_bufend, align 8
  %call10 = call i8* @Perl_delimcpy(i8* %arraydecay, i8* %add.ptr9, i8* %6, i8* %7, i32 58, i32* %len)
  store i8* %call10, i8** %s, align 8
  %8 = load i8*, i8** %s, align 8
  %9 = load i8*, i8** @PL_bufend, align 8
  %cmp11 = icmp ult i8* %8, %9
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %while.body
  %10 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %while.body
  %11 = load i32, i32* %len, align 4
  %add = add nsw i32 %11, 1
  %conv14 = sext i32 %add to i64
  %12 = load i8*, i8** %scriptname.addr, align 8
  %call15 = call i64 @strlen(i8* %12)
  %add16 = add i64 %conv14, %call15
  %add17 = add i64 %add16, 0
  %cmp18 = icmp uge i64 %add17, 4096
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  br label %while.cond

if.end.21:                                        ; preds = %if.end
  %13 = load i32, i32* %len, align 4
  %tobool22 = icmp ne i32 %13, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %14 = load i32, i32* %len, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %len, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmpbuf, i32 0, i64 %idxprom
  store i8 47, i8* %arrayidx24, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %15 = load i32, i32* %len, align 4
  %cmp26 = icmp eq i32 %15, 2
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.34

land.lhs.true.28:                                 ; preds = %if.end.25
  %arrayidx29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmpbuf, i32 0, i64 0
  %16 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %16 to i32
  %cmp31 = icmp eq i32 %conv30, 46
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.28
  store i8 1, i8* %seen_dot, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true.28, %if.end.25
  %arraydecay35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmpbuf, i32 0, i32 0
  %17 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %arraydecay35, i64 %idx.ext
  %18 = load i8*, i8** %scriptname.addr, align 8
  %call37 = call i8* @strcpy(i8* %add.ptr36, i8* %18)
  %arraydecay38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmpbuf, i32 0, i32 0
  %call39 = call i32 @stat(i8* %arraydecay38, %struct.stat* @PL_statbuf)
  store i32 %call39, i32* %retval1, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  %and = and i32 %19, 61440
  %cmp40 = icmp eq i32 %and, 16384
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.34
  store i32 -1, i32* %retval1, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.34
  %20 = load i32, i32* %retval1, align 4
  %cmp44 = icmp slt i32 %20, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  br label %while.cond

if.end.47:                                        ; preds = %if.end.43
  %21 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  %and48 = and i32 %21, 61440
  %cmp49 = icmp eq i32 %and48, 32768
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.61

land.lhs.true.51:                                 ; preds = %if.end.47
  %call52 = call signext i8 @Perl_cando(i32 256, i32 1, %struct.stat* @PL_statbuf)
  %conv53 = sext i8 %call52 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.61

land.lhs.true.55:                                 ; preds = %land.lhs.true.51
  %call56 = call signext i8 @Perl_cando(i32 64, i32 1, %struct.stat* @PL_statbuf)
  %conv57 = sext i8 %call56 to i32
  %tobool58 = icmp ne i32 %conv57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %land.lhs.true.55
  %arraydecay60 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmpbuf, i32 0, i32 0
  store i8* %arraydecay60, i8** %xfound, align 8
  br label %while.end

if.end.61:                                        ; preds = %land.lhs.true.55, %land.lhs.true.51, %if.end.47
  %22 = load i8*, i8** %xfailed, align 8
  %tobool62 = icmp ne i8* %22, null
  br i1 %tobool62, label %if.end.66, label %if.then.63

if.then.63:                                       ; preds = %if.end.61
  %arraydecay64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmpbuf, i32 0, i32 0
  %call65 = call i8* @Perl_savepv(i8* %arraydecay64)
  store i8* %call65, i8** %xfailed, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %if.end.61
  br label %while.cond

while.end:                                        ; preds = %if.then.59, %while.cond
  %23 = load i8*, i8** %xfound, align 8
  %tobool67 = icmp ne i8* %23, null
  br i1 %tobool67, label %if.end.80, label %land.lhs.true.68

land.lhs.true.68:                                 ; preds = %while.end
  %24 = load i8, i8* %seen_dot, align 1
  %tobool69 = icmp ne i8 %24, 0
  br i1 %tobool69, label %if.end.80, label %land.lhs.true.70

land.lhs.true.70:                                 ; preds = %land.lhs.true.68
  %25 = load i8*, i8** %xfailed, align 8
  %tobool71 = icmp ne i8* %25, null
  br i1 %tobool71, label %if.end.80, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %land.lhs.true.70
  %26 = load i8*, i8** %scriptname.addr, align 8
  %call73 = call i32 @stat(i8* %26, %struct.stat* @PL_statbuf)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.72
  %27 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  %and76 = and i32 %27, 61440
  %cmp77 = icmp eq i32 %and76, 16384
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %lor.lhs.false, %land.lhs.true.72
  store i8 1, i8* %seen_dot, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %lor.lhs.false, %land.lhs.true.70, %land.lhs.true.68, %while.end
  %28 = load i8*, i8** %xfound, align 8
  %tobool81 = icmp ne i8* %28, null
  br i1 %tobool81, label %if.end.96, label %if.then.82

if.then.82:                                       ; preds = %if.end.80
  %29 = load i32, i32* %flags.addr, align 4
  %and83 = and i32 %29, 1
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.95

if.then.85:                                       ; preds = %if.then.82
  %30 = load i8*, i8** %xfailed, align 8
  %tobool86 = icmp ne i8* %30, null
  %cond = select i1 %tobool86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)
  %31 = load i8*, i8** %xfailed, align 8
  %tobool87 = icmp ne i8* %31, null
  br i1 %tobool87, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.85
  %32 = load i8*, i8** %xfailed, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.85
  %33 = load i8*, i8** %scriptname.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond88 = phi i8* [ %32, %cond.true ], [ %33, %cond.false ]
  %34 = load i8*, i8** %xfailed, align 8
  %tobool89 = icmp ne i8* %34, null
  %cond90 = select i1 %tobool89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)
  %35 = load i8*, i8** %xfailed, align 8
  %tobool91 = icmp ne i8* %35, null
  br i1 %tobool91, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end
  %36 = load i8, i8* %seen_dot, align 1
  %conv92 = sext i8 %36 to i32
  %tobool93 = icmp ne i32 %conv92, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %37 = phi i1 [ true, %cond.end ], [ %tobool93, %lor.rhs ]
  %cond94 = select i1 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* %cond, i8* %cond88, i8* %cond90, i8* %cond94)
  br label %if.end.95

if.end.95:                                        ; preds = %lor.end, %if.then.82
  store i8* null, i8** %scriptname.addr, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.80
  %38 = load i8*, i8** %xfailed, align 8
  %tobool97 = icmp ne i8* %38, null
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.96
  %39 = load i8*, i8** %xfailed, align 8
  call void @Perl_safesysfree(i8* %39)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.96
  %40 = load i8*, i8** %xfound, align 8
  store i8* %40, i8** %scriptname.addr, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %land.lhs.true.3, %land.lhs.true, %entry
  %41 = load i8*, i8** %scriptname.addr, align 8
  %tobool101 = icmp ne i8* %41, null
  br i1 %tobool101, label %cond.true.102, label %cond.false.104

cond.true.102:                                    ; preds = %if.end.100
  %42 = load i8*, i8** %scriptname.addr, align 8
  %call103 = call i8* @Perl_savepv(i8* %42)
  br label %cond.end.105

cond.false.104:                                   ; preds = %if.end.100
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.104, %cond.true.102
  %cond106 = phi i8* [ %call103, %cond.true.102 ], [ null, %cond.false.104 ]
  ret i8* %cond106
}

declare i8* @strchr(i8*, i32) #1

declare i8* @getenv(i8*) #1

declare signext i8 @Perl_cando(i32, i32, %struct.stat*) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_get_context() #0 {
entry:
  ret i8* null
}

; Function Attrs: nounwind uwtable
define void @Perl_set_context(i8* %t) #0 {
entry:
  %t.addr = alloca i8*, align 8
  store i8* %t, i8** %t.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8** @Perl_get_op_names() #0 {
entry:
  ret i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @PL_op_name, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8** @Perl_get_op_descs() #0 {
entry:
  ret i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @PL_op_desc, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @Perl_get_no_modify() #0 {
entry:
  ret i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32* @Perl_get_opargs() #0 {
entry:
  ret i32* getelementptr inbounds ([0 x i32], [0 x i32]* @PL_opargs, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define [0 x %struct.op* ()*]* @Perl_get_ppaddr() #0 {
entry:
  ret [0 x %struct.op* ()*]* @PL_ppaddr
}

; Function Attrs: nounwind uwtable
define i8* @Perl_getenv_len(i8* %env_elem, i64* %len) #0 {
entry:
  %env_elem.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  %env_trans = alloca i8*, align 8
  store i8* %env_elem, i8** %env_elem.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  %0 = load i8*, i8** %env_elem.addr, align 8
  %call = call i8* @getenv(i8* %0)
  store i8* %call, i8** %env_trans, align 8
  %1 = load i8*, i8** %env_trans, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %env_trans, align 8
  %call1 = call i64 @strlen(i8* %2)
  %3 = load i64*, i64** %len.addr, align 8
  store i64 %call1, i64* %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %env_trans, align 8
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define %struct.mgvtbl* @Perl_get_vtbl(i32 %vtbl_id) #0 {
entry:
  %vtbl_id.addr = alloca i32, align 4
  %result = alloca %struct.mgvtbl*, align 8
  store i32 %vtbl_id, i32* %vtbl_id.addr, align 4
  store %struct.mgvtbl* null, %struct.mgvtbl** %result, align 8
  %0 = load i32, i32* %vtbl_id.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.14
    i32 15, label %sw.bb.15
    i32 16, label %sw.bb.16
    i32 17, label %sw.bb.17
    i32 18, label %sw.bb.18
    i32 19, label %sw.bb.19
    i32 20, label %sw.bb.20
    i32 21, label %sw.bb.21
    i32 22, label %sw.bb.22
    i32 26, label %sw.bb.23
    i32 27, label %sw.bb.24
    i32 24, label %sw.bb.25
    i32 25, label %sw.bb.26
    i32 28, label %sw.bb.27
    i32 29, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_sv, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_env, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_envelem, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_sig, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_sigelem, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_pack, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_packelem, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_dbline, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_isa, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_isaelem, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_arylen, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_glob, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_mglob, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_nkeys, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_taint, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_substr, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_vec, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_pos, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_bm, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_fm, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_uvar, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_defelem, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_regexp, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_regdata, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_regdatum, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_amagic, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_amagicelem, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_backref, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  store %struct.mgvtbl* @PL_vtbl_utf8, %struct.mgvtbl** %result, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load %struct.mgvtbl*, %struct.mgvtbl** %result, align 8
  ret %struct.mgvtbl* %1
}

; Function Attrs: nounwind uwtable
define i32 @Perl_my_fflush_all() #0 {
entry:
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @Perl_report_evil_fh(%struct.gv* %gv, %struct.io* %io, i32 %op) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %io.addr = alloca %struct.io*, align 8
  %op.addr = alloca i32, align 4
  %func = alloca i8*, align 8
  %pars = alloca i8*, align 8
  %type = alloca i8*, align 8
  %name = alloca i8*, align 8
  %direction = alloca i8*, align 8
  %vile = alloca i8*, align 8
  %warn_type = alloca i32, align 4
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store %struct.io* %io, %struct.io** %io.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %cmp = icmp eq i32 %0, 26
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4
  %cmp1 = icmp eq i32 %1, 207
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load i32, i32* %op.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_desc, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), %cond.true.2 ], [ %3, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %cond.true ], [ %cond, %cond.end ]
  store i8* %cond5, i8** %func, align 8
  %4 = load i32, i32* %op.addr, align 4
  %cmp6 = icmp eq i32 %4, 248
  br i1 %cmp6, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.4
  %5 = load i32, i32* %op.addr, align 4
  %cmp7 = icmp eq i32 %5, 262
  br i1 %cmp7, label %lor.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %op.addr, align 4
  %cmp9 = icmp eq i32 %6, 252
  br i1 %cmp9, label %lor.end, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %7 = load i32, i32* %op.addr, align 4
  %cmp11 = icmp eq i32 %7, 251
  br i1 %cmp11, label %lor.end, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %8 = load i32, i32* %op.addr, align 4
  %cmp13 = icmp eq i32 %8, 249
  br i1 %cmp13, label %lor.end, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.12
  %9 = load i32, i32* %op.addr, align 4
  %cmp15 = icmp eq i32 %9, 254
  br i1 %cmp15, label %lor.end, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.14
  %10 = load i32, i32* %op.addr, align 4
  %cmp17 = icmp eq i32 %10, 241
  br i1 %cmp17, label %lor.end, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.16
  %11 = load i32, i32* %op.addr, align 4
  %cmp19 = icmp eq i32 %11, 243
  br i1 %cmp19, label %lor.end, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.18
  %12 = load i32, i32* %op.addr, align 4
  %cmp21 = icmp eq i32 %12, 239
  br i1 %cmp21, label %lor.end, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.20
  %13 = load i32, i32* %op.addr, align 4
  %cmp23 = icmp eq i32 %13, 240
  br i1 %cmp23, label %lor.end, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.22
  %14 = load i32, i32* %op.addr, align 4
  %cmp25 = icmp eq i32 %14, 253
  br i1 %cmp25, label %lor.end, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.24
  %15 = load i32, i32* %op.addr, align 4
  %cmp27 = icmp eq i32 %15, 242
  br i1 %cmp27, label %lor.end, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.26
  %16 = load i32, i32* %op.addr, align 4
  %cmp29 = icmp eq i32 %16, 256
  br i1 %cmp29, label %lor.end, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.28
  %17 = load i32, i32* %op.addr, align 4
  %cmp31 = icmp eq i32 %17, 247
  br i1 %cmp31, label %lor.end, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.30
  %18 = load i32, i32* %op.addr, align 4
  %cmp33 = icmp eq i32 %18, 255
  br i1 %cmp33, label %lor.end, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.32
  %19 = load i32, i32* %op.addr, align 4
  %cmp35 = icmp eq i32 %19, 238
  br i1 %cmp35, label %lor.end, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.34
  %20 = load i32, i32* %op.addr, align 4
  %cmp37 = icmp eq i32 %20, 244
  br i1 %cmp37, label %lor.end, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.36
  %21 = load i32, i32* %op.addr, align 4
  %cmp39 = icmp eq i32 %21, 236
  br i1 %cmp39, label %lor.end, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.38
  %22 = load i32, i32* %op.addr, align 4
  %cmp41 = icmp eq i32 %22, 237
  br i1 %cmp41, label %lor.end, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.40
  %23 = load i32, i32* %op.addr, align 4
  %cmp43 = icmp eq i32 %23, 258
  br i1 %cmp43, label %lor.end, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.42
  %24 = load i32, i32* %op.addr, align 4
  %cmp45 = icmp eq i32 %24, 246
  br i1 %cmp45, label %lor.end, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.44
  %25 = load i32, i32* %op.addr, align 4
  %cmp47 = icmp eq i32 %25, 250
  br i1 %cmp47, label %lor.end, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.46
  %26 = load i32, i32* %op.addr, align 4
  %cmp49 = icmp eq i32 %26, 257
  br i1 %cmp49, label %lor.end, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.48
  %27 = load i32, i32* %op.addr, align 4
  %cmp51 = icmp eq i32 %27, 259
  br i1 %cmp51, label %lor.end, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.50
  %28 = load i32, i32* %op.addr, align 4
  %cmp53 = icmp eq i32 %28, 261
  br i1 %cmp53, label %lor.end, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.52
  %29 = load i32, i32* %op.addr, align 4
  %cmp55 = icmp eq i32 %29, 260
  br i1 %cmp55, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.54
  %30 = load i32, i32* %op.addr, align 4
  %cmp56 = icmp eq i32 %30, 245
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.54, %lor.lhs.false.52, %lor.lhs.false.50, %lor.lhs.false.48, %lor.lhs.false.46, %lor.lhs.false.44, %lor.lhs.false.42, %lor.lhs.false.40, %lor.lhs.false.38, %lor.lhs.false.36, %lor.lhs.false.34, %lor.lhs.false.32, %lor.lhs.false.30, %lor.lhs.false.28, %lor.lhs.false.26, %lor.lhs.false.24, %lor.lhs.false.22, %lor.lhs.false.20, %lor.lhs.false.18, %lor.lhs.false.16, %lor.lhs.false.14, %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false, %cond.end.4
  %31 = phi i1 [ true, %lor.lhs.false.54 ], [ true, %lor.lhs.false.52 ], [ true, %lor.lhs.false.50 ], [ true, %lor.lhs.false.48 ], [ true, %lor.lhs.false.46 ], [ true, %lor.lhs.false.44 ], [ true, %lor.lhs.false.42 ], [ true, %lor.lhs.false.40 ], [ true, %lor.lhs.false.38 ], [ true, %lor.lhs.false.36 ], [ true, %lor.lhs.false.34 ], [ true, %lor.lhs.false.32 ], [ true, %lor.lhs.false.30 ], [ true, %lor.lhs.false.28 ], [ true, %lor.lhs.false.26 ], [ true, %lor.lhs.false.24 ], [ true, %lor.lhs.false.22 ], [ true, %lor.lhs.false.20 ], [ true, %lor.lhs.false.18 ], [ true, %lor.lhs.false.16 ], [ true, %lor.lhs.false.14 ], [ true, %lor.lhs.false.12 ], [ true, %lor.lhs.false.10 ], [ true, %lor.lhs.false.8 ], [ true, %lor.lhs.false ], [ true, %cond.end.4 ], [ %cmp56, %lor.rhs ]
  %cond57 = select i1 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)
  store i8* %cond57, i8** %pars, align 8
  %32 = load i32, i32* %op.addr, align 4
  %cmp58 = icmp eq i32 %32, 228
  br i1 %cmp58, label %lor.end.87, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.end
  %33 = load i32, i32* %op.addr, align 4
  %cmp60 = icmp eq i32 %33, 225
  br i1 %cmp60, label %lor.end.87, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.59
  %34 = load i32, i32* %op.addr, align 4
  %cmp62 = icmp eq i32 %34, 226
  br i1 %cmp62, label %lor.end.87, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.61
  %35 = load i32, i32* %op.addr, align 4
  %cmp64 = icmp eq i32 %35, 233
  br i1 %cmp64, label %lor.end.87, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.63
  %36 = load i32, i32* %op.addr, align 4
  %cmp66 = icmp eq i32 %36, 232
  br i1 %cmp66, label %lor.end.87, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.65
  %37 = load i32, i32* %op.addr, align 4
  %cmp68 = icmp eq i32 %37, 230
  br i1 %cmp68, label %lor.end.87, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.67
  %38 = load i32, i32* %op.addr, align 4
  %cmp70 = icmp eq i32 %38, 227
  br i1 %cmp70, label %lor.end.87, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.69
  %39 = load i32, i32* %op.addr, align 4
  %cmp72 = icmp eq i32 %39, 215
  br i1 %cmp72, label %lor.end.87, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.71
  %40 = load i32, i32* %op.addr, align 4
  %cmp74 = icmp eq i32 %40, 214
  br i1 %cmp74, label %lor.end.87, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.73
  %41 = load i32, i32* %op.addr, align 4
  %cmp76 = icmp eq i32 %41, 229
  br i1 %cmp76, label %lor.end.87, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.75
  %42 = load i32, i32* %op.addr, align 4
  %cmp78 = icmp eq i32 %42, 223
  br i1 %cmp78, label %lor.end.87, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %lor.lhs.false.77
  %43 = load i32, i32* %op.addr, align 4
  %cmp80 = icmp eq i32 %43, 224
  br i1 %cmp80, label %lor.end.87, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.79
  %44 = load i32, i32* %op.addr, align 4
  %cmp82 = icmp eq i32 %44, 231
  br i1 %cmp82, label %lor.end.87, label %lor.rhs.83

lor.rhs.83:                                       ; preds = %lor.lhs.false.81
  %45 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %45, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.rhs.83
  %46 = load %struct.io*, %struct.io** %io.addr, align 8
  %tobool84 = icmp ne %struct.io* %46, null
  br i1 %tobool84, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %47 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %47, i32 0, i32 0
  %48 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %48, i32 0, i32 21
  %49 = load i8, i8* %xio_type, align 1
  %conv = sext i8 %49 to i32
  %cmp85 = icmp eq i32 %conv, 115
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs.83
  %50 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs.83 ], [ %cmp85, %land.rhs ]
  br label %lor.end.87

lor.end.87:                                       ; preds = %land.end, %lor.lhs.false.81, %lor.lhs.false.79, %lor.lhs.false.77, %lor.lhs.false.75, %lor.lhs.false.73, %lor.lhs.false.71, %lor.lhs.false.69, %lor.lhs.false.67, %lor.lhs.false.65, %lor.lhs.false.63, %lor.lhs.false.61, %lor.lhs.false.59, %lor.end
  %51 = phi i1 [ true, %lor.lhs.false.81 ], [ true, %lor.lhs.false.79 ], [ true, %lor.lhs.false.77 ], [ true, %lor.lhs.false.75 ], [ true, %lor.lhs.false.73 ], [ true, %lor.lhs.false.71 ], [ true, %lor.lhs.false.69 ], [ true, %lor.lhs.false.67 ], [ true, %lor.lhs.false.65 ], [ true, %lor.lhs.false.63 ], [ true, %lor.lhs.false.61 ], [ true, %lor.lhs.false.59 ], [ true, %lor.end ], [ %50, %land.end ]
  %cond88 = select i1 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)
  store i8* %cond88, i8** %type, align 8
  store i8* null, i8** %name, align 8
  %52 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool89 = icmp ne %struct.gv* %52, null
  br i1 %tobool89, label %land.lhs.true.90, label %if.end

land.lhs.true.90:                                 ; preds = %lor.end.87
  %53 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %53, i32 0, i32 2
  %54 = load i32, i32* %sv_flags, align 4
  %and = and i32 %54, 255
  %cmp91 = icmp eq i32 %and, 13
  br i1 %cmp91, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.90
  %55 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any93 = getelementptr inbounds %struct.gv, %struct.gv* %55, i32 0, i32 0
  %56 = load %struct.xpvgv*, %struct.xpvgv** %sv_any93, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %56, i32 0, i32 7
  %57 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %57, i32 0, i32 6
  %58 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  %tobool94 = icmp ne %struct.gv* %58, null
  br i1 %tobool94, label %cond.true.95, label %cond.false.99

cond.true.95:                                     ; preds = %if.then
  %59 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any96 = getelementptr inbounds %struct.gv, %struct.gv* %59, i32 0, i32 0
  %60 = load %struct.xpvgv*, %struct.xpvgv** %sv_any96, align 8
  %xgv_gp97 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %60, i32 0, i32 7
  %61 = load %struct.gp*, %struct.gp** %xgv_gp97, align 8
  %gp_egv98 = getelementptr inbounds %struct.gp, %struct.gp* %61, i32 0, i32 6
  %62 = load %struct.gv*, %struct.gv** %gp_egv98, align 8
  br label %cond.end.100

cond.false.99:                                    ; preds = %if.then
  %63 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.95
  %cond101 = phi %struct.gv* [ %62, %cond.true.95 ], [ %63, %cond.false.99 ]
  %sv_any102 = getelementptr inbounds %struct.gv, %struct.gv* %cond101, i32 0, i32 0
  %64 = load %struct.xpvgv*, %struct.xpvgv** %sv_any102, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %64, i32 0, i32 8
  %65 = load i8*, i8** %xgv_name, align 8
  store i8* %65, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.100, %land.lhs.true.90, %lor.end.87
  %66 = load i32, i32* %op.addr, align 4
  %cmp103 = icmp eq i32 %66, -2
  br i1 %cmp103, label %if.then.108, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.end
  %67 = load i32, i32* %op.addr, align 4
  %cmp106 = icmp eq i32 %67, -1
  br i1 %cmp106, label %if.then.108, label %if.else.145

if.then.108:                                      ; preds = %lor.lhs.false.105, %if.end
  %68 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %68, i32 0, i32 14
  %69 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp109 = icmp ne %struct.sv* %69, null
  br i1 %cmp109, label %land.lhs.true.111, label %lor.lhs.false.126

land.lhs.true.111:                                ; preds = %if.then.108
  %70 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings112 = getelementptr inbounds %struct.cop, %struct.cop* %70, i32 0, i32 14
  %71 = load %struct.sv*, %struct.sv** %cop_warnings112, align 8
  %cmp113 = icmp ne %struct.sv* %71, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp113, label %land.lhs.true.115, label %lor.lhs.false.126

land.lhs.true.115:                                ; preds = %land.lhs.true.111
  %72 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings116 = getelementptr inbounds %struct.cop, %struct.cop* %72, i32 0, i32 14
  %73 = load %struct.sv*, %struct.sv** %cop_warnings116, align 8
  %cmp117 = icmp eq %struct.sv* %73, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp117, label %if.then.134, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %land.lhs.true.115
  %74 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings120 = getelementptr inbounds %struct.cop, %struct.cop* %74, i32 0, i32 14
  %75 = load %struct.sv*, %struct.sv** %cop_warnings120, align 8
  %sv_any121 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 0
  %76 = load i8*, i8** %sv_any121, align 8
  %77 = bitcast i8* %76 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %77, i32 0, i32 0
  %78 = load i8*, i8** %xpv_pv, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %78, i64 1
  %79 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %79 to i32
  %and124 = and i32 %conv123, 4
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then.134, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false.119, %land.lhs.true.111, %if.then.108
  %80 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings127 = getelementptr inbounds %struct.cop, %struct.cop* %80, i32 0, i32 14
  %81 = load %struct.sv*, %struct.sv** %cop_warnings127, align 8
  %cmp128 = icmp eq %struct.sv* %81, null
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.144

land.lhs.true.130:                                ; preds = %lor.lhs.false.126
  %82 = load i8, i8* @PL_dowarn, align 1
  %conv131 = zext i8 %82 to i32
  %and132 = and i32 %conv131, 1
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.144

if.then.134:                                      ; preds = %land.lhs.true.130, %lor.lhs.false.119, %land.lhs.true.115
  %83 = load i32, i32* %op.addr, align 4
  %cmp135 = icmp eq i32 %83, -1
  %cond137 = select i1 %cmp135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0)
  store i8* %cond137, i8** %direction, align 8
  %84 = load i8*, i8** %name, align 8
  %tobool138 = icmp ne i8* %84, null
  br i1 %tobool138, label %land.lhs.true.139, label %if.else

land.lhs.true.139:                                ; preds = %if.then.134
  %85 = load i8*, i8** %name, align 8
  %86 = load i8, i8* %85, align 1
  %conv140 = sext i8 %86 to i32
  %tobool141 = icmp ne i32 %conv140, 0
  br i1 %tobool141, label %if.then.142, label %if.else

if.then.142:                                      ; preds = %land.lhs.true.139
  %87 = load i8*, i8** %name, align 8
  %88 = load i8*, i8** %direction, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0), i8* %87, i8* %88)
  br label %if.end.143

if.else:                                          ; preds = %land.lhs.true.139, %if.then.134
  %89 = load i8*, i8** %direction, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0), i8* %89)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else, %if.then.142
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %land.lhs.true.130, %lor.lhs.false.126
  br label %if.end.223

if.else.145:                                      ; preds = %lor.lhs.false.105
  %90 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool146 = icmp ne %struct.gv* %90, null
  br i1 %tobool146, label %land.lhs.true.147, label %if.else.156

land.lhs.true.147:                                ; preds = %if.else.145
  %91 = load %struct.io*, %struct.io** %io.addr, align 8
  %tobool148 = icmp ne %struct.io* %91, null
  br i1 %tobool148, label %land.lhs.true.149, label %if.else.156

land.lhs.true.149:                                ; preds = %land.lhs.true.147
  %92 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any150 = getelementptr inbounds %struct.io, %struct.io* %92, i32 0, i32 0
  %93 = load %struct.xpvio*, %struct.xpvio** %sv_any150, align 8
  %xio_type151 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %93, i32 0, i32 21
  %94 = load i8, i8* %xio_type151, align 1
  %conv152 = sext i8 %94 to i32
  %cmp153 = icmp eq i32 %conv152, 32
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %land.lhs.true.149
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8** %vile, align 8
  store i32 6, i32* %warn_type, align 4
  br label %if.end.157

if.else.156:                                      ; preds = %land.lhs.true.149, %land.lhs.true.147, %if.else.145
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8** %vile, align 8
  store i32 11, i32* %warn_type, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.156, %if.then.155
  %95 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings158 = getelementptr inbounds %struct.cop, %struct.cop* %95, i32 0, i32 14
  %96 = load %struct.sv*, %struct.sv** %cop_warnings158, align 8
  %cmp159 = icmp ne %struct.sv* %96, null
  br i1 %cmp159, label %land.lhs.true.161, label %lor.lhs.false.179

land.lhs.true.161:                                ; preds = %if.end.157
  %97 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings162 = getelementptr inbounds %struct.cop, %struct.cop* %97, i32 0, i32 14
  %98 = load %struct.sv*, %struct.sv** %cop_warnings162, align 8
  %cmp163 = icmp ne %struct.sv* %98, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp163, label %land.lhs.true.165, label %lor.lhs.false.179

land.lhs.true.165:                                ; preds = %land.lhs.true.161
  %99 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings166 = getelementptr inbounds %struct.cop, %struct.cop* %99, i32 0, i32 14
  %100 = load %struct.sv*, %struct.sv** %cop_warnings166, align 8
  %cmp167 = icmp eq %struct.sv* %100, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp167, label %if.then.187, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %land.lhs.true.165
  %101 = load i32, i32* %warn_type, align 4
  %mul = mul nsw i32 2, %101
  %div = sdiv i32 %mul, 8
  %idxprom170 = sext i32 %div to i64
  %102 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings171 = getelementptr inbounds %struct.cop, %struct.cop* %102, i32 0, i32 14
  %103 = load %struct.sv*, %struct.sv** %cop_warnings171, align 8
  %sv_any172 = getelementptr inbounds %struct.sv, %struct.sv* %103, i32 0, i32 0
  %104 = load i8*, i8** %sv_any172, align 8
  %105 = bitcast i8* %104 to %struct.xpv*
  %xpv_pv173 = getelementptr inbounds %struct.xpv, %struct.xpv* %105, i32 0, i32 0
  %106 = load i8*, i8** %xpv_pv173, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %106, i64 %idxprom170
  %107 = load i8, i8* %arrayidx174, align 1
  %conv175 = sext i8 %107 to i32
  %108 = load i32, i32* %warn_type, align 4
  %mul176 = mul nsw i32 2, %108
  %rem = srem i32 %mul176, 8
  %shl = shl i32 1, %rem
  %and177 = and i32 %conv175, %shl
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %if.then.187, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %lor.lhs.false.169, %land.lhs.true.161, %if.end.157
  %109 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings180 = getelementptr inbounds %struct.cop, %struct.cop* %109, i32 0, i32 14
  %110 = load %struct.sv*, %struct.sv** %cop_warnings180, align 8
  %cmp181 = icmp eq %struct.sv* %110, null
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.222

land.lhs.true.183:                                ; preds = %lor.lhs.false.179
  %111 = load i8, i8* @PL_dowarn, align 1
  %conv184 = zext i8 %111 to i32
  %and185 = and i32 %conv184, 1
  %tobool186 = icmp ne i32 %and185, 0
  br i1 %tobool186, label %if.then.187, label %if.end.222

if.then.187:                                      ; preds = %land.lhs.true.183, %lor.lhs.false.169, %land.lhs.true.165
  %112 = load i8*, i8** %name, align 8
  %tobool188 = icmp ne i8* %112, null
  br i1 %tobool188, label %land.lhs.true.189, label %if.else.204

land.lhs.true.189:                                ; preds = %if.then.187
  %113 = load i8*, i8** %name, align 8
  %114 = load i8, i8* %113, align 1
  %conv190 = sext i8 %114 to i32
  %tobool191 = icmp ne i32 %conv190, 0
  br i1 %tobool191, label %if.then.192, label %if.else.204

if.then.192:                                      ; preds = %land.lhs.true.189
  %115 = load i32, i32* %warn_type, align 4
  %116 = load i8*, i8** %func, align 8
  %117 = load i8*, i8** %pars, align 8
  %118 = load i8*, i8** %vile, align 8
  %119 = load i8*, i8** %type, align 8
  %120 = load i8*, i8** %name, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i8* %116, i8* %117, i8* %118, i8* %119, i8* %120)
  %121 = load %struct.io*, %struct.io** %io.addr, align 8
  %tobool193 = icmp ne %struct.io* %121, null
  br i1 %tobool193, label %land.lhs.true.194, label %if.end.203

land.lhs.true.194:                                ; preds = %if.then.192
  %122 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any195 = getelementptr inbounds %struct.io, %struct.io* %122, i32 0, i32 0
  %123 = load %struct.xpvio*, %struct.xpvio** %sv_any195, align 8
  %xio_dirpu = getelementptr inbounds %struct.xpvio, %struct.xpvio* %123, i32 0, i32 9
  %xiou_dirp = bitcast %union.anon* %xio_dirpu to %struct.__dirstream**
  %124 = load %struct.__dirstream*, %struct.__dirstream** %xiou_dirp, align 8
  %tobool196 = icmp ne %struct.__dirstream* %124, null
  br i1 %tobool196, label %land.lhs.true.197, label %if.end.203

land.lhs.true.197:                                ; preds = %land.lhs.true.194
  %125 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any198 = getelementptr inbounds %struct.io, %struct.io* %125, i32 0, i32 0
  %126 = load %struct.xpvio*, %struct.xpvio** %sv_any198, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %126, i32 0, i32 22
  %127 = load i8, i8* %xio_flags, align 1
  %conv199 = sext i8 %127 to i32
  %and200 = and i32 %conv199, 64
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.end.203, label %if.then.202

if.then.202:                                      ; preds = %land.lhs.true.197
  %128 = load i32, i32* %warn_type, align 4
  %129 = load i8*, i8** %func, align 8
  %130 = load i8*, i8** %pars, align 8
  %131 = load i8*, i8** %name, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 %128, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.35, i32 0, i32 0), i8* %129, i8* %130, i8* %131)
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.202, %land.lhs.true.197, %land.lhs.true.194, %if.then.192
  br label %if.end.221

if.else.204:                                      ; preds = %land.lhs.true.189, %if.then.187
  %132 = load i32, i32* %warn_type, align 4
  %133 = load i8*, i8** %func, align 8
  %134 = load i8*, i8** %pars, align 8
  %135 = load i8*, i8** %vile, align 8
  %136 = load i8*, i8** %type, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8* %133, i8* %134, i8* %135, i8* %136)
  %137 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool205 = icmp ne %struct.gv* %137, null
  br i1 %tobool205, label %land.lhs.true.206, label %if.end.220

land.lhs.true.206:                                ; preds = %if.else.204
  %138 = load %struct.io*, %struct.io** %io.addr, align 8
  %tobool207 = icmp ne %struct.io* %138, null
  br i1 %tobool207, label %land.lhs.true.208, label %if.end.220

land.lhs.true.208:                                ; preds = %land.lhs.true.206
  %139 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any209 = getelementptr inbounds %struct.io, %struct.io* %139, i32 0, i32 0
  %140 = load %struct.xpvio*, %struct.xpvio** %sv_any209, align 8
  %xio_dirpu210 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %140, i32 0, i32 9
  %xiou_dirp211 = bitcast %union.anon* %xio_dirpu210 to %struct.__dirstream**
  %141 = load %struct.__dirstream*, %struct.__dirstream** %xiou_dirp211, align 8
  %tobool212 = icmp ne %struct.__dirstream* %141, null
  br i1 %tobool212, label %land.lhs.true.213, label %if.end.220

land.lhs.true.213:                                ; preds = %land.lhs.true.208
  %142 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any214 = getelementptr inbounds %struct.io, %struct.io* %142, i32 0, i32 0
  %143 = load %struct.xpvio*, %struct.xpvio** %sv_any214, align 8
  %xio_flags215 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %143, i32 0, i32 22
  %144 = load i8, i8* %xio_flags215, align 1
  %conv216 = sext i8 %144 to i32
  %and217 = and i32 %conv216, 64
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %if.end.220, label %if.then.219

if.then.219:                                      ; preds = %land.lhs.true.213
  %145 = load i32, i32* %warn_type, align 4
  %146 = load i8*, i8** %func, align 8
  %147 = load i8*, i8** %pars, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 %145, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i32 0, i32 0), i8* %146, i8* %147)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %land.lhs.true.213, %land.lhs.true.208, %land.lhs.true.206, %if.else.204
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.203
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %land.lhs.true.183, %lor.lhs.false.179
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.end.144
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_init_tm(%struct.tm* %ptm) #0 {
entry:
  %ptm.addr = alloca %struct.tm*, align 8
  store %struct.tm* %ptm, %struct.tm** %ptm.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_mini_mktime(%struct.tm* %ptm) #0 {
entry:
  %ptm.addr = alloca %struct.tm*, align 8
  %yearday = alloca i32, align 4
  %secs = alloca i32, align 4
  %month = alloca i32, align 4
  %mday = alloca i32, align 4
  %year = alloca i32, align 4
  %jday = alloca i32, align 4
  %odd_cent = alloca i32, align 4
  %odd_year = alloca i32, align 4
  store %struct.tm* %ptm, %struct.tm** %ptm.addr, align 8
  %0 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 5
  %1 = load i32, i32* %tm_year, align 4
  %add = add nsw i32 1900, %1
  store i32 %add, i32* %year, align 4
  %2 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4
  %3 = load i32, i32* %tm_mon, align 4
  store i32 %3, i32* %month, align 4
  %4 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %5 = load i32, i32* %tm_mday, align 4
  store i32 %5, i32* %mday, align 4
  %6 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 7
  %7 = load i32, i32* %tm_yday, align 4
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %mday, align 4
  %cmp1 = icmp sle i32 %8, 0
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %month, align 4
  %cmp3 = icmp sle i32 %9, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  store i32 0, i32* %month, align 4
  store i32 0, i32* %mday, align 4
  %10 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_yday4 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 7
  %11 = load i32, i32* %tm_yday4, align 4
  %add5 = add nsw i32 1, %11
  store i32 %add5, i32* %jday, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %jday, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %month, align 4
  %cmp6 = icmp sge i32 %12, 2
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end
  %13 = load i32, i32* %month, align 4
  %add8 = add nsw i32 %13, 2
  store i32 %add8, i32* %month, align 4
  br label %if.end.11

if.else.9:                                        ; preds = %if.end
  %14 = load i32, i32* %month, align 4
  %add10 = add nsw i32 %14, 14
  store i32 %add10, i32* %month, align 4
  %15 = load i32, i32* %year, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %year, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.7
  %16 = load i32, i32* %year, align 4
  %mul = mul nsw i32 365, %16
  %17 = load i32, i32* %year, align 4
  %div = sdiv i32 %17, 4
  %add12 = add nsw i32 %mul, %div
  %18 = load i32, i32* %year, align 4
  %div13 = sdiv i32 %18, 100
  %sub = sub nsw i32 %add12, %div13
  %19 = load i32, i32* %year, align 4
  %div14 = sdiv i32 %19, 400
  %add15 = add nsw i32 %sub, %div14
  store i32 %add15, i32* %yearday, align 4
  %20 = load i32, i32* %month, align 4
  %mul16 = mul nsw i32 %20, 153
  %div17 = sdiv i32 %mul16, 5
  %21 = load i32, i32* %mday, align 4
  %add18 = add nsw i32 %div17, %21
  %22 = load i32, i32* %jday, align 4
  %add19 = add nsw i32 %add18, %22
  %23 = load i32, i32* %yearday, align 4
  %add20 = add nsw i32 %23, %add19
  store i32 %add20, i32* %yearday, align 4
  %24 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 0
  %25 = load i32, i32* %tm_sec, align 4
  %cmp21 = icmp ule i32 %25, 60
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.end.11
  store i32 0, i32* %secs, align 4
  br label %if.end.26

if.else.23:                                       ; preds = %if.end.11
  %26 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_sec24 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 0
  %27 = load i32, i32* %tm_sec24, align 4
  store i32 %27, i32* %secs, align 4
  %28 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_sec25 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 0
  store i32 0, i32* %tm_sec25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  %29 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 1
  %30 = load i32, i32* %tm_min, align 4
  %mul27 = mul nsw i32 60, %30
  %31 = load i32, i32* %secs, align 4
  %add28 = add nsw i32 %31, %mul27
  store i32 %add28, i32* %secs, align 4
  %32 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 2
  %33 = load i32, i32* %tm_hour, align 4
  %mul29 = mul nsw i32 3600, %33
  %34 = load i32, i32* %secs, align 4
  %add30 = add nsw i32 %34, %mul29
  store i32 %add30, i32* %secs, align 4
  %35 = load i32, i32* %secs, align 4
  %cmp31 = icmp slt i32 %35, 0
  br i1 %cmp31, label %if.then.32, label %if.else.52

if.then.32:                                       ; preds = %if.end.26
  %36 = load i32, i32* %secs, align 4
  %37 = load i32, i32* %secs, align 4
  %div33 = sdiv i32 %37, 86400
  %mul34 = mul nsw i32 %div33, 86400
  %sub35 = sub nsw i32 %36, %mul34
  %cmp36 = icmp slt i32 %sub35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.45

if.then.37:                                       ; preds = %if.then.32
  %38 = load i32, i32* %secs, align 4
  %div38 = sdiv i32 %38, 86400
  %sub39 = sub nsw i32 %div38, 1
  %39 = load i32, i32* %yearday, align 4
  %add40 = add nsw i32 %39, %sub39
  store i32 %add40, i32* %yearday, align 4
  %40 = load i32, i32* %secs, align 4
  %div41 = sdiv i32 %40, 86400
  %sub42 = sub nsw i32 %div41, 1
  %mul43 = mul nsw i32 86400, %sub42
  %41 = load i32, i32* %secs, align 4
  %sub44 = sub nsw i32 %41, %mul43
  store i32 %sub44, i32* %secs, align 4
  br label %if.end.51

if.else.45:                                       ; preds = %if.then.32
  %42 = load i32, i32* %secs, align 4
  %div46 = sdiv i32 %42, 86400
  %43 = load i32, i32* %yearday, align 4
  %add47 = add nsw i32 %43, %div46
  store i32 %add47, i32* %yearday, align 4
  %44 = load i32, i32* %secs, align 4
  %div48 = sdiv i32 %44, 86400
  %mul49 = mul nsw i32 86400, %div48
  %45 = load i32, i32* %secs, align 4
  %sub50 = sub nsw i32 %45, %mul49
  store i32 %sub50, i32* %secs, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.45, %if.then.37
  br label %if.end.58

if.else.52:                                       ; preds = %if.end.26
  %46 = load i32, i32* %secs, align 4
  %cmp53 = icmp sge i32 %46, 86400
  br i1 %cmp53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.else.52
  %47 = load i32, i32* %secs, align 4
  %div55 = sdiv i32 %47, 86400
  %48 = load i32, i32* %yearday, align 4
  %add56 = add nsw i32 %48, %div55
  store i32 %add56, i32* %yearday, align 4
  %49 = load i32, i32* %secs, align 4
  %rem = srem i32 %49, 86400
  store i32 %rem, i32* %secs, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.else.52
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.51
  %50 = load i32, i32* %secs, align 4
  %div59 = sdiv i32 %50, 3600
  %51 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_hour60 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 2
  store i32 %div59, i32* %tm_hour60, align 4
  %52 = load i32, i32* %secs, align 4
  %rem61 = srem i32 %52, 3600
  store i32 %rem61, i32* %secs, align 4
  %53 = load i32, i32* %secs, align 4
  %div62 = sdiv i32 %53, 60
  %54 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_min63 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 1
  store i32 %div62, i32* %tm_min63, align 4
  %55 = load i32, i32* %secs, align 4
  %rem64 = srem i32 %55, 60
  store i32 %rem64, i32* %secs, align 4
  %56 = load i32, i32* %secs, align 4
  %57 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_sec65 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 0
  %58 = load i32, i32* %tm_sec65, align 4
  %add66 = add nsw i32 %58, %56
  store i32 %add66, i32* %tm_sec65, align 4
  %59 = load i32, i32* %yearday, align 4
  store i32 %59, i32* %jday, align 4
  %60 = load i32, i32* %yearday, align 4
  %sub67 = sub nsw i32 %60, 123
  store i32 %sub67, i32* %yearday, align 4
  %61 = load i32, i32* %yearday, align 4
  %div68 = sdiv i32 %61, 146097
  %mul69 = mul nsw i32 %div68, 400
  store i32 %mul69, i32* %year, align 4
  %62 = load i32, i32* %yearday, align 4
  %rem70 = srem i32 %62, 146097
  store i32 %rem70, i32* %yearday, align 4
  %63 = load i32, i32* %yearday, align 4
  %div71 = sdiv i32 %63, 36524
  store i32 %div71, i32* %odd_cent, align 4
  %64 = load i32, i32* %odd_cent, align 4
  %mul72 = mul nsw i32 %64, 100
  %65 = load i32, i32* %year, align 4
  %add73 = add nsw i32 %65, %mul72
  store i32 %add73, i32* %year, align 4
  %66 = load i32, i32* %yearday, align 4
  %rem74 = srem i32 %66, 36524
  store i32 %rem74, i32* %yearday, align 4
  %67 = load i32, i32* %yearday, align 4
  %div75 = sdiv i32 %67, 1461
  %mul76 = mul nsw i32 %div75, 4
  %68 = load i32, i32* %year, align 4
  %add77 = add nsw i32 %68, %mul76
  store i32 %add77, i32* %year, align 4
  %69 = load i32, i32* %yearday, align 4
  %rem78 = srem i32 %69, 1461
  store i32 %rem78, i32* %yearday, align 4
  %70 = load i32, i32* %yearday, align 4
  %div79 = sdiv i32 %70, 365
  store i32 %div79, i32* %odd_year, align 4
  %71 = load i32, i32* %odd_year, align 4
  %72 = load i32, i32* %year, align 4
  %add80 = add nsw i32 %72, %71
  store i32 %add80, i32* %year, align 4
  %73 = load i32, i32* %yearday, align 4
  %rem81 = srem i32 %73, 365
  store i32 %rem81, i32* %yearday, align 4
  %74 = load i32, i32* %yearday, align 4
  %tobool = icmp ne i32 %74, 0
  br i1 %tobool, label %if.else.86, label %land.lhs.true.82

land.lhs.true.82:                                 ; preds = %if.end.58
  %75 = load i32, i32* %odd_cent, align 4
  %cmp83 = icmp eq i32 %75, 4
  br i1 %cmp83, label %if.then.85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.82
  %76 = load i32, i32* %odd_year, align 4
  %cmp84 = icmp eq i32 %76, 4
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %lor.lhs.false, %land.lhs.true.82
  store i32 1, i32* %month, align 4
  store i32 29, i32* %yearday, align 4
  br label %if.end.99

if.else.86:                                       ; preds = %lor.lhs.false, %if.end.58
  %77 = load i32, i32* %yearday, align 4
  %add87 = add nsw i32 %77, 123
  store i32 %add87, i32* %yearday, align 4
  %78 = load i32, i32* %yearday, align 4
  %mul88 = mul nsw i32 %78, 5
  %div89 = sdiv i32 %mul88, 153
  store i32 %div89, i32* %month, align 4
  %79 = load i32, i32* %month, align 4
  %mul90 = mul nsw i32 %79, 153
  %div91 = sdiv i32 %mul90, 5
  %80 = load i32, i32* %yearday, align 4
  %sub92 = sub nsw i32 %80, %div91
  store i32 %sub92, i32* %yearday, align 4
  %81 = load i32, i32* %month, align 4
  %cmp93 = icmp sgt i32 %81, 13
  br i1 %cmp93, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.else.86
  %82 = load i32, i32* %month, align 4
  %sub95 = sub nsw i32 %82, 14
  store i32 %sub95, i32* %month, align 4
  %83 = load i32, i32* %year, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %year, align 4
  br label %if.end.98

if.else.96:                                       ; preds = %if.else.86
  %84 = load i32, i32* %month, align 4
  %sub97 = sub nsw i32 %84, 2
  store i32 %sub97, i32* %month, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.94
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.85
  %85 = load i32, i32* %year, align 4
  %sub100 = sub nsw i32 %85, 1900
  %86 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_year101 = getelementptr inbounds %struct.tm, %struct.tm* %86, i32 0, i32 5
  store i32 %sub100, i32* %tm_year101, align 4
  %87 = load i32, i32* %yearday, align 4
  %tobool102 = icmp ne i32 %87, 0
  br i1 %tobool102, label %if.then.103, label %if.else.106

if.then.103:                                      ; preds = %if.end.99
  %88 = load i32, i32* %yearday, align 4
  %89 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_mday104 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 3
  store i32 %88, i32* %tm_mday104, align 4
  %90 = load i32, i32* %month, align 4
  %91 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_mon105 = getelementptr inbounds %struct.tm, %struct.tm* %91, i32 0, i32 4
  store i32 %90, i32* %tm_mon105, align 4
  br label %if.end.110

if.else.106:                                      ; preds = %if.end.99
  %92 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_mday107 = getelementptr inbounds %struct.tm, %struct.tm* %92, i32 0, i32 3
  store i32 31, i32* %tm_mday107, align 4
  %93 = load i32, i32* %month, align 4
  %sub108 = sub nsw i32 %93, 1
  %94 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_mon109 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 4
  store i32 %sub108, i32* %tm_mon109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.106, %if.then.103
  %95 = load i32, i32* %year, align 4
  %dec111 = add nsw i32 %95, -1
  store i32 %dec111, i32* %year, align 4
  %96 = load i32, i32* %year, align 4
  %mul112 = mul nsw i32 %96, 365
  %97 = load i32, i32* %year, align 4
  %div113 = sdiv i32 %97, 4
  %add114 = add nsw i32 %mul112, %div113
  %98 = load i32, i32* %year, align 4
  %div115 = sdiv i32 %98, 100
  %sub116 = sub nsw i32 %add114, %div115
  %99 = load i32, i32* %year, align 4
  %div117 = sdiv i32 %99, 400
  %add118 = add nsw i32 %sub116, %div117
  store i32 %add118, i32* %yearday, align 4
  %100 = load i32, i32* %yearday, align 4
  %add119 = add nsw i32 %100, 429
  store i32 %add119, i32* %yearday, align 4
  %101 = load i32, i32* %jday, align 4
  %102 = load i32, i32* %yearday, align 4
  %sub120 = sub nsw i32 %101, %102
  %103 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_yday121 = getelementptr inbounds %struct.tm, %struct.tm* %103, i32 0, i32 7
  store i32 %sub120, i32* %tm_yday121, align 4
  %104 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 6
  %105 = load i32, i32* %tm_wday, align 4
  %cmp122 = icmp ugt i32 %105, 6
  br i1 %cmp122, label %if.then.123, label %if.end.127

if.then.123:                                      ; preds = %if.end.110
  %106 = load i32, i32* %jday, align 4
  %add124 = add nsw i32 %106, 6
  %rem125 = srem i32 %add124, 7
  %107 = load %struct.tm*, %struct.tm** %ptm.addr, align 8
  %tm_wday126 = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 6
  store i32 %rem125, i32* %tm_wday126, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.123, %if.end.110
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @Perl_my_strftime(i8* %fmt, i32 %sec, i32 %min, i32 %hour, i32 %mday, i32 %mon, i32 %year, i32 %wday, i32 %yday, i32 %isdst) #0 {
entry:
  %retval = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %sec.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %hour.addr = alloca i32, align 4
  %mday.addr = alloca i32, align 4
  %mon.addr = alloca i32, align 4
  %year.addr = alloca i32, align 4
  %wday.addr = alloca i32, align 4
  %yday.addr = alloca i32, align 4
  %isdst.addr = alloca i32, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  store i32 %sec, i32* %sec.addr, align 4
  store i32 %min, i32* %min.addr, align 4
  store i32 %hour, i32* %hour.addr, align 4
  store i32 %mday, i32* %mday.addr, align 4
  store i32 %mon, i32* %mon.addr, align 4
  store i32 %year, i32* %year.addr, align 4
  store i32 %wday, i32* %wday.addr, align 4
  store i32 %yday, i32* %yday.addr, align 4
  store i32 %isdst, i32* %isdst.addr, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0))
  %0 = load i8*, i8** %retval
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_getcwd_sv(%struct.sv* %sv) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %statbuf = alloca %struct.stat, align 8
  %orig_cdev = alloca i32, align 4
  %orig_cino = alloca i32, align 4
  %cdev = alloca i32, align 4
  %cino = alloca i32, align 4
  %odev = alloca i32, align 4
  %oino = alloca i32, align 4
  %tdev = alloca i32, align 4
  %tino = alloca i32, align 4
  %namelen = alloca i32, align 4
  %pathlen = alloca i32, align 4
  %dir = alloca %struct.__dirstream*, align 8
  %dp = alloca %struct.dirent*, align 8
  %tmp = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 0, i32* %pathlen, align 4
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 255
  %cmp = icmp uge i32 %and, 4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call signext i8 @Perl_sv_upgrade(%struct.sv* %2, i32 4)
  %conv = sext i8 %call to i32
  %tobool = icmp ne i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  %call1 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), %struct.stat* %statbuf)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %4, %struct.sv* @PL_sv_undef, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.end
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 0
  %5 = load i64, i64* %st_dev, align 8
  %conv4 = trunc i64 %5 to i32
  store i32 %conv4, i32* %orig_cdev, align 4
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 1
  %6 = load i64, i64* %st_ino, align 8
  %conv5 = trunc i64 %6 to i32
  store i32 %conv5, i32* %orig_cino, align 4
  %7 = load i32, i32* %orig_cdev, align 4
  store i32 %7, i32* %cdev, align 4
  %8 = load i32, i32* %orig_cino, align 4
  store i32 %8, i32* %cino, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.118, %if.end
  %9 = load i32, i32* %cdev, align 4
  store i32 %9, i32* %odev, align 4
  %10 = load i32, i32* %cino, align 4
  store i32 %10, i32* %oino, align 4
  %call6 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0))
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.cond
  %11 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %11, %struct.sv* @PL_sv_undef, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %for.cond
  %call11 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), %struct.stat* %statbuf)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %12 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %12, %struct.sv* @PL_sv_undef, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %st_dev16 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 0
  %13 = load i64, i64* %st_dev16, align 8
  %conv17 = trunc i64 %13 to i32
  store i32 %conv17, i32* %cdev, align 4
  %st_ino18 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 1
  %14 = load i64, i64* %st_ino18, align 8
  %conv19 = trunc i64 %14 to i32
  store i32 %conv19, i32* %cino, align 4
  %15 = load i32, i32* %odev, align 4
  %16 = load i32, i32* %cdev, align 4
  %cmp20 = icmp eq i32 %15, %16
  br i1 %cmp20, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.15
  %17 = load i32, i32* %oino, align 4
  %18 = load i32, i32* %cino, align 4
  %cmp22 = icmp eq i32 %17, %18
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.25:                                        ; preds = %land.lhs.true, %if.end.15
  %call26 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct.__dirstream* %call26, %struct.__dirstream** %dir, align 8
  %tobool27 = icmp ne %struct.__dirstream* %call26, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %19, %struct.sv* @PL_sv_undef, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.25
  br label %while.cond

while.cond:                                       ; preds = %if.end.75, %if.then.56, %if.end.29
  %20 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call30 = call %struct.dirent* @readdir(%struct.__dirstream* %20)
  store %struct.dirent* %call30, %struct.dirent** %dp, align 8
  %cmp31 = icmp ne %struct.dirent* %call30, null
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call33 = call i64 @strlen(i8* %arraydecay)
  %conv34 = trunc i64 %call33 to i32
  store i32 %conv34, i32* %namelen, align 4
  %22 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name35 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %d_name35, i32 0, i64 0
  %23 = load i8, i8* %arrayidx, align 1
  %conv36 = sext i8 %23 to i32
  %cmp37 = icmp eq i32 %conv36, 46
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.57

land.lhs.true.39:                                 ; preds = %while.body
  %24 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name40 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 4
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name40, i32 0, i64 1
  %25 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %25 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.39
  %26 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name45 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 4
  %arrayidx46 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name45, i32 0, i64 1
  %27 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %27 to i32
  %cmp48 = icmp eq i32 %conv47, 46
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.57

land.lhs.true.50:                                 ; preds = %lor.lhs.false
  %28 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name51 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 4
  %arrayidx52 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name51, i32 0, i64 2
  %29 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %29 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.50, %land.lhs.true.39
  br label %while.cond

if.end.57:                                        ; preds = %land.lhs.true.50, %lor.lhs.false, %while.body
  %30 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name58 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 4
  %arraydecay59 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name58, i32 0, i32 0
  %call60 = call i32 @stat(i8* %arraydecay59, %struct.stat* %statbuf)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.57
  %31 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %31, %struct.sv* @PL_sv_undef, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.57
  %st_dev65 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 0
  %32 = load i64, i64* %st_dev65, align 8
  %conv66 = trunc i64 %32 to i32
  store i32 %conv66, i32* %tdev, align 4
  %st_ino67 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 1
  %33 = load i64, i64* %st_ino67, align 8
  %conv68 = trunc i64 %33 to i32
  store i32 %conv68, i32* %tino, align 4
  %34 = load i32, i32* %tino, align 4
  %35 = load i32, i32* %oino, align 4
  %cmp69 = icmp eq i32 %34, %35
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.75

land.lhs.true.71:                                 ; preds = %if.end.64
  %36 = load i32, i32* %tdev, align 4
  %37 = load i32, i32* %odev, align 4
  %cmp72 = icmp eq i32 %36, %37
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %land.lhs.true.71
  br label %while.end

if.end.75:                                        ; preds = %land.lhs.true.71, %if.end.64
  br label %while.cond

while.end:                                        ; preds = %if.then.74, %while.cond
  %38 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %tobool76 = icmp ne %struct.dirent* %38, null
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %while.end
  %39 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %39, %struct.sv* @PL_sv_undef, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.78:                                        ; preds = %while.end
  %40 = load i32, i32* %pathlen, align 4
  %41 = load i32, i32* %namelen, align 4
  %add = add nsw i32 %40, %41
  %add79 = add nsw i32 %add, 1
  %cmp80 = icmp sge i32 %add79, 4096
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  %42 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %42, %struct.sv* @PL_sv_undef, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.end.78
  %43 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 0
  %44 = load i8*, i8** %sv_any, align 8
  %45 = bitcast i8* %44 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %45, i32 0, i32 2
  %46 = load i64, i64* %xpv_len, align 8
  %47 = load i32, i32* %pathlen, align 4
  %48 = load i32, i32* %namelen, align 4
  %add84 = add nsw i32 %47, %48
  %add85 = add nsw i32 %add84, 1
  %conv86 = sext i32 %add85 to i64
  %cmp87 = icmp ult i64 %46, %conv86
  br i1 %cmp87, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.83
  %49 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %50 = load i32, i32* %pathlen, align 4
  %51 = load i32, i32* %namelen, align 4
  %add89 = add nsw i32 %50, %51
  %add90 = add nsw i32 %add89, 1
  %conv91 = sext i32 %add90 to i64
  %call92 = call i8* @Perl_sv_grow(%struct.sv* %49, i64 %conv91)
  br label %cond.end

cond.false:                                       ; preds = %if.end.83
  %52 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any93 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 0
  %53 = load i8*, i8** %sv_any93, align 8
  %54 = bitcast i8* %53 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %54, i32 0, i32 0
  %55 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call92, %cond.true ], [ %55, %cond.false ]
  %56 = load i32, i32* %pathlen, align 4
  %tobool94 = icmp ne i32 %56, 0
  br i1 %tobool94, label %if.then.95, label %if.end.102

if.then.95:                                       ; preds = %cond.end
  %57 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any96 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 0
  %58 = load i8*, i8** %sv_any96, align 8
  %59 = bitcast i8* %58 to %struct.xpv*
  %xpv_pv97 = getelementptr inbounds %struct.xpv, %struct.xpv* %59, i32 0, i32 0
  %60 = load i8*, i8** %xpv_pv97, align 8
  %61 = load i32, i32* %namelen, align 4
  %idx.ext = sext i32 %61 to i64
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %idx.ext
  %add.ptr98 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %62 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any99 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 0
  %63 = load i8*, i8** %sv_any99, align 8
  %64 = bitcast i8* %63 to %struct.xpv*
  %xpv_pv100 = getelementptr inbounds %struct.xpv, %struct.xpv* %64, i32 0, i32 0
  %65 = load i8*, i8** %xpv_pv100, align 8
  %66 = load i32, i32* %pathlen, align 4
  %conv101 = sext i32 %66 to i64
  %mul = mul i64 %conv101, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr98, i8* %65, i64 %mul, i32 1, i1 false)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.95, %cond.end
  %67 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any103 = getelementptr inbounds %struct.sv, %struct.sv* %67, i32 0, i32 0
  %68 = load i8*, i8** %sv_any103, align 8
  %69 = bitcast i8* %68 to %struct.xpv*
  %xpv_pv104 = getelementptr inbounds %struct.xpv, %struct.xpv* %69, i32 0, i32 0
  %70 = load i8*, i8** %xpv_pv104, align 8
  store i8 47, i8* %70, align 1
  %71 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any105 = getelementptr inbounds %struct.sv, %struct.sv* %71, i32 0, i32 0
  %72 = load i8*, i8** %sv_any105, align 8
  %73 = bitcast i8* %72 to %struct.xpv*
  %xpv_pv106 = getelementptr inbounds %struct.xpv, %struct.xpv* %73, i32 0, i32 0
  %74 = load i8*, i8** %xpv_pv106, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name108 = getelementptr inbounds %struct.dirent, %struct.dirent* %75, i32 0, i32 4
  %arraydecay109 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name108, i32 0, i32 0
  %76 = load i32, i32* %namelen, align 4
  %conv110 = sext i32 %76 to i64
  %mul111 = mul i64 %conv110, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr107, i8* %arraydecay109, i64 %mul111, i32 1, i1 false)
  %77 = load i32, i32* %namelen, align 4
  %add112 = add nsw i32 %77, 1
  %78 = load i32, i32* %pathlen, align 4
  %add113 = add nsw i32 %78, %add112
  store i32 %add113, i32* %pathlen, align 4
  %79 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call114 = call i32 @closedir(%struct.__dirstream* %79)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.102
  %80 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %80, %struct.sv* @PL_sv_undef, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.118:                                       ; preds = %if.end.102
  br label %for.cond

for.end:                                          ; preds = %if.then.24
  %81 = load i32, i32* %pathlen, align 4
  %tobool119 = icmp ne i32 %81, 0
  br i1 %tobool119, label %if.then.120, label %if.end.138

if.then.120:                                      ; preds = %for.end
  %82 = load i32, i32* %pathlen, align 4
  %conv121 = sext i32 %82 to i64
  %83 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any122 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 0
  %84 = load i8*, i8** %sv_any122, align 8
  %85 = bitcast i8* %84 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %85, i32 0, i32 1
  store i64 %conv121, i64* %xpv_cur, align 8
  store i64 %conv121, i64* %tmp
  %86 = load i64, i64* %tmp
  %87 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any123 = getelementptr inbounds %struct.sv, %struct.sv* %87, i32 0, i32 0
  %88 = load i8*, i8** %sv_any123, align 8
  %89 = bitcast i8* %88 to %struct.xpv*
  %xpv_pv124 = getelementptr inbounds %struct.xpv, %struct.xpv* %89, i32 0, i32 0
  %90 = load i8*, i8** %xpv_pv124, align 8
  %91 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any125 = getelementptr inbounds %struct.sv, %struct.sv* %91, i32 0, i32 0
  %92 = load i8*, i8** %sv_any125, align 8
  %93 = bitcast i8* %92 to %struct.xpv*
  %xpv_cur126 = getelementptr inbounds %struct.xpv, %struct.xpv* %93, i32 0, i32 1
  %94 = load i64, i64* %xpv_cur126, align 8
  %add.ptr127 = getelementptr inbounds i8, i8* %90, i64 %94
  store i8 0, i8* %add.ptr127, align 1
  %95 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags128 = getelementptr inbounds %struct.sv, %struct.sv* %95, i32 0, i32 2
  %96 = load i32, i32* %sv_flags128, align 4
  %and129 = and i32 %96, 1223753727
  store i32 %and129, i32* %sv_flags128, align 4
  %97 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags130 = getelementptr inbounds %struct.sv, %struct.sv* %97, i32 0, i32 2
  %98 = load i32, i32* %sv_flags130, align 4
  %or = or i32 %98, 67371008
  store i32 %or, i32* %sv_flags130, align 4
  %99 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any131 = getelementptr inbounds %struct.sv, %struct.sv* %99, i32 0, i32 0
  %100 = load i8*, i8** %sv_any131, align 8
  %101 = bitcast i8* %100 to %struct.xpv*
  %xpv_pv132 = getelementptr inbounds %struct.xpv, %struct.xpv* %101, i32 0, i32 0
  %102 = load i8*, i8** %xpv_pv132, align 8
  %call133 = call i32 @chdir(i8* %102)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.then.120
  %103 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %103, %struct.sv* @PL_sv_undef, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.137:                                       ; preds = %if.then.120
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %for.end
  %call139 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), %struct.stat* %statbuf)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.138
  %104 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %104, %struct.sv* @PL_sv_undef, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.143:                                       ; preds = %if.end.138
  %st_dev144 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 0
  %105 = load i64, i64* %st_dev144, align 8
  %conv145 = trunc i64 %105 to i32
  store i32 %conv145, i32* %cdev, align 4
  %st_ino146 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 1
  %106 = load i64, i64* %st_ino146, align 8
  %conv147 = trunc i64 %106 to i32
  store i32 %conv147, i32* %cino, align 4
  %107 = load i32, i32* %cdev, align 4
  %108 = load i32, i32* %orig_cdev, align 4
  %cmp148 = icmp ne i32 %107, %108
  br i1 %cmp148, label %if.then.153, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %if.end.143
  %109 = load i32, i32* %cino, align 4
  %110 = load i32, i32* %orig_cino, align 4
  %cmp151 = icmp ne i32 %109, %110
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %lor.lhs.false.150, %if.end.143
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %lor.lhs.false.150
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.154, %if.then.142, %if.then.136, %if.then.117, %if.then.82, %if.then.77, %if.then.63, %if.then.28, %if.then.14, %if.then.9, %if.then
  %111 = load i32, i32* %retval
  ret i32 %111
}

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare i32 @chdir(i8*) #1

declare %struct.__dirstream* @opendir(i8*) #1

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @closedir(%struct.__dirstream*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_my_socketpair(i32 %family, i32 %type, i32 %protocol, i32* %fd) #0 {
entry:
  %family.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %protocol.addr = alloca i32, align 4
  %fd.addr = alloca i32*, align 8
  store i32 %family, i32* %family.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %protocol, i32* %protocol.addr, align 4
  store i32* %fd, i32** %fd.addr, align 8
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define void @Perl_sv_nosharing(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_sv_nolocking(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_sv_nounlocking(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_parse_unicode_opts(i8** %popt) #0 {
entry:
  %popt.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  %opt = alloca i32, align 4
  store i8** %popt, i8*** %popt.addr, align 8
  %0 = load i8**, i8*** %popt.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %p, align 8
  store i32 0, i32* %opt, align 4
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else.54

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %8 = load i8*, i8** %p, align 8
  %call = call i32 @atoi(i8* %8)
  store i32 %call, i32* %opt, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.5
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp sge i32 %conv6, 48
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp sle i32 %conv9, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv12 = sext i8 %16 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %while.end
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv15 = sext i8 %18 to i32
  %cmp16 = icmp ne i32 %conv15, 10
  br i1 %cmp16, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv19 = sext i8 %20 to i32
  %cmp20 = icmp ne i32 %conv19, 13
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %land.lhs.true.18
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv23 = sext i8 %22 to i32
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0), i32 %conv23)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %land.lhs.true.18, %land.lhs.true.14, %while.end
  br label %if.end.53

if.else:                                          ; preds = %land.lhs.true, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %23 = load i8*, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %tobool24 = icmp ne i8 %24, 0
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %conv25 = sext i8 %26 to i32
  switch i32 %conv25, label %sw.default [
    i32 73, label %sw.bb
    i32 79, label %sw.bb.26
    i32 69, label %sw.bb.28
    i32 83, label %sw.bb.30
    i32 105, label %sw.bb.32
    i32 111, label %sw.bb.34
    i32 68, label %sw.bb.36
    i32 76, label %sw.bb.38
    i32 65, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %for.body
  %27 = load i32, i32* %opt, align 4
  %or = or i32 %27, 1
  store i32 %or, i32* %opt, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body
  %28 = load i32, i32* %opt, align 4
  %or27 = or i32 %28, 2
  store i32 %or27, i32* %opt, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.body
  %29 = load i32, i32* %opt, align 4
  %or29 = or i32 %29, 4
  store i32 %or29, i32* %opt, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %for.body
  %30 = load i32, i32* %opt, align 4
  %or31 = or i32 %30, 7
  store i32 %or31, i32* %opt, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %for.body
  %31 = load i32, i32* %opt, align 4
  %or33 = or i32 %31, 8
  store i32 %or33, i32* %opt, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %for.body
  %32 = load i32, i32* %opt, align 4
  %or35 = or i32 %32, 16
  store i32 %or35, i32* %opt, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %for.body
  %33 = load i32, i32* %opt, align 4
  %or37 = or i32 %33, 24
  store i32 %or37, i32* %opt, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %for.body
  %34 = load i32, i32* %opt, align 4
  %or39 = or i32 %34, 64
  store i32 %or39, i32* %opt, align 4
  br label %sw.epilog

sw.bb.40:                                         ; preds = %for.body
  %35 = load i32, i32* %opt, align 4
  %or41 = or i32 %35, 32
  store i32 %or41, i32* %opt, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %36 = load i8*, i8** %p, align 8
  %37 = load i8, i8* %36, align 1
  %conv42 = sext i8 %37 to i32
  %cmp43 = icmp ne i32 %conv42, 10
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.51

land.lhs.true.45:                                 ; preds = %sw.default
  %38 = load i8*, i8** %p, align 8
  %39 = load i8, i8* %38, align 1
  %conv46 = sext i8 %39 to i32
  %cmp47 = icmp ne i32 %conv46, 13
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %land.lhs.true.45
  %40 = load i8*, i8** %p, align 8
  %41 = load i8, i8* %40, align 1
  %conv50 = sext i8 %41 to i32
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0), i32 %conv50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %land.lhs.true.45, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.51, %sw.bb.40, %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb.30, %sw.bb.28, %sw.bb.26, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr52, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.53

if.end.53:                                        ; preds = %for.end, %if.end
  br label %if.end.55

if.else.54:                                       ; preds = %entry
  store i32 95, i32* %opt, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.end.53
  %43 = load i32, i32* %opt, align 4
  %and = and i32 %43, -256
  %tobool56 = icmp ne i32 %and, 0
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.55
  %44 = load i32, i32* %opt, align 4
  %and58 = and i32 %44, -256
  %conv59 = zext i32 %and58 to i64
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0), i64 %conv59)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.55
  %45 = load i8*, i8** %p, align 8
  %46 = load i8**, i8*** %popt.addr, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %opt, align 4
  ret i32 %47
}

declare i32 @atoi(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_seed() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @Perl_get_hash_seed() #0 {
entry:
  ret i64 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
